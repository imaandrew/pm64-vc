.include "macros.inc"

.section .text, "ax"

glabel GAP_Init
/* 800EEE0C 000EA32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EEE10 000EA330  7C 08 02 A6 */	mflr r0
/* 800EEE14 000EA334  38 80 00 00 */	li r4, 0
/* 800EEE18 000EA338  38 A0 03 AC */	li r5, 0x3ac
/* 800EEE1C 000EA33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EEE20 000EA340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EEE24 000EA344  3F E0 80 22 */	lis r31, lbl_80222D20@ha
/* 800EEE28 000EA348  38 7F 2D 20 */	addi r3, r31, lbl_80222D20@l
/* 800EEE2C 000EA34C  4B F1 56 11 */	bl memset
/* 800EEE30 000EA350  3C A0 80 0F */	lis r5, lbl_800EFB80@ha
/* 800EEE34 000EA354  3C 60 80 0F */	lis r3, lbl_800EFB8C@ha
/* 800EEE38 000EA358  38 A5 FB 80 */	addi r5, r5, lbl_800EFB80@l
/* 800EEE3C 000EA35C  38 9F 2D 20 */	addi r4, r31, 0x2d20
/* 800EEE40 000EA360  38 63 FB 8C */	addi r3, r3, lbl_800EFB8C@l
/* 800EEE44 000EA364  38 00 00 05 */	li r0, 5
/* 800EEE48 000EA368  90 A4 00 20 */	stw r5, 0x20(r4)
/* 800EEE4C 000EA36C  90 64 00 24 */	stw r3, 0x24(r4)
/* 800EEE50 000EA370  98 04 00 28 */	stb r0, 0x28(r4)
/* 800EEE54 000EA374  48 00 00 19 */	bl gap_conn_init
/* 800EEE58 000EA378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EEE5C 000EA37C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EEE60 000EA380  7C 08 03 A6 */	mtlr r0
/* 800EEE64 000EA384  38 21 00 10 */	addi r1, r1, 0x10
/* 800EEE68 000EA388  4E 80 00 20 */	blr

