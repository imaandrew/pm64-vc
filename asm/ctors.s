.include "macros.inc"

.section .ctors, "wa"  # 0x80174200 - 0x80174260

.balign 0x20

glabel lbl_80174200
	# ROM: 0x170300
	.4byte 0x8015D104  ;# ptr
	.4byte 0x8008B54C  ;# ptr
	.4byte 0x8011947C  ;# ptr
	.4byte 0x801203B8  ;# ptr
	.4byte 0x80120AEC  ;# ptr
	.4byte 0x801239E8  ;# ptr
	.4byte 0x80126340  ;# ptr
	.4byte 0x8012DC8C  ;# ptr
	.4byte 0x8012EEEC  ;# ptr
	.4byte 0x80134C98  ;# ptr
	.4byte 0x801353A0  ;# ptr
	.4byte 0x80141F8C  ;# ptr
	.4byte 0x8014241C  ;# ptr
	.4byte 0x80143FB8  ;# ptr
	.4byte 0x801444C4  ;# ptr
	.4byte 0x80145AB4  ;# ptr
	.4byte 0x8014B858  ;# ptr
	.4byte 0x8014BAF0  ;# ptr
	.4byte 0x8014BEFC  ;# ptr
	.4byte 0x8014D810  ;# ptr
	.4byte 0x8015BF40  ;# ptr
	.4byte 0
	.4byte 0
	.4byte 0

