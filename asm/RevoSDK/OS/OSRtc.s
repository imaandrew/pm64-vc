.include "macros.inc"

.section .text, "ax"

glabel WriteSramCallback
/* 80096DC8 000922E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80096DCC 000922EC  7C 08 02 A6 */	mflr r0
/* 80096DD0 000922F0  3C C0 80 1C */	lis r6, lbl_801C4900@ha
/* 80096DD4 000922F4  3C A0 80 09 */	lis r5, WriteSramCallback@ha
/* 80096DD8 000922F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80096DDC 000922FC  38 C6 49 00 */	addi r6, r6, lbl_801C4900@l
/* 80096DE0 00092300  38 60 00 00 */	li r3, 0
/* 80096DE4 00092304  38 A5 6D C8 */	addi r5, r5, WriteSramCallback@l
/* 80096DE8 00092308  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80096DEC 0009230C  38 80 00 01 */	li r4, 1
/* 80096DF0 00092310  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80096DF4 00092314  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80096DF8 00092318  83 E6 00 40 */	lwz r31, 0x40(r6)
/* 80096DFC 0009231C  23 BF 00 40 */	subfic r29, r31, 0x40
/* 80096E00 00092320  7F C6 FA 14 */	add r30, r6, r31
/* 80096E04 00092324  48 00 54 9D */	bl EXILock
/* 80096E08 00092328  2C 03 00 00 */	cmpwi r3, 0
/* 80096E0C 0009232C  40 82 00 0C */	bne lbl_80096E18
/* 80096E10 00092330  38 00 00 00 */	li r0, 0
/* 80096E14 00092334  48 00 00 B4 */	b lbl_80096EC8
lbl_80096E18:
/* 80096E18 00092338  38 60 00 00 */	li r3, 0
/* 80096E1C 0009233C  38 80 00 01 */	li r4, 1
/* 80096E20 00092340  38 A0 00 03 */	li r5, 3
/* 80096E24 00092344  48 00 4C E9 */	bl EXISelect
/* 80096E28 00092348  2C 03 00 00 */	cmpwi r3, 0
/* 80096E2C 0009234C  40 82 00 14 */	bne lbl_80096E40
/* 80096E30 00092350  38 60 00 00 */	li r3, 0
/* 80096E34 00092354  48 00 55 69 */	bl EXIUnlock
/* 80096E38 00092358  38 00 00 00 */	li r0, 0
/* 80096E3C 0009235C  48 00 00 8C */	b lbl_80096EC8
lbl_80096E40:
/* 80096E40 00092360  57 E3 30 32 */	slwi r3, r31, 6
/* 80096E44 00092364  38 81 00 08 */	addi r4, r1, 8
/* 80096E48 00092368  38 03 01 00 */	addi r0, r3, 0x100
/* 80096E4C 0009236C  38 A0 00 04 */	li r5, 4
/* 80096E50 00092370  64 00 A0 00 */	oris r0, r0, 0xa000
/* 80096E54 00092374  38 60 00 00 */	li r3, 0
/* 80096E58 00092378  90 01 00 08 */	stw r0, 8(r1)
/* 80096E5C 0009237C  38 C0 00 01 */	li r6, 1
/* 80096E60 00092380  38 E0 00 00 */	li r7, 0
/* 80096E64 00092384  48 00 42 41 */	bl EXIImm
/* 80096E68 00092388  7C 60 00 34 */	cntlzw r0, r3
/* 80096E6C 0009238C  38 60 00 00 */	li r3, 0
/* 80096E70 00092390  54 1F D9 7E */	srwi r31, r0, 5
/* 80096E74 00092394  48 00 46 49 */	bl EXISync
/* 80096E78 00092398  7C 60 00 34 */	cntlzw r0, r3
/* 80096E7C 0009239C  7F C4 F3 78 */	mr r4, r30
/* 80096E80 000923A0  54 00 D9 7E */	srwi r0, r0, 5
/* 80096E84 000923A4  7F A5 EB 78 */	mr r5, r29
/* 80096E88 000923A8  7F FD 03 78 */	or r29, r31, r0
/* 80096E8C 000923AC  38 60 00 00 */	li r3, 0
/* 80096E90 000923B0  38 C0 00 01 */	li r6, 1
/* 80096E94 000923B4  48 00 44 8D */	bl EXIImmEx
/* 80096E98 000923B8  7C 60 00 34 */	cntlzw r0, r3
/* 80096E9C 000923BC  38 60 00 00 */	li r3, 0
/* 80096EA0 000923C0  54 00 D9 7E */	srwi r0, r0, 5
/* 80096EA4 000923C4  7F BD 03 78 */	or r29, r29, r0
/* 80096EA8 000923C8  48 00 4D 95 */	bl EXIDeselect
/* 80096EAC 000923CC  7C 60 00 34 */	cntlzw r0, r3
/* 80096EB0 000923D0  38 60 00 00 */	li r3, 0
/* 80096EB4 000923D4  54 00 D9 7E */	srwi r0, r0, 5
/* 80096EB8 000923D8  7F BD 03 78 */	or r29, r29, r0
/* 80096EBC 000923DC  48 00 54 E1 */	bl EXIUnlock
/* 80096EC0 000923E0  7F A0 00 34 */	cntlzw r0, r29
/* 80096EC4 000923E4  54 00 D9 7E */	srwi r0, r0, 5
lbl_80096EC8:
/* 80096EC8 000923E8  3C 60 80 1C */	lis r3, lbl_801C4900@ha
/* 80096ECC 000923EC  2C 00 00 00 */	cmpwi r0, 0
/* 80096ED0 000923F0  38 63 49 00 */	addi r3, r3, lbl_801C4900@l
/* 80096ED4 000923F4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80096ED8 000923F8  41 82 00 0C */	beq lbl_80096EE4
/* 80096EDC 000923FC  38 00 00 40 */	li r0, 0x40
/* 80096EE0 00092400  90 03 00 40 */	stw r0, 0x40(r3)
lbl_80096EE4:
/* 80096EE4 00092404  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80096EE8 00092408  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80096EEC 0009240C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80096EF0 00092410  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80096EF4 00092414  7C 08 03 A6 */	mtlr r0
/* 80096EF8 00092418  38 21 00 20 */	addi r1, r1, 0x20
/* 80096EFC 0009241C  4E 80 00 20 */	blr 

glabel __OSInitSram
/* 80096F00 00092420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80096F04 00092424  7C 08 02 A6 */	mflr r0
/* 80096F08 00092428  38 80 00 40 */	li r4, 0x40
/* 80096F0C 0009242C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80096F10 00092430  38 00 00 00 */	li r0, 0
/* 80096F14 00092434  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80096F18 00092438  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80096F1C 0009243C  3F C0 80 1C */	lis r30, lbl_801C4900@ha
/* 80096F20 00092440  3B DE 49 00 */	addi r30, r30, lbl_801C4900@l
/* 80096F24 00092444  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80096F28 00092448  7F C3 F3 78 */	mr r3, r30
/* 80096F2C 0009244C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80096F30 00092450  4B FF 9D 11 */	bl DCInvalidateRange
/* 80096F34 00092454  38 60 00 00 */	li r3, 0
/* 80096F38 00092458  38 80 00 01 */	li r4, 1
/* 80096F3C 0009245C  38 A0 00 00 */	li r5, 0
/* 80096F40 00092460  48 00 53 61 */	bl EXILock
/* 80096F44 00092464  2C 03 00 00 */	cmpwi r3, 0
/* 80096F48 00092468  40 82 00 0C */	bne lbl_80096F54
/* 80096F4C 0009246C  38 60 00 00 */	li r3, 0
/* 80096F50 00092470  48 00 00 C8 */	b lbl_80097018
lbl_80096F54:
/* 80096F54 00092474  38 60 00 00 */	li r3, 0
/* 80096F58 00092478  38 80 00 01 */	li r4, 1
/* 80096F5C 0009247C  38 A0 00 03 */	li r5, 3
/* 80096F60 00092480  48 00 4B AD */	bl EXISelect
/* 80096F64 00092484  2C 03 00 00 */	cmpwi r3, 0
/* 80096F68 00092488  40 82 00 14 */	bne lbl_80096F7C
/* 80096F6C 0009248C  38 60 00 00 */	li r3, 0
/* 80096F70 00092490  48 00 54 2D */	bl EXIUnlock
/* 80096F74 00092494  38 60 00 00 */	li r3, 0
/* 80096F78 00092498  48 00 00 A0 */	b lbl_80097018
lbl_80096F7C:
/* 80096F7C 0009249C  3C 60 20 00 */	lis r3, 0x20000100@ha
/* 80096F80 000924A0  38 81 00 08 */	addi r4, r1, 8
/* 80096F84 000924A4  38 03 01 00 */	addi r0, r3, 0x20000100@l
/* 80096F88 000924A8  38 A0 00 04 */	li r5, 4
/* 80096F8C 000924AC  90 01 00 08 */	stw r0, 8(r1)
/* 80096F90 000924B0  38 60 00 00 */	li r3, 0
/* 80096F94 000924B4  38 C0 00 01 */	li r6, 1
/* 80096F98 000924B8  38 E0 00 00 */	li r7, 0
/* 80096F9C 000924BC  48 00 41 09 */	bl EXIImm
/* 80096FA0 000924C0  7C 60 00 34 */	cntlzw r0, r3
/* 80096FA4 000924C4  38 60 00 00 */	li r3, 0
/* 80096FA8 000924C8  54 1F D9 7E */	srwi r31, r0, 5
/* 80096FAC 000924CC  48 00 45 11 */	bl EXISync
/* 80096FB0 000924D0  7C 60 00 34 */	cntlzw r0, r3
/* 80096FB4 000924D4  7F C4 F3 78 */	mr r4, r30
/* 80096FB8 000924D8  54 00 D9 7E */	srwi r0, r0, 5
/* 80096FBC 000924DC  38 60 00 00 */	li r3, 0
/* 80096FC0 000924E0  7F FE 03 78 */	or r30, r31, r0
/* 80096FC4 000924E4  38 A0 00 40 */	li r5, 0x40
/* 80096FC8 000924E8  38 C0 00 00 */	li r6, 0
/* 80096FCC 000924EC  38 E0 00 00 */	li r7, 0
/* 80096FD0 000924F0  48 00 43 F5 */	bl EXIDma
/* 80096FD4 000924F4  7C 60 00 34 */	cntlzw r0, r3
/* 80096FD8 000924F8  38 60 00 00 */	li r3, 0
/* 80096FDC 000924FC  54 00 D9 7E */	srwi r0, r0, 5
/* 80096FE0 00092500  7F DE 03 78 */	or r30, r30, r0
/* 80096FE4 00092504  48 00 44 D9 */	bl EXISync
/* 80096FE8 00092508  7C 60 00 34 */	cntlzw r0, r3
/* 80096FEC 0009250C  38 60 00 00 */	li r3, 0
/* 80096FF0 00092510  54 00 D9 7E */	srwi r0, r0, 5
/* 80096FF4 00092514  7F DE 03 78 */	or r30, r30, r0
/* 80096FF8 00092518  48 00 4C 45 */	bl EXIDeselect
/* 80096FFC 0009251C  7C 60 00 34 */	cntlzw r0, r3
/* 80097000 00092520  38 60 00 00 */	li r3, 0
/* 80097004 00092524  54 00 D9 7E */	srwi r0, r0, 5
/* 80097008 00092528  7F DE 03 78 */	or r30, r30, r0
/* 8009700C 0009252C  48 00 53 91 */	bl EXIUnlock
/* 80097010 00092530  7F C0 00 34 */	cntlzw r0, r30
/* 80097014 00092534  54 03 D9 7E */	srwi r3, r0, 5
lbl_80097018:
/* 80097018 00092538  3F E0 80 1C */	lis r31, lbl_801C4900@ha
/* 8009701C 0009253C  38 00 00 40 */	li r0, 0x40
/* 80097020 00092540  3B FF 49 00 */	addi r31, r31, lbl_801C4900@l
/* 80097024 00092544  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 80097028 00092548  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8009702C 0009254C  4B FF E2 89 */	bl OSDisableInterrupts
/* 80097030 00092550  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80097034 00092554  2C 00 00 00 */	cmpwi r0, 0
/* 80097038 00092558  41 82 00 10 */	beq lbl_80097048
/* 8009703C 0009255C  4B FF E2 A1 */	bl OSRestoreInterrupts
/* 80097040 00092560  38 60 00 00 */	li r3, 0
/* 80097044 00092564  48 00 00 14 */	b lbl_80097058
lbl_80097048:
/* 80097048 00092568  38 00 00 01 */	li r0, 1
/* 8009704C 0009256C  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80097050 00092570  38 7F 00 14 */	addi r3, r31, 0x14
/* 80097054 00092574  90 1F 00 48 */	stw r0, 0x48(r31)
lbl_80097058:
/* 80097058 00092578  A3 C3 00 28 */	lhz r30, 0x28(r3)
/* 8009705C 0009257C  38 60 00 00 */	li r3, 0
/* 80097060 00092580  38 80 00 14 */	li r4, 0x14
/* 80097064 00092584  48 00 00 9D */	bl UnlockSram
/* 80097068 00092588  57 C0 04 6A */	rlwinm r0, r30, 0, 0x11, 0x15
/* 8009706C 0009258C  28 00 50 00 */	cmplwi r0, 0x5000
/* 80097070 00092590  41 82 00 10 */	beq lbl_80097080
/* 80097074 00092594  57 C0 06 32 */	rlwinm r0, r30, 0, 0x18, 0x19
/* 80097078 00092598  28 00 00 C0 */	cmplwi r0, 0xc0
/* 8009707C 0009259C  40 82 00 08 */	bne lbl_80097084
lbl_80097080:
/* 80097080 000925A0  3B C0 00 00 */	li r30, 0
lbl_80097084:
/* 80097084 000925A4  4B FF E2 31 */	bl OSDisableInterrupts
/* 80097088 000925A8  3C 80 80 1C */	lis r4, lbl_801C4900@ha
/* 8009708C 000925AC  38 84 49 00 */	addi r4, r4, lbl_801C4900@l
/* 80097090 000925B0  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80097094 000925B4  2C 00 00 00 */	cmpwi r0, 0
/* 80097098 000925B8  41 82 00 10 */	beq lbl_800970A8
/* 8009709C 000925BC  4B FF E2 41 */	bl OSRestoreInterrupts
/* 800970A0 000925C0  38 A0 00 00 */	li r5, 0
/* 800970A4 000925C4  48 00 00 14 */	b lbl_800970B8
lbl_800970A8:
/* 800970A8 000925C8  38 00 00 01 */	li r0, 1
/* 800970AC 000925CC  90 64 00 44 */	stw r3, 0x44(r4)
/* 800970B0 000925D0  38 A4 00 14 */	addi r5, r4, 0x14
/* 800970B4 000925D4  90 04 00 48 */	stw r0, 0x48(r4)
lbl_800970B8:
/* 800970B8 000925D8  A0 05 00 28 */	lhz r0, 0x28(r5)
/* 800970BC 000925DC  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 800970C0 000925E0  7C 03 00 40 */	cmplw r3, r0
/* 800970C4 000925E4  40 82 00 14 */	bne lbl_800970D8
/* 800970C8 000925E8  38 60 00 00 */	li r3, 0
/* 800970CC 000925EC  38 80 00 14 */	li r4, 0x14
/* 800970D0 000925F0  48 00 00 31 */	bl UnlockSram
/* 800970D4 000925F4  48 00 00 14 */	b lbl_800970E8
lbl_800970D8:
/* 800970D8 000925F8  B3 C5 00 28 */	sth r30, 0x28(r5)
/* 800970DC 000925FC  38 60 00 01 */	li r3, 1
/* 800970E0 00092600  38 80 00 14 */	li r4, 0x14
/* 800970E4 00092604  48 00 00 1D */	bl UnlockSram
lbl_800970E8:
/* 800970E8 00092608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800970EC 0009260C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800970F0 00092610  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800970F4 00092614  7C 08 03 A6 */	mtlr r0
/* 800970F8 00092618  38 21 00 20 */	addi r1, r1, 0x20
/* 800970FC 0009261C  4E 80 00 20 */	blr 

glabel UnlockSram
/* 80097100 00092620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80097104 00092624  7C 08 02 A6 */	mflr r0
/* 80097108 00092628  2C 03 00 00 */	cmpwi r3, 0
/* 8009710C 0009262C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80097110 00092630  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80097114 00092634  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80097118 00092638  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8009711C 0009263C  41 82 02 8C */	beq lbl_800973A8
/* 80097120 00092640  2C 04 00 00 */	cmpwi r4, 0
/* 80097124 00092644  40 82 01 30 */	bne lbl_80097254
/* 80097128 00092648  3D 00 80 1C */	lis r8, lbl_801C4900@ha
/* 8009712C 0009264C  39 08 49 00 */	addi r8, r8, lbl_801C4900@l
/* 80097130 00092650  88 68 00 13 */	lbz r3, 0x13(r8)
/* 80097134 00092654  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80097138 00092658  28 00 00 02 */	cmplwi r0, 2
/* 8009713C 0009265C  40 81 00 0C */	ble lbl_80097148
/* 80097140 00092660  54 60 06 3A */	rlwinm r0, r3, 0, 0x18, 0x1d
/* 80097144 00092664  98 08 00 13 */	stb r0, 0x13(r8)
lbl_80097148:
/* 80097148 00092668  3C 60 80 1C */	lis r3, lbl_801C4900@ha
/* 8009714C 0009266C  38 00 00 00 */	li r0, 0
/* 80097150 00092670  38 63 49 00 */	addi r3, r3, lbl_801C4900@l
/* 80097154 00092674  38 E8 00 0C */	addi r7, r8, 0xc
/* 80097158 00092678  38 A3 00 14 */	addi r5, r3, 0x14
/* 8009715C 0009267C  B0 08 00 02 */	sth r0, 2(r8)
/* 80097160 00092680  38 65 00 01 */	addi r3, r5, 1
/* 80097164 00092684  7C 67 18 50 */	subf r3, r7, r3
/* 80097168 00092688  7C 07 28 40 */	cmplw r7, r5
/* 8009716C 0009268C  B0 08 00 00 */	sth r0, 0(r8)
/* 80097170 00092690  54 63 F8 7E */	srwi r3, r3, 1
/* 80097174 00092694  40 80 00 E0 */	bge lbl_80097254
/* 80097178 00092698  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 8009717C 0009269C  7C 09 03 A6 */	mtctr r0
/* 80097180 000926A0  41 82 00 A4 */	beq lbl_80097224
lbl_80097184:
/* 80097184 000926A4  A0 C8 00 00 */	lhz r6, 0(r8)
/* 80097188 000926A8  A0 07 00 00 */	lhz r0, 0(r7)
/* 8009718C 000926AC  A0 A8 00 02 */	lhz r5, 2(r8)
/* 80097190 000926B0  7C 06 02 14 */	add r0, r6, r0
/* 80097194 000926B4  B0 08 00 00 */	sth r0, 0(r8)
/* 80097198 000926B8  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 8009719C 000926BC  A0 07 00 00 */	lhz r0, 0(r7)
/* 800971A0 000926C0  7C 00 00 F8 */	nor r0, r0, r0
/* 800971A4 000926C4  7C 05 02 14 */	add r0, r5, r0
/* 800971A8 000926C8  B0 08 00 02 */	sth r0, 2(r8)
/* 800971AC 000926CC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 800971B0 000926D0  A0 07 00 02 */	lhz r0, 2(r7)
/* 800971B4 000926D4  7C 06 02 14 */	add r0, r6, r0
/* 800971B8 000926D8  B0 08 00 00 */	sth r0, 0(r8)
/* 800971BC 000926DC  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 800971C0 000926E0  A0 07 00 02 */	lhz r0, 2(r7)
/* 800971C4 000926E4  7C 00 00 F8 */	nor r0, r0, r0
/* 800971C8 000926E8  7C 05 02 14 */	add r0, r5, r0
/* 800971CC 000926EC  B0 08 00 02 */	sth r0, 2(r8)
/* 800971D0 000926F0  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 800971D4 000926F4  A0 07 00 04 */	lhz r0, 4(r7)
/* 800971D8 000926F8  7C 06 02 14 */	add r0, r6, r0
/* 800971DC 000926FC  B0 08 00 00 */	sth r0, 0(r8)
/* 800971E0 00092700  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 800971E4 00092704  A0 07 00 04 */	lhz r0, 4(r7)
/* 800971E8 00092708  7C 00 00 F8 */	nor r0, r0, r0
/* 800971EC 0009270C  7C 05 02 14 */	add r0, r5, r0
/* 800971F0 00092710  B0 08 00 02 */	sth r0, 2(r8)
/* 800971F4 00092714  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 800971F8 00092718  A0 07 00 06 */	lhz r0, 6(r7)
/* 800971FC 0009271C  7C 06 02 14 */	add r0, r6, r0
/* 80097200 00092720  B0 08 00 00 */	sth r0, 0(r8)
/* 80097204 00092724  A0 07 00 06 */	lhz r0, 6(r7)
/* 80097208 00092728  38 E7 00 08 */	addi r7, r7, 8
/* 8009720C 0009272C  7C 00 00 F8 */	nor r0, r0, r0
/* 80097210 00092730  7C 05 02 14 */	add r0, r5, r0
/* 80097214 00092734  B0 08 00 02 */	sth r0, 2(r8)
/* 80097218 00092738  42 00 FF 6C */	bdnz lbl_80097184
/* 8009721C 0009273C  70 63 00 03 */	andi. r3, r3, 3
/* 80097220 00092740  41 82 00 34 */	beq lbl_80097254
lbl_80097224:
/* 80097224 00092744  7C 69 03 A6 */	mtctr r3
lbl_80097228:
/* 80097228 00092748  A0 C8 00 00 */	lhz r6, 0(r8)
/* 8009722C 0009274C  A0 07 00 00 */	lhz r0, 0(r7)
/* 80097230 00092750  A0 A8 00 02 */	lhz r5, 2(r8)
/* 80097234 00092754  7C 06 02 14 */	add r0, r6, r0
/* 80097238 00092758  B0 08 00 00 */	sth r0, 0(r8)
/* 8009723C 0009275C  A0 07 00 00 */	lhz r0, 0(r7)
/* 80097240 00092760  38 E7 00 02 */	addi r7, r7, 2
/* 80097244 00092764  7C 00 00 F8 */	nor r0, r0, r0
/* 80097248 00092768  7C 05 02 14 */	add r0, r5, r0
/* 8009724C 0009276C  B0 08 00 02 */	sth r0, 2(r8)
/* 80097250 00092770  42 00 FF D8 */	bdnz lbl_80097228
lbl_80097254:
/* 80097254 00092774  3C 60 80 1C */	lis r3, lbl_801C4900@ha
/* 80097258 00092778  38 63 49 00 */	addi r3, r3, lbl_801C4900@l
/* 8009725C 0009277C  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80097260 00092780  7C 04 00 40 */	cmplw r4, r0
/* 80097264 00092784  40 80 00 08 */	bge lbl_8009726C
/* 80097268 00092788  90 83 00 40 */	stw r4, 0x40(r3)
lbl_8009726C:
/* 8009726C 0009278C  3C 80 80 1C */	lis r4, lbl_801C4900@ha
/* 80097270 00092790  38 84 49 00 */	addi r4, r4, lbl_801C4900@l
/* 80097274 00092794  80 04 00 40 */	lwz r0, 0x40(r4)
/* 80097278 00092798  28 00 00 14 */	cmplwi r0, 0x14
/* 8009727C 0009279C  41 81 00 28 */	bgt lbl_800972A4
/* 80097280 000927A0  A0 64 00 3C */	lhz r3, 0x3c(r4)
/* 80097284 000927A4  54 60 04 6A */	rlwinm r0, r3, 0, 0x11, 0x15
/* 80097288 000927A8  28 00 50 00 */	cmplwi r0, 0x5000
/* 8009728C 000927AC  41 82 00 10 */	beq lbl_8009729C
/* 80097290 000927B0  54 60 06 32 */	rlwinm r0, r3, 0, 0x18, 0x19
/* 80097294 000927B4  28 00 00 C0 */	cmplwi r0, 0xc0
/* 80097298 000927B8  40 82 00 0C */	bne lbl_800972A4
lbl_8009729C:
/* 8009729C 000927BC  38 00 00 00 */	li r0, 0
/* 800972A0 000927C0  B0 04 00 3C */	sth r0, 0x3c(r4)
lbl_800972A4:
/* 800972A4 000927C4  3C C0 80 1C */	lis r6, lbl_801C4900@ha
/* 800972A8 000927C8  3C A0 80 09 */	lis r5, WriteSramCallback@ha
/* 800972AC 000927CC  38 C6 49 00 */	addi r6, r6, lbl_801C4900@l
/* 800972B0 000927D0  38 60 00 00 */	li r3, 0
/* 800972B4 000927D4  83 E6 00 40 */	lwz r31, 0x40(r6)
/* 800972B8 000927D8  38 A5 6D C8 */	addi r5, r5, WriteSramCallback@l
/* 800972BC 000927DC  38 80 00 01 */	li r4, 1
/* 800972C0 000927E0  23 BF 00 40 */	subfic r29, r31, 0x40
/* 800972C4 000927E4  7F C6 FA 14 */	add r30, r6, r31
/* 800972C8 000927E8  48 00 4F D9 */	bl EXILock
/* 800972CC 000927EC  2C 03 00 00 */	cmpwi r3, 0
/* 800972D0 000927F0  40 82 00 0C */	bne lbl_800972DC
/* 800972D4 000927F4  38 00 00 00 */	li r0, 0
/* 800972D8 000927F8  48 00 00 B4 */	b lbl_8009738C
lbl_800972DC:
/* 800972DC 000927FC  38 60 00 00 */	li r3, 0
/* 800972E0 00092800  38 80 00 01 */	li r4, 1
/* 800972E4 00092804  38 A0 00 03 */	li r5, 3
/* 800972E8 00092808  48 00 48 25 */	bl EXISelect
/* 800972EC 0009280C  2C 03 00 00 */	cmpwi r3, 0
/* 800972F0 00092810  40 82 00 14 */	bne lbl_80097304
/* 800972F4 00092814  38 60 00 00 */	li r3, 0
/* 800972F8 00092818  48 00 50 A5 */	bl EXIUnlock
/* 800972FC 0009281C  38 00 00 00 */	li r0, 0
/* 80097300 00092820  48 00 00 8C */	b lbl_8009738C
lbl_80097304:
/* 80097304 00092824  57 E3 30 32 */	slwi r3, r31, 6
/* 80097308 00092828  38 81 00 08 */	addi r4, r1, 8
/* 8009730C 0009282C  38 03 01 00 */	addi r0, r3, 0x100
/* 80097310 00092830  38 A0 00 04 */	li r5, 4
/* 80097314 00092834  64 00 A0 00 */	oris r0, r0, 0xa000
/* 80097318 00092838  38 60 00 00 */	li r3, 0
/* 8009731C 0009283C  90 01 00 08 */	stw r0, 8(r1)
/* 80097320 00092840  38 C0 00 01 */	li r6, 1
/* 80097324 00092844  38 E0 00 00 */	li r7, 0
/* 80097328 00092848  48 00 3D 7D */	bl EXIImm
/* 8009732C 0009284C  7C 60 00 34 */	cntlzw r0, r3
/* 80097330 00092850  38 60 00 00 */	li r3, 0
/* 80097334 00092854  54 1F D9 7E */	srwi r31, r0, 5
/* 80097338 00092858  48 00 41 85 */	bl EXISync
/* 8009733C 0009285C  7C 60 00 34 */	cntlzw r0, r3
/* 80097340 00092860  7F C4 F3 78 */	mr r4, r30
/* 80097344 00092864  54 00 D9 7E */	srwi r0, r0, 5
/* 80097348 00092868  7F A5 EB 78 */	mr r5, r29
/* 8009734C 0009286C  7F FD 03 78 */	or r29, r31, r0
/* 80097350 00092870  38 60 00 00 */	li r3, 0
/* 80097354 00092874  38 C0 00 01 */	li r6, 1
/* 80097358 00092878  48 00 3F C9 */	bl EXIImmEx
/* 8009735C 0009287C  7C 60 00 34 */	cntlzw r0, r3
/* 80097360 00092880  38 60 00 00 */	li r3, 0
/* 80097364 00092884  54 00 D9 7E */	srwi r0, r0, 5
/* 80097368 00092888  7F BD 03 78 */	or r29, r29, r0
/* 8009736C 0009288C  48 00 48 D1 */	bl EXIDeselect
/* 80097370 00092890  7C 60 00 34 */	cntlzw r0, r3
/* 80097374 00092894  38 60 00 00 */	li r3, 0
/* 80097378 00092898  54 00 D9 7E */	srwi r0, r0, 5
/* 8009737C 0009289C  7F BD 03 78 */	or r29, r29, r0
/* 80097380 000928A0  48 00 50 1D */	bl EXIUnlock
/* 80097384 000928A4  7F A0 00 34 */	cntlzw r0, r29
/* 80097388 000928A8  54 00 D9 7E */	srwi r0, r0, 5
lbl_8009738C:
/* 8009738C 000928AC  3C 60 80 1C */	lis r3, lbl_801C4900@ha
/* 80097390 000928B0  2C 00 00 00 */	cmpwi r0, 0
/* 80097394 000928B4  38 63 49 00 */	addi r3, r3, lbl_801C4900@l
/* 80097398 000928B8  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8009739C 000928BC  41 82 00 0C */	beq lbl_800973A8
/* 800973A0 000928C0  38 00 00 40 */	li r0, 0x40
/* 800973A4 000928C4  90 03 00 40 */	stw r0, 0x40(r3)
lbl_800973A8:
/* 800973A8 000928C8  3F E0 80 1C */	lis r31, lbl_801C4900@ha
/* 800973AC 000928CC  38 00 00 00 */	li r0, 0
/* 800973B0 000928D0  3B FF 49 00 */	addi r31, r31, lbl_801C4900@l
/* 800973B4 000928D4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800973B8 000928D8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 800973BC 000928DC  4B FF DF 21 */	bl OSRestoreInterrupts
/* 800973C0 000928E0  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 800973C4 000928E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800973C8 000928E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800973CC 000928EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800973D0 000928F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800973D4 000928F4  7C 08 03 A6 */	mtlr r0
/* 800973D8 000928F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800973DC 000928FC  4E 80 00 20 */	blr 

