glabel cpuCompile_LWL
/* 80035520 00030A40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80035524 00030A44  7C 08 02 A6 */	mflr r0
/* 80035528 00030A48  3C A0 30 00 */	lis r5, 0x30000030@ha
/* 8003552C 00030A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035530 00030A50  38 61 00 08 */	addi r3, r1, 8
/* 80035534 00030A54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80035538 00030A58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003553C 00030A5C  7C 9E 23 78 */	mr r30, r4
/* 80035540 00030A60  38 85 00 30 */	addi r4, r5, 0x30000030@l
/* 80035544 00030A64  48 05 0A 05 */	bl xlHeapTake
/* 80035548 00030A68  2C 03 00 00 */	cmpwi r3, 0
/* 8003554C 00030A6C  40 82 00 0C */	bne lbl_80035558
/* 80035550 00030A70  38 60 00 00 */	li r3, 0
/* 80035554 00030A74  48 00 00 E0 */	b lbl_80035634
lbl_80035558:
/* 80035558 00030A78  80 01 00 08 */	lwz r0, 8(r1)
/* 8003555C 00030A7C  3D 40 39 40 */	lis r10, 0x394000FF@ha
/* 80035560 00030A80  3C 80 38 C0 */	lis r4, 0x38C00018@ha
/* 80035564 00030A84  3D 60 7C A5 */	lis r11, 0x7CA53030@ha
/* 80035568 00030A88  90 1E 00 00 */	stw r0, 0(r30)
/* 8003556C 00030A8C  38 04 00 18 */	addi r0, r4, 0x38C00018@l
/* 80035570 00030A90  3F C0 88 A7 */	lis r30, 0x88a7
/* 80035574 00030A94  39 8A 00 FF */	addi r12, r10, 0x394000FF@l
/* 80035578 00030A98  80 61 00 08 */	lwz r3, 8(r1)
/* 8003557C 00030A9C  3D 00 7D 29 */	lis r8, 0x7D295078@ha
/* 80035580 00030AA0  3D 20 7D 4A */	lis r9, 0x7D4A3030@ha
/* 80035584 00030AA4  3C E0 38 C7 */	lis r7, 0x38C6FFF8@ha
/* 80035588 00030AA8  90 03 00 00 */	stw r0, 0(r3)
/* 8003558C 00030AAC  38 0B 30 30 */	addi r0, r11, 0x7CA53030@l
/* 80035590 00030AB0  39 69 30 30 */	addi r11, r9, 0x7D4A3030@l
/* 80035594 00030AB4  3C 60 4E 80 */	lis r3, 0x4E800020@ha
/* 80035598 00030AB8  83 E1 00 08 */	lwz r31, 8(r1)
/* 8003559C 00030ABC  39 48 50 78 */	addi r10, r8, 0x7D295078@l
/* 800355A0 00030AC0  39 28 2B 78 */	addi r9, r8, 0x2b78
/* 800355A4 00030AC4  39 07 FF F8 */	addi r8, r7, 0x38C6FFF8@l
/* 800355A8 00030AC8  93 DF 00 04 */	stw r30, 4(r31)
/* 800355AC 00030ACC  3C C0 54 E5 */	lis r6, 0x54E507BF@ha
/* 800355B0 00030AD0  38 E6 07 BF */	addi r7, r6, 0x54E507BF@l
/* 800355B4 00030AD4  3C A0 38 E7 */	lis r5, 0x38E70001@ha
/* 800355B8 00030AD8  83 E1 00 08 */	lwz r31, 8(r1)
/* 800355BC 00030ADC  38 C5 00 01 */	addi r6, r5, 0x38E70001@l
/* 800355C0 00030AE0  3C 80 40 83 */	lis r4, 0x4082FFDC@ha
/* 800355C4 00030AE4  90 1F 00 08 */	stw r0, 8(r31)
/* 800355C8 00030AE8  38 03 00 20 */	addi r0, r3, 0x4E800020@l
/* 800355CC 00030AEC  38 A4 FF DC */	addi r5, r4, 0x4082FFDC@l
/* 800355D0 00030AF0  38 80 00 30 */	li r4, 0x30
/* 800355D4 00030AF4  80 61 00 08 */	lwz r3, 8(r1)
/* 800355D8 00030AF8  91 83 00 0C */	stw r12, 0xc(r3)
/* 800355DC 00030AFC  80 61 00 08 */	lwz r3, 8(r1)
/* 800355E0 00030B00  91 63 00 10 */	stw r11, 0x10(r3)
/* 800355E4 00030B04  80 61 00 08 */	lwz r3, 8(r1)
/* 800355E8 00030B08  91 43 00 14 */	stw r10, 0x14(r3)
/* 800355EC 00030B0C  80 61 00 08 */	lwz r3, 8(r1)
/* 800355F0 00030B10  91 23 00 18 */	stw r9, 0x18(r3)
/* 800355F4 00030B14  80 61 00 08 */	lwz r3, 8(r1)
/* 800355F8 00030B18  91 03 00 1C */	stw r8, 0x1c(r3)
/* 800355FC 00030B1C  80 61 00 08 */	lwz r3, 8(r1)
/* 80035600 00030B20  90 E3 00 20 */	stw r7, 0x20(r3)
/* 80035604 00030B24  80 61 00 08 */	lwz r3, 8(r1)
/* 80035608 00030B28  90 C3 00 24 */	stw r6, 0x24(r3)
/* 8003560C 00030B2C  80 61 00 08 */	lwz r3, 8(r1)
/* 80035610 00030B30  90 A3 00 28 */	stw r5, 0x28(r3)
/* 80035614 00030B34  80 61 00 08 */	lwz r3, 8(r1)
/* 80035618 00030B38  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8003561C 00030B3C  80 61 00 08 */	lwz r3, 8(r1)
/* 80035620 00030B40  48 05 B6 7D */	bl DCStoreRange
/* 80035624 00030B44  80 61 00 08 */	lwz r3, 8(r1)
/* 80035628 00030B48  38 80 00 30 */	li r4, 0x30
/* 8003562C 00030B4C  48 05 B6 F9 */	bl ICInvalidateRange
/* 80035630 00030B50  38 60 00 01 */	li r3, 1
lbl_80035634:
/* 80035634 00030B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80035638 00030B58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003563C 00030B5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80035640 00030B60  7C 08 03 A6 */	mtlr r0
/* 80035644 00030B64  38 21 00 20 */	addi r1, r1, 0x20
/* 80035648 00030B68  4E 80 00 20 */	blr 
