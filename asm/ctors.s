.include "macros.inc"

.section .ctors, "wa"  # 0x80174200 - 0x80174260

.balign 0x20

glabel lbl_80174200
	# ROM: 0x170300
	.4byte lbl_8015D104
	.4byte lbl_8008B54C
	.4byte lbl_8011947C
	.4byte lbl_801203B8
	.4byte lbl_80120AEC
	.4byte lbl_801239E8
	.4byte lbl_80126340
	.4byte lbl_8012DC8C
	.4byte lbl_8012EEEC
	.4byte lbl_80134C98
	.4byte lbl_801353A0
	.4byte lbl_80141F8C
	.4byte lbl_8014241C
	.4byte lbl_80143FB8
	.4byte lbl_801444C4
	.4byte lbl_80145AB4
	.4byte lbl_8014B858
	.4byte lbl_8014BAF0
	.4byte lbl_8014BEFC
	.4byte lbl_8014D810
	.4byte lbl_8015BF40
	.4byte 0
	.4byte 0
	.4byte 0

