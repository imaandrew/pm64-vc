.include "macros.inc"

.section .ctors, "wa"  # 0x80174200 - 0x80174260

.balign 0x20

glabel lbl_80174200
	.incbin "00000001.app", 0x170300, 0x60
