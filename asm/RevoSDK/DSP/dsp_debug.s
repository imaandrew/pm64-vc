.include "macros.inc"

.section .text, "ax"

glabel __DSP_debug_printf
/* 800B87C4 000B3CE4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800B87C8 000B3CE8  40 86 00 24 */	bne cr1, lbl_800B87EC
/* 800B87CC 000B3CEC  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800B87D0 000B3CF0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800B87D4 000B3CF4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800B87D8 000B3CF8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800B87DC 000B3CFC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800B87E0 000B3D00  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800B87E4 000B3D04  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800B87E8 000B3D08  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800B87EC:
/* 800B87EC 000B3D0C  90 61 00 08 */	stw r3, 8(r1)
/* 800B87F0 000B3D10  90 81 00 0C */	stw r4, 0xc(r1)
/* 800B87F4 000B3D14  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800B87F8 000B3D18  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800B87FC 000B3D1C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800B8800 000B3D20  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800B8804 000B3D24  91 21 00 20 */	stw r9, 0x20(r1)
/* 800B8808 000B3D28  91 41 00 24 */	stw r10, 0x24(r1)
/* 800B880C 000B3D2C  38 21 00 70 */	addi r1, r1, 0x70
/* 800B8810 000B3D30  4E 80 00 20 */	blr 