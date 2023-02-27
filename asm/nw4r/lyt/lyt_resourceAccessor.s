.include "macros.inc"

.section .text, "ax"

glabel __dt__Q36nw4hbm3lyt16ResourceAccessorFv
/* 80120B00 0011C020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80120B04 0011C024  7C 08 02 A6 */	mflr r0
/* 80120B08 0011C028  2C 03 00 00 */	cmpwi r3, 0
/* 80120B0C 0011C02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80120B10 0011C030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80120B14 0011C034  7C 7F 1B 78 */	mr r31, r3
/* 80120B18 0011C038  41 82 00 10 */	beq .L_80120B28
/* 80120B1C 0011C03C  2C 04 00 00 */	cmpwi r4, 0
/* 80120B20 0011C040  40 81 00 08 */	ble .L_80120B28
/* 80120B24 0011C044  48 03 B6 ED */	bl operator_delete
.L_80120B28:
/* 80120B28 0011C048  7F E3 FB 78 */	mr r3, r31
/* 80120B2C 0011C04C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80120B30 0011C050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80120B34 0011C054  7C 08 03 A6 */	mtlr r0
/* 80120B38 0011C058  38 21 00 10 */	addi r1, r1, 0x10
/* 80120B3C 0011C05C  4E 80 00 20 */	blr 

glabel __ct__Q36nw4hbm3lyt16ResourceAccessorFv
/* 80120B40 0011C060  3C 80 80 1A */	lis r4, lbl_801A3918@ha
/* 80120B44 0011C064  38 84 39 18 */	addi r4, r4, lbl_801A3918@l
/* 80120B48 0011C068  90 83 00 00 */	stw r4, 0(r3)
/* 80120B4C 0011C06C  4E 80 00 20 */	blr 

glabel GetFont__Q36nw4hbm3lyt16ResourceAccessorFPCc
/* 80120B50 0011C070  38 60 00 00 */	li r3, 0
/* 80120B54 0011C074  4E 80 00 20 */	blr 