glabel __OSSyncSram
/* 800973E0 00092900  3C 60 80 1C */	lis r3, lbl_801C4900@ha
/* 800973E4 00092904  38 63 49 00 */	addi r3, r3, lbl_801C4900@l
/* 800973E8 00092908  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 800973EC 0009290C  4E 80 00 20 */	blr 

glabel __OSReadROM
/* 800973F0 00092910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800973F4 00092914  7C 08 02 A6 */	mflr r0
/* 800973F8 00092918  90 01 00 24 */	stw r0, 0x24(r1)
/* 800973FC 0009291C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80097400 00092920  7C BF 2B 78 */	mr r31, r5
/* 80097404 00092924  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80097408 00092928  7C 9E 23 78 */	mr r30, r4
/* 8009740C 0009292C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80097410 00092930  7C 7D 1B 78 */	mr r29, r3
/* 80097414 00092934  4B FF 98 2D */	bl DCInvalidateRange
/* 80097418 00092938  38 60 00 00 */	li r3, 0
/* 8009741C 0009293C  38 80 00 01 */	li r4, 1
/* 80097420 00092940  38 A0 00 00 */	li r5, 0
/* 80097424 00092944  48 00 4E 7D */	bl EXILock
/* 80097428 00092948  2C 03 00 00 */	cmpwi r3, 0
/* 8009742C 0009294C  40 82 00 0C */	bne lbl_80097438
/* 80097430 00092950  38 60 00 00 */	li r3, 0
/* 80097434 00092954  48 00 00 C4 */	b lbl_800974F8
lbl_80097438:
/* 80097438 00092958  38 60 00 00 */	li r3, 0
/* 8009743C 0009295C  38 80 00 01 */	li r4, 1
/* 80097440 00092960  38 A0 00 03 */	li r5, 3
/* 80097444 00092964  48 00 46 C9 */	bl EXISelect
/* 80097448 00092968  2C 03 00 00 */	cmpwi r3, 0
/* 8009744C 0009296C  40 82 00 14 */	bne lbl_80097460
/* 80097450 00092970  38 60 00 00 */	li r3, 0
/* 80097454 00092974  48 00 4F 49 */	bl EXIUnlock
/* 80097458 00092978  38 60 00 00 */	li r3, 0
/* 8009745C 0009297C  48 00 00 9C */	b lbl_800974F8
lbl_80097460:
/* 80097460 00092980  57 E0 30 32 */	slwi r0, r31, 6
/* 80097464 00092984  38 81 00 08 */	addi r4, r1, 8
/* 80097468 00092988  90 01 00 08 */	stw r0, 8(r1)
/* 8009746C 0009298C  38 60 00 00 */	li r3, 0
/* 80097470 00092990  38 A0 00 04 */	li r5, 4
/* 80097474 00092994  38 C0 00 01 */	li r6, 1
/* 80097478 00092998  38 E0 00 00 */	li r7, 0
/* 8009747C 0009299C  48 00 3C 29 */	bl EXIImm
/* 80097480 000929A0  7C 60 00 34 */	cntlzw r0, r3
/* 80097484 000929A4  38 60 00 00 */	li r3, 0
/* 80097488 000929A8  54 1F D9 7E */	srwi r31, r0, 5
/* 8009748C 000929AC  48 00 40 31 */	bl EXISync
/* 80097490 000929B0  7C 60 00 34 */	cntlzw r0, r3
/* 80097494 000929B4  7F A4 EB 78 */	mr r4, r29
/* 80097498 000929B8  54 00 D9 7E */	srwi r0, r0, 5
/* 8009749C 000929BC  7F C5 F3 78 */	mr r5, r30
/* 800974A0 000929C0  7F FF 03 78 */	or r31, r31, r0
/* 800974A4 000929C4  38 60 00 00 */	li r3, 0
/* 800974A8 000929C8  38 C0 00 00 */	li r6, 0
/* 800974AC 000929CC  38 E0 00 00 */	li r7, 0
/* 800974B0 000929D0  48 00 3F 15 */	bl EXIDma
/* 800974B4 000929D4  7C 60 00 34 */	cntlzw r0, r3
/* 800974B8 000929D8  38 60 00 00 */	li r3, 0
/* 800974BC 000929DC  54 00 D9 7E */	srwi r0, r0, 5
/* 800974C0 000929E0  7F FF 03 78 */	or r31, r31, r0
/* 800974C4 000929E4  48 00 3F F9 */	bl EXISync
/* 800974C8 000929E8  7C 60 00 34 */	cntlzw r0, r3
/* 800974CC 000929EC  38 60 00 00 */	li r3, 0
/* 800974D0 000929F0  54 00 D9 7E */	srwi r0, r0, 5
/* 800974D4 000929F4  7F FF 03 78 */	or r31, r31, r0
/* 800974D8 000929F8  48 00 47 65 */	bl EXIDeselect
/* 800974DC 000929FC  7C 60 00 34 */	cntlzw r0, r3
/* 800974E0 00092A00  38 60 00 00 */	li r3, 0
/* 800974E4 00092A04  54 00 D9 7E */	srwi r0, r0, 5
/* 800974E8 00092A08  7F FF 03 78 */	or r31, r31, r0
/* 800974EC 00092A0C  48 00 4E B1 */	bl EXIUnlock
/* 800974F0 00092A10  7F E0 00 34 */	cntlzw r0, r31
/* 800974F4 00092A14  54 03 D9 7E */	srwi r3, r0, 5
lbl_800974F8:
/* 800974F8 00092A18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800974FC 00092A1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80097500 00092A20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80097504 00092A24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80097508 00092A28  7C 08 03 A6 */	mtlr r0
/* 8009750C 00092A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80097510 00092A30  4E 80 00 20 */	blr 

