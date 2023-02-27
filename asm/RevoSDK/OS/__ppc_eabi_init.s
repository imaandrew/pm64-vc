.include "macros.inc"

.section .text, "ax"

glabel __init_user
/* 8009AF00 00096420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AF04 00096424  7C 08 02 A6 */	mflr r0
/* 8009AF08 00096428  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AF0C 0009642C  48 00 00 15 */	bl __init_cpp
/* 8009AF10 00096430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AF14 00096434  7C 08 03 A6 */	mtlr r0
/* 8009AF18 00096438  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AF1C 0009643C  4E 80 00 20 */	blr

glabel __init_cpp
/* 8009AF20 00096440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AF24 00096444  7C 08 02 A6 */	mflr r0
/* 8009AF28 00096448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AF2C 0009644C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009AF30 00096450  3F E0 80 17 */	lis r31, lbl_80174200@ha
/* 8009AF34 00096454  3B FF 42 00 */	addi r31, r31, lbl_80174200@l
/* 8009AF38 00096458  48 00 00 10 */	b .L_8009AF48
.L_8009AF3C:
/* 8009AF3C 0009645C  7D 89 03 A6 */	mtctr r12
/* 8009AF40 00096460  4E 80 04 21 */	bctrl
/* 8009AF44 00096464  3B FF 00 04 */	addi r31, r31, 4
.L_8009AF48:
/* 8009AF48 00096468  81 9F 00 00 */	lwz r12, 0(r31)
/* 8009AF4C 0009646C  2C 0C 00 00 */	cmpwi r12, 0
/* 8009AF50 00096470  40 82 FF EC */	bne .L_8009AF3C
/* 8009AF54 00096474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AF58 00096478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009AF5C 0009647C  7C 08 03 A6 */	mtlr r0
/* 8009AF60 00096480  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AF64 00096484  4E 80 00 20 */	blr

glabel exit
/* 8009AF68 00096488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AF6C 0009648C  7C 08 02 A6 */	mflr r0
/* 8009AF70 00096490  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AF74 00096494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009AF78 00096498  3F E0 80 17 */	lis r31, lbl_80174260@ha
/* 8009AF7C 0009649C  3B FF 42 60 */	addi r31, r31, lbl_80174260@l
/* 8009AF80 000964A0  48 00 00 10 */	b .L_8009AF90
.L_8009AF84:
/* 8009AF84 000964A4  7D 89 03 A6 */	mtctr r12
/* 8009AF88 000964A8  4E 80 04 21 */	bctrl
/* 8009AF8C 000964AC  3B FF 00 04 */	addi r31, r31, 4
.L_8009AF90:
/* 8009AF90 000964B0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8009AF94 000964B4  2C 0C 00 00 */	cmpwi r12, 0
/* 8009AF98 000964B8  40 82 FF EC */	bne .L_8009AF84
/* 8009AF9C 000964BC  4B FF 3A 29 */	bl PPCHalt
/* 8009AFA0 000964C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AFA4 000964C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009AFA8 000964C8  7C 08 03 A6 */	mtlr r0
/* 8009AFAC 000964CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AFB0 000964D0  4E 80 00 20 */	blr

