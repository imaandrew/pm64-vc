.include "macros.inc"

.section .dtors, "wa"  # 0x80174260 - 0x80174280
.balign 0x20
.global lbl_80174260
lbl_80174260:
	.incbin "00000001.app", 0x170360, 0x20
