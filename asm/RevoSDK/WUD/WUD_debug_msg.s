.include "macros.inc"

.section .text, "ax"

glabel WUD_DEBUGPrint
/* 800D9758 000D4C78  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800D975C 000D4C7C  40 86 00 24 */	bne cr1, .L_800D9780
/* 800D9760 000D4C80  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800D9764 000D4C84  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800D9768 000D4C88  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800D976C 000D4C8C  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800D9770 000D4C90  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800D9774 000D4C94  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800D9778 000D4C98  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800D977C 000D4C9C  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_800D9780:
/* 800D9780 000D4CA0  90 61 00 08 */	stw r3, 8(r1)
/* 800D9784 000D4CA4  90 81 00 0C */	stw r4, 0xc(r1)
/* 800D9788 000D4CA8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800D978C 000D4CAC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800D9790 000D4CB0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800D9794 000D4CB4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800D9798 000D4CB8  91 21 00 20 */	stw r9, 0x20(r1)
/* 800D979C 000D4CBC  91 41 00 24 */	stw r10, 0x24(r1)
/* 800D97A0 000D4CC0  38 21 00 70 */	addi r1, r1, 0x70
/* 800D97A4 000D4CC4  4E 80 00 20 */	blr
