.include "macros.inc"

.section .text, "ax"

glabel xlFileGetSize
/* 80086EBC 000823DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80086EC0 000823E0  7C 08 02 A6 */	mflr r0
/* 80086EC4 000823E4  7C 85 23 78 */	mr r5, r4
/* 80086EC8 000823E8  38 80 00 01 */	li r4, 1
/* 80086ECC 000823EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80086ED0 000823F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80086ED4 000823F4  7C 7F 1B 78 */	mr r31, r3
/* 80086ED8 000823F8  38 61 00 08 */	addi r3, r1, 8
/* 80086EDC 000823FC  4B FF E0 39 */	bl xlFileOpen
/* 80086EE0 00082400  2C 03 00 00 */	cmpwi r3, 0
/* 80086EE4 00082404  41 82 00 38 */	beq .L_80086F1C
/* 80086EE8 00082408  2C 1F 00 00 */	cmpwi r31, 0
/* 80086EEC 0008240C  41 82 00 10 */	beq .L_80086EFC
/* 80086EF0 00082410  80 61 00 08 */	lwz r3, 8(r1)
/* 80086EF4 00082414  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80086EF8 00082418  90 1F 00 00 */	stw r0, 0(r31)
.L_80086EFC:
/* 80086EFC 0008241C  38 61 00 08 */	addi r3, r1, 8
/* 80086F00 00082420  4B FF E0 FD */	bl xlFileClose
/* 80086F04 00082424  2C 03 00 00 */	cmpwi r3, 0
/* 80086F08 00082428  40 82 00 0C */	bne .L_80086F14
/* 80086F0C 0008242C  38 60 00 00 */	li r3, 0
/* 80086F10 00082430  48 00 00 10 */	b .L_80086F20
.L_80086F14:
/* 80086F14 00082434  38 60 00 01 */	li r3, 1
/* 80086F18 00082438  48 00 00 08 */	b .L_80086F20
.L_80086F1C:
/* 80086F1C 0008243C  38 60 00 00 */	li r3, 0
.L_80086F20:
/* 80086F20 00082440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80086F24 00082444  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80086F28 00082448  7C 08 03 A6 */	mtlr r0
/* 80086F2C 0008244C  38 21 00 20 */	addi r1, r1, 0x20
/* 80086F30 00082450  4E 80 00 20 */	blr

glabel func_80086F34
/* 80086F34 00082454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80086F38 00082458  7C 08 02 A6 */	mflr r0
/* 80086F3C 0008245C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80086F40 00082460  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80086F44 00082464  7C 9F 23 78 */	mr r31, r4
/* 80086F48 00082468  38 80 00 01 */	li r4, 1
/* 80086F4C 0008246C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80086F50 00082470  7C 7E 1B 78 */	mr r30, r3
/* 80086F54 00082474  7F C5 F3 78 */	mr r5, r30
/* 80086F58 00082478  38 61 00 08 */	addi r3, r1, 8
/* 80086F5C 0008247C  4B FF DF B9 */	bl xlFileOpen
/* 80086F60 00082480  2C 03 00 00 */	cmpwi r3, 0
/* 80086F64 00082484  41 82 00 38 */	beq .L_80086F9C
/* 80086F68 00082488  34 01 00 10 */	addic. r0, r1, 0x10
/* 80086F6C 0008248C  41 82 00 10 */	beq .L_80086F7C
/* 80086F70 00082490  80 61 00 08 */	lwz r3, 8(r1)
/* 80086F74 00082494  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80086F78 00082498  90 01 00 10 */	stw r0, 0x10(r1)
.L_80086F7C:
/* 80086F7C 0008249C  38 61 00 08 */	addi r3, r1, 8
/* 80086F80 000824A0  4B FF E0 7D */	bl xlFileClose
/* 80086F84 000824A4  2C 03 00 00 */	cmpwi r3, 0
/* 80086F88 000824A8  40 82 00 0C */	bne .L_80086F94
/* 80086F8C 000824AC  38 00 00 00 */	li r0, 0
/* 80086F90 000824B0  48 00 00 10 */	b .L_80086FA0
.L_80086F94:
/* 80086F94 000824B4  38 00 00 01 */	li r0, 1
/* 80086F98 000824B8  48 00 00 08 */	b .L_80086FA0
.L_80086F9C:
/* 80086F9C 000824BC  38 00 00 00 */	li r0, 0
.L_80086FA0:
/* 80086FA0 000824C0  2C 00 00 00 */	cmpwi r0, 0
/* 80086FA4 000824C4  41 82 00 7C */	beq .L_80087020
/* 80086FA8 000824C8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80086FAC 000824CC  7F E3 FB 78 */	mr r3, r31
/* 80086FB0 000824D0  64 04 30 00 */	oris r4, r0, 0x3000
/* 80086FB4 000824D4  4B FF EF 95 */	bl xlHeapTake
/* 80086FB8 000824D8  2C 03 00 00 */	cmpwi r3, 0
/* 80086FBC 000824DC  40 82 00 0C */	bne .L_80086FC8
/* 80086FC0 000824E0  38 60 00 00 */	li r3, 0
/* 80086FC4 000824E4  48 00 00 60 */	b .L_80087024
.L_80086FC8:
/* 80086FC8 000824E8  7F C5 F3 78 */	mr r5, r30
/* 80086FCC 000824EC  38 61 00 0C */	addi r3, r1, 0xc
/* 80086FD0 000824F0  38 80 00 01 */	li r4, 1
/* 80086FD4 000824F4  4B FF DF 41 */	bl xlFileOpen
/* 80086FD8 000824F8  2C 03 00 00 */	cmpwi r3, 0
/* 80086FDC 000824FC  40 82 00 0C */	bne .L_80086FE8
/* 80086FE0 00082500  38 60 00 00 */	li r3, 0
/* 80086FE4 00082504  48 00 00 40 */	b .L_80087024
.L_80086FE8:
/* 80086FE8 00082508  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80086FEC 0008250C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80086FF0 00082510  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80086FF4 00082514  4B FF E0 35 */	bl xlFileRead
/* 80086FF8 00082518  2C 03 00 00 */	cmpwi r3, 0
/* 80086FFC 0008251C  40 82 00 0C */	bne .L_80087008
/* 80087000 00082520  38 60 00 00 */	li r3, 0
/* 80087004 00082524  48 00 00 20 */	b .L_80087024
.L_80087008:
/* 80087008 00082528  38 61 00 0C */	addi r3, r1, 0xc
/* 8008700C 0008252C  4B FF DF F1 */	bl xlFileClose
/* 80087010 00082530  7C 03 00 D0 */	neg r0, r3
/* 80087014 00082534  7C 00 1B 78 */	or r0, r0, r3
/* 80087018 00082538  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8008701C 0008253C  48 00 00 08 */	b .L_80087024
.L_80087020:
/* 80087020 00082540  38 60 00 00 */	li r3, 0
.L_80087024:
/* 80087024 00082544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087028 00082548  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008702C 0008254C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80087030 00082550  7C 08 03 A6 */	mtlr r0
/* 80087034 00082554  38 21 00 20 */	addi r1, r1, 0x20
/* 80087038 00082558  4E 80 00 20 */	blr