glabel OSGetWirelessID
/* 80097514 00092A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80097518 00092A38  7C 08 02 A6 */	mflr r0
/* 8009751C 00092A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80097520 00092A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80097524 00092A44  7C 7F 1B 78 */	mr r31, r3
/* 80097528 00092A48  4B FF DD 8D */	bl OSDisableInterrupts
/* 8009752C 00092A4C  3C 80 80 1C */	lis r4, lbl_801C4900@ha
/* 80097530 00092A50  38 84 49 00 */	addi r4, r4, lbl_801C4900@l
/* 80097534 00092A54  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80097538 00092A58  2C 00 00 00 */	cmpwi r0, 0
/* 8009753C 00092A5C  41 82 00 10 */	beq lbl_8009754C
/* 80097540 00092A60  4B FF DD 9D */	bl OSRestoreInterrupts
/* 80097544 00092A64  38 A0 00 00 */	li r5, 0
/* 80097548 00092A68  48 00 00 14 */	b lbl_8009755C
lbl_8009754C:
/* 8009754C 00092A6C  38 00 00 01 */	li r0, 1
/* 80097550 00092A70  90 64 00 44 */	stw r3, 0x44(r4)
/* 80097554 00092A74  38 A4 00 14 */	addi r5, r4, 0x14
/* 80097558 00092A78  90 04 00 48 */	stw r0, 0x48(r4)
lbl_8009755C:
/* 8009755C 00092A7C  57 E0 08 3C */	slwi r0, r31, 1
/* 80097560 00092A80  38 60 00 00 */	li r3, 0
/* 80097564 00092A84  7C A5 02 14 */	add r5, r5, r0
/* 80097568 00092A88  38 80 00 14 */	li r4, 0x14
/* 8009756C 00092A8C  A3 E5 00 1C */	lhz r31, 0x1c(r5)
/* 80097570 00092A90  4B FF FB 91 */	bl UnlockSram
/* 80097574 00092A94  7F E3 FB 78 */	mr r3, r31
/* 80097578 00092A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009757C 00092A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80097580 00092AA0  7C 08 03 A6 */	mtlr r0
/* 80097584 00092AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80097588 00092AA8  4E 80 00 20 */	blr 

