glabel cpuSetRegisterCP0
/* 8000DF48 00009468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000DF4C 0000946C  7C 08 02 A6 */	mflr r0
/* 8000DF50 00009470  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000DF54 00009474  39 61 00 20 */	addi r11, r1, 0x20
/* 8000DF58 00009478  48 14 E9 ED */	bl _savegpr_27
/* 8000DF5C 0000947C  28 04 00 1F */	cmplwi r4, 0x1f
/* 8000DF60 00009480  7C 7B 1B 78 */	mr r27, r3
/* 8000DF64 00009484  7C 9C 23 78 */	mr r28, r4
/* 8000DF68 00009488  7C BE 2B 78 */	mr r30, r5
/* 8000DF6C 0000948C  7C DD 33 78 */	mr r29, r6
/* 8000DF70 00009490  3B E0 00 00 */	li r31, 0
/* 8000DF74 00009494  41 81 01 48 */	bgt lbl_8000E0BC
/* 8000DF78 00009498  3C E0 80 18 */	lis r7, lbl_8017AC80@ha
/* 8000DF7C 0000949C  54 80 10 3A */	slwi r0, r4, 2
/* 8000DF80 000094A0  38 E7 AC 80 */	addi r7, r7, lbl_8017AC80@l
/* 8000DF84 000094A4  7C E7 00 2E */	lwzx r7, r7, r0
/* 8000DF88 000094A8  7C E9 03 A6 */	mtctr r7
/* 8000DF8C 000094AC  4E 80 04 20 */	bctr 

glabel lbl_8000DF90
/* 8000DF90 000094B0  3C E0 80 18 */	lis r7, lbl_8017AA98@ha
/* 8000DF94 000094B4  81 23 0A 4C */	lwz r9, 0xa4c(r3)
/* 8000DF98 000094B8  38 87 AA 98 */	addi r4, r7, lbl_8017AA98@l
/* 8000DF9C 000094BC  80 07 AA 98 */	lwz r0, -0x5568(r7)
/* 8000DFA0 000094C0  80 E4 00 04 */	lwz r7, 4(r4)
/* 8000DFA4 000094C4  3D 00 80 00 */	lis r8, 0x8000
/* 8000DFA8 000094C8  7C A4 00 38 */	and r4, r5, r0
/* 8000DFAC 000094CC  7D 25 40 38 */	and r5, r9, r8
/* 8000DFB0 000094D0  7C C0 38 38 */	and r0, r6, r7
/* 8000DFB4 000094D4  7C A0 03 78 */	or r0, r5, r0
/* 8000DFB8 000094D8  90 83 0A 48 */	stw r4, 0xa48(r3)
/* 8000DFBC 000094DC  90 03 0A 4C */	stw r0, 0xa4c(r3)
/* 8000DFC0 000094E0  48 00 01 00 */	b lbl_8000E0C0

glabel lbl_8000DFC4
/* 8000DFC4 000094E4  3B E0 00 01 */	li r31, 1
/* 8000DFC8 000094E8  48 00 00 F8 */	b lbl_8000E0C0

glabel lbl_8000DFCC
/* 8000DFCC 000094EC  80 6D 86 E4 */	lwz r3, lbl_80246B64@sda21(r13)
/* 8000DFD0 000094F0  3B E0 00 01 */	li r31, 1
/* 8000DFD4 000094F4  38 80 10 01 */	li r4, 0x1001
/* 8000DFD8 000094F8  38 A0 00 03 */	li r5, 3
/* 8000DFDC 000094FC  48 07 92 C1 */	bl xlObjectEvent
/* 8000DFE0 00009500  80 9B 00 00 */	lwz r4, 0(r27)
/* 8000DFE4 00009504  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8000DFE8 00009508  40 82 00 24 */	bne lbl_8000E00C
/* 8000DFEC 0000950C  3C 60 80 18 */	lis r3, lbl_8017AA98@ha
/* 8000DFF0 00009510  38 63 AA 98 */	addi r3, r3, lbl_8017AA98@l
/* 8000DFF4 00009514  80 03 00 58 */	lwz r0, 0x58(r3)
/* 8000DFF8 00009518  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 8000DFFC 0000951C  7F C0 00 38 */	and r0, r30, r0
/* 8000E000 00009520  7F A3 18 38 */	and r3, r29, r3
/* 8000E004 00009524  7C 60 03 79 */	or. r0, r3, r0
/* 8000E008 00009528  40 82 00 14 */	bne lbl_8000E01C
lbl_8000E00C:
/* 8000E00C 0000952C  80 1B 00 00 */	lwz r0, 0(r27)
/* 8000E010 00009530  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8000E014 00009534  90 1B 00 00 */	stw r0, 0(r27)
/* 8000E018 00009538  48 00 00 A8 */	b lbl_8000E0C0
lbl_8000E01C:
/* 8000E01C 0000953C  60 80 00 01 */	ori r0, r4, 1
/* 8000E020 00009540  90 1B 00 00 */	stw r0, 0(r27)
/* 8000E024 00009544  48 00 00 9C */	b lbl_8000E0C0

