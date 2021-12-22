.include "macros.inc"

.section extabindex_, "wa"  # 0x800069E0 - 0x800070C0

.balign 0x20
	.incbin "00000001.app", 0x16FC20, 0x6A8

glabel lbl_80007088
	.incbin "00000001.app", 0x1702C8, 0x38