glabel OSSetWirelessID
/* 8009758C 00092AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80097590 00092AB0  7C 08 02 A6 */	mflr r0
/* 80097594 00092AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80097598 00092AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009759C 00092ABC  7C 9F 23 78 */	mr r31, r4
/* 800975A0 00092AC0  93 C1 00 08 */	stw r30, 8(r1)
/* 800975A4 00092AC4  7C 7E 1B 78 */	mr r30, r3
/* 800975A8 00092AC8  4B FF DD 0D */	bl OSDisableInterrupts
/* 800975AC 00092ACC  3C 80 80 1C */	lis r4, lbl_801C4900@ha
/* 800975B0 00092AD0  38 84 49 00 */	addi r4, r4, lbl_801C4900@l
/* 800975B4 00092AD4  80 04 00 48 */	lwz r0, 0x48(r4)
/* 800975B8 00092AD8  2C 00 00 00 */	cmpwi r0, 0
/* 800975BC 00092ADC  41 82 00 10 */	beq lbl_800975CC
/* 800975C0 00092AE0  4B FF DD 1D */	bl OSRestoreInterrupts
/* 800975C4 00092AE4  38 60 00 00 */	li r3, 0
/* 800975C8 00092AE8  48 00 00 14 */	b lbl_800975DC
lbl_800975CC:
/* 800975CC 00092AEC  38 00 00 01 */	li r0, 1
/* 800975D0 00092AF0  90 64 00 44 */	stw r3, 0x44(r4)
/* 800975D4 00092AF4  38 64 00 14 */	addi r3, r4, 0x14
/* 800975D8 00092AF8  90 04 00 48 */	stw r0, 0x48(r4)
lbl_800975DC:
/* 800975DC 00092AFC  57 C0 08 3C */	slwi r0, r30, 1
/* 800975E0 00092B00  7C 63 02 14 */	add r3, r3, r0
/* 800975E4 00092B04  A0 03 00 1C */	lhz r0, 0x1c(r3)
/* 800975E8 00092B08  7C 1F 00 40 */	cmplw r31, r0
/* 800975EC 00092B0C  41 82 00 18 */	beq lbl_80097604
/* 800975F0 00092B10  B3 E3 00 1C */	sth r31, 0x1c(r3)
/* 800975F4 00092B14  38 60 00 01 */	li r3, 1
/* 800975F8 00092B18  38 80 00 14 */	li r4, 0x14
/* 800975FC 00092B1C  4B FF FB 05 */	bl UnlockSram
/* 80097600 00092B20  48 00 00 10 */	b lbl_80097610
lbl_80097604:
/* 80097604 00092B24  38 60 00 00 */	li r3, 0
/* 80097608 00092B28  38 80 00 14 */	li r4, 0x14
/* 8009760C 00092B2C  4B FF FA F5 */	bl UnlockSram
lbl_80097610:
/* 80097610 00092B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80097614 00092B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80097618 00092B38  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009761C 00092B3C  7C 08 03 A6 */	mtlr r0
/* 80097620 00092B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80097624 00092B44  4E 80 00 20 */	blr 

glabel __OSGetRTCFlags
/* 80097628 00092B48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009762C 00092B4C  7C 08 02 A6 */	mflr r0
/* 80097630 00092B50  38 80 00 01 */	li r4, 1
/* 80097634 00092B54  38 A0 00 00 */	li r5, 0
/* 80097638 00092B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009763C 00092B5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80097640 00092B60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80097644 00092B64  7C 7E 1B 78 */	mr r30, r3
/* 80097648 00092B68  38 60 00 00 */	li r3, 0
/* 8009764C 00092B6C  48 00 4C 55 */	bl EXILock
/* 80097650 00092B70  2C 03 00 00 */	cmpwi r3, 0
/* 80097654 00092B74  40 82 00 0C */	bne lbl_80097660
/* 80097658 00092B78  38 60 00 00 */	li r3, 0
/* 8009765C 00092B7C  48 00 00 D0 */	b lbl_8009772C
lbl_80097660:
/* 80097660 00092B80  38 60 00 00 */	li r3, 0
/* 80097664 00092B84  38 80 00 01 */	li r4, 1
/* 80097668 00092B88  38 A0 00 03 */	li r5, 3
/* 8009766C 00092B8C  48 00 44 A1 */	bl EXISelect
/* 80097670 00092B90  2C 03 00 00 */	cmpwi r3, 0
/* 80097674 00092B94  40 82 00 14 */	bne lbl_80097688
/* 80097678 00092B98  38 60 00 00 */	li r3, 0
/* 8009767C 00092B9C  48 00 4D 21 */	bl EXIUnlock
/* 80097680 00092BA0  38 60 00 00 */	li r3, 0
/* 80097684 00092BA4  48 00 00 A8 */	b lbl_8009772C
lbl_80097688:
/* 80097688 00092BA8  3C 60 21 00 */	lis r3, 0x21000800@ha
/* 8009768C 00092BAC  38 81 00 08 */	addi r4, r1, 8
/* 80097690 00092BB0  38 03 08 00 */	addi r0, r3, 0x21000800@l
/* 80097694 00092BB4  38 A0 00 04 */	li r5, 4
/* 80097698 00092BB8  90 01 00 08 */	stw r0, 8(r1)
/* 8009769C 00092BBC  38 60 00 00 */	li r3, 0
/* 800976A0 00092BC0  38 C0 00 01 */	li r6, 1
/* 800976A4 00092BC4  38 E0 00 00 */	li r7, 0
/* 800976A8 00092BC8  48 00 39 FD */	bl EXIImm
/* 800976AC 00092BCC  7C 60 00 34 */	cntlzw r0, r3
/* 800976B0 00092BD0  38 60 00 00 */	li r3, 0
/* 800976B4 00092BD4  54 1F D9 7E */	srwi r31, r0, 5
/* 800976B8 00092BD8  48 00 3E 05 */	bl EXISync
/* 800976BC 00092BDC  7C 60 00 34 */	cntlzw r0, r3
/* 800976C0 00092BE0  38 81 00 08 */	addi r4, r1, 8
/* 800976C4 00092BE4  54 00 D9 7E */	srwi r0, r0, 5
/* 800976C8 00092BE8  38 60 00 00 */	li r3, 0
/* 800976CC 00092BEC  7F FF 03 78 */	or r31, r31, r0
/* 800976D0 00092BF0  38 A0 00 04 */	li r5, 4
/* 800976D4 00092BF4  38 C0 00 00 */	li r6, 0
/* 800976D8 00092BF8  38 E0 00 00 */	li r7, 0
/* 800976DC 00092BFC  48 00 39 C9 */	bl EXIImm
/* 800976E0 00092C00  7C 60 00 34 */	cntlzw r0, r3
/* 800976E4 00092C04  38 60 00 00 */	li r3, 0
/* 800976E8 00092C08  54 00 D9 7E */	srwi r0, r0, 5
/* 800976EC 00092C0C  7F FF 03 78 */	or r31, r31, r0
/* 800976F0 00092C10  48 00 3D CD */	bl EXISync
/* 800976F4 00092C14  7C 60 00 34 */	cntlzw r0, r3
/* 800976F8 00092C18  38 60 00 00 */	li r3, 0
/* 800976FC 00092C1C  54 00 D9 7E */	srwi r0, r0, 5
/* 80097700 00092C20  7F FF 03 78 */	or r31, r31, r0
/* 80097704 00092C24  48 00 45 39 */	bl EXIDeselect
/* 80097708 00092C28  7C 60 00 34 */	cntlzw r0, r3
/* 8009770C 00092C2C  38 60 00 00 */	li r3, 0
/* 80097710 00092C30  54 00 D9 7E */	srwi r0, r0, 5
/* 80097714 00092C34  7F FF 03 78 */	or r31, r31, r0
/* 80097718 00092C38  48 00 4C 85 */	bl EXIUnlock
/* 8009771C 00092C3C  80 81 00 08 */	lwz r4, 8(r1)
/* 80097720 00092C40  7F E0 00 34 */	cntlzw r0, r31
/* 80097724 00092C44  54 03 D9 7E */	srwi r3, r0, 5
/* 80097728 00092C48  90 9E 00 00 */	stw r4, 0(r30)
lbl_8009772C:
/* 8009772C 00092C4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80097730 00092C50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80097734 00092C54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80097738 00092C58  7C 08 03 A6 */	mtlr r0
/* 8009773C 00092C5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80097740 00092C60  4E 80 00 20 */	blr 

