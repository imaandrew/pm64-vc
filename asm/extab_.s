.include "macros.inc"

.section extab_, "wa"  # 0x800064E0 - 0x800069E0
.balign 0x20
	.incbin "00000001.app", 0x16F720, 0x500
