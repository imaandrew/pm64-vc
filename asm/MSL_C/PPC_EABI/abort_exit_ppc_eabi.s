.include "macros.inc"

.section .text, "ax"

glabel abort
/* 8016A60C 00165B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016A610 00165B30  7C 08 02 A6 */	mflr r0
/* 8016A614 00165B34  38 60 00 01 */	li r3, 1
/* 8016A618 00165B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016A61C 00165B3C  4B FF BE 69 */	bl signal
/* 8016A620 00165B40  38 00 00 01 */	li r0, 1
/* 8016A624 00165B44  38 60 00 01 */	li r3, 1
/* 8016A628 00165B48  90 0D 93 50 */	stw r0, lbl_802477D0@sda21(r13)
/* 8016A62C 00165B4C  4B F3 09 3D */	bl exit
/* 8016A630 00165B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016A634 00165B54  7C 08 03 A6 */	mtlr r0
/* 8016A638 00165B58  38 21 00 10 */	addi r1, r1, 0x10
/* 8016A63C 00165B5C  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_802477D0
	.skip 0x4

glabel lbl_802477D4
	.skip 0x4