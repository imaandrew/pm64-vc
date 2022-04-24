.include "macros.inc"

.section .dtors, "wa"  # 0x80174260 - 0x80174280

.balign 0x20

glabel lbl_80174260
	# ROM: 0x170360
	.4byte __destroy_global_chain_tmp
	.4byte __fini_cpp_exceptions_tmp
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

