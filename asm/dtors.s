.include "macros.inc"

.section .dtors, "wa"  # 0x80174260 - 0x80174280

.balign 0x20

glabel lbl_80174260
	# ROM: 0x170360
	.4byte lbl_8015C0E0
	.4byte lbl_8015D140
	.4byte 0
