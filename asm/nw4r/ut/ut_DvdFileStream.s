.include "macros.inc"

.section .text, "ax"

glabel __sinit_ut_DvdFileStream_cpp
/* 8014B858 00146D78  3C 80 80 24 */	lis r4, lbl_80243B90@ha
/* 8014B85C 00146D7C  3C 60 80 24 */	lis r3, lbl_80243B88@ha
/* 8014B860 00146D80  38 84 3B 90 */	addi r4, r4, lbl_80243B90@l
/* 8014B864 00146D84  90 83 3B 88 */	stw r4, lbl_80243B88@l(r3)
/* 8014B868 00146D88  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80243B88
	.skip 0x8

glabel lbl_80243B90
	.skip 0x8
