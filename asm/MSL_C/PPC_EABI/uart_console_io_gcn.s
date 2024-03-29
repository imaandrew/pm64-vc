.include "macros.inc"

.section .text, "ax"

glabel __write_console
/* 8016A534 00165A54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016A538 00165A58  7C 08 02 A6 */	mflr r0
/* 8016A53C 00165A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016A540 00165A60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016A544 00165A64  7C DF 33 78 */	mr r31, r6
/* 8016A548 00165A68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016A54C 00165A6C  7C BE 2B 78 */	mr r30, r5
/* 8016A550 00165A70  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8016A554 00165A74  7C 9D 23 78 */	mr r29, r4
/* 8016A558 00165A78  93 81 00 10 */	stw r28, 0x10(r1)
/* 8016A55C 00165A7C  7C 7C 1B 78 */	mr r28, r3
/* 8016A560 00165A80  4B F2 47 1D */	bl OSGetConsoleType
/* 8016A564 00165A84  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 8016A568 00165A88  40 82 00 64 */	bne .L_8016A5CC
/* 8016A56C 00165A8C  80 0D 93 48 */	lwz r0, lbl_802477C8@sda21(r13)
/* 8016A570 00165A90  38 60 00 00 */	li r3, 0
/* 8016A574 00165A94  2C 00 00 00 */	cmpwi r0, 0
/* 8016A578 00165A98  40 82 00 20 */	bne .L_8016A598
/* 8016A57C 00165A9C  3C 60 00 01 */	lis r3, 0x0000E100@ha
/* 8016A580 00165AA0  38 63 E1 00 */	addi r3, r3, 0x0000E100@l
/* 8016A584 00165AA4  4B F6 96 05 */	bl InitializeUART
/* 8016A588 00165AA8  2C 03 00 00 */	cmpwi r3, 0
/* 8016A58C 00165AAC  40 82 00 0C */	bne .L_8016A598
/* 8016A590 00165AB0  38 00 00 01 */	li r0, 1
/* 8016A594 00165AB4  90 0D 93 48 */	stw r0, lbl_802477C8@sda21(r13)
.L_8016A598:
/* 8016A598 00165AB8  2C 03 00 00 */	cmpwi r3, 0
/* 8016A59C 00165ABC  41 82 00 0C */	beq .L_8016A5A8
/* 8016A5A0 00165AC0  38 60 00 01 */	li r3, 1
/* 8016A5A4 00165AC4  48 00 00 40 */	b .L_8016A5E4
.L_8016A5A8:
/* 8016A5A8 00165AC8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8016A5AC 00165ACC  7F A3 EB 78 */	mr r3, r29
/* 8016A5B0 00165AD0  4B F6 96 21 */	bl WriteUARTN
/* 8016A5B4 00165AD4  2C 03 00 00 */	cmpwi r3, 0
/* 8016A5B8 00165AD8  41 82 00 14 */	beq .L_8016A5CC
/* 8016A5BC 00165ADC  38 00 00 00 */	li r0, 0
/* 8016A5C0 00165AE0  38 60 00 01 */	li r3, 1
/* 8016A5C4 00165AE4  90 1E 00 00 */	stw r0, 0(r30)
/* 8016A5C8 00165AE8  48 00 00 1C */	b .L_8016A5E4
.L_8016A5CC:
/* 8016A5CC 00165AEC  7F 83 E3 78 */	mr r3, r28
/* 8016A5D0 00165AF0  7F A4 EB 78 */	mr r4, r29
/* 8016A5D4 00165AF4  7F C5 F3 78 */	mr r5, r30
/* 8016A5D8 00165AF8  7F E6 FB 78 */	mr r6, r31
/* 8016A5DC 00165AFC  48 00 8C 65 */	bl __TRK_write_console
/* 8016A5E0 00165B00  38 60 00 00 */	li r3, 0
.L_8016A5E4:
/* 8016A5E4 00165B04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016A5E8 00165B08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016A5EC 00165B0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016A5F0 00165B10  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8016A5F4 00165B14  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8016A5F8 00165B18  7C 08 03 A6 */	mtlr r0
/* 8016A5FC 00165B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8016A600 00165B20  4E 80 00 20 */	blr

glabel __close_console
/* 8016A604 00165B24  38 60 00 00 */	li r3, 0
/* 8016A608 00165B28  4E 80 00 20 */	blr

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_802477C8
	.skip 0x8
