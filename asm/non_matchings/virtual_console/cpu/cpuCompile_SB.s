glabel cpuCompile_SB
/* 80034FC0 000304E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80034FC4 000304E4  7C 08 02 A6 */	mflr r0
/* 80034FC8 000304E8  3C A0 30 00 */	lis r5, 0x30000028@ha
/* 80034FCC 000304EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80034FD0 000304F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80034FD4 000304F4  7C 9F 23 78 */	mr r31, r4
/* 80034FD8 000304F8  38 85 00 28 */	addi r4, r5, 0x30000028@l
/* 80034FDC 000304FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80034FE0 00030500  7C 7E 1B 78 */	mr r30, r3
/* 80034FE4 00030504  38 61 00 08 */	addi r3, r1, 8
/* 80034FE8 00030508  48 05 0F 61 */	bl xlHeapTake
/* 80034FEC 0003050C  2C 03 00 00 */	cmpwi r3, 0
/* 80034FF0 00030510  40 82 00 0C */	bne lbl_80034FFC
/* 80034FF4 00030514  38 60 00 00 */	li r3, 0
/* 80034FF8 00030518  48 00 00 B8 */	b lbl_800350B0
lbl_80034FFC:
/* 80034FFC 0003051C  80 61 00 08 */	lwz r3, 8(r1)
/* 80035000 00030520  38 1E 0B 60 */	addi r0, r30, 0xb60
/* 80035004 00030524  3D 00 7C C6 */	lis r8, 0x7CC6382E@ha
/* 80035008 00030528  3C 80 54 C6 */	lis r4, 0x54C6103A@ha
/* 8003500C 0003052C  90 7F 00 00 */	stw r3, 0(r31)
/* 80035010 00030530  7D 3E 00 50 */	subf r9, r30, r0
/* 80035014 00030534  38 04 10 3A */	addi r0, r4, 0x54C6103A@l
/* 80035018 00030538  39 48 38 2E */	addi r10, r8, 0x7CC6382E@l
/* 8003501C 0003053C  80 61 00 08 */	lwz r3, 8(r1)
/* 80035020 00030540  3C C0 7C A5 */	lis r6, 0x7CA53A14@ha
/* 80035024 00030544  3C E0 80 E6 */	lis r7, 0x80E60008@ha
/* 80035028 00030548  3C A0 80 E7 */	lis r5, 0x80E70004@ha
/* 8003502C 0003054C  90 03 00 00 */	stw r0, 0(r3)
/* 80035030 00030550  3C 09 38 E3 */	addis r0, r9, 0x38e3
/* 80035034 00030554  39 27 00 08 */	addi r9, r7, 0x80E60008@l
/* 80035038 00030558  39 06 3A 14 */	addi r8, r6, 0x7CA53A14@l
/* 8003503C 0003055C  81 61 00 08 */	lwz r11, 8(r1)
/* 80035040 00030560  3C 60 4E 80 */	lis r3, 0x4E800020@ha
/* 80035044 00030564  38 E7 00 04 */	addi r7, r7, 4
/* 80035048 00030568  38 C5 00 04 */	addi r6, r5, 0x80E70004@l
/* 8003504C 0003056C  90 0B 00 04 */	stw r0, 4(r11)
/* 80035050 00030570  38 03 00 20 */	addi r0, r3, 0x4E800020@l
/* 80035054 00030574  3C 80 7D 05 */	lis r4, 0x7D0539AE@ha
/* 80035058 00030578  80 61 00 08 */	lwz r3, 8(r1)
/* 8003505C 0003057C  38 A4 39 AE */	addi r5, r4, 0x7D0539AE@l
/* 80035060 00030580  38 80 00 24 */	li r4, 0x24
/* 80035064 00030584  91 43 00 08 */	stw r10, 8(r3)
/* 80035068 00030588  80 61 00 08 */	lwz r3, 8(r1)
/* 8003506C 0003058C  91 23 00 0C */	stw r9, 0xc(r3)
/* 80035070 00030590  80 61 00 08 */	lwz r3, 8(r1)
/* 80035074 00030594  91 03 00 10 */	stw r8, 0x10(r3)
/* 80035078 00030598  80 61 00 08 */	lwz r3, 8(r1)
/* 8003507C 0003059C  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80035080 000305A0  80 61 00 08 */	lwz r3, 8(r1)
/* 80035084 000305A4  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80035088 000305A8  80 61 00 08 */	lwz r3, 8(r1)
/* 8003508C 000305AC  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80035090 000305B0  80 61 00 08 */	lwz r3, 8(r1)
/* 80035094 000305B4  90 03 00 20 */	stw r0, 0x20(r3)
/* 80035098 000305B8  80 61 00 08 */	lwz r3, 8(r1)
/* 8003509C 000305BC  48 05 BC 01 */	bl DCStoreRange
/* 800350A0 000305C0  80 61 00 08 */	lwz r3, 8(r1)
/* 800350A4 000305C4  38 80 00 24 */	li r4, 0x24
/* 800350A8 000305C8  48 05 BC 7D */	bl ICInvalidateRange
/* 800350AC 000305CC  38 60 00 01 */	li r3, 1
lbl_800350B0:
/* 800350B0 000305D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800350B4 000305D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800350B8 000305D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800350BC 000305DC  7C 08 03 A6 */	mtlr r0
/* 800350C0 000305E0  38 21 00 20 */	addi r1, r1, 0x20
/* 800350C4 000305E4  4E 80 00 20 */	blr 