glabel lbl_8000E028
/* 8000E028 00009548  3C 80 80 18 */	lis r4, lbl_8017AA98@ha
/* 8000E02C 0000954C  38 E0 00 00 */	li r7, 0
/* 8000E030 00009550  38 84 AA 98 */	addi r4, r4, lbl_8017AA98@l
/* 8000E034 00009554  80 04 00 60 */	lwz r0, 0x60(r4)
/* 8000E038 00009558  80 84 00 64 */	lwz r4, 0x64(r4)
/* 8000E03C 0000955C  7C A5 00 38 */	and r5, r5, r0
/* 8000E040 00009560  7C C6 20 38 */	and r6, r6, r4
/* 8000E044 00009564  4B FF FE 71 */	bl cpuSetCP0Status
/* 8000E048 00009568  48 00 00 78 */	b lbl_8000E0C0

glabel lbl_8000E04C
/* 8000E04C 0000956C  54 C0 05 EF */	rlwinm. r0, r6, 0, 0x17, 0x17
/* 8000E050 00009570  80 6D 86 E4 */	lwz r3, lbl_80246B64@sda21(r13)
/* 8000E054 00009574  41 82 00 0C */	beq lbl_8000E060
/* 8000E058 00009578  38 80 10 00 */	li r4, 0x1000
/* 8000E05C 0000957C  48 00 00 08 */	b lbl_8000E064
lbl_8000E060:
/* 8000E060 00009580  38 80 10 01 */	li r4, 0x1001
lbl_8000E064:
/* 8000E064 00009584  38 A0 00 00 */	li r5, 0
/* 8000E068 00009588  48 07 92 35 */	bl xlObjectEvent
/* 8000E06C 0000958C  57 A0 05 AD */	rlwinm. r0, r29, 0, 0x16, 0x16
/* 8000E070 00009590  80 6D 86 E4 */	lwz r3, lbl_80246B64@sda21(r13)
/* 8000E074 00009594  41 82 00 0C */	beq lbl_8000E080
/* 8000E078 00009598  38 80 10 00 */	li r4, 0x1000
/* 8000E07C 0000959C  48 00 00 08 */	b lbl_8000E084
lbl_8000E080:
/* 8000E080 000095A0  38 80 10 01 */	li r4, 0x1001
lbl_8000E084:
/* 8000E084 000095A4  38 A0 00 01 */	li r5, 1
/* 8000E088 000095A8  48 07 92 15 */	bl xlObjectEvent
/* 8000E08C 000095AC  3B E0 00 01 */	li r31, 1
/* 8000E090 000095B0  48 00 00 30 */	b lbl_8000E0C0

glabel lbl_8000E094
/* 8000E094 000095B4  3B E0 00 01 */	li r31, 1
/* 8000E098 000095B8  48 00 00 28 */	b lbl_8000E0C0

glabel lbl_8000E09C
/* 8000E09C 000095BC  3C 80 80 18 */	lis r4, lbl_8017AA98@ha
/* 8000E0A0 000095C0  38 00 00 00 */	li r0, 0
/* 8000E0A4 000095C4  38 84 AA 98 */	addi r4, r4, lbl_8017AA98@l
/* 8000E0A8 000095C8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8000E0AC 000095CC  7C C4 20 38 */	and r4, r6, r4
/* 8000E0B0 000095D0  90 03 0A C8 */	stw r0, 0xac8(r3)
/* 8000E0B4 000095D4  90 83 0A CC */	stw r4, 0xacc(r3)
/* 8000E0B8 000095D8  48 00 00 08 */	b lbl_8000E0C0

glabel lbl_8000E0BC
/* 8000E0BC 000095DC  3B E0 00 01 */	li r31, 1

glabel lbl_8000E0C0
/* 8000E0C0 000095E0  2C 1F 00 00 */	cmpwi r31, 0
/* 8000E0C4 000095E4  41 82 00 30 */	beq lbl_8000E0F4
/* 8000E0C8 000095E8  3C 60 80 18 */	lis r3, lbl_8017AA98@ha
/* 8000E0CC 000095EC  57 80 18 38 */	slwi r0, r28, 3
/* 8000E0D0 000095F0  38 63 AA 98 */	addi r3, r3, lbl_8017AA98@l
/* 8000E0D4 000095F4  7C 83 02 14 */	add r4, r3, r0
/* 8000E0D8 000095F8  7C 7B 02 14 */	add r3, r27, r0
/* 8000E0DC 000095FC  80 04 00 04 */	lwz r0, 4(r4)
/* 8000E0E0 00009600  80 84 00 00 */	lwz r4, 0(r4)
/* 8000E0E4 00009604  7F A0 00 38 */	and r0, r29, r0
/* 8000E0E8 00009608  90 03 0A 4C */	stw r0, 0xa4c(r3)
/* 8000E0EC 0000960C  7F C0 20 38 */	and r0, r30, r4
/* 8000E0F0 00009610  90 03 0A 48 */	stw r0, 0xa48(r3)
lbl_8000E0F4:
/* 8000E0F4 00009614  39 61 00 20 */	addi r11, r1, 0x20
/* 8000E0F8 00009618  38 60 00 01 */	li r3, 1
/* 8000E0FC 0000961C  48 14 E8 95 */	bl _restgpr_27
/* 8000E100 00009620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000E104 00009624  7C 08 03 A6 */	mtlr r0
/* 8000E108 00009628  38 21 00 20 */	addi r1, r1, 0x20
/* 8000E10C 0000962C  4E 80 00 20 */	blr 

