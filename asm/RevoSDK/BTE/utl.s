.include "macros.inc"

.section .text, "ax"

glabel utl_freebuf
/* 800DDE88 000D93A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DDE8C 000D93AC  7C 08 02 A6 */	mflr r0
/* 800DDE90 000D93B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DDE94 000D93B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DDE98 000D93B8  7C 7F 1B 78 */	mr r31, r3
/* 800DDE9C 000D93BC  80 03 00 00 */	lwz r0, 0(r3)
/* 800DDEA0 000D93C0  2C 00 00 00 */	cmpwi r0, 0
/* 800DDEA4 000D93C4  41 82 00 14 */	beq .L_800DDEB8
/* 800DDEA8 000D93C8  7C 03 03 78 */	mr r3, r0
/* 800DDEAC 000D93CC  4B FF C0 65 */	bl GKI_freebuf
/* 800DDEB0 000D93D0  38 00 00 00 */	li r0, 0
/* 800DDEB4 000D93D4  90 1F 00 00 */	stw r0, 0(r31)
.L_800DDEB8:
/* 800DDEB8 000D93D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DDEBC 000D93DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DDEC0 000D93E0  7C 08 03 A6 */	mtlr r0
/* 800DDEC4 000D93E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800DDEC8 000D93E8  4E 80 00 20 */	blr

