.include "macros.inc"

.section .text, "ax"

glabel __dt__Q36nw4hbm2ut5ColorFv
/* 80116960 00111E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80116964 00111E84  7C 08 02 A6 */	mflr r0
/* 80116968 00111E88  2C 03 00 00 */	cmpwi r3, 0
/* 8011696C 00111E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80116970 00111E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80116974 00111E94  7C 7F 1B 78 */	mr r31, r3
/* 80116978 00111E98  41 82 00 10 */	beq .L_80116988
/* 8011697C 00111E9C  2C 04 00 00 */	cmpwi r4, 0
/* 80116980 00111EA0  40 81 00 08 */	ble .L_80116988
/* 80116984 00111EA4  48 04 58 8D */	bl operator_delete
.L_80116988:
/* 80116988 00111EA8  7F E3 FB 78 */	mr r3, r31
/* 8011698C 00111EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80116990 00111EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80116994 00111EB4  7C 08 03 A6 */	mtlr r0
/* 80116998 00111EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011699C 00111EBC  4E 80 00 20 */	blr