glabel __OSClearRTCFlags
/* 80097744 00092C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80097748 00092C68  7C 08 02 A6 */	mflr r0
/* 8009774C 00092C6C  38 60 00 00 */	li r3, 0
/* 80097750 00092C70  38 80 00 01 */	li r4, 1
/* 80097754 00092C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80097758 00092C78  38 00 00 00 */	li r0, 0
/* 8009775C 00092C7C  38 A0 00 00 */	li r5, 0
/* 80097760 00092C80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80097764 00092C84  90 01 00 08 */	stw r0, 8(r1)
/* 80097768 00092C88  48 00 4B 39 */	bl EXILock
/* 8009776C 00092C8C  2C 03 00 00 */	cmpwi r3, 0
/* 80097770 00092C90  40 82 00 0C */	bne lbl_8009777C
/* 80097774 00092C94  38 60 00 00 */	li r3, 0
/* 80097778 00092C98  48 00 00 C8 */	b lbl_80097840
lbl_8009777C:
/* 8009777C 00092C9C  38 60 00 00 */	li r3, 0
/* 80097780 00092CA0  38 80 00 01 */	li r4, 1
/* 80097784 00092CA4  38 A0 00 03 */	li r5, 3
/* 80097788 00092CA8  48 00 43 85 */	bl EXISelect
/* 8009778C 00092CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80097790 00092CB0  40 82 00 14 */	bne lbl_800977A4
/* 80097794 00092CB4  38 60 00 00 */	li r3, 0
/* 80097798 00092CB8  48 00 4C 05 */	bl EXIUnlock
/* 8009779C 00092CBC  38 60 00 00 */	li r3, 0
/* 800977A0 00092CC0  48 00 00 A0 */	b lbl_80097840
lbl_800977A4:
/* 800977A4 00092CC4  3C 60 A1 00 */	lis r3, 0xA1000800@ha
/* 800977A8 00092CC8  38 81 00 0C */	addi r4, r1, 0xc
/* 800977AC 00092CCC  38 03 08 00 */	addi r0, r3, 0xA1000800@l
/* 800977B0 00092CD0  38 A0 00 04 */	li r5, 4
/* 800977B4 00092CD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800977B8 00092CD8  38 60 00 00 */	li r3, 0
/* 800977BC 00092CDC  38 C0 00 01 */	li r6, 1
/* 800977C0 00092CE0  38 E0 00 00 */	li r7, 0
/* 800977C4 00092CE4  48 00 38 E1 */	bl EXIImm
/* 800977C8 00092CE8  7C 60 00 34 */	cntlzw r0, r3
/* 800977CC 00092CEC  38 60 00 00 */	li r3, 0
/* 800977D0 00092CF0  54 1F D9 7E */	srwi r31, r0, 5
/* 800977D4 00092CF4  48 00 3C E9 */	bl EXISync
/* 800977D8 00092CF8  7C 60 00 34 */	cntlzw r0, r3
/* 800977DC 00092CFC  38 81 00 08 */	addi r4, r1, 8
/* 800977E0 00092D00  54 00 D9 7E */	srwi r0, r0, 5
/* 800977E4 00092D04  38 60 00 00 */	li r3, 0
/* 800977E8 00092D08  7F FF 03 78 */	or r31, r31, r0
/* 800977EC 00092D0C  38 A0 00 04 */	li r5, 4
/* 800977F0 00092D10  38 C0 00 01 */	li r6, 1
/* 800977F4 00092D14  38 E0 00 00 */	li r7, 0
/* 800977F8 00092D18  48 00 38 AD */	bl EXIImm
/* 800977FC 00092D1C  7C 60 00 34 */	cntlzw r0, r3
/* 80097800 00092D20  38 60 00 00 */	li r3, 0
/* 80097804 00092D24  54 00 D9 7E */	srwi r0, r0, 5
/* 80097808 00092D28  7F FF 03 78 */	or r31, r31, r0
/* 8009780C 00092D2C  48 00 3C B1 */	bl EXISync
/* 80097810 00092D30  7C 60 00 34 */	cntlzw r0, r3
/* 80097814 00092D34  38 60 00 00 */	li r3, 0
/* 80097818 00092D38  54 00 D9 7E */	srwi r0, r0, 5
/* 8009781C 00092D3C  7F FF 03 78 */	or r31, r31, r0
/* 80097820 00092D40  48 00 44 1D */	bl EXIDeselect
/* 80097824 00092D44  7C 60 00 34 */	cntlzw r0, r3
/* 80097828 00092D48  38 60 00 00 */	li r3, 0
/* 8009782C 00092D4C  54 00 D9 7E */	srwi r0, r0, 5
/* 80097830 00092D50  7F FF 03 78 */	or r31, r31, r0
/* 80097834 00092D54  48 00 4B 69 */	bl EXIUnlock
/* 80097838 00092D58  7F E0 00 34 */	cntlzw r0, r31
/* 8009783C 00092D5C  54 03 D9 7E */	srwi r3, r0, 5
lbl_80097840:
/* 80097840 00092D60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80097844 00092D64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80097848 00092D68  7C 08 03 A6 */	mtlr r0
/* 8009784C 00092D6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80097850 00092D70  4E 80 00 20 */	blr 