.include "macros.inc"

.section .text, "ax"

glabel TRKTargetContinue
/* 80173BD8 0016F0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173BDC 0016F0FC  7C 08 02 A6 */	mflr r0
/* 80173BE0 0016F100  38 60 00 00 */	li r3, 0
/* 80173BE4 0016F104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80173BE8 0016F108  4B FF DC A9 */	bl TRKTargetSetStopped
/* 80173BEC 0016F10C  4B FF FC 41 */	bl UnreserveEXI2Port
/* 80173BF0 0016F110  4B FF DB 19 */	bl TRKSwapAndGo
/* 80173BF4 0016F114  4B FF FC 69 */	bl ReserveEXI2Port
/* 80173BF8 0016F118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80173BFC 0016F11C  38 60 00 00 */	li r3, 0
/* 80173C00 0016F120  7C 08 03 A6 */	mtlr r0
/* 80173C04 0016F124  38 21 00 10 */	addi r1, r1, 0x10
/* 80173C08 0016F128  4E 80 00 20 */	blr 
