.include "macros.inc"

.section .text, "ax"

glabel DEBUGPrint
/* 800D0BAC 000CC0CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800D0BB0 000CC0D0  40 86 00 24 */	bne cr1, .L_800D0BD4
/* 800D0BB4 000CC0D4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800D0BB8 000CC0D8  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800D0BBC 000CC0DC  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800D0BC0 000CC0E0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800D0BC4 000CC0E4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800D0BC8 000CC0E8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800D0BCC 000CC0EC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800D0BD0 000CC0F0  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_800D0BD4:
/* 800D0BD4 000CC0F4  90 61 00 08 */	stw r3, 8(r1)
/* 800D0BD8 000CC0F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 800D0BDC 000CC0FC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800D0BE0 000CC100  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800D0BE4 000CC104  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800D0BE8 000CC108  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800D0BEC 000CC10C  91 21 00 20 */	stw r9, 0x20(r1)
/* 800D0BF0 000CC110  91 41 00 24 */	stw r10, 0x24(r1)
/* 800D0BF4 000CC114  38 21 00 70 */	addi r1, r1, 0x70
/* 800D0BF8 000CC118  4E 80 00 20 */	blr
