.include "macros.inc"

.section .text, "ax"

glabel GetUseSerialIO
/* 80173C0C 0016F12C  3C 60 80 24 */	lis r3, lbl_80245F58@ha
/* 80173C10 0016F130  38 63 5F 58 */	addi r3, r3, lbl_80245F58@l
/* 80173C14 0016F134  88 63 00 00 */	lbz r3, 0(r3)
/* 80173C18 0016F138  4E 80 00 20 */	blr 

glabel SetUseSerialIO
/* 80173C1C 0016F13C  3C 80 80 24 */	lis r4, lbl_80245F58@ha
/* 80173C20 0016F140  98 64 5F 58 */	stb r3, lbl_80245F58@l(r4)
/* 80173C24 0016F144  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80245F58
	.skip 0x8
