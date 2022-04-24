.include "macros.inc"

.section .data, "wa"  # 0x80179740 - 0x801ADFC0

.balign 0x20

glabel lbl_80179740
	# ROM: 0x175840
	.4byte lbl_800072CC
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072C0
	.4byte lbl_80007290
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_80007284
	.4byte lbl_800072D8
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072B4
	.4byte lbl_800072F4
	.4byte lbl_800072A8
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_8000729C
	.4byte lbl_800072F4
	.4byte lbl_800072E4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072CC
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072C0
	.4byte lbl_80007290
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_80007284
	.4byte lbl_800072D8
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072B4
	.4byte lbl_800072F4
	.4byte lbl_800072A8
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_800072F4
	.4byte lbl_8000729C
	.4byte lbl_800072F4
	.4byte lbl_800072E4
	.asciz "\n\nERROR: This program MUST be run on a system with 24MB (or less) memory!\n"
	.balign 4
	.asciz "vc64_RVL.c"
	.balign 4
	.asciz "       Please reduce memory-size to 24MB (using 'setsmemsize 0x1800000')\n\n"
	.balign 8

glabel lbl_801798C0
	# ROM: 0x1759C0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0
	.4byte 0
	.4byte 0x00200000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0
	.4byte 0
	.4byte 0x20000000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x20000000
	.4byte 0x00100000
	.4byte 0x00040000
	.4byte 0x10000000
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00200000
	.4byte 0x00200000
	.4byte 0x00200000
	.4byte 0x00200000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x20000000
	.4byte 0x20000000
	.4byte 0x20000000
	.4byte 0x00100000
	.4byte 0x00200000
	.4byte 0x10000000
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0x00200000
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00200000
	.4byte 0x00200000
	.4byte 0x00200000
	.4byte 0x00200000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x00080000
	.4byte 0x00020000
	.4byte 0x00200000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00200000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00200000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x00040000
	.4byte 0
	.4byte 0x00200000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x20000000
	.4byte 0x20000000
	.4byte 0x00200000
	.4byte 0x00100000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x08000000
	.4byte 0x04000000
	.4byte 0x02000000
	.4byte 0x01000000
	.4byte 0x00080000
	.4byte 0x00040000
	.4byte 0x00020000
	.4byte 0x00010000
	.4byte 0

glabel lbl_80179C88
	# ROM: 0x175D88
	.4byte 0x00000011
	.4byte lbl_80180478
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000013
	.4byte lbl_8017E8C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000012
	.4byte lbl_80180340
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000010
	.4byte lbl_80180350
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000014
	.4byte lbl_80180488
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000015
	.4byte lbl_80180498
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000016
	.4byte lbl_80180520
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8017C0F0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte lbl_8017C4B8
	.4byte 0x00000003
	.4byte 0x00000100
	.4byte 0
	.4byte 0x007FFFFF
	.4byte 0x00000002
	.4byte 0x03F00000
	.4byte 0x03F87FFF
	.4byte 0x00000001
	.4byte 0x04700000
	.4byte 0x047FFFFF
	.4byte 0x00000005
	.4byte lbl_80181428
	.4byte 0x00000002
	.4byte 0
	.4byte 0x04100000
	.4byte 0x041FFFFF
	.4byte 0x00000001
	.4byte 0x04200000
	.4byte 0x042FFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_801811A8
	.4byte 0x00000001
	.4byte 0
	.4byte 0x04000000
	.4byte 0x040FFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_8017A978
	.4byte 0x00000001
	.4byte 0
	.4byte 0x04300000
	.4byte 0x043FFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000009
	.4byte lbl_8017A690
	.4byte 0x00000001
	.4byte 0
	.4byte 0x04400000
	.4byte 0x044FFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000008
	.4byte lbl_8017A4D8
	.4byte 0x00000001
	.4byte 0
	.4byte 0x04500000
	.4byte 0x045FFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8017A900
	.4byte 0x00000001
	.4byte 0
	.4byte 0x04600000
	.4byte 0x046FFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_8017A768
	.4byte 0x00000001
	.4byte 0
	.4byte 0x04800000
	.4byte 0x048FFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000C
	.4byte lbl_8017C538
	.4byte 0x00000001
	.4byte 0
	.4byte 0x04900000
	.4byte 0x0490FFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte lbl_8017A988
	.4byte 0x00000002
	.4byte 0
	.4byte 0x05000000
	.4byte 0x05FFFFFF
	.4byte 0x00000001
	.4byte 0x06000000
	.4byte 0x06FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte lbl_8017C4C8
	.4byte 0x00000002
	.4byte 0
	.4byte 0x10000000
	.4byte 0x1FBFFFFF
	.4byte 0x00000001
	.4byte 0x1FF00000
	.4byte 0x1FF0FFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte lbl_8017C298
	.4byte 0x00000001
	.4byte 0
	.4byte 0x1FC00000
	.4byte 0x1FC007FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3C1A8007
	.4byte 0x275ACEC0
	.4byte 0x03400008
	.4byte 0
	.4byte 0x3C010010
	.4byte 0x012A4824
	.4byte 0x01214823
	.4byte 0x3C01A460
	.4byte 0xAC290000
	.4byte 0x3C08A460
	.4byte 0x8D080010
	.4byte 0x31080002
	.4byte 0x5500FFFD
	.4byte 0x3C08A460
	.4byte 0x24081000
	.4byte 0x010B4020
	.4byte 0x010A4024
	.4byte 0x3C01A460
	.4byte 0xAC280004
	.4byte 0x3C0A0010
	.4byte 0x254A0003
	.4byte 0x3C01A460
	.4byte 0xAC2A000C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3C1A8007
	.4byte 0x275ACEC0
	.4byte 0x03400008
	.4byte 0
	.4byte 0x8D6B0010
	.4byte 0x316B0001
	.4byte 0x1560FFF0
	.4byte 0
	.4byte 0x3C0BB000
	.4byte 0x8D640008
	.4byte 0x3C010010
	.4byte 0x02C02825
	.4byte 0x00812023
	.4byte 0x3C016C07
	.4byte 0x34218965
	.4byte 0x00A10019
	.4byte 0x27BDFFE0
	.4byte 0xAFBF001C
	.4byte 0xAFB00014
	.4byte 0x3C1F0010
	.4byte 0x00001825
	.4byte 0x00004025
	.4byte 0x00804825
	.4byte 0x240D0020
	.4byte 0x00001012
	.4byte 0x24420001
	.4byte 0x00403825
	.4byte 0x00405025
	.4byte 0x00405825
	.4byte 0x00408025
	.4byte 0x00403025
	.4byte 0x00406025
	.4byte 0x3C1A8007
	.4byte 0x275ACEC0
	.4byte 0x03400008
	.4byte 0
	.4byte 0x00602825
	.4byte 0x254A0001
	.4byte 0x3043001F
	.4byte 0x01A37823
	.4byte 0x01E2C006
	.4byte 0x00627004
	.4byte 0x01D82025
	.4byte 0x00C2082B
	.4byte 0x00A03825
	.4byte 0x01625826
	.4byte 0x10200004
	.4byte 0x02048021
	.4byte 0x00E2C826
	.4byte 0x10000002
	.4byte 0x03263026
	.4byte 0x00C43026
	.4byte 0x25080004
	.4byte 0x00507826
	.4byte 0x25290004
	.4byte 0x151FFFE8
	.4byte 0x01EC6021
	.4byte 0x00EA7026
	.4byte 0x01CB3821
	.4byte 0x0206C026
	.4byte 0x030C8021
	.4byte 0x3C0BB000
	.4byte 0x8D680010
	.4byte 0x14E80006
	.4byte 0x08018B0A
	.4byte 0
	.4byte 0xAFBAFFF0
	.4byte 0x3C1A8006
	.4byte 0x04110003
	.4byte 0
	.4byte 0x0411FFFF
	.4byte 0
	.4byte 0x3C09A408
	.4byte 0x8D290000
	.4byte 0x8FB00014
	.4byte 0x8FBF001C
	.4byte 0x11200006
	.4byte 0x27BD0020
	.4byte 0x240A0041
	.4byte 0x3C01A404
	.4byte 0xAC2A0010
	.4byte 0x3C01A408
	.4byte 0xAC200000
	.4byte 0x3C0B00AA
	.4byte 0x356BAAAE
	.4byte 0x3C01A404
	.4byte 0xAC2B0010
	.4byte 0x3C01A430
	.4byte 0x24080555
	.4byte 0xAC28000C
	.4byte 0x3C01A480
	.4byte 0xAC200018
	.4byte 0x3C01A450
	.4byte 0xAC20000C
	.4byte 0x3C01A430
	.4byte 0x24090800
	.4byte 0xAC290000
	.4byte 0x24090002
	.4byte 0x3C01A460
	.4byte 0xAC290010
	.4byte 0x3C08A000
	.4byte 0x35080300
	.4byte 0x240917D7
	.4byte 0xAD090010
	.4byte 0xAD140000
	.4byte 0xAD130004
	.4byte 0xAD15000C
	.4byte 0x12600004
	.4byte 0xAD170014
	.4byte 0x3C09A600
	.4byte 0x10000003
	.4byte 0x25290000
	.4byte 0x3C09B000
	.4byte 0x25290000
	.4byte 0xAD090008
	.4byte 0x3C08A400
	.4byte 0x25080000
	.4byte 0x21091000
	.4byte 0x240AFFFF
	.4byte 0x25080004
	.4byte 0x1509FFFE
	.4byte 0xAD0AFFFC
	.4byte 0x3C08A400
	.4byte 0x25081000
	.4byte 0x21091000
	.4byte 0x25080004
	.4byte 0x1509FFFE
	.4byte 0xAD0AFFFC
	.4byte 0x3C0AA400
	.4byte 0x240B17D7
	.4byte 0xAD4B1000
	.4byte 0x3C0BB000
	.4byte 0x254A1000
	.4byte 0x8D690008
	.4byte 0x3C010010
	.4byte 0x01214823
	.4byte 0x01200008
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

glabel lbl_8017A378
	# ROM: 0x176478
	.4byte lbl_800095A8
	.4byte lbl_800095B0
	.4byte lbl_800095A8
	.4byte lbl_800095B0
	.4byte lbl_800095B0
	.4byte lbl_800095A8
	.4byte lbl_800095B0
	.4byte lbl_800095B0
	.4byte lbl_800095B0
	.4byte lbl_800095B0
	.4byte lbl_800095B0
	.4byte lbl_800095B0
	.4byte lbl_800095A8
	.4byte lbl_800095B0
	.4byte lbl_800095B0
	.4byte lbl_800095A8
	.asciz "BREAK (CPU)"
	.asciz "BREAK (SP)"
	.balign 4
	.asciz "THREADSTATUS"
	.balign 4

glabel lbl_8017A3E0
	# ROM: 0x1764E0
	.4byte lbl_80009F54
	.4byte lbl_80009F6C
	.4byte lbl_80009F84
	.4byte lbl_80009F9C
	.4byte lbl_80009FB4
	.4byte lbl_80009FCC
	.4byte lbl_80009FE8
	.4byte lbl_8000A008
	.4byte lbl_8000A028
	.4byte lbl_8000A048
	.4byte lbl_8000A064
	.4byte lbl_8000A084
	.4byte lbl_8000A098
	.4byte lbl_8000A0B0
	.4byte lbl_8000A0BC
	.4byte lbl_8000A0C8

glabel lbl_8017A420
	# ROM: 0x176520
	.4byte lbl_802464D4
	.4byte 0x000000E0
	.4byte 0
	.4byte lbl_8000AD04

glabel lbl_8017A430
	# ROM: 0x176530
	.4byte lbl_8000AFE0
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B034
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B068
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B078
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B08C
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0C4
	.4byte lbl_8000B0B4

glabel lbl_8017A484
	# ROM: 0x176584
	.4byte lbl_8000B140
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B14C
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B15C
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B168
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1A8
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1C0
	.4byte lbl_8000B1B4
lbl_8017A4D8:
	.4byte lbl_802464E0
	.4byte 0x0000001C
	.4byte 0
	.4byte lbl_8000B238

glabel lbl_8017A4E8
	# ROM: 0x1765E8
	.4byte lbl_8000B3A4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B3B4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B544
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B554
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B564
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B580
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B58C
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B59C
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B5AC
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B5BC
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B600
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B614
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B628
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B6F4
	.4byte lbl_8000B670

glabel lbl_8017A5BC
	# ROM: 0x1766BC
	.4byte lbl_8000B770
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B77C
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B788
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B794
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B7A4
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B7B8
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B7C4
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B7D0
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B7DC
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B7E8
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B7F4
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B800
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B80C
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B824
	.4byte lbl_8000B818
lbl_8017A690:
	.4byte lbl_802464E8
	.4byte 0x0000003C
	.4byte 0
	.4byte lbl_8000B89C

glabel lbl_8017A6A0
	# ROM: 0x1767A0
	.4byte lbl_8000BA30
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BA40
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BAA4
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB1C
	.4byte lbl_8000BB08

glabel lbl_8017A704
	# ROM: 0x176804
	.4byte lbl_8000BB88
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BB94
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBA0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBD0
	.4byte lbl_8000BBAC
lbl_8017A768:
	.4byte lbl_802464F0
	.4byte 0x00000004
	.4byte 0
	.4byte lbl_8000BBF8

glabel lbl_8017A778
	# ROM: 0x176878
	.4byte lbl_8000BDCC
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BDDC
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BDEC
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BEA0
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BF54
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BF88
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BF98
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BFA8
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BFB8
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BFC8
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BFD8
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BFE8
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000C008
	.4byte lbl_8000BFF8

glabel lbl_8017A83C
	# ROM: 0x17693C
	.4byte lbl_8000C060
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C06C
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C078
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C084
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C090
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C0A0
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C0B0
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C0C0
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C0D0
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C0E0
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C0F0
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C100
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C120
	.4byte lbl_8000C110
lbl_8017A900:
	.4byte lbl_802464F8
	.4byte 0x00000088
	.4byte 0
	.4byte lbl_8000C138

glabel lbl_8017A910
	# ROM: 0x176A10
	.4byte lbl_8000C418
	.4byte lbl_8000C5BC
	.4byte lbl_8000C5BC
	.4byte lbl_8000C5BC
	.4byte lbl_8000C5C4
	.4byte lbl_8000C5BC
	.4byte lbl_8000C5BC
	.4byte lbl_8000C5BC
	.4byte lbl_8000C5C4
	.4byte lbl_8000C5BC
	.4byte lbl_8000C5BC
	.4byte lbl_8000C5BC
	.4byte lbl_8000C4C0

glabel lbl_8017A944
	# ROM: 0x176A44
	.4byte lbl_8000C61C
	.4byte lbl_8000C650
	.4byte lbl_8000C650
	.4byte lbl_8000C650
	.4byte lbl_8000C628
	.4byte lbl_8000C650
	.4byte lbl_8000C650
	.4byte lbl_8000C650
	.4byte lbl_8000C638
	.4byte lbl_8000C650
	.4byte lbl_8000C650
	.4byte lbl_8000C650
	.4byte lbl_8000C644
lbl_8017A978:
	.4byte lbl_80246500
	.4byte 0x0000000C
	.4byte 0
	.4byte lbl_8000C668
lbl_8017A988:
	.4byte lbl_80246508
	.4byte 0x00000004
	.4byte 0
	.4byte lbl_8000C8BC

glabel lbl_8017A998
	# ROM: 0x176A98
	.4byte 0
	.4byte 0x8000003F
	.4byte 0
	.4byte 0x0000003F
	.4byte 0
	.4byte 0x3FFFFFFF
	.4byte 0
	.4byte 0x3FFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFF0
	.4byte 0
	.4byte 0x01FFE000
	.4byte 0
	.4byte 0x0000001F
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFE0FF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xF000FF7C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0
	.4byte 0xFFFFEFFF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFFFFB
	.4byte 0
	.4byte 0x0000000F
	.4byte 0
	.4byte 0xFFFFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0xFFBFFFFF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0

glabel lbl_8017AA98
	# ROM: 0x176B98
	.4byte 0
	.4byte 0x0000003F
	.4byte 0
	.4byte 0x0000003F
	.4byte 0
	.4byte 0x3FFFFFFF
	.4byte 0
	.4byte 0x3FFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFF0
	.4byte 0
	.4byte 0x01FFE000
	.4byte 0
	.4byte 0x0000001F
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFE0FF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x00000300
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0
	.4byte 0xFFFFEFFF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFFFFB
	.4byte 0
	.4byte 0x0000000F
	.4byte 0
	.4byte 0xFFFFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0xFFBFFFFF
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010100
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x00000001
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010100
	.4byte 0x01010101
	.4byte 0x01010100
	.4byte 0x01010101
	.4byte 0x01000101
	.4byte 0x01000101
	.4byte 0x01010000
	.4byte 0x01010001
	.4byte 0x01010101
	.4byte 0x01000101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x00000101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01000100
	.4byte 0x01000101
	.4byte 0x01000101
	.4byte 0x01010101
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01000100
	.4byte 0x01010101
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F480018
	.4byte 0x11000014
	.4byte 0
	.4byte 0x4448F800
	.4byte 0
	.4byte 0x8CBB0018
	.4byte 0x1360000A
	.4byte 0
	.4byte 0x445BF800
	.4byte 0
	.4byte 0x13600009
	.4byte 0xACBF011C
	.4byte 0x445BF800
	.4byte 0x8F5B0018
	.4byte 0x13600013
	.4byte 0
	.4byte 0x8F5B012C
	.4byte 0x44DBF800

glabel lbl_8017AC80
	# ROM: 0x176D80
	.4byte lbl_8000DF90
	.4byte lbl_8000E0C0
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0C0
	.4byte lbl_8000E0C0
	.4byte lbl_8000DFC4
	.4byte lbl_8000E0BC
	.4byte lbl_8000DFCC
	.4byte lbl_8000E028
	.4byte lbl_8000E04C
	.4byte lbl_8000E094
	.4byte lbl_8000E0C0
	.4byte lbl_8000E09C
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0C0
	.4byte lbl_8000E0C0
	.4byte lbl_8000E0C0
	.4byte lbl_8000E0C0
	.4byte lbl_8000E0C0
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0C0
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0BC
	.4byte lbl_8000E0C0

glabel lbl_8017AD00
	# ROM: 0x176E00
	.4byte lbl_8000E274
	.4byte lbl_8000E134
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E1FC
	.4byte lbl_8000E20C
	.4byte lbl_8000E1E4
	.4byte lbl_8000E274
	.4byte lbl_8000E1EC
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E1F4
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E214
	.4byte lbl_8000E224
	.4byte lbl_8000E234
	.4byte lbl_8000E244
	.4byte lbl_8000E254
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E274
	.4byte lbl_8000E264

glabel lbl_8017AD80
	# ROM: 0x176E80
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0x00000013
	.4byte 0x00000014
	.4byte 0x00000015
	.4byte 0x00000016
	.4byte 0x00000017
	.4byte 0x00000018
	.4byte 0x00000019
	.4byte 0x0000001A
	.4byte 0x00000110
	.4byte 0x00000111
	.4byte 0x00000112
	.4byte 0x00000113
	.4byte 0x00000114
	.4byte 0x00000115
	.4byte 0x00000116
	.4byte 0x00000117
	.4byte 0x0000001B
	.4byte 0x0000001C
	.4byte 0x0000001D
	.4byte 0x0000001E
	.4byte 0x0000011C
	.4byte 0x0000001F
	.4byte 0x0000011E
	.4byte 0x0000011F

glabel lbl_8017AE00
	# ROM: 0x176F00
	.4byte lbl_8000E45C
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E4CC
	.4byte lbl_8000E45C
	.4byte lbl_8000E4CC
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E45C
	.4byte lbl_8000E4CC

glabel lbl_8017AE64
	# ROM: 0x176F64
	.4byte lbl_8000E3DC
	.4byte lbl_8000E408
	.4byte lbl_8000E4B8
	.4byte lbl_8000E4C0
	.4byte lbl_8000E4C8
	.4byte lbl_8000E4C8
	.4byte lbl_8000E4C8
	.4byte lbl_8000E4C8
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E438
	.4byte lbl_8000E48C
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4CC
	.4byte lbl_8000E4C8
	.4byte lbl_8000E4C8
	.4byte lbl_8000E4C8
	.4byte lbl_8000E4C8
	.asciz "CALLED: ceil_w single (%p)\n"
	.asciz "CALLED: ceil_w double (%p)\n"
	.balign 8
	.asciz "ERROR: CVT_S_D\n"
	.asciz "ERROR: ADD_W\n"
	.balign 4
	.asciz "ERROR: SUB_W\n"
	.balign 4
	.asciz "ERROR: MUL_W\n"
	.balign 4
	.asciz "ERROR: DIV_W\n"
	.balign 4
	.asciz "ERROR: SQRT_W\n"
	.balign 4
	.asciz "ERROR: ABS_W\n"
	.balign 4
	.asciz "ERROR: MOVE_W\n"
	.balign 4
	.asciz "ERROR: NEG_W\n"
	.balign 4
	.asciz "ERROR: ROUND_W_W\n"
	.balign 4
	.asciz "ERROR: TRUNC_W_W\n"
	.balign 4
	.asciz "ERROR: CEIL_W_W\n"
	.balign 8
	.asciz "ERROR: CVT_W_W\n"
	.asciz "ERROR: C.F_W\n"
	.balign 4
	.asciz "ERROR: C.UN_W\n"
	.balign 4
	.asciz "ERROR: C.EQ_W\n"
	.balign 4
	.asciz "ERROR: C.UEQ_W\n"
	.asciz "ERROR: C.OLT_W\n"
	.asciz "ERROR: C.ULT_W\n"
	.asciz "ERROR: C.OLE_W\n"
	.asciz "ERROR: C.ULE_W\n"
	.asciz "ERROR: C.SF_W\n"
	.balign 4
	.asciz "ERROR: C.NGLE_W\n"
	.balign 8
	.asciz "ERROR: C.SEQ_W\n"
	.asciz "ERROR: C.NGL_W\n"
	.asciz "ERROR: C.LT_W\n"
	.balign 4
	.asciz "ERROR: C.NGE_W\n"
	.asciz "ERROR: C.LE_W\n"
	.balign 4
	.asciz "ERROR: C.NGT_W\n"
	.asciz "ERROR: ADD_L\n"
	.balign 4
	.asciz "ERROR: SUB_L\n"
	.balign 4
	.asciz "ERROR: MUL_L\n"
	.balign 4
	.asciz "ERROR: DIV_L\n"
	.balign 4
	.asciz "ERROR: SQRT_L\n"
	.balign 4
	.asciz "ERROR: ABS_L\n"
	.balign 4
	.asciz "ERROR: MOVE_L\n"
	.balign 4
	.asciz "ERROR: NEG_L\n"
	.balign 4
	.asciz "ERROR: ROUND_W_L\n"
	.balign 4
	.asciz "ERROR: TRUNC_W_L\n"
	.balign 4
	.asciz "ERROR: CEIL_W_L\n"
	.balign 8
	.asciz "ERROR: CVT_W_L\n"
	.asciz "ERROR: C.F_L\n"
	.balign 4
	.asciz "ERROR: C.UN_L\n"
	.balign 4
	.asciz "ERROR: C.EQ_L\n"
	.balign 4
	.asciz "ERROR: C.UEQ_L\n"
	.asciz "ERROR: C.OLT_L\n"
	.asciz "ERROR: C.ULT_L\n"
	.asciz "ERROR: C.OLE_L\n"
	.asciz "ERROR: C.ULE_L\n"
	.asciz "ERROR: C.SF_L\n"
	.balign 4
	.asciz "ERROR: C.NGLE_L\n"
	.balign 8
	.asciz "ERROR: C.SEQ_L\n"
	.asciz "ERROR: C.NGL_L\n"
	.asciz "ERROR: C.LT_L\n"
	.balign 4
	.asciz "ERROR: C.NGE_L\n"
	.asciz "ERROR: C.LE_L\n"
	.balign 4
	.asciz "ERROR: C.NGT_L\n"

glabel lbl_8017B2C0
	# ROM: 0x1773C0
	.4byte lbl_8002585C
	.4byte lbl_8002588C
	.4byte lbl_800258BC
	.4byte lbl_800258EC
	.4byte lbl_8002591C
	.4byte lbl_80025934
	.4byte lbl_80025964
	.4byte lbl_8002597C
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_800259AC
	.4byte lbl_800259C4
	.4byte lbl_800259DC
	.4byte lbl_80031740
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80031740
	.4byte lbl_800259F4
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025B18
	.4byte lbl_80031740
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025C98
	.4byte lbl_80025B30
	.4byte lbl_80025B40
	.4byte lbl_80025B50
	.4byte lbl_80025B68
	.4byte lbl_80025B80
	.4byte lbl_80025B98
	.4byte lbl_80025BB0
	.4byte lbl_80025BC8
	.4byte lbl_80025BE0
	.4byte lbl_80025BF0
	.4byte lbl_80025C08
	.4byte lbl_80025C20
	.4byte lbl_80025C38
	.4byte lbl_80025C50
	.4byte lbl_80025C68
	.4byte lbl_80025C80

glabel lbl_8017B3C0
	# ROM: 0x1774C0
	.4byte lbl_80025434
	.4byte lbl_80025464
	.4byte lbl_80025494
	.4byte lbl_800254C4
	.4byte lbl_800254F4
	.4byte lbl_8002550C
	.4byte lbl_8002553C
	.4byte lbl_80025554
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80025584
	.4byte lbl_8002559C
	.4byte lbl_800255B4
	.4byte lbl_80031740
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80031740
	.4byte lbl_800255CC
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_800256B0
	.4byte lbl_80031740
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_80025830
	.4byte lbl_800256C8
	.4byte lbl_800256D8
	.4byte lbl_800256E8
	.4byte lbl_80025700
	.4byte lbl_80025718
	.4byte lbl_80025730
	.4byte lbl_80025748
	.4byte lbl_80025760
	.4byte lbl_80025778
	.4byte lbl_80025788
	.4byte lbl_800257A0
	.4byte lbl_800257B8
	.4byte lbl_800257D0
	.4byte lbl_800257E8
	.4byte lbl_80025800
	.4byte lbl_80025818

glabel lbl_8017B4C0
	# ROM: 0x1775C0
	.4byte lbl_80021B40
	.4byte lbl_80021D44
	.4byte lbl_80021F40
	.4byte lbl_80022144
	.4byte lbl_80022340
	.4byte lbl_80022474
	.4byte lbl_800225CC
	.4byte lbl_80022660
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_800227B8
	.4byte lbl_800228F0
	.4byte lbl_80022A28
	.4byte lbl_80031740
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80031740
	.4byte lbl_80022B70
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80022B88
	.4byte lbl_80031740
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80025408
	.4byte lbl_80022CC0
	.4byte lbl_80022D68
	.4byte lbl_80022E10
	.4byte lbl_800230D8
	.4byte lbl_800233A0
	.4byte lbl_8002366C
	.4byte lbl_80023938
	.4byte lbl_80023C38
	.4byte lbl_80023F38
	.4byte lbl_80023FE0
	.4byte lbl_800242E0
	.4byte lbl_800245A8
	.4byte lbl_80024870
	.4byte lbl_80024B3C
	.4byte lbl_80024E08
	.4byte lbl_80025108

glabel lbl_8017B5C0
	# ROM: 0x1776C0
	.4byte lbl_8001E104
	.4byte lbl_8001E314
	.4byte lbl_8001E51C
	.4byte lbl_8001E72C
	.4byte lbl_8001E934
	.4byte lbl_8001EA70
	.4byte lbl_8001EBD0
	.4byte lbl_8001EC6C
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_8001EDCC
	.4byte lbl_8001EF08
	.4byte lbl_8001F044
	.4byte lbl_80031740
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80031740
	.4byte lbl_8001F190
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_8001F228
	.4byte lbl_80031740
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_80021B14
	.4byte lbl_8001F364
	.4byte lbl_8001F40C
	.4byte lbl_8001F4B4
	.4byte lbl_8001F784
	.4byte lbl_8001FA54
	.4byte lbl_8001FD28
	.4byte lbl_8001FFFC
	.4byte lbl_80020304
	.4byte lbl_8002060C
	.4byte lbl_800206B4
	.4byte lbl_800209BC
	.4byte lbl_80020C8C
	.4byte lbl_80020F5C
	.4byte lbl_80021230
	.4byte lbl_80021504
	.4byte lbl_8002180C

glabel lbl_8017B6C0
	# ROM: 0x1777C0
	.4byte lbl_8001D140
	.4byte lbl_8001D2C4
	.4byte lbl_8001D458
	.4byte lbl_8001D994
	.4byte lbl_8001D56C
	.4byte lbl_8001D734
	.4byte lbl_8001D8BC

glabel lbl_8017B6DC
	# ROM: 0x1777DC
	.4byte lbl_8001D064
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_80031740
	.4byte lbl_8001D064
	.4byte lbl_80031740
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_8001D064
	.4byte lbl_80031740

glabel lbl_8017B740
	# ROM: 0x177840
	.4byte lbl_80018AE4
	.4byte lbl_80018CF4
	.4byte lbl_80018F04
	.4byte lbl_80019140
	.4byte lbl_8001A3A4
	.4byte lbl_8001A3A4
	.4byte lbl_8001A3A4
	.4byte lbl_8001A3A4
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_8001A3A4
	.4byte lbl_80031740
	.4byte lbl_8001A3A4
	.4byte lbl_8001937C
	.4byte lbl_80019770
	.4byte lbl_80019B64
	.4byte lbl_80019F84

glabel lbl_8017B790
	# ROM: 0x177890
	.4byte lbl_8000EEA0
	.4byte lbl_80018AB8
	.4byte lbl_8000F0F4
	.4byte lbl_8000F30C
	.4byte lbl_8000F4F4
	.4byte lbl_80018AB8
	.4byte lbl_8000F7EC
	.4byte lbl_8000FAE4
	.4byte lbl_8000FDDC
	.4byte lbl_80010028
	.4byte lbl_80018AB8
	.4byte lbl_80018AB8
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80018AB8
	.4byte lbl_80031740
	.4byte lbl_8001066C
	.4byte lbl_80010878
	.4byte lbl_80010A68
	.4byte lbl_80010C74
	.4byte lbl_80010E64
	.4byte lbl_80018AB8
	.4byte lbl_8001114C
	.4byte lbl_80011434
	.4byte lbl_8001171C
	.4byte lbl_80011900
	.4byte lbl_80011AE4
	.4byte lbl_80011D1C
	.4byte lbl_80011F54
	.4byte lbl_80012534
	.4byte lbl_800129C4
	.4byte lbl_80012FA4
	.4byte lbl_80013434
	.4byte lbl_80013E30
	.4byte lbl_8001482C
	.4byte lbl_80014B3C
	.4byte lbl_80014E4C
	.4byte lbl_8001515C
	.4byte lbl_80015B58
	.4byte lbl_80015E68
	.4byte lbl_80018AB8
	.4byte lbl_80018AB8
	.4byte lbl_80016178
	.4byte lbl_800164FC
	.4byte lbl_80016884
	.4byte lbl_80016CD4
	.4byte lbl_80017124
	.4byte lbl_80017574
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_80018AB8
	.4byte lbl_80031740
	.4byte lbl_80018AB8
	.4byte lbl_800179C4
	.4byte lbl_80018AB8
	.4byte lbl_80017C80
	.4byte lbl_80017F44
	.4byte lbl_800181FC
	.4byte lbl_80018AB8
	.4byte lbl_800184E4
	.4byte lbl_800187D4

glabel lbl_8017B890
	# ROM: 0x177990
	.4byte lbl_8000EE78
	.4byte lbl_80018AC0
	.4byte lbl_8001A3AC
	.4byte lbl_8001A61C
	.4byte lbl_8001ABAC
	.4byte lbl_8001AFF8
	.4byte lbl_8001B2E4
	.4byte lbl_8001B4F4
	.4byte lbl_8001B704
	.4byte lbl_8001BCF0
	.4byte lbl_8001C2FC
	.4byte lbl_8001C5A8
	.4byte lbl_8001C898
	.4byte lbl_8001CA74
	.4byte lbl_8001CCB0
	.4byte lbl_8001CEC8
	.4byte lbl_8001D040
	.4byte lbl_8001D108
	.4byte lbl_80025CA0
	.4byte lbl_80025CA8
	.4byte lbl_80025CB0
	.4byte lbl_80026088
	.4byte lbl_800263A0
	.4byte lbl_800265DC
	.4byte lbl_80026818
	.4byte lbl_80026CE4
	.4byte lbl_800271E8
	.4byte lbl_80027208
	.4byte lbl_8003173C
	.4byte lbl_8003173C
	.4byte lbl_8003173C
	.4byte lbl_800271B0
	.4byte lbl_80027248
	.4byte lbl_80027C70
	.4byte lbl_80028698
	.4byte lbl_80028A98
	.4byte lbl_8002950C
	.4byte lbl_80029EEC
	.4byte lbl_8002A8CC
	.4byte lbl_80027228
	.4byte lbl_8002ACCC
	.4byte lbl_8002B7BC
	.4byte lbl_8002C2AC
	.4byte lbl_8002C5EC
	.4byte lbl_80031740
	.4byte lbl_80031740
	.4byte lbl_8002D2EC
	.4byte lbl_8002D628
	.4byte lbl_8002D65C
	.4byte lbl_8002D67C
	.4byte lbl_8003173C
	.4byte lbl_8003173C
	.4byte lbl_8002E450
	.4byte lbl_8002E470
	.4byte lbl_8003173C
	.4byte lbl_8002F154
	.4byte lbl_80031740
	.4byte lbl_8002F5F8
	.4byte lbl_8003173C
	.4byte lbl_8003173C
	.4byte lbl_80030468
	.4byte lbl_80030488
	.4byte lbl_8003173C
	.4byte lbl_800312A4

glabel lbl_8017B990
	# ROM: 0x177A90
	.4byte lbl_800384B4
	.4byte lbl_800384F0
	.4byte lbl_8003852C
	.4byte lbl_80038578
	.4byte lbl_800385B0
	.4byte lbl_800385E0
	.4byte lbl_80038610
	.4byte lbl_80038634
	.4byte lbl_80038660
	.4byte lbl_80038684
	.4byte lbl_800386A8
	.4byte lbl_800386D8
	.4byte lbl_80038708
	.4byte lbl_80038724
	.4byte lbl_80038740
	.4byte lbl_80038774
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800387A8
	.4byte lbl_800387CC
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800387F0
	.4byte lbl_8003880C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80038830
	.4byte lbl_80038840
	.4byte lbl_80038850
	.4byte lbl_800388A0
	.4byte lbl_800388F0
	.4byte lbl_8003894C
	.4byte lbl_800389A8
	.4byte lbl_80038A04
	.4byte lbl_80038A60
	.4byte lbl_80038A70
	.4byte lbl_80038ACC
	.4byte lbl_80038B1C
	.4byte lbl_80038B6C
	.4byte lbl_80038BC8
	.4byte lbl_80038C24
	.4byte lbl_80038C80

glabel lbl_8017BA90
	# ROM: 0x177B90
	.4byte lbl_80037D9C
	.4byte lbl_80037DC8
	.4byte lbl_80037DF4
	.4byte lbl_80037E20
	.4byte lbl_80037E4C
	.4byte lbl_80037E8C
	.4byte lbl_80037ECC
	.4byte lbl_80037EE8
	.4byte lbl_80037F08
	.4byte lbl_80037F2C
	.4byte lbl_80037F50
	.4byte lbl_80037F8C
	.4byte lbl_80037FC8
	.4byte lbl_80037FE4
	.4byte lbl_80038000
	.4byte lbl_80038040
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80038080
	.4byte lbl_800380B0
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800380E0
	.4byte lbl_800380FC
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80038120
	.4byte lbl_80038130
	.4byte lbl_80038140
	.4byte lbl_80038180
	.4byte lbl_800381C0
	.4byte lbl_80038200
	.4byte lbl_80038240
	.4byte lbl_80038280
	.4byte lbl_800382C0
	.4byte lbl_800382D0
	.4byte lbl_80038310
	.4byte lbl_80038350
	.4byte lbl_80038390
	.4byte lbl_800383D0
	.4byte lbl_80038410
	.4byte lbl_80038450

glabel lbl_8017BB90
	# ROM: 0x177C90
	.4byte lbl_800376F0
	.4byte lbl_8003771C
	.4byte lbl_80037748
	.4byte lbl_80037774
	.4byte lbl_800377A0
	.4byte lbl_800377C0
	.4byte lbl_800377E0
	.4byte lbl_800377FC
	.4byte lbl_8003781C
	.4byte lbl_80037848
	.4byte lbl_8003786C
	.4byte lbl_80037894
	.4byte lbl_800378BC
	.4byte lbl_800378EC
	.4byte lbl_80037914
	.4byte lbl_80037940
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_8003796C
	.4byte lbl_8003798C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800379A8
	.4byte lbl_800379D0
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800379F4
	.4byte lbl_80037A04
	.4byte lbl_80037A14
	.4byte lbl_80037A54
	.4byte lbl_80037A94
	.4byte lbl_80037AD4
	.4byte lbl_80037B14
	.4byte lbl_80037B58
	.4byte lbl_80037B9C
	.4byte lbl_80037BAC
	.4byte lbl_80037BF0
	.4byte lbl_80037C30
	.4byte lbl_80037C70
	.4byte lbl_80037CB0
	.4byte lbl_80037CF0
	.4byte lbl_80037D34

glabel lbl_8017BC90
	# ROM: 0x177D90
	.4byte lbl_80037040
	.4byte lbl_8003706C
	.4byte lbl_80037098
	.4byte lbl_800370C4
	.4byte lbl_800370F0
	.4byte lbl_80037114
	.4byte lbl_80037138
	.4byte lbl_80037154
	.4byte lbl_80037174
	.4byte lbl_800371A0
	.4byte lbl_800371C4
	.4byte lbl_800371EC
	.4byte lbl_80037214
	.4byte lbl_80037244
	.4byte lbl_8003726C
	.4byte lbl_80037298
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800372C4
	.4byte lbl_800372E0
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800372FC
	.4byte lbl_80037324
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80037348
	.4byte lbl_80037358
	.4byte lbl_80037368
	.4byte lbl_800373A8
	.4byte lbl_800373E8
	.4byte lbl_80037428
	.4byte lbl_80037468
	.4byte lbl_800374AC
	.4byte lbl_800374F0
	.4byte lbl_80037500
	.4byte lbl_80037544
	.4byte lbl_80037584
	.4byte lbl_800375C4
	.4byte lbl_80037604
	.4byte lbl_80037644
	.4byte lbl_80037688

glabel lbl_8017BD90
	# ROM: 0x177E90
	.4byte lbl_80036DA8
	.4byte lbl_80036DF4
	.4byte lbl_80036E18
	.4byte lbl_80039B0C
	.4byte lbl_80036E34
	.4byte lbl_80036E9C
	.4byte lbl_80036EC0

glabel lbl_8017BDAC
	# ROM: 0x177EAC
	.4byte lbl_80036CC4
	.4byte lbl_80036D00
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80036D34
	.4byte lbl_80036D54
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C

glabel lbl_8017BDD0
	# ROM: 0x177ED0
	.4byte lbl_80036CA0
	.4byte lbl_800369F0
	.4byte lbl_80036A44
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036A58
	.4byte lbl_80036CA0
	.4byte lbl_80036B10
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036CA0
	.4byte lbl_80036C3C

glabel lbl_8017BE34
	# ROM: 0x177F34
	.4byte lbl_800363A8
	.4byte lbl_800363D8
	.4byte lbl_80036408
	.4byte lbl_80036454
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800364A0
	.4byte lbl_800364D0
	.4byte lbl_80036500
	.4byte lbl_80036530
	.4byte lbl_80036560
	.4byte lbl_80039B0C
	.4byte lbl_80036590
	.4byte lbl_80039B0C
	.4byte lbl_800365C0
	.4byte lbl_800365FC
	.4byte lbl_80036638
	.4byte lbl_8003668C

glabel lbl_8017BE84
	# ROM: 0x177F84
	.4byte lbl_8003591C
	.4byte lbl_80039B0C
	.4byte lbl_80035940
	.4byte lbl_80035964
	.4byte lbl_80035988
	.4byte lbl_80039B0C
	.4byte lbl_800359B8
	.4byte lbl_800359E8
	.4byte lbl_80035A18
	.4byte lbl_80035A2C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80035A5C
	.4byte lbl_80035A70
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80035A84
	.4byte lbl_80035AA0
	.4byte lbl_80035ABC
	.4byte lbl_80035AD8
	.4byte lbl_80035AF4
	.4byte lbl_80039B0C
	.4byte lbl_80035B2C
	.4byte lbl_80035B64
	.4byte lbl_80035B9C
	.4byte lbl_80035BF0
	.4byte lbl_80035C44
	.4byte lbl_80035C98
	.4byte lbl_80035CEC
	.4byte lbl_80035D5C
	.4byte lbl_80035DCC
	.4byte lbl_80035E20
	.4byte lbl_80035E74
	.4byte lbl_80035EA0
	.4byte lbl_80035ECC
	.4byte lbl_80035EF8
	.4byte lbl_80035F24
	.4byte lbl_80035F50
	.4byte lbl_80035F7C
	.4byte lbl_80035FA8
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80035FD4
	.4byte lbl_80036010
	.4byte lbl_80036048
	.4byte lbl_80036084
	.4byte lbl_800360C0
	.4byte lbl_800360FC
	.4byte lbl_80036138
	.4byte lbl_8003616C
	.4byte lbl_800361A0
	.4byte lbl_800361D4
	.4byte lbl_80036208
	.4byte lbl_80039B0C
	.4byte lbl_8003623C
	.4byte lbl_80039B0C
	.4byte lbl_80036270
	.4byte lbl_80039B0C
	.4byte lbl_8003629C
	.4byte lbl_800362C8
	.4byte lbl_800362F4
	.4byte lbl_80039B0C
	.4byte lbl_80036324
	.4byte lbl_80036354

glabel lbl_8017BF84
	# ROM: 0x178084
	.4byte lbl_800358F8
	.4byte lbl_80036384
	.4byte lbl_800366E0
	.4byte lbl_8003673C
	.4byte lbl_80036768
	.4byte lbl_800367F4
	.4byte lbl_80036830
	.4byte lbl_80036860
	.4byte lbl_80036890
	.4byte lbl_800368B8
	.4byte lbl_800368E0
	.4byte lbl_80036918
	.4byte lbl_8003694C
	.4byte lbl_80036970
	.4byte lbl_80036994
	.4byte lbl_800369B8
	.4byte lbl_800369CC
	.4byte lbl_80036D74
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80038CDC
	.4byte lbl_80038D34
	.4byte lbl_80038D8C
	.4byte lbl_80038DD8
	.4byte lbl_80038E24
	.4byte lbl_80038E5C
	.4byte lbl_80038EBC
	.4byte lbl_80038F84
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_80038E94
	.4byte lbl_800390B8
	.4byte lbl_8003911C
	.4byte lbl_8003917C
	.4byte lbl_8003920C
	.4byte lbl_8003926C
	.4byte lbl_800392CC
	.4byte lbl_8003935C
	.4byte lbl_8003904C
	.4byte lbl_800393EC
	.4byte lbl_8003943C
	.4byte lbl_8003948C
	.4byte lbl_800394FC
	.4byte lbl_8003954C
	.4byte lbl_800395C8
	.4byte lbl_80039640
	.4byte lbl_80039B0C
	.4byte lbl_800396B0
	.4byte lbl_80039710
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800397B4
	.4byte lbl_80039820
	.4byte lbl_80039B0C
	.4byte lbl_80039888
	.4byte lbl_800398F0
	.4byte lbl_80039958
	.4byte lbl_80039B0C
	.4byte lbl_80039B0C
	.4byte lbl_800399D4
	.4byte lbl_80039A50
	.4byte lbl_80039B0C
	.4byte lbl_80039AB0

glabel lbl_8017C084
	# ROM: 0x178184
	.4byte lbl_8003A018
	.4byte lbl_8003A2CC
	.4byte lbl_8003AA80
	.4byte lbl_8003A580
	.4byte lbl_8003A180
	.4byte lbl_8003A434
	.4byte lbl_8003AA80
	.4byte lbl_8003AA80
	.4byte lbl_8003A6CC
	.4byte lbl_8003A808
	.4byte lbl_8003AA80
	.4byte lbl_8003A944

glabel lbl_8017C0B4
	# ROM: 0x1781B4
	.4byte lbl_8003AE18
	.4byte lbl_8003B554
	.4byte lbl_8003B554
	.4byte lbl_8003B554
	.4byte lbl_8003B05C
	.4byte lbl_8003B554
	.4byte lbl_8003B25C
	.4byte lbl_8003B554
	.4byte lbl_8003AF48
	.4byte lbl_8003B554
	.4byte lbl_8003B554
	.4byte lbl_8003B554
	.4byte lbl_8003B15C
	.4byte lbl_8003B554
	.4byte lbl_8003B3D8

glabel lbl_8017C0F0
	# ROM: 0x1781F0
	.4byte lbl_80246510
	.4byte 0x001024D0
	.4byte 0
	.4byte cpuEvent

glabel lbl_8017C100
	# ROM: 0x178200
	.4byte lbl_8003E090
	.4byte lbl_8003E2D8
	.4byte lbl_8003E2D8
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E2D8
	.4byte lbl_8003E090
	.4byte lbl_8003E2D8
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E090
	.4byte lbl_8003E064

glabel lbl_8017C164
	# ROM: 0x178264
	.4byte lbl_8003DD58
	.4byte lbl_8003DE18
	.4byte lbl_8003DDDC
	.4byte lbl_8003E2D0
	.4byte lbl_8003DEB4
	.4byte lbl_8003DFD8
	.4byte lbl_8003DFD8
	.4byte lbl_8003DFD8
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E040
	.4byte lbl_8003E120
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003DEB4
	.4byte lbl_8003DFD8
	.4byte lbl_8003DFD8
	.4byte lbl_8003DFD8
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E1C0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E2D0
	.4byte lbl_8003E1AC
	.4byte 0
	.asciz "function overlapped for %p ???\n"
	.asciz "\t %p - %p\n"
	.balign 4
	.asciz "1 function overlapped for %p - %p ???\n"
	.balign 4
	.asciz "2 function overlapped for %p - %p ???\n"
	.balign 8
lbl_8017C298:
	.4byte lbl_80246518
	.4byte 0x0000000C
	.4byte 0
	.4byte lbl_800410C4

glabel lbl_8017C2A8
	# ROM: 0x1783A8
	.4byte lbl_80041244
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_80041250
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_8004125C
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_80041268
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_80041274
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_80041280
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_8004128C
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_80041298
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412A4
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412BC
	.4byte lbl_800412B0

glabel lbl_8017C33C
	# ROM: 0x17843C
	.4byte lbl_80041310
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_8004131C
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041328
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041334
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041340
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_8004134C
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041358
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041364
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041370
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_80041388
	.4byte lbl_8004137C

glabel lbl_8017C3D0
	# ROM: 0x1784D0
	.4byte lbl_800413D4
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_800413E4
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041428
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_800413F4
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041404
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041410
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041428
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041420
	.4byte lbl_80041428

glabel lbl_8017C444
	# ROM: 0x178544
	.4byte lbl_8004146C
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_8004147C
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414CC
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_8004148C
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_8004149C
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414A8
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414B8
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414C4
	.4byte lbl_800414CC

glabel lbl_8017C4B8
	# ROM: 0x1785B8
	.4byte lbl_80246520
	.4byte 0x00000048
	.4byte 0
	.4byte ramEvent
lbl_8017C4C8:
	.4byte lbl_80246528
	.4byte 0x00019B00
	.4byte 0
	.4byte romEvent

glabel lbl_8017C4D8
	# ROM: 0x1785D8
	.4byte lbl_80043920
	.4byte lbl_80043928
	.4byte lbl_80043C48
	.4byte lbl_80043C50
	.4byte lbl_80043C58
	.4byte lbl_80043C60
	.4byte lbl_80043C68
	.4byte lbl_80043C70
	.4byte lbl_80043C78
	.4byte lbl_80043C80
	.4byte lbl_80043C88
	.4byte lbl_80043C90
	.4byte lbl_80043C98
	.4byte lbl_80043CA8
	.4byte lbl_80043CB0
	.4byte lbl_80043CB8
	.4byte lbl_80043CC0
	.4byte lbl_80043CC8
	.4byte lbl_80043CD0
	.4byte lbl_80043CD8
	.4byte lbl_80043CE0
	.4byte lbl_80043CE8
	.4byte lbl_80043CA0
	.4byte 0
lbl_8017C538:
	.4byte lbl_80246530
	.4byte 0x0000010C
	.4byte 0
	.4byte lbl_80043D7C

glabel lbl_8017C548
	# ROM: 0x178648
	.4byte lbl_8024653C
	.4byte 0x0000000C
	.4byte 0
	.4byte lbl_80044230

glabel lbl_8017C558
	# ROM: 0x178658
	.4byte lbl_80246550
	.4byte 0x00000008
	.4byte 0
	.4byte lbl_8004443C

glabel lbl_8017C568
	# ROM: 0x178668
	.4byte lbl_8024655C
	.4byte 0x0000001C
	.4byte 0
	.4byte lbl_8004499C

glabel lbl_8017C578
	# ROM: 0x178678
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0
	.4byte 0

glabel lbl_8017C5C0
	# ROM: 0x1786C0
	.4byte 0
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0x00000009
	.4byte 0x00000005
	.4byte 0x0000000B
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000001

glabel lbl_8017C628
	# ROM: 0x178728
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x0000000B
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x1F011F07
	.4byte 0x01070707
	.4byte 0
	.4byte 0
	.4byte 0x01020400
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01050107
	.4byte 0x01070707
	.4byte 0
	.4byte 0
	.4byte 0x01020400
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01030307
	.4byte 0x07030701
	.4byte 0
	.4byte 0
	.4byte 0x01020400
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02010201
	.4byte 0x06020106
	.4byte 0x001F1F1F
	.4byte 0x02020200
	.4byte 0x02060200
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x010A0702
	.4byte 0x05050201
	.4byte 0x00070702
	.4byte 0x06070707
	.4byte 0x02040200
	.4byte 0x00000803
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x06010201
	.4byte 0x02020106
	.4byte 0x0500031F
	.4byte 0x07020700
	.4byte 0x02040200
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x0000000C
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03031F02
	.4byte 0x01010502
	.4byte 0x001F1F1F
	.4byte 0x07030500
	.4byte 0x02050200
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02030101
	.4byte 0x01050701
	.4byte 0x05000002
	.4byte 0x07030700
	.4byte 0x02030200
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03050702
	.4byte 0x07030701
	.4byte 0x001F1F1F
	.4byte 0x00070707
	.4byte 0x02020200
	.4byte 0x00000803
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x06010201
	.4byte 0x06020106
	.4byte 0x0500031F
	.4byte 0x02020200
	.4byte 0x02050200
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x0000000C
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000006
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05010102
	.4byte 0x01050302
	.4byte 0x03010200
	.4byte 0x07020007
	.4byte 0x02050200
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000F
	.4byte 0
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000008
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0024486C
	.4byte 0x90B4D8FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8017E8C0:
	.4byte lbl_80246570
	.4byte 0x0003F5D0
	.4byte 0
	.4byte lbl_80055978

glabel lbl_8017E8D0
	# ROM: 0x17A9D0
	.4byte 0x0000001E
	.4byte 0x00000021
	.4byte 0x00000024
	.4byte 0x00000027
	.4byte 0x0000002A
	.4byte 0x0000002D
	.4byte 0x00000030
	.4byte 0x00000033

glabel lbl_8017E8F0
	# ROM: 0x17A9F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

glabel lbl_8017E910
	# ROM: 0x17AA10
	.4byte 0x000000BE
	.4byte 0x000000BE
	.4byte 0x000000BE
	.4byte 0
	.4byte 0xF5500000
	.4byte 0x07080200
	.4byte 0xE6000000
	.4byte 0
	.4byte 0xF3000000
	.4byte 0x073BF01A
	.4byte 0xE7000000
	.4byte 0

glabel lbl_8017E940
	# ROM: 0x17AA40
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B254
	.4byte lbl_8004B260
	.4byte lbl_8004B26C
	.4byte lbl_8004B278
	.4byte lbl_8004B284
	.4byte lbl_8004B290
	.4byte lbl_8004B29C
	.4byte lbl_8004B2A8
	.4byte lbl_8004B2B4
	.4byte lbl_8004B2C0
	.4byte lbl_8004B2CC
	.4byte lbl_8004B2D8
	.4byte lbl_8004B2E4
	.4byte lbl_8004B2F0
	.4byte lbl_8004B2FC
	.4byte lbl_8004B308
	.4byte lbl_8004B314
	.4byte lbl_8004B320
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B404
	.4byte lbl_8004B32C
	.4byte 0
	.4byte 0x0003F800
	.4byte 0
	.4byte 0x0003F000
	.4byte 0
	.4byte 0x0003E000
	.4byte 0x00000001
	.4byte 0x0003C000
	.4byte 0x00000002
	.4byte 0x00038000
	.4byte 0x00000003
	.4byte 0x00030000
	.4byte 0x00000004
	.4byte 0x00020000
	.4byte 0x00000005
	.4byte 0
	.4byte 0x00000006

glabel lbl_8017EA78
	# ROM: 0x17AB78
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

glabel lbl_8017EA98
	# ROM: 0x17AB98
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

glabel lbl_8017EAB8
	# ROM: 0x17ABB8
	.4byte lbl_8004F220
	.4byte lbl_8004F340
	.4byte 0
	.4byte lbl_8004F550
	.4byte lbl_8004F7F8
	.4byte lbl_8004F96C
	.4byte 0
	.4byte lbl_80050788
	.4byte 0x0C184F50
	.4byte 0x00182CF0
	.4byte 0x03010305
	.4byte 0x001F1F1F
	.4byte 0x07040701
	.4byte 0x07030700

glabel lbl_8017EAF0
	# ROM: 0x17ABF0
	.4byte lbl_80050C28
	.4byte lbl_80050D8C
	.4byte lbl_80050F54
	.4byte lbl_8005111C
	.4byte lbl_800512C4
	.4byte lbl_800514D0

glabel lbl_8017EB08
	# ROM: 0x17AC08
	.4byte lbl_800574C4
	.4byte lbl_8005752C
	.4byte lbl_80057560
	.4byte lbl_80057570
	.4byte lbl_80057580
	.4byte lbl_800575BC
	.4byte lbl_800575CC
	.4byte lbl_800575CC
	.4byte lbl_800575CC
	.4byte lbl_800575CC
	.4byte lbl_8005A6A8
	.4byte lbl_8005A26C
	.4byte lbl_8005A2B4
	.4byte lbl_8005A2FC
	.4byte lbl_8005A520
	.4byte lbl_8005A538
	.4byte lbl_8005A54C
	.4byte lbl_8005A554
	.4byte lbl_8005A55C
	.4byte 0

glabel lbl_8017EB58
	# ROM: 0x17AC58
	.4byte 0x00000555
	.4byte 0x00000556
	.4byte 0x00000559
	.4byte 0x0000055A
	.4byte 0x00000565
	.4byte 0x00000566
	.4byte 0x00000569
	.4byte 0x0000056A
	.4byte 0x00000595
	.4byte 0x00000596
	.4byte 0x00000599
	.4byte 0x0000059A
	.4byte 0x000005A5
	.4byte 0x000005A6
	.4byte 0x000005A9
	.4byte 0x000005AA
	.4byte 0x00000655
	.4byte 0x00000656
	.4byte 0x00000659
	.4byte 0x0000065A
	.4byte 0x00000665
	.4byte 0x00000666
	.4byte 0x00000669
	.4byte 0x0000066A
	.4byte 0x00000695
	.4byte 0x00000696
	.4byte 0x00000699
	.4byte 0x0000069A
	.4byte 0x000006A5
	.4byte 0x000006A6
	.4byte 0x000006A9
	.4byte 0x000006AA
	.4byte 0x00000955
	.4byte 0x00000956
	.4byte 0x00000959
	.4byte 0x0000095A
	.4byte 0x00000965
	.4byte 0x00000966
	.4byte 0x00000969
	.4byte 0x0000096A
	.4byte 0x00000995
	.4byte 0x00000996
	.4byte 0x00000999
	.4byte 0x0000099A
	.4byte 0x000009A5
	.4byte 0x000009A6
	.4byte 0x000009A9
	.4byte 0x000009AA
	.4byte 0x00000A55
	.4byte 0x00000A56
	.4byte 0x00000A59
	.4byte 0x00000A5A
	.4byte 0x00000A65
	.4byte 0x00000A66
	.4byte 0x00000A69
	.4byte 0x00000A6A
	.4byte 0x00000A95
	.4byte 0x00000A96
	.4byte 0x00000A99
	.4byte 0x00000A9A
	.4byte 0x00000AA5
	.4byte 0x00000AA6
	.4byte 0x00000AA9
	.4byte 0x00000AAA

glabel lbl_8017EC58
	# ROM: 0x17AD58
	.4byte 0
	.4byte func_8005A824
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005AB94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_8005AE34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005B054
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_8005B128
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005B5E0
	.4byte 0x00000045
	.4byte 0xE82F9DC4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000002C
	.4byte 0x384D2C37
	.4byte 0x0000002B
	.4byte 0x3954FA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte osInvalICache
	.4byte 0x0000001D
	.4byte 0x376979EF
	.4byte 0x0000001D
	.4byte 0x3769A92F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001D
	.4byte 0x376979EF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0F38926F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005B6D8
	.4byte 0x00000020
	.4byte 0x3F5B05D4
	.4byte 0x00000022
	.4byte 0x3F5B35D1
	.4byte 0x00000008
	.4byte 0x10310240
	.4byte 0x0000000C
	.4byte 0x10310300
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005B764
	.4byte 0x00000007
	.4byte 0x10000400
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005B860
	.4byte 0x00000046
	.4byte 0x88F8FC90
	.4byte 0x00000058
	.4byte 0xA177D03D
	.4byte 0x00000051
	.4byte 0xD3B85DEF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005B990
	.4byte 0x00000025
	.4byte 0x5ACF0804
	.4byte 0x0000002A
	.4byte 0x978F50F1
	.4byte 0x0000001D
	.4byte 0x47200DC9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BA98
	.4byte 0x000000A8
	.4byte 0x8FBCE3BC
	.4byte 0x00000089
	.4byte 0x807A196A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BB84
	.4byte 0x00000066
	.4byte 0x380B07CA
	.4byte 0x000000A5
	.4byte 0x947050BF
	.4byte 0x0000007C
	.4byte 0x66EC38E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BC00
	.4byte 0x0000005A
	.4byte 0x5FCCA978
	.4byte 0x00000080
	.4byte 0xF6971795
	.4byte 0x0000006C
	.4byte 0x07B6DF06
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BC7C
	.4byte 0x0000001C
	.4byte 0x63BA7FE0
	.4byte 0x0000002E
	.4byte 0xF25B283A
	.4byte 0x0000004F
	.4byte 0x5B919EF9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BD34
	.4byte 0x00000039
	.4byte 0xED7A2E0B
	.4byte 0x00000044
	.4byte 0xF6B9E6BD
	.4byte 0x0000004F
	.4byte 0x5B919EF9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BE0C
	.4byte 0x00000035
	.4byte 0xF3081756
	.4byte 0x00000035
	.4byte 0xD4FE07ED
	.4byte 0x00000050
	.4byte 0xD8994154
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BE1C
	.4byte 0x000000C8
	.4byte 0x4C772348
	.4byte 0x000000BC
	.4byte 0xEA1B798E
	.4byte 0x000000CA
	.4byte 0xEECDE8D5
	.4byte 0x000000A2
	.4byte 0xB804EF53
	.4byte 0x00000043
	.4byte 0xE317736D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BE2C
	.4byte 0x00000083
	.4byte 0x7F8667AA
	.4byte 0x0000006E
	.4byte 0x6CF1440E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BE34
	.4byte 0x0000009C
	.4byte 0x3AC7018A
	.4byte 0x00000089
	.4byte 0x46FC22CC
	.4byte 0x00000072
	.4byte 0xBBF953DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BE44
	.4byte 0x00000026
	.4byte 0x158C0203
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFA0
	.4byte 0x00000039
	.4byte 0xEC894F9D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFA8
	.4byte 0x00000030
	.4byte 0xE88BF13B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFB0
	.4byte 0x00000005
	.4byte 0x09A69029
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFB8
	.4byte 0x0000007A
	.4byte 0x78CA30D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFC0
	.4byte 0x00000066
	.4byte 0x217F834C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFC8
	.4byte 0x00000042
	.4byte 0x082895D5
	.4byte 0x0000001D
	.4byte 0x7730CD62
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFD0
	.4byte 0x00000114
	.4byte 0x42D3943A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFD8
	.4byte 0x000000BE
	.4byte 0x20689644
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFE0
	.4byte 0x00000A3B
	.4byte 0xAC09CF16
	.4byte 0x00000A0E
	.4byte 0x0A2781CF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFE8
	.4byte 0x00000513
	.4byte 0xD240BD17
	.4byte 0x00000534
	.4byte 0xF48E747F
	.4byte 0x00000512
	.4byte 0x07F9C898
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFF0
	.4byte 0x0000087E
	.4byte 0x2C750086
	.4byte 0x000008BE
	.4byte 0xD4B5848D
	.4byte 0x00000876
	.4byte 0x6041C488
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005BFF8
	.4byte 0x00000030
	.4byte 0x72AD19D2
	.4byte 0x00000030
	.4byte 0x74417E92
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C000
	.4byte 0x000000A4
	.4byte 0x01A91C1D
	.4byte 0x000000B8
	.4byte 0x3DDE001A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C008
	.4byte 0x00000FDE
	.4byte 0xB10EF8EC
	.4byte 0x000010E7
	.4byte 0x80EF2586
	.4byte 0x00000FDA
	.asciz "XHa1"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C010
	.4byte 0x0000007A
	.4byte 0x688ED492
	.4byte 0x00000086
	.4byte 0x07F24F9D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C018
	.4byte 0x000002C4
	.4byte 0xAA1A905C
	.4byte 0x000002CA
	.4byte 0x5B5C1740
	.4byte 0x000002C2
	.4byte 0x3CFFB8FE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C020
	.4byte 0x00000531
	.4byte 0x98DBD3AC
	.4byte 0x00000547
	.4byte 0x84D895F8
	.4byte 0x00000522
	.4byte 0x8EF57DAD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C028
	.4byte 0x0000004D
	.4byte 0x25D8C8DD
	.4byte 0x00000050
	.4byte 0x8BAEB808
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C030
	.4byte 0x00000211
	.4byte 0x747A41B8
	.4byte 0x00000226
	.4byte 0xAEEAB4CE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C038
	.4byte 0x0000001F
	.4byte 0x5D850A41
	.4byte 0x0000001F
	.4byte 0x620B48BD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C040
	.4byte 0x0000002E
	.4byte 0xF10F3435
	.4byte 0x0000002E
	.4byte 0xF0DF95B5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C048
	.4byte 0x00000062
	.4byte 0xDEC15D6D
	.4byte 0x00000069
	.4byte 0xBDDAA6CE
	.4byte 0x00000062
	.4byte 0xA59ACE0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C050
	.4byte 0x00000099
	.4byte 0x1FFEA038
	.4byte 0x000000A2
	.4byte 0x537E8E2B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C058
	.4byte 0x00000087
	.4byte 0xCB2A67F6
	.4byte 0x00000089
	.4byte 0xF0BABBB1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C060
	.4byte 0x00000031
	.4byte 0x7A9874BB
	.4byte 0x00000030
	.4byte 0xD7BF2079
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C068
	.4byte 0x0000007B
	.4byte 0xC7C29D94
	.4byte 0x0000007E
	.4byte 0x5C08324C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C070
	.4byte 0x00000033
	.4byte 0xE07EBB3D
	.4byte 0x00000035
	.4byte 0x0D679F27
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C078
	.4byte 0x000000D7
	.4byte 0x0D1399E3
	.4byte 0x000000DD
	.4byte 0xC81F9E4D
	.4byte 0x000000F1
	.4byte 0x527FEA7E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C080
	.4byte 0x00000057
	.4byte 0x060B7211
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C088
	.4byte 0x000005BD
	.4byte 0xF3F13BE7
	.4byte 0x000005DD
	.4byte 0x821506C4
	.4byte 0x000005C0
	.4byte 0x10896730
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C090
	.4byte 0x00000044
	.4byte 0x58C88C71
	.4byte 0x00000043
	.4byte 0x2626EFD9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C098
	.4byte 0x00000039
	.4byte 0xF0BC9765
	.4byte 0x00000038
	.4byte 0x28C330DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0A0
	.4byte 0x000002F9
	.4byte 0x9DD503A1
	.4byte 0x00000308
	.4byte 0x43053B2C
	.4byte 0x00000308
	.4byte 0xFBC58FC2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0A8
	.4byte 0x000004AE
	.4byte 0x874E34A2
	.4byte 0x000004BF
	.4byte 0xB3EB90E8
	.4byte 0x000004AA
	.4byte 0x59F4088B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0B0
	.4byte 0x00000037
	.4byte 0x5E5C181B
	.4byte 0x00000036
	.4byte 0xF93BEDF5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0B8
	.4byte 0x00000BCF
	.4byte 0x09D82CCB
	.4byte 0x00000BF0
	.4byte 0xFB17AE88
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0C0
	.4byte 0x00000428
	.4byte 0xF2C7005F
	.4byte 0x0000042B
	.4byte 0xAE7FB4F2
	.4byte 0x00000421
	.4byte 0xEB6A4A7D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0C8
	.4byte 0x0000006C
	.4byte 0xDBEB7136
	.4byte 0x0000006C
	.4byte 0xDBEB70B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0D0
	.4byte 0x0000051C
	.4byte 0xB7C15FA8
	.4byte 0x00000524
	.4byte 0xD539B7E3
	.4byte 0x00000516
	.4byte 0x1C1A97E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0D8
	.4byte 0x000003A1
	.4byte 0x3025720B
	.4byte 0x000003B2
	.4byte 0x31B3D238
	.4byte 0x0000039B
	.4byte 0x65AF1F59
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0E0
	.4byte 0x00000048
	.4byte 0x5217C444
	.4byte 0x00000048
	.4byte 0x3BB15A04
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0E8
	.4byte 0x000000CF
	.4byte 0xD0BFFE65
	.4byte 0x000000D7
	.4byte 0x34E5E895
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0F0
	.4byte 0x0000007C
	.4byte 0x6AE8EBD2
	.4byte 0x0000007F

glabel lbl_80180004
	# ROM: 0x17C104
	.4byte 0xD66180ED
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C0F8
	.4byte 0x00000473
	.4byte 0x8435191A
	.4byte 0x00000489
	.4byte 0xA3DE1F38
	.4byte 0x00000472
	.4byte 0x2CD2623F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C100
	.4byte 0x00000248
	.4byte 0x1B02CC97
	.4byte 0x0000024F
	.4byte 0x6809BC08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C108
	.4byte 0x00000031
	.4byte 0x1DD4E9D3
	.4byte 0x000000CA
	.4byte 0xCFA0E32D
	.4byte 0x00000031
	.4byte 0xFC8052EF
	.4byte 0x000000E4
	.4byte 0xF26B6B27
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C110
	.4byte 0x00000014
	.4byte 0x351B0209
	.4byte 0x0000001B
	.4byte 0x61661954
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C118
	.4byte 0x00000643
	.4byte 0x76FDB50A
	.4byte 0x00000696
	.4byte 0x410B2F11
	.4byte 0x0000063D
	.4byte 0xD1C0A538
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C120
	.4byte 0x00000056
	.4byte 0x11222F8D
	.4byte 0x0000005B
	.4byte 0x14C0ECB3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C128
	.4byte 0x00000029
	.asciz "DI\\v"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C130
	.4byte 0x00000057
	.4byte 0x426B0B1F
	.4byte 0x00000067
	.4byte 0x325CC939
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C130
	.4byte 0x0000008B
	.4byte 0x9804924C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8005C130
	.4byte 0x00000022
	.4byte 0x5D447143
	.4byte 0x00000033
	.4byte 0xBFD9B964
	.4byte 0x00000082
	.4byte 0x110CA1BB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80180334
	.asciz "OS-LIBRARY"
	.balign 4
lbl_80180340:
	.4byte lbl_80180334
	.4byte 0x00000064
	.4byte 0
	.4byte lbl_8005ECDC
lbl_80180350:
	.4byte lbl_802465B8
	.4byte 0x00000004
	.4byte 0
	.4byte lbl_8005F87C

glabel lbl_80180360
	# ROM: 0x17C460
	.asciz "html.arc"
	.balign 4

glabel lbl_8018036C
	# ROM: 0x17C46C
	.asciz "helpRVL.c"
	.balign 4
	.asciz "/tmp/HBMSE.brsar"
	.balign 4
	.asciz "/tmp/opera.arc"
	.balign 8
	.asciz "Huf8_HomeButtonSe.brsar"
	.asciz "Opera.arc"
	.balign 4
	.asciz "arc:/html/"
	.balign 4
	.asciz "LZ77_homeBtn.arc"
	.balign 4
	.asciz "index/index_Frameset.html"
	.balign 4
	.asciz "Huf8_SpeakerSe.arc"
	.balign 4
	.asciz "home.csv"
	.balign 4
	.asciz "config.txt"
	.balign 8

glabel lbl_80180430
	# ROM: 0x17C530
	.asciz "homeBtnIcon.tpl"
	.4byte lbl_800614A8
	.4byte lbl_80061770
	.4byte lbl_800614B0
	.4byte lbl_800614F0
	.4byte lbl_80061540
	.4byte lbl_800616E8
	.4byte lbl_80061770
	.4byte lbl_80061770
	.4byte lbl_800614A0
	.4byte lbl_80061710
	.4byte lbl_8006174C

glabel lbl_8018046C
	.asciz "HelpMenu"
	.balign 4
lbl_80180478:
	.4byte lbl_8018046C
	.4byte 0x00000044
	.4byte 0
	.4byte lbl_80061C88
lbl_80180488:
	.4byte lbl_802465D8
	.4byte 0x0000055C
	.4byte 0
	.4byte lbl_8006255C
lbl_80180498:
	.4byte lbl_802465E0
	.4byte 0x00000004
	.4byte 0
	.4byte lbl_800627E8

glabel lbl_801804A8
	# ROM: 0x17C5A8
	.4byte lbl_802465E8
	.4byte 0x00000178
	.4byte 0
	.4byte lbl_80063044

glabel lbl_801804B8
	# ROM: 0x17C5B8
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x20000000
	.4byte 0x10000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00008000
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00040000
	.4byte 0x00000020
	.4byte 0x00000600
	.4byte 0x00000080
	.4byte 0x00000100
	.4byte 0x00200000
	.4byte 0x00400000
	.4byte 0x00080000
	.4byte 0x00100000
	.4byte 0x00800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80180514
	.asciz "Controller"
	.balign 4
lbl_80180520:
	.4byte lbl_80180514
	.4byte 0x00000310
	.4byte 0
	.4byte lbl_80064540

glabel lbl_80180530
	# ROM: 0x17C630
	.4byte 0xFBB27B1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80180544:
	.4byte 0x92FBDC3E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80180558:
	.4byte 0xBB628DD1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018056C:
	.4byte 0xE136B8C3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80180580:
	.4byte 0x57D16861
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80180594:
	.4byte 0x14A5B6E2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_801805A8:
	.4byte 0xC0192EA3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_801805BC:
	.4byte 0x5D3A795B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_801805D0:
	.4byte 0x1786067E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_801805E4:
	.4byte 0x2F8DCDD7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_801805F8:
	.4byte 0x80E449BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018060C:
	.4byte 0xB35ABA8B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80180620:
	.4byte 0xA4E943CC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80180634:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80180648
	.asciz "gameReloadingAnimation.tpl"
	.balign 4

glabel lbl_80180664
	# ROM: 0x17C764
	.4byte lbl_80180530
	.4byte 0
	.4byte 0
	.4byte lbl_80180558
	.4byte 0
	.4byte 0
	.4byte lbl_80064B5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80180544
	.4byte 0
	.4byte 0
	.4byte lbl_80180558
	.4byte 0
	.4byte 0
	.4byte lbl_80064B5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8018056C
	.4byte 0
	.4byte 0
	.4byte lbl_80180558
	.4byte 0
	.4byte 0
	.4byte lbl_80064B5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80180580
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80180594
	.4byte 0
	.4byte 0
	.4byte lbl_80180558
	.4byte 0
	.4byte 0
	.4byte lbl_80064B5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801805A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801805BC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80180580
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801805D0
	.4byte 0x00020000
	.4byte 0
	.4byte lbl_80180634
	.4byte 0
	.4byte 0
	.4byte lbl_800649B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80042818
	.4byte 0x00780000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801805D0
	.4byte 0
	.4byte 0
	.4byte lbl_801805E4
	.4byte 0x00030000
	.4byte 0
	.4byte lbl_800649B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte lbl_80063264
	.4byte 0x00780000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801805F8
	.4byte 0
	.4byte 0
	.4byte lbl_80180634
	.4byte 0
	.4byte 0
	.4byte lbl_800649B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte lbl_80063264
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8018060C
	.4byte 0
	.4byte 0
	.4byte lbl_80180634
	.4byte 0
	.4byte 0
	.4byte lbl_800649B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte lbl_80063264
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80180620
	.4byte 0x00020000
	.4byte 0
	.4byte lbl_80180634
	.4byte 0
	.4byte 0
	.4byte lbl_800649B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80042818
	.4byte 0x00780000
	.4byte 0
	.4byte 0
	.4byte lbl_80180648
	.4byte 0x00000021
	.4byte 0x014000D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80180B10
	# ROM: 0x17CC10
	.4byte 0xFFFFFFFF
	.4byte 0x0000000D
	.4byte 0xFFFFFFFE
	.4byte 0
	.4byte 0xFFFFFFFD
	.4byte 0x0000000D
	.4byte 0xFFFFFFFC
	.4byte 0x00000003
	.4byte 0xFFFFFFFB
	.4byte 0x00000004
	.4byte 0xFFFFFFFA
	.4byte 0x0000000D
	.4byte 0xFFFFFFF8
	.4byte 0x00000007
	.4byte 0xFFFFFFF7
	.4byte 0x00000005
	.4byte 0xFFFFFFF6
	.4byte 0x00000006
	.4byte 0xFFFFFFF5
	.4byte 0x00000006
	.4byte 0xFFFFFFF4
	.4byte 0x0000000D
	.4byte 0xFFFFFFF3
	.4byte 0x0000000D
	.4byte 0xFFFFFFF2
	.4byte 0x0000000D
	.4byte 0xFFFFFFF1
	.4byte 0x00000004
	.4byte 0xFFFFFFC0
	.4byte 0x00000007
	.4byte 0xFFFFFF80
	.4byte 0x00000007
	.4byte 0
	.4byte 0x0000000D

glabel lbl_80180B98
	.asciz "Errors_VC64ErrorStrings_jp.bin"
	.balign 4

glabel lbl_80180BB8
	.asciz "saveComments_saveComments_jp.bin"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte lbl_80180B98
	.4byte lbl_80180BB8
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0

glabel lbl_80180BF8
	# ROM: 0x17CCF8
	.4byte lbl_8006546C
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_80065474
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_8006546C
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_8006547C
	.4byte lbl_800654C8
	.4byte lbl_800657DC
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_800657E4
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_800657DC
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_800657EC
	.4byte lbl_80065834

glabel lbl_80180C78
	# ROM: 0x17CD78
	.asciz "save_banner.tpl"

glabel lbl_80180C88
	# ROM: 0x17CD88
	.asciz "banner.bin"
	.balign 8

glabel lbl_80180C98
	# ROM: 0x17CD98
	.4byte lbl_80066CB8
	.4byte lbl_80066CD8
	.4byte lbl_80066CB8
	.4byte lbl_80066CC8
	.4byte lbl_80066CB8
	.4byte lbl_80066CB8
	.4byte lbl_80066CC8
	.4byte lbl_80066CD8
	.4byte lbl_80066CD8
	.4byte lbl_80066CB8
	.4byte lbl_80066CB8
	.4byte 0

glabel lbl_80180CC8
	# ROM: 0x17CDC8
	.4byte 0x00000007
	.4byte 0x0000000E
	.4byte 0x0000000C
	.4byte 0x0000000C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80180CE8
	# ROM: 0x17CDE8
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte lbl_8006B9A8
	.4byte lbl_8006B5FC
	.4byte lbl_8006B608
	.4byte lbl_8006B970
	.4byte lbl_8006B630
	.4byte lbl_8006B97C
	.4byte lbl_8006B680
	.4byte lbl_8006B6DC
	.4byte lbl_8006B6F0
	.4byte lbl_8006B988
	.4byte lbl_8006B6FC
	.4byte lbl_8006B738
	.4byte lbl_8006B8B4
	.4byte lbl_8006B8C0
	.4byte lbl_8006B994
	.4byte lbl_8006B954
	.4byte lbl_8006F394
	.4byte lbl_8006EC2C
	.4byte lbl_8006EC54
	.4byte lbl_8006EC70
	.4byte lbl_8006EC80
	.4byte lbl_8006EC90
	.4byte lbl_8006ECA0
	.4byte lbl_8006EE34
	.4byte lbl_8006EE44
	.4byte lbl_8006EE74
	.4byte lbl_8006EEAC
	.4byte lbl_8006EECC
	.4byte lbl_8006F044
	.4byte lbl_8006F054
	.4byte lbl_8006F064
	.4byte lbl_8006F074
	.4byte lbl_8006F090
	.4byte lbl_8006F0C8
	.4byte lbl_8006F258
	.4byte lbl_8006F2A0
	.4byte lbl_8006F2B0
	.4byte lbl_8006F2FC
	.4byte lbl_8006F348
	.4byte lbl_8006F37C
	.4byte lbl_80070D68
	.4byte lbl_80070784
	.4byte lbl_80070794
	.4byte lbl_80070D60
	.4byte lbl_80070D60
	.4byte lbl_80070828
	.4byte lbl_80070D60
	.4byte lbl_80070894
	.4byte lbl_800708A8
	.4byte lbl_80070D60
	.4byte lbl_800708B8
	.4byte lbl_800708F4
	.4byte lbl_80070A6C
	.4byte lbl_80070A7C
	.4byte lbl_80070B10
	.4byte lbl_80070B20
	.4byte lbl_80070B3C
	.4byte lbl_80070B7C
	.4byte lbl_80070D1C
	.4byte lbl_800707BC
	.4byte lbl_800707CC
	.4byte lbl_80070838
	.4byte lbl_80070D50
	.asciz "unknown command!"
	.balign 4
	.4byte lbl_80072950
	.4byte lbl_800721FC
	.4byte lbl_8007220C
	.4byte lbl_80072944
	.4byte lbl_80072228
	.4byte lbl_80072238
	.4byte lbl_80072248
	.4byte lbl_80072944
	.4byte lbl_800723DC
	.4byte lbl_80072944
	.4byte lbl_8007240C
	.4byte lbl_8007242C
	.4byte lbl_800725A4
	.4byte lbl_800725B4
	.4byte lbl_800725C4
	.4byte lbl_800725D4
	.4byte lbl_800725F0
	.4byte lbl_80072628
	.4byte lbl_800727B8
	.4byte lbl_80072800
	.4byte lbl_80072810
	.4byte lbl_8007285C
	.4byte lbl_800728A8
	.4byte lbl_800728DC
	.4byte lbl_800728EC
	.4byte lbl_80072950
	.4byte lbl_800728FC
	.4byte lbl_80072934

glabel lbl_80180E88
	# ROM: 0x17CF88
	.4byte 0x20004000
	.4byte 0x60008000
	.4byte 0xA000C000
	.4byte 0xE000FFFF
	.4byte lbl_80073E40
	.4byte lbl_8007392C
	.4byte lbl_80073954
	.4byte lbl_8007397C
	.4byte lbl_800739D8
	.4byte lbl_80073A74
	.4byte lbl_80073AC0
	.4byte lbl_80073E40
	.4byte lbl_80073E40
	.4byte lbl_80073B68
	.4byte lbl_80073B7C
	.4byte lbl_80073BB8
	.4byte lbl_80073D34
	.4byte lbl_80073D50
	.4byte lbl_80073DEC
	.4byte lbl_80073E28

glabel lbl_80180ED8
	# ROM: 0x17CFD8
	.4byte 0x02000200
	.4byte 0x01000200
	.4byte 0x02000000

glabel lbl_80180EE4
	# ROM: 0x17CFE4
	.4byte lbl_8007E7B8
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C
	.4byte lbl_8007E7E0
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C
	.4byte lbl_8007EB3C

glabel lbl_80180F18
	# ROM: 0x17D018
	.4byte lbl_8007E0D0
	.4byte lbl_8007E2EC
	.4byte lbl_8007E1D0
	.4byte lbl_8007E2EC
	.4byte lbl_8007EB3C
	.4byte lbl_8007E2EC
	.4byte lbl_8007E224
	.4byte lbl_8007E2EC
	.4byte lbl_8007E234
	.4byte lbl_8007E2EC
	.4byte lbl_8007E290
	.4byte lbl_8007E2EC
	.4byte lbl_8007EB3C
	.4byte lbl_8007E2EC
	.4byte lbl_8007EB3C

glabel lbl_80180F54
	# ROM: 0x17D054
	.4byte lbl_8007DA84
	.4byte lbl_8007DC44
	.4byte lbl_8007DAD8
	.4byte lbl_8007DC44
	.4byte lbl_8007DB30
	.4byte lbl_8007DC44
	.4byte lbl_8007DB88
	.4byte lbl_8007DC44
	.4byte lbl_8007DB88
	.4byte lbl_8007DC44
	.4byte lbl_8007DB88
	.4byte lbl_8007DC44
	.4byte lbl_8007DB88
	.4byte lbl_8007DC44
	.4byte lbl_8007DB88
	.4byte lbl_8007DC44
	.4byte lbl_8007DB88
	.4byte lbl_8007DC44
	.4byte lbl_8007DB88
	.4byte lbl_8007DC44
	.4byte lbl_8007DB88
	.4byte lbl_8007DC44
	.4byte lbl_8007EB3C
	.4byte lbl_8007DC44
	.4byte lbl_8007EB3C
	.4byte lbl_8007DC44
	.4byte lbl_8007EB3C
	.4byte lbl_8007DC44
	.4byte lbl_8007EB3C
	.4byte lbl_8007DC44
	.4byte lbl_8007DBE8

glabel lbl_80180FD0
	# ROM: 0x17D0D0
	.4byte lbl_8007FD70
	.4byte lbl_80080778
	.4byte lbl_80080778
	.4byte lbl_80080778
	.4byte lbl_8007FD98
	.4byte lbl_80080778
	.4byte lbl_80080778
	.4byte lbl_80080778
	.4byte lbl_8007FE20
	.4byte lbl_80080778
	.4byte lbl_80080778
	.4byte lbl_80080778
	.4byte lbl_80080778

glabel lbl_80181004
	# ROM: 0x17D104
	.4byte lbl_80080778
	.4byte lbl_8007F83C
	.4byte lbl_8007F72C
	.4byte lbl_8007F83C
	.4byte lbl_80080778
	.4byte lbl_8007F83C
	.4byte lbl_8007F758
	.4byte lbl_8007F83C
	.4byte lbl_8007F76C
	.4byte lbl_8007F83C
	.4byte lbl_8007F7C8
	.4byte lbl_8007F83C
	.4byte lbl_80080778
	.4byte lbl_8007F83C
	.4byte lbl_80080778

glabel lbl_80181040
	# ROM: 0x17D140
	.4byte lbl_8007F234
	.4byte lbl_8007F4B0
	.4byte lbl_80080778
	.4byte lbl_8007F4B0
	.4byte lbl_8007F400
	.4byte lbl_8007F4B0
	.4byte lbl_8007F458
	.4byte lbl_8007F4B0
	.4byte lbl_80080778
	.4byte lbl_8007F4B0
	.4byte lbl_80080778
	.4byte lbl_8007F4B0
	.4byte lbl_8007F1B8
	.4byte lbl_80080970
	.4byte lbl_80080970
	.4byte lbl_80080970
	.4byte lbl_80080980
	.4byte lbl_80080990
	.4byte lbl_80080970
	.4byte lbl_80080980
	.4byte lbl_80080970
	.4byte lbl_80080980
	.4byte lbl_80080970
	.4byte lbl_80080980

glabel lbl_801810A0
	# ROM: 0x17D1A0
	.4byte lbl_8008116C
	.4byte lbl_80080EC8
	.4byte lbl_80080FD0
	.4byte lbl_80081010
	.4byte lbl_80081034
	.4byte lbl_800810AC
	.4byte lbl_80081124
	.4byte lbl_80081148

glabel lbl_801810C0
	# ROM: 0x17D1C0
	.4byte lbl_80080D74
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_80080D84
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_80080D94
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_80080DF8
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_80080E7C
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_800813EC
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_800813EC
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_8008139C
	.4byte lbl_80081390

glabel lbl_80181134
	# ROM: 0x17D234
	.4byte lbl_80081598
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_800815A4
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_800815B0
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_800815BC
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_800815C8
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_800815D8
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_800815E8
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_8008160C
	.4byte lbl_800815F8
lbl_801811A8:
	.4byte lbl_80246630
	.4byte 0x00005908
	.4byte 0
	.4byte lbl_80081834
	.4byte 0xE7000000
	.4byte 0
	.4byte 0xBA001402
	.4byte 0
	.4byte 0xFCFFFFFF
	.4byte 0xFFFDF6FB
	.4byte 0xB900031D
	.4byte 0x00504240

glabel lbl_801811D8
	# ROM: 0x17D2D8
	.4byte lbl_800841F0
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_800841E8
	.4byte lbl_80083CC0
	.4byte lbl_80083CC0
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_800841F0
	.4byte lbl_80083C30
	.4byte lbl_80083BE8
	.4byte lbl_80083BC0
	.4byte lbl_80083AFC
	.4byte lbl_8008341C
	.4byte lbl_800833CC
	.4byte lbl_8008338C
	.4byte lbl_80083368
	.4byte lbl_800841E8
	.4byte lbl_800832E4
	.4byte lbl_8008323C
	.4byte lbl_80083170
	.4byte lbl_800830B4
	.4byte lbl_800828D4
	.4byte lbl_800827A0
	.4byte lbl_80082730
	.4byte lbl_80082710
	.4byte lbl_8008217C
	.4byte lbl_80082074
	.4byte lbl_80081E8C
	.4byte lbl_80081D3C
	.4byte lbl_80081C9C
	.4byte lbl_80081A84

glabel lbl_801812D8
	# ROM: 0x17D3D8
	.4byte lbl_80084240
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_80084250
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_80084304
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_80084260
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_80084304
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_80084304
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_80084304
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_800842FC
	.4byte lbl_80084304

glabel lbl_8018134C
	# ROM: 0x17D44C
	.4byte lbl_80084348
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_80084354
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_80084360
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_8008436C
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_80084378
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_80084388
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_80084398
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_800843B8
	.4byte lbl_800843A8

glabel lbl_801813C0
	# ROM: 0x17D4C0
	.4byte lbl_80084404
	.4byte lbl_8008443C
	.4byte lbl_8008443C
	.4byte lbl_8008443C
	.4byte lbl_80084414
	.4byte lbl_8008443C
	.4byte lbl_8008443C
	.4byte lbl_8008443C
	.4byte lbl_80084424
	.4byte lbl_8008443C
	.4byte lbl_8008443C
	.4byte lbl_8008443C
	.4byte lbl_80084434

glabel lbl_801813F4
	# ROM: 0x17D4F4
	.4byte lbl_80084480
	.4byte lbl_800844BC
	.4byte lbl_800844BC
	.4byte lbl_800844BC
	.4byte lbl_80084490
	.4byte lbl_800844BC
	.4byte lbl_800844BC
	.4byte lbl_800844BC
	.4byte lbl_800844A0
	.4byte lbl_800844BC
	.4byte lbl_800844BC
	.4byte lbl_800844BC
	.4byte lbl_800844B0
lbl_80181428:
	.4byte lbl_80246638
	.4byte 0x0000002C
	.4byte 0
	.4byte lbl_800844D4

glabel lbl_80181438
	# ROM: 0x17D538
	.asciz "xlCoreRVL.c"

glabel lbl_80181444
	# ROM: 0x17D544
	.asciz "DEMOInit: invalid TV format\n"
	.balign 4

glabel lbl_80181464
	# ROM: 0x17D564
	.asciz "CORE DONE!"
	.balign 4

glabel lbl_80181470
	# ROM: 0x17D570
	.4byte lbl_80246648
	.4byte 0x00000038
	.4byte 0
	.4byte fileEvent

glabel lbl_80181480
	# ROM: 0x17D580
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x3EC28F5C
	.4byte 0x3F6B851F
	.4byte 0
	.4byte 0x008CFFFF
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x3EC28F5C
	.4byte 0x3F6B851F
	.4byte 0
	.4byte 0xFF3838FF
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x3EC28F5C
	.4byte 0x3F6B851F
	.4byte 0
	.4byte 0x10BD0DFF
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x3EC28F5C
	.4byte 0x3F6B851F
	.4byte 0
	.4byte 0xFF9C00FF

glabel lbl_801814E0
	# ROM: 0x17D5E0
	.4byte 0x4F072478
	.4byte 0x431B3811
	.4byte 0x5D702B7F
	.4byte 0x66492155
	.4byte 0x093B1471
	.4byte 0x5E2E6845
	.4byte 0x50021F77
	.4byte 0x37596D63
	.4byte 0x0B154A2D
	.4byte 0x3F015469
	.4byte 0x5F1C0D35
	.4byte 0x26764D42
	.4byte 0x035B3A13
	.4byte 0x1E6B2953
	.4byte 0x48330A79
	.4byte 0x3E602216
	.4byte 0x2C6C5146
	.4byte 0x36000C74
	.4byte 0x20642A58
	.4byte 0x1740344C
	.4byte 0x7A6F0510
	.4byte 0x61255639
	.4byte 0x441A7C6A
	.4byte 0x30084E5C
	.4byte 0x73271241
	.4byte 0x657B1D04
	.4byte 0x326E574B
	.4byte 0x0E287E3D
	.4byte 0x75196206
	.4byte 0x31524723
	.4byte 0x0F7D723C
	.4byte 0x185A672F

glabel lbl_80181560
	# ROM: 0x17D660
	.4byte lbl_80089704
	.4byte lbl_800894A0
	.4byte lbl_800894A8
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_8008938C
	.4byte lbl_80089368
	.4byte lbl_80089418
	.4byte lbl_800893FC
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089554
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_800895E4
	.4byte lbl_80089704
	.4byte lbl_8008957C
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_80089704
	.4byte lbl_800896FC
	.4byte 0

glabel lbl_80181638
	# ROM: 0x17D738
	.4byte lbl_8008B788
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008B890
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008B910
	.4byte lbl_8008B990
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BA10
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BB44
	.4byte lbl_8008BA90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801816C0
	# ROM: 0x17D7C0
	.4byte 0
	.4byte 0
	.4byte 0x00000019
	.4byte 0x00000058
	.4byte 0x00000120
	.4byte 0x00000022
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000964
	.4byte 0
	.4byte 0x00000964
	.4byte 0
	.4byte 0x00000144
	.4byte 0x00000820
	.4byte 0x00000964
	.4byte 0x00000964
	.4byte 0
	.4byte 0x00000EF4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "c:\\vcmv\\vcmvtest.bin\\VcmvTestN.elf"
	.balign 4
	.4byte 0x000000CB
	.4byte 0x00007AC8
	.4byte 0x00000002
	.4byte 0x00006793
	.4byte 0x00000223
	.4byte 0x000147DC
	.4byte 0x00000002
	.4byte 0x00006A63
	.4byte 0x00000245
	.4byte 0x00014D44
	.4byte 0x00000002
	.4byte 0x00006CF0
	.4byte 0x0000024E
	.4byte 0x00014D4C
	.4byte 0x00000002
	.4byte 0x00007357
	.4byte 0x00000252
	.4byte 0x00014D50
	.4byte 0x00000002
	.4byte 0x00007767
	.4byte 0x0000022D
	.4byte 0x00014BE8
	.4byte 0x00000002
	.4byte 0x000079FE
	.4byte 0x00000231
	.4byte 0x00014CC0
	.4byte 0x00000002
	.4byte 0x00007A7E
	.4byte 0x00000235
	.4byte 0x00014D38
	.4byte 0x00000002
	.4byte 0x00067A63
	.4byte 0x0000023A
	.4byte 0x00014D3C
	.4byte 0x00000002
	.4byte 0x000689FE
	.4byte 0x00000219
	.4byte 0x00014430
	.4byte 0x00000002
	.4byte 0x00068A7E
	.4byte 0x000001BE
	.4byte 0x0000EF74
	.4byte 0x00000002
	.4byte 0x00068B59
	.4byte 0x000001C3
	.4byte 0x0000F038
	.4byte 0x00000002
	.4byte 0x00068B5C
	.4byte 0x0000021E
	.4byte 0x00014670
	.4byte 0x00000002
	.4byte 0x00069BFC
	.4byte 0x00000400
	.4byte 0x0008B1A8
	.4byte 0x00000002
	.4byte 0x0006CF04
	.4byte 0x00000249
	.4byte 0x00014D48
	.4byte 0x00000002
	.4byte 0x0006D454
	.4byte 0x00000214
	.4byte 0x00010D34
	.4byte 0x00000002
	.4byte 0x00070B51
	.4byte 0x000000CF
	.4byte 0x00007AD8
	.4byte 0x00000002
	.4byte 0x00072793
	.4byte 0x00000143
	.4byte 0x0000B508
	.4byte 0x00000002
	.4byte 0x00078844
	.4byte 0x00000256
	.4byte 0x00014FA0
	.4byte 0x00000002
	.4byte 0x0007A894
	.4byte 0x000001FD
	.4byte 0x00010C14
	.4byte 0x00000002
	.4byte 0x00679694
	.4byte 0x0000023F
	.4byte 0x00014D40
	.4byte 0x00000002
	.4byte 0x0068A812
	.4byte 0x000001C8
	.4byte 0x0000F5F8
	.4byte 0x00000002
	.4byte 0x006A359B
	.4byte 0x00000227
	.4byte 0x000148B0
	.4byte 0x00000002
	.4byte 0x006D3662
	.4byte 0x0000013D
	.4byte 0x0000B398
	.4byte 0x00000002
	.4byte 0x0078A694
	.4byte 0x00000148
	.4byte 0x0000B528
	.4byte 0x00000002
	.4byte 0x007A8844
	.4byte 0x00000322
	.4byte 0x0002E55C
	.4byte 0x00000002
	.4byte 0x01337EA5
	.4byte 0x00000533
	.4byte 0x0008DA90
	.4byte 0x00000002
	.4byte 0x028A84F5
	.4byte 0x00000496
	.4byte 0x0008B668
	.4byte 0x00000002
	.4byte 0x028F0614
	.4byte 0x0000039D
	.4byte 0x0008237C
	.4byte 0x00000002
	.4byte 0x0297BC9E
	.4byte 0x000004E1
	.4byte 0x0008CE1C
	.4byte 0x00000002
	.4byte 0x029EE2C5
	.4byte 0x0000053D
	.4byte 0x0008DB48
	.4byte 0x00000002
	.4byte 0x02F04F2E
	.4byte 0x00000391
	.4byte 0x00044514
	.4byte 0x00000002
	.4byte 0x032033A2
	.4byte 0x000000BB
	.4byte 0x00003880
	.4byte 0x00000002
	.4byte 0x0364E130
	.4byte 0x000000EC
	.4byte 0x0000895C
	.4byte 0x00000002
	.4byte 0x03C446B5
	.4byte 0x0000041B
	.4byte 0x0008B458
	.4byte 0x00000002
	.4byte 0x04302174
	.4byte 0x000003B8
	.4byte 0x00084134
	.4byte 0x00000002
	.4byte 0x048684A3
	.4byte 0x00000558
	.4byte 0x0008E828
	.4byte 0x00000002
	.4byte 0x053F4512
	.4byte 0x00000450
	.4byte 0x0008B4C8
	.4byte 0x00000002
	.4byte 0x0540CD44
	.4byte 0x0000008C
	.4byte 0x00003268
	.4byte 0x00000002
	.4byte 0x055B09E9
	.4byte 0x000000C3
	.4byte 0x00000150
	.4byte 0x00000006
	.4byte 0x055D02A3
	.4byte 0x00000094
	.4byte 0x00003484
	.4byte 0x00000002
	.4byte 0x056457E9
	.4byte 0x0000009C
	.4byte 0x00003590
	.4byte 0x00000002
	.4byte 0x0569EFE9
	.4byte 0x00000119
	.4byte 0x0000B0EC
	.4byte 0x00000002
	.4byte 0x05789806
	.4byte 0x0000012C
	.4byte 0x0000B1F0
	.4byte 0x00000002
	.4byte 0x05790206
	.4byte 0x000002EF
	.4byte 0x0002A830
	.4byte 0x00000002
	.4byte 0x05801684
	.4byte 0x0000052A
	.4byte 0x0008D838
	.4byte 0x00000002
	.4byte 0x0629639E
	.4byte 0x000004D8
	.4byte 0x0008CD3C
	.4byte 0x00000002
	.4byte 0x06298E54
	.4byte 0x000004EB
	.4byte 0x0008CEFC
	.4byte 0x00000002
	.4byte 0x06299E9B
	.4byte 0x0000029C
	.4byte 0x0002A0DC
	.4byte 0x00000002
	.4byte 0x066866FE
	.4byte 0x0000037B
	.4byte 0x000441F0
	.4byte 0x00000002
	.4byte 0x0670B192
	.4byte 0x0000030E
	.4byte 0x0002A840
	.4byte 0x00000002
	.4byte 0x067A32F5
	.4byte 0x000000B2
	.4byte 0x0000377C
	.4byte 0x00000002
	.4byte 0x069CB710
	.4byte 0x00000015
	.4byte 0x000027D4
	.4byte 0x00000002
	.4byte 0x06C75ED7
	.4byte 0x000001F6
	.4byte 0x00010B34
	.4byte 0x00000002
	.4byte 0x06DCAC56
	.4byte 0x000003D8
	.4byte 0x00089ADC
	.4byte 0x00000002
	.4byte 0x072E5CE5
	.4byte 0x00000576
	.4byte lbl_801B3CA0
	.4byte 0x0000FFF1
	.4byte 0x0730202F
	.4byte 0x000000F4
	.4byte 0x00008A28
	.4byte 0x00000002
	.4byte 0x073C39F2
	.4byte 0x000000FB
	.4byte 0x00008A80
	.4byte 0x00000002
	.4byte 0x073C3A40
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x073C3A79
	.4byte 0x00000007
	.4byte 0x00000104
	.4byte 0x00000001
	.4byte 0x073C49C4
	.4byte 0x000001CE
	.4byte 0x0000F5FC
	.4byte 0x00000002
	.4byte 0x0742B035
	.4byte 0x00000102
	.4byte 0x0000AEE8
	.4byte 0x00000002
	.4byte 0x077905A6
	.4byte 0x000002DA
	.4byte 0x0002A81C
	.4byte 0x00000002
	.4byte 0x079C79DD
	.4byte 0x0000014E
	.4byte 0x0000C9D4
	.4byte 0x00000002
	.4byte 0x07A99846
	.4byte 0x00000164
	.4byte 0x0000CC50
	.4byte 0x00000002
	.4byte 0x07AB8984
	.4byte 0x00000182
	.4byte 0x0000CE24
	.4byte 0x00000002
	.4byte 0x07AB89F2
	.4byte 0x00000173
	.4byte 0x0000CCC8
	.4byte 0x00000002
	.4byte 0x07AB8A40
	.4byte 0x00000155
	.4byte 0x0000CB4C
	.4byte 0x00000002
	.4byte 0x07AB8A79
	.4byte 0x0000000E
	.4byte 0x000027B8
	.4byte 0x00000002
	.4byte 0x07AB92BE
	.4byte 0x00000199
	.4byte 0x0000CF44
	.4byte 0x00000002
	.4byte 0x07AB9A6E
	.4byte 0x000001A8
	.4byte 0x0000D08C
	.4byte 0x00000002
	.4byte 0x07AB9AB2
	.4byte 0x000001B7
	.4byte 0x0000EE88
	.4byte 0x00000002
	.4byte 0x07AB9B5C
	.4byte 0x000001E8
	.4byte 0x00000050
	.4byte 0x00000008
	.4byte 0x080E9025
	.4byte 0x00000581
	.4byte lbl_801B5080
	.4byte 0x0000FFF1
	.4byte 0x08521FEF
	.4byte 0x00000349
	.4byte 0x00043D6C
	.4byte 0x00000002
	.4byte 0x085F7DD2
	.4byte 0x000002C9
	.4byte 0x0002A634
	.4byte 0x00000002
	.4byte 0x085F8122
	.4byte 0x0000025B
	.4byte 0x0001E7AC
	.4byte 0x00000002
	.4byte 0x0879D202
	.4byte 0x000003AF
	.4byte 0x000840A4
	.4byte 0x00000002
	.4byte 0x088C73D4
	.4byte 0x000004C2
	.4byte 0x0008CA6C
	.4byte 0x00000002
	.4byte 0x08AD9E85
	.4byte 0x000004CD
	.4byte 0x0008CBCC
	.4byte 0x00000002
	.4byte 0x08AF0A85
	.4byte 0x00000386
	.4byte 0x00044488
	.4byte 0x00000002
	.4byte 0x08B31192
	.4byte 0x00000317
	.4byte 0x0002A91C
	.4byte 0x00000002
	.4byte 0x08B3ED82
	.4byte 0x0000035A
	.4byte 0x00043D8C
	.4byte 0x00000002
	.4byte 0x08E2CE7E
	.4byte 0x000004F4
	.4byte 0x0008D04C
	.4byte 0x00000002
	.4byte 0x08E5E992
	.4byte 0x000002BD
	.4byte 0x0002A380
	.4byte 0x00000002
	.4byte 0x08EF017E
	.4byte 0x000001D5
	.4byte 0x0000F6D4
	.4byte 0x00000002
	.4byte 0x0983DD65
	.4byte 0x00000405
	.4byte 0x0008B22C
	.4byte 0x00000002
	.4byte 0x098EF4C4
	.4byte 0x000000D4
	.4byte 0x00007D3C
	.4byte 0x00000002
	.4byte 0x099B88F8
	.4byte 0x00000500
	.4byte 0x0008D11C
	.4byte 0x00000002
	.4byte 0x09E811D2
	.4byte 0x000004AF
	.4byte 0x0008B784
	.4byte 0x00000002
	.4byte 0x0A3718C4
	.4byte 0x00000123
	.4byte 0x0000B170
	.4byte 0x00000002
	.4byte 0x0A790276
	.4byte 0x00000135
	.4byte 0x0000B2C8
	.4byte 0x00000002
	.4byte 0x0A7905D6
	.4byte 0x00000366
	.4byte 0x00043DF4
	.4byte 0x00000002
	.4byte 0x0A8A3205
	.4byte 0x0000001E
	.4byte 0x0000289C
	.4byte 0x00000002
	.4byte 0x0AB2C014
	.4byte 0x000001A0
	.4byte 0x0000CFE8
	.4byte 0x00000002
	.4byte 0x0AB8AA1E
	.4byte 0x00000203
	.4byte 0x00010C88
	.4byte 0x00000002
	.4byte 0x0AB8FA30
	.4byte 0x0000016B
	.4byte 0x0000CC7C
	.4byte 0x00000002
	.4byte 0x0AB949F4
	.4byte 0x0000015C
	.4byte 0x0000CC0C
	.4byte 0x00000002
	.4byte 0x0AB94A09
	.4byte 0x0000017A
	.4byte 0x0000CDE4
	.4byte 0x00000002
	.4byte 0x0AB94A30
	.4byte 0x00000191
	.4byte 0x0000CE9C
	.4byte 0x00000002
	.4byte 0x0AB969FB
	.4byte 0x00000189
	.4byte 0x0000CE54
	.4byte 0x00000002
	.4byte 0x0AB98982
	.4byte 0x000001AF
	.4byte 0x0000EDE0
	.4byte 0x00000002
	.4byte 0x0AB9B6CC
	.4byte 0x000000DC
	.4byte 0x000005A8
	.4byte 0x00000006
	.4byte 0x0ACD7865
	.4byte 0x0000036F
	.4byte 0x000440C0
	.4byte 0x00000002
	.4byte 0x0B30D17F
	.4byte 0x0000050E
	.4byte 0x0008D30C
	.4byte 0x00000002
	.4byte 0x0B4AC338
	.4byte 0x000001DF
	.4byte 0x0000FBE0
	.4byte 0x00000002
	.4byte 0x0B8DA995
	.4byte 0x0000020B
	.4byte 0x00010D30
	.4byte 0x00000002
	.4byte 0x0B94FFE0
	.4byte 0x0000051C
	.4byte 0x0008D63C
	.4byte 0x00000002
	.4byte 0x0BC80653
	.4byte 0x00000330
	.4byte 0x00043A64
	.4byte 0x00000002
	.4byte 0x0C42457D
	.4byte 0x00000485
	.4byte 0x0008B660
	.4byte 0x00000002
	.4byte 0x0C5B16A4
	.4byte 0x000003EA
	.4byte 0x00089ED0
	.4byte 0x00000002
	.4byte 0x0CB2EB53
	.4byte 0x000002A4
	.4byte 0x0002A3D0
	.4byte 0x00000002
	.4byte 0x0CBEB57D
	.4byte 0x000003C0
	.4byte 0x00088E94
	.4byte 0x00000002
	.4byte 0x0D207704
	.4byte 0x00000273
	.4byte 0x00002020
	.4byte 0x00000006
	.4byte 0x0D3AF96F
	.4byte 0x00000301
	.4byte 0x0002A838
	.4byte 0x00000002
	.4byte 0x0D4E3368
	.4byte 0x00000109
	.4byte 0x0000AFB0
	.4byte 0x00000002
	.4byte 0x0D7905C6
	.4byte 0x00000111
	.4byte 0x0000B074
	.4byte 0x00000002
	.4byte 0x0D7905D6
	.4byte 0x000000A4
	.4byte 0x000035B4
	.4byte 0x00000002
	.4byte 0x0D8C808C
	.4byte 0x0000004D
	.4byte 0x00002E1C
	.4byte 0x00000002
	.4byte 0x0D965949
	.4byte 0x0000056A
	.4byte 0x0008EC64
	.4byte 0x00000002
	.4byte 0x0D9BE2E5
	.4byte 0x000003CE
	.4byte 0x00089ABC
	.4byte 0x00000002
	.4byte 0x0DC9FC45
	.4byte 0x00000465
	.4byte 0x0008B4D0
	.4byte 0x00000002
	.4byte 0x0E1417D4
	.4byte 0x0000005F
	.4byte 0x00002F14
	.4byte 0x00000002
	.4byte 0x0E359242
	.4byte 0x0000006D
	.4byte 0x00002FC8
	.4byte 0x00000002
	.4byte 0x0E3FED1C
	.4byte 0x0000028E
	.4byte 0x0002A03C
	.4byte 0x00000002
	.4byte 0x0E905065
	.4byte 0x00000037
	.4byte 0x00002C5C
	.4byte 0x00000002
	.4byte 0x0E953289
	.4byte 0x00000475
	.4byte 0x0008B538
	.4byte 0x00000002
	.4byte 0x0ED517C4
	.4byte 0x0000054A
	.4byte 0x0008DE38
	.4byte 0x00000002
	.4byte 0x0EFCCFB5
	.4byte 0x0000042F
	.4byte 0x0008B4C4
	.4byte 0x00000002
	.4byte 0x0F743FD4
	.4byte 0x0000007A
	.4byte 0x00002FF0
	.4byte 0x00000002
	.4byte 0x0FA7C7C4
	.asciz "memcpy"
	.asciz "memset"
	.asciz "strlen"
	.asciz "__va_arg"
	.asciz "__register_global_object"
	.asciz "__construct_new_array"
	.asciz "__construct_array"
	.asciz "__destroy_arr"
	.asciz "__ptmf_scall"
	.asciz "__cvt_fp2unsigned"
	.asciz "__div2i"
	.asciz "__mod2i"
	.asciz "__shl2i"
	.asciz "__cvt_sll_dbl"
	.asciz "__setjmp"
	.asciz "longjmp"
	.asciz "__files"
	.asciz "abs"
	.asciz "labs"
	.asciz "bsearch"
	.asciz "_current_locale"
	.asciz "memmove"
	.asciz "memchr"
	.asciz "memcmp"
	.asciz "printf"
	.asciz "fprintf"
	.asciz "vprintf"
	.asciz "vsnprintf"
	.asciz "vsprintf"
	.asciz "snprintf"
	.asciz "sprintf"
	.asciz "qsort"
	.asciz "rand"
	.asciz "srand"
	.asciz "sscanf"
	.asciz "strcpy"
	.asciz "strncpy"
	.asciz "strcat"
	.asciz "strncat"
	.asciz "strcmp"
	.asciz "strncmp"
	.asciz "strchr"
	.asciz "strrchr"
	.asciz "strpbrk"
	.asciz "strspn"
	.asciz "strcspn"
	.asciz "strstr"
	.asciz "strtoul"
	.asciz "strtol"
	.asciz "atoi"
	.asciz "atol"
	.asciz "clock"
	.asciz "mktime"
	.asciz "localtime"
	.asciz "strftime"
	.asciz "__double_huge"
	.asciz "getenv"
	.asciz "abort"
	.asciz "stricmp"
	.asciz "strnicmp"
	.asciz "itoa"
	.asciz "atan"
	.asciz "ceil"
	.asciz "cos"
	.asciz "floor"
	.asciz "sin"
	.asciz "tan"
	.asciz "acos"
	.asciz "asin"
	.asciz "atan2"
	.asciz "exp"
	.asciz "fmod"
	.asciz "log"
	.asciz "pow"
	.asciz "sqrt"
	.asciz "NETGetUniversalCalendar"
	.asciz "WWW_FONT_FILE_DATA_TABLE__"
	.asciz "ARCInitHandle"
	.asciz "ARCOpen"
	.asciz "ARCConvertPathToEntrynum"
	.asciz "ARCFastOpen"
	.asciz "ARCEntrynumIsDir"
	.asciz "ARCGetStartAddrInMem"
	.asciz "ARCGetStartOffset"
	.asciz "ARCGetLength"
	.asciz "ARCClose"
	.asciz "ARCReadDir"
	.asciz "SCGetLanguage"
	.asciz "DVDConvertPathToEntrynum"
	.asciz "DVDEntrynumIsDir"
	.asciz "DVDFastOpen"
	.asciz "DVDClose"
	.asciz "DVDReadPrio"
	.asciz "DVDOpenDir"
	.asciz "DVDReadDir"
	.asciz "DVDCloseDir"
	.asciz "OSRegisterVersion"
	.asciz "OSReport"
	.asciz "OSPanic"
	.asciz "OSYieldThread"
	.asciz "OSGetTime"
	.asciz "__OSGetSystemTime"
	.asciz "OSCalendarTimeToTicks"
	.asciz "exit"
	.asciz "contentInitHandleNAND"
	.asciz "contentFastOpenNAND"
	.asciz "contentConvertPathToEntrynumNAND"
	.asciz "contentGetLengthNAND"
	.asciz "contentSeekNAND"
	.asciz "contentReadNAND"
	.asciz "contentCloseNAND"
	.asciz "contentReleaseHandleNAND"
	.asciz "contentOpenDirNAND"
	.asciz "NANDCreate"
	.asciz "NANDDelete"
	.asciz "NANDRead"
	.asciz "NANDWrite"
	.asciz "NANDSeek"
	.asciz "NANDReadDir"
	.asciz "NANDCreateDir"
	.asciz "NANDGetLength"
	.asciz "NANDGetStatus"
	.asciz "NANDOpen"
	.asciz "NANDClose"
	.asciz "NANDSafeOpen"
	.asciz "NANDSafeClose"
	.asciz "NANDGetCurrentDir"
	.asciz "NANDGetType"
	.asciz "_SDA_BASE_"
	.asciz "_SDA2_BASE_"
	.balign 32

glabel lbl_801825C0
	# ROM: 0x17E6C0
	.4byte lbl_801744E0
	.4byte lbl_80246EF8
	.4byte lbl_801744F0
	.4byte lbl_80246EFC
	.4byte lbl_80174504
	.4byte lbl_80246F00
	.4byte lbl_8017451C
	.4byte lbl_80246F04
	.4byte lbl_80174530
	.4byte lbl_80246F08
	.4byte lbl_80174544
	.4byte lbl_80246F0C
	.4byte lbl_80174560
	.4byte lbl_80246F10
	.4byte lbl_80174578
	.4byte lbl_80246F14
	.4byte lbl_80174590
	.4byte lbl_80246F18
	.4byte lbl_801745A4
	.4byte lbl_80246F1C
	.4byte lbl_801745BC
	.4byte lbl_80246F20
	.4byte lbl_801745D0
	.4byte lbl_80246F24
	.4byte lbl_801745E4
	.4byte lbl_80246F28
	.4byte lbl_801745FC
	.4byte lbl_80246F2C
	.4byte lbl_80174610
	.4byte lbl_80246F30
	.4byte lbl_80174624
	.4byte lbl_80246F34
	.4byte lbl_80174638
	.4byte lbl_80246F38
	.4byte lbl_80174644
	.4byte lbl_80246F3C
	.4byte lbl_8017465C
	.4byte lbl_80246F40
	.4byte lbl_80174674
	.4byte lbl_80246F44
	.4byte lbl_80174698
	.4byte lbl_80246F48
	.4byte lbl_801746B0
	.4byte lbl_80246F4C
	.4byte lbl_801746C8
	.4byte lbl_80246F50
	.4byte lbl_801746E0
	.4byte lbl_80246F54
	.4byte lbl_801746F8
	.4byte lbl_80246F58
	.4byte lbl_80174710
	.4byte lbl_80246F5C
	.4byte lbl_80174728
	.4byte lbl_80246F60
	.4byte lbl_80174738
	.4byte lbl_80246F64
	.4byte lbl_80174748
	.4byte lbl_80246F68
	.4byte lbl_80174754
	.4byte lbl_80246F6C
	.4byte lbl_80174760
	.4byte lbl_80246F70
	.4byte lbl_80174774
	.4byte lbl_80246F74
	.4byte lbl_80174780
	.4byte lbl_80246F78
	.4byte lbl_8017478C
	.4byte lbl_80246F7C
	.4byte lbl_80247BD8
	.4byte lbl_80246F80
	.4byte lbl_801747A0
	.4byte lbl_80246F84
	.4byte lbl_801747AC
	.4byte lbl_80246F88
	.4byte lbl_801747B8
	.4byte lbl_80246F8C
	.4byte lbl_801747C4
	.4byte lbl_80246F90
	.4byte lbl_801747D4
	.4byte lbl_80246F94
	.4byte lbl_801747E0
	.4byte lbl_80246F98
	.4byte lbl_801747F0
	.4byte lbl_80246F9C
	.4byte lbl_80174800
	.4byte lbl_80246FA0
	.4byte lbl_80174810
	.4byte lbl_80246FA4
	.4byte lbl_80174820
	.4byte lbl_80246FA8
	.4byte lbl_80174830
	.4byte lbl_80246FAC
	.4byte lbl_8017483C
	.4byte lbl_80246FB0
	.4byte lbl_80174848
	.4byte lbl_80246FB4
	.4byte lbl_8017485C
	.4byte lbl_80246FB8
	.4byte lbl_8017486C
	.4byte lbl_80246FBC
	.4byte lbl_8017487C
	.4byte lbl_80246FC0
	.4byte lbl_80174890
	.4byte lbl_80246FC4
	.4byte lbl_801748A8
	.4byte lbl_80246FC8
	.4byte lbl_801748B8
	.4byte lbl_80246FCC
	.4byte lbl_801748D4
	.4byte lbl_80246FD0
	.4byte lbl_801748F0
	.4byte lbl_80246FD4
	.4byte lbl_8017490C
	.4byte lbl_80246FD8
	.4byte lbl_80174924
	.4byte lbl_80246FDC
	.4byte lbl_80174938
	.4byte lbl_80246FE0
	.4byte lbl_80174950
	.4byte lbl_80246FE4
	.4byte lbl_80174960
	.4byte lbl_80246FE8
	.4byte lbl_80174974
	.4byte lbl_80246FEC
	.4byte lbl_80174984
	.4byte lbl_80246FF0
	.4byte lbl_80174994
	.4byte lbl_80246FF4
	.4byte lbl_801749A8
	.4byte lbl_80246FF8
	.4byte lbl_801749BC
	.4byte lbl_80246FFC
	.4byte lbl_801749CC
	.4byte lbl_80247000
	.4byte lbl_801749E0
	.4byte lbl_80247004
	.4byte lbl_801749F8
	.4byte lbl_80247008
	.4byte lbl_80174A0C
	.4byte lbl_8024700C
	.4byte lbl_80174A20
	.4byte lbl_80247010
	.4byte lbl_80174A3C
	.4byte lbl_80247014
	.4byte lbl_80174A58
	.4byte lbl_80247018
	.4byte lbl_80174A70
	.4byte lbl_8024701C
	.4byte lbl_80174A8C
	.4byte lbl_80247020
	.4byte lbl_80174AA0
	.4byte lbl_80247024
	.4byte lbl_80174AB8
	.4byte lbl_80247028
	.4byte lbl_80174AC8
	.4byte lbl_8024702C
	.4byte lbl_80174AE0
	.4byte lbl_80247030
	.4byte lbl_80174B04
	.4byte lbl_80247034
	.4byte lbl_80174B2C
	.4byte lbl_80247038
	.4byte lbl_80174B48
	.4byte lbl_8024703C
	.4byte lbl_80174B60
	.4byte lbl_80247040
	.4byte lbl_80174B78
	.4byte lbl_80247044
	.4byte lbl_80174B90
	.4byte lbl_80247048
	.4byte lbl_80174BA4
	.4byte lbl_8024704C
	.4byte lbl_80174BC0
	.4byte lbl_80247050
	.4byte lbl_80174BD8
	.4byte lbl_80247054
	.4byte lbl_80174BF4
	.4byte lbl_80247058
	.4byte lbl_80174C14
	.4byte lbl_8024705C
	.4byte lbl_80174C2C
	.4byte lbl_80247060
	.4byte lbl_80174C48
	.4byte lbl_80247064
	.4byte lbl_80174C60
	.4byte lbl_80247068
	.4byte lbl_80174C78
	.4byte lbl_8024706C
	.4byte lbl_80174C94
	.4byte lbl_80247070
	.4byte lbl_80174CB4
	.4byte lbl_80247074
	.4byte lbl_80174CD0
	.4byte lbl_80247078
	.4byte lbl_80174CEC
	.4byte lbl_8024707C
	.4byte lbl_80174D00
	.4byte lbl_80247080
	.4byte lbl_80174D18
	.4byte lbl_80247084
	.4byte lbl_80174D2C
	.4byte lbl_80247088
	.4byte lbl_80174D48
	.4byte lbl_8024708C
	.4byte lbl_80174D68
	.4byte lbl_80247090
	.4byte lbl_80174D78
	.4byte lbl_80247094
	.4byte lbl_80174D8C
	.4byte lbl_80247098
	.4byte lbl_80174DA0
	.4byte lbl_8024709C
	.4byte lbl_80174DB0
	.4byte lbl_802470A0
	.4byte lbl_80174DC0
	.4byte lbl_802470A4
	.4byte lbl_80174DD4
	.4byte lbl_802470A8
	.4byte lbl_80174DEC
	.4byte lbl_802470AC
	.4byte lbl_80174E00
	.4byte lbl_802470B0
	.4byte lbl_80174E14
	.4byte lbl_802470B4

glabel lbl_80182940
	# ROM: 0x17EA40
	.4byte lbl_80174E38
	.4byte lbl_801B3D20
	.4byte 0x00000020
	.4byte 0

glabel lbl_80182950
	# ROM: 0x17EA50
	.asciz "H4A should not be cleared because of Broadway errata.\n"
	.balign 4

glabel lbl_80182988
	# ROM: 0x17EA88
	.asciz "<< RVL_SDK - OS \trelease build: Apr 24 2007 11:50:47 (0x4199_60831) >>"
	.balign 4
	.asciz "\nRevolution OS\n"
	.asciz "Kernel built : %s %s\n"
	.balign 4
	.asciz "Apr 24 2007"
	.asciz "11:50:47"
	.balign 4
	.asciz "Console Type : "
	.asciz "Pre-production board 1\n"
	.asciz "Pre-production board 2-1\n"
	.balign 4
	.asciz "Pre-production board 2-2\n"
	.balign 4
	.asciz "Retail %d\n"
	.balign 4
	.asciz "NDEV 2.1\n"
	.balign 4
	.asciz "NDEV 2.0\n"
	.balign 4
	.asciz "NDEV 1.2\n"
	.balign 4
	.asciz "NDEV 1.1\n"
	.balign 4
	.asciz "NDEV 1.0\n"
	.balign 4
	.asciz "Revolution Emulator\n"
	.balign 4
	.asciz "Emulation platform (%08x)\n"
	.balign 4
	.asciz "TDEV-based emulation HW%d\n"
	.balign 4
	.asciz "Firmware     : %d.%d.%d "
	.balign 4
	.asciz "(%d/%d/%d)\n"
	.asciz "Memory %d MB\n"
	.balign 4
	.asciz "MEM1 Arena : 0x%x - 0x%x\n"
	.balign 4
	.asciz "MEM2 Arena : 0x%x - 0x%x\n"
	.balign 4

glabel lbl_80182B78
	# ROM: 0x17EC78
	.4byte lbl_8008F444
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F434
	.4byte lbl_8008F424
	.4byte lbl_8008F414
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F454
	.4byte lbl_8008F404
	.4byte lbl_8008F3F4
	.asciz "OS ERROR: boot program is not for RVL target. Please use correct boot program.\n"
	.asciz "Failed to run app"
	.balign 8
	.asciz "OS ERROR: apploader[D].img is not for RVL target. Please use correct apploader[D].img.\n"
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.asciz "Installing OSDBIntegrator\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d commandeered by TRK\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d vectored to debugger\n"
	.balign 4
	.asciz "Exceptions initialized...\n"
	.balign 8

glabel lbl_80182D78
	# ROM: 0x17EE78
	.4byte OnReset
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0

glabel lbl_80182D88
	# ROM: 0x17EE88
	.4byte 0x029F0010
	.4byte 0x029F0033
	.4byte 0x029F0034
	.4byte 0x029F0035
	.4byte 0x029F0036
	.4byte 0x029F0037
	.4byte 0x029F0038
	.4byte 0x029F0039
	.4byte 0x12061203
	.4byte 0x12041205
	.4byte 0x00808000
	.4byte 0x0088FFFF
	.4byte 0x00841000
	.4byte 0x0064001D
	.4byte 0x02180000
	.4byte 0x81001C1E
	.4byte 0x00441B1E
	.4byte 0x00840800
	.4byte 0x00640027
	.4byte 0x191E0000
	.4byte 0x00DEFFFC
	.4byte 0x02A08000
	.4byte 0x029C0028
	.4byte 0x16FC0054
	.4byte 0x16FD4348
	.4byte 0x002102FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80182E08
	# ROM: 0x17EF08
	.asciz ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"
	.balign 8
	.asciz "Machine check received\n"
	.asciz "HID2 = 0x%x   SRR1 = 0x%x\n"
	.balign 8
	.asciz "Machine check was not DMA/locked cache related\n"
	.asciz "DMAErrorHandler(): An error occurred while processing DMA.\n"
	.asciz "The following errors have been detected and cleared :\n"
	.balign 4
	.asciz "\t- Requested a locked cache tag that was already in the cache\n"
	.balign 4
	.asciz "\t- DMA attempted to access normal cache\n"
	.balign 4
	.asciz "\t- DMA missed in data cache\n"
	.balign 4
	.asciz "\t- DMA queue overflowed\n"
	.balign 4
	.asciz "L1 i-caches initialized\n"
	.balign 4
	.asciz "L1 d-caches initialized\n"
	.balign 4
	.asciz "L2 cache initialized\n"
	.balign 4
	.asciz "Locked cache machine check handler installed\n"
	.balign 8

glabel lbl_80183040
	# ROM: 0x17F140
	.asciz "------------------------- Context 0x%08x -------------------------\n"
	.balign 8
	.asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
	.balign 4
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.balign 4
	.asciz "\nGQRs----------\n"
	.balign 4
	.asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
	.balign 4
	.asciz "\n\nFPRs----------\n"
	.balign 4
	.asciz "fr%d \t= %d \t fr%d \t= %d\n"
	.balign 4
	.asciz "\n\nPSFs----------\n"
	.balign 4
	.asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"

glabel lbl_801831F8
	# ROM: 0x17F2F8
	.asciz "FPU-unavailable handler installed\n"
	.balign 8

glabel lbl_80183220
	# ROM: 0x17F320
	.asciz " in \"%s\" on line %d.\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"
	.asciz "Non-recoverable Exception %d"
	.balign 4
	.asciz "Unhandled Exception %d"
	.balign 4
	.asciz "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"
	.balign 4
	.asciz "TB = 0x%016llx\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
	.asciz "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"
	.balign 4
	.asciz "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"
	.asciz "AI DMA Address =   0x%04x%04x\n"
	.balign 4
	.asciz "ARAM DMA Address = 0x%04x%04x\n"
	.balign 4
	.asciz "DI DMA Address =   0x%08x\n"
	.balign 4
	.asciz "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"
	.balign 4

glabel lbl_801834FC
	# ROM: 0x17F5FC
	.4byte lbl_80091FA8
	.4byte lbl_80091FA8
	.4byte lbl_80091F00
	.4byte lbl_80091F18
	.4byte lbl_80091FA8
	.4byte lbl_80091F2C
	.4byte lbl_80091F44
	.4byte lbl_80091FA8
	.4byte lbl_80091FA8
	.4byte lbl_80091FA8
	.4byte lbl_80091FA8
	.4byte lbl_80091FA8
	.4byte lbl_80091FA8
	.4byte lbl_80091FA8
	.4byte lbl_80091FA8
	.4byte lbl_80091F5C
	.4byte 0

glabel lbl_80183540
	# ROM: 0x17F640
	.asciz "\nsecurity error(%d) has occurred"
	.balign 4

glabel lbl_80183564
	# ROM: 0x17F664
	.asciz "2004/02/01"
	.balign 4

glabel lbl_80183570
	# ROM: 0x17F670
	.4byte 0x020C020D
	.4byte 0x020E020F
	.4byte 0x02100211
	.4byte 0x02120213
	.4byte 0x02140215
	.4byte 0x02160217
	.4byte 0x02180219
	.4byte 0x021A021B
	.4byte 0x021C021D
	.4byte 0x021E021F
	.4byte 0x02200221
	.4byte 0x02220223
	.4byte 0x02240225
	.4byte 0x02260227
	.4byte 0x02280229
	.4byte 0x022A022B
	.4byte 0x022C022D
	.4byte 0x022E022F
	.4byte 0x02300231
	.4byte 0x02320233
	.4byte 0x02340235
	.4byte 0x02360237
	.4byte 0x02380239
	.4byte 0x023A023B
	.4byte 0x023C023D
	.4byte 0x023E023F
	.4byte 0x02400241
	.4byte 0x02420243
	.4byte 0x02440245
	.4byte 0x02460247
	.4byte 0x02480249
	.4byte 0x024A024B
	.4byte 0x024C024D
	.4byte 0x024E024F
	.4byte 0x02500251
	.4byte 0x02520253
	.4byte 0x02540255
	.4byte 0x02560257
	.4byte 0x02580259
	.4byte 0x025A025B
	.4byte 0x025C025D
	.4byte 0x025E025F
	.4byte 0x02600261
	.4byte 0x02620263
	.4byte 0x02640265
	.4byte 0x02660267
	.4byte 0x02680269
	.4byte 0x026A020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C026B
	.4byte 0x026C026D
	.4byte 0x026E026F
	.4byte 0x02700271
	.4byte 0x02720273
	.4byte 0x02740275
	.4byte 0x02760277
	.4byte 0x02780279
	.4byte 0x027A027B
	.4byte 0x027C027D
	.4byte 0x027E027F
	.4byte 0x02800281
	.4byte 0x02820283
	.4byte 0x02840285
	.4byte 0x02860287
	.4byte 0x02880289
	.4byte 0x028A028B
	.4byte 0x028C028D
	.4byte 0x028E028F
	.4byte 0x02900291
	.4byte 0x02920293
	.4byte 0x02940295
	.4byte 0x02960297
	.4byte 0x02980299
	.4byte 0x029A029B
	.4byte 0x029C029D
	.4byte 0x029E029F
	.4byte 0x02A002A1
	.4byte 0x02A202A3
	.4byte 0x02A402A5
	.4byte 0x02A602A7
	.4byte 0x02A802A9

glabel lbl_801836F0
	# ROM: 0x17F7F0
	.4byte 0x00000001
	.4byte 0x00020003
	.4byte 0x00040005
	.4byte 0x00060007
	.4byte 0x00080009
	.4byte 0x000A000B
	.4byte 0x000C000D
	.4byte 0x000E000F
	.4byte 0x00100011
	.4byte 0x00120013
	.4byte 0x00140015
	.4byte 0x00160017
	.4byte 0x00180019
	.4byte 0x001A001B
	.4byte 0x001C001D
	.4byte 0x001E001F
	.4byte 0x00200021
	.4byte 0x00220023
	.4byte 0x00240025
	.4byte 0x00260027
	.4byte 0x00280029
	.4byte 0x002A002B
	.4byte 0x002C002D
	.4byte 0x002E002F
	.4byte 0x00300031
	.4byte 0x00320033
	.4byte 0x00340035
	.4byte 0x00360037
	.4byte 0x00380039
	.4byte 0x003A003B
	.4byte 0x003C003D
	.4byte 0x003E003F
	.4byte 0x00400041
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460047
	.4byte 0x00480049
	.4byte 0x004A004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620063
	.4byte 0x00640065
	.4byte 0x00660067
	.4byte 0x00680069
	.4byte 0x006A006B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000006C
	.4byte 0x006D006E
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00730000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000074
	.4byte 0x00750076
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000007B
	.4byte 0x007C007D
	.4byte 0x007E007F
	.4byte 0x00800081
	.4byte 0x00820083
	.4byte 0x00840085
	.4byte 0x00860087
	.4byte 0x00880089
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000008A
	.4byte 0x008B008C
	.4byte 0x008D008E
	.4byte 0x008F0090
	.4byte 0x00910000
	.4byte 0
	.4byte 0x00000092
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000093
	.4byte 0x00940095
	.4byte 0x00960097
	.4byte 0x00980099
	.4byte 0x009A009B
	.4byte 0x009C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x009D009E
	.4byte 0x009F00A0
	.4byte 0x00A100A2
	.4byte 0x00A300A4
	.4byte 0x00A500A6
	.4byte 0x00A700A8
	.4byte 0x00A900AA
	.4byte 0x00AB00AC
	.4byte 0x00AD00AE
	.4byte 0x00AF00B0
	.4byte 0x00B100B2
	.4byte 0x00B300B4
	.4byte 0x00B500B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00B700B8
	.4byte 0x00B900BA
	.4byte 0x00BB00BC
	.4byte 0x00BD00BE
	.4byte 0x00BF00C0
	.4byte 0x00C100C2
	.4byte 0x00C300C4
	.4byte 0x00C500C6
	.4byte 0x00C700C8
	.4byte 0x00C900CA
	.4byte 0x00CB00CC
	.4byte 0x00CD00CE
	.4byte 0x00CF00D0
	.4byte 0
	.4byte 0
	.4byte 0x00D100D2
	.4byte 0x00D300D4
	.4byte 0x00D500D6
	.4byte 0x00D700D8
	.4byte 0x00D900DA
	.4byte 0x00DB00DC
	.4byte 0x00DD00DE
	.4byte 0x00DF00E0
	.4byte 0x00E100E2
	.4byte 0x00E300E4
	.4byte 0x00E500E6
	.4byte 0x00E700E8
	.4byte 0x00E900EA
	.4byte 0x00EB00EC
	.4byte 0x00ED00EE
	.4byte 0x00EF00F0
	.4byte 0x00F100F2
	.4byte 0x00F300F4
	.4byte 0x00F500F6
	.4byte 0x00F700F8
	.4byte 0x00F900FA
	.4byte 0x00FB00FC
	.4byte 0x00FD00FE
	.4byte 0x00FF0100
	.4byte 0x01010102
	.4byte 0x01030104
	.4byte 0x01050106
	.4byte 0x01070108
	.4byte 0x0109010A
	.4byte 0x010B010C
	.4byte 0x010D010E
	.4byte 0x010F0110
	.4byte 0x01110112
	.4byte 0x01130114
	.4byte 0x01150116
	.4byte 0x01170118
	.4byte 0x0119011A
	.4byte 0x011B011C
	.4byte 0x011D011E
	.4byte 0x011F0120
	.4byte 0x01210122
	.4byte 0x01230000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01240125
	.4byte 0x01260127
	.4byte 0x01280129
	.4byte 0x012A012B
	.4byte 0x012C012D
	.4byte 0x012E012F
	.4byte 0x01300131
	.4byte 0x01320133
	.4byte 0x01340135
	.4byte 0x01360137
	.4byte 0x01380139
	.4byte 0x013A013B
	.4byte 0x013C013D
	.4byte 0x013E013F
	.4byte 0x01400141
	.4byte 0x01420143
	.4byte 0x01440145
	.4byte 0x01460147
	.4byte 0x01480149
	.4byte 0x014A014B
	.4byte 0x014C014D
	.4byte 0x014E014F
	.4byte 0x01500151
	.4byte 0x01520153
	.4byte 0x01540155
	.4byte 0x01560157
	.4byte 0x01580159
	.4byte 0x015A015B
	.4byte 0x015C015D
	.4byte 0x015E015F
	.4byte 0x01600161
	.4byte 0x01620163
	.4byte 0x01640165
	.4byte 0x01660167
	.4byte 0x01680169
	.4byte 0x016A016B
	.4byte 0x016C016D
	.4byte 0x016E016F
	.4byte 0x01700171
	.4byte 0x01720173
	.4byte 0x01740175
	.4byte 0x01760177
	.4byte 0x01780179
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x017A017B
	.4byte 0x017C017D
	.4byte 0x017E017F
	.4byte 0x01800181
	.4byte 0x01820183
	.4byte 0x01840185
	.4byte 0x01860187
	.4byte 0x01880189
	.4byte 0x018A018B
	.4byte 0x018C018D
	.4byte 0x018E018F
	.4byte 0x01900191
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01920193
	.4byte 0x01940195
	.4byte 0x01960197
	.4byte 0x01980199
	.4byte 0x019A019B
	.4byte 0x019C019D
	.4byte 0x019E019F
	.4byte 0x01A001A1
	.4byte 0x01A201A3
	.4byte 0x01A401A5
	.4byte 0x01A601A7
	.4byte 0x01A801A9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01AA01AB
	.4byte 0x01AC01AD
	.4byte 0x01AE01AF
	.4byte 0x01B001B1
	.4byte 0x01B201B3
	.4byte 0x01B401B5
	.4byte 0x01B601B7
	.4byte 0x01B801B9
	.4byte 0x01BA01BB
	.4byte 0x01BC01BD
	.4byte 0x01BE01BF
	.4byte 0x01C001C1
	.4byte 0x01C201C3
	.4byte 0x01C401C5
	.4byte 0x01C601C7
	.4byte 0x01C801C9
	.4byte 0x01CA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01CB01CC
	.4byte 0x01CD01CE
	.4byte 0x01CF01D0
	.4byte 0x01D101D2
	.4byte 0x01D301D4
	.4byte 0x01D501D6
	.4byte 0x01D701D8
	.4byte 0x01D901DA
	.4byte 0x01DB01DC
	.4byte 0x01DD01DE
	.4byte 0x01DF01E0
	.4byte 0x01E101E2
	.4byte 0x01E301E4
	.4byte 0x01E501E6
	.4byte 0x01E701E8
	.4byte 0x01E901EA
	.4byte 0x01EB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01EC01ED
	.4byte 0x01EE01EF
	.4byte 0x01F001F1
	.4byte 0x01F201F3
	.4byte 0x01F401F5
	.4byte 0x01F601F7
	.4byte 0x01F801F9
	.4byte 0x01FA01FB
	.4byte 0x01FC01FD
	.4byte 0x01FE01FF
	.4byte 0x02000201
	.4byte 0x02020203
	.4byte 0x02040205
	.4byte 0x02060207
	.4byte 0x02080209
	.4byte 0x020A020B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000020C
	.4byte 0x020D020E
	.4byte 0x020F0210
	.4byte 0x02110212
	.4byte 0x02130214
	.4byte 0x02150216
	.4byte 0x02170218
	.4byte 0x0219021A
	.4byte 0x021B021C
	.4byte 0x021D021E
	.4byte 0x021F0220
	.4byte 0x02210222
	.4byte 0x02230224
	.4byte 0x02250226
	.4byte 0x02270228
	.4byte 0x0229022A
	.4byte 0x022B022C
	.4byte 0x022D022E
	.4byte 0x022F0230
	.4byte 0x02310232
	.4byte 0x02330234
	.4byte 0x02350236
	.4byte 0x02370238
	.4byte 0x0239023A
	.4byte 0x023B023C
	.4byte 0x023D023E
	.4byte 0x023F0240
	.4byte 0x02410242
	.4byte 0x02430244
	.4byte 0x02450246
	.4byte 0x02470248
	.4byte 0x0249024A
	.4byte 0x024B024C
	.4byte 0x024D024E
	.4byte 0x024F0250
	.4byte 0x02510252
	.4byte 0x02530254
	.4byte 0x02550256
	.4byte 0x02570258
	.4byte 0x0259025A
	.4byte 0x025B025C
	.4byte 0x025D025E
	.4byte 0x025F0260
	.4byte 0x02610262
	.4byte 0x02630264
	.4byte 0x02650266
	.4byte 0x02670268
	.4byte 0x0269026A
	.4byte 0x026B026C
	.4byte 0x026D026E
	.4byte 0x026F0270
	.4byte 0x02710272
	.4byte 0x02730274
	.4byte 0x02750276
	.4byte 0x02770278
	.4byte 0x0279027A
	.4byte 0x027B027C
	.4byte 0x027D027E
	.4byte 0x027F0280
	.4byte 0x02810282
	.4byte 0x02830284
	.4byte 0x02850286
	.4byte 0x02870288
	.4byte 0x0289028A
	.4byte 0x028B028C
	.4byte 0x028D028E
	.4byte 0x028F0290
	.4byte 0x02910292
	.4byte 0x02930294
	.4byte 0x02950296
	.4byte 0x02970298
	.4byte 0x0299029A
	.4byte 0x029B029C
	.4byte 0x029D029E
	.4byte 0x029F02A0
	.4byte 0x02A102A2
	.4byte 0x02A302A4
	.4byte 0x02A502A6
	.4byte 0x02A702A8
	.4byte 0x02A902AA
	.4byte 0x02AB02AC
	.4byte 0x02AD02AE
	.4byte 0x02AF02B0
	.4byte 0x02B102B2
	.4byte 0x02B302B4
	.4byte 0x02B502B6
	.4byte 0x02B702B8
	.4byte 0x02B902BA
	.4byte 0x02BB02BC
	.4byte 0x02BD02BE
	.4byte 0x02BF02C0
	.4byte 0x02C102C2
	.4byte 0x02C302C4
	.4byte 0x02C502C6
	.4byte 0x02C702C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02C902CA
	.4byte 0x02CB02CC
	.4byte 0x02CD02CE
	.4byte 0x02CF02D0
	.4byte 0x02D102D2
	.4byte 0x02D302D4
	.4byte 0x02D502D6
	.4byte 0x02D702D8
	.4byte 0x02D902DA
	.4byte 0x02DB02DC
	.4byte 0x02DD02DE
	.4byte 0x02DF02E0
	.4byte 0x02E102E2
	.4byte 0x02E302E4
	.4byte 0x02E502E6
	.4byte 0x000002E7
	.4byte 0x02E802E9
	.4byte 0x02EA02EB
	.4byte 0x02EC02ED
	.4byte 0x02EE02EF
	.4byte 0x02F002F1
	.4byte 0x02F202F3
	.4byte 0x02F402F5
	.4byte 0x02F602F7
	.4byte 0x02F802F9
	.4byte 0x02FA02FB
	.4byte 0x02FC02FD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02FE02FF
	.4byte 0x03000301
	.4byte 0x03020303
	.4byte 0x03040305
	.4byte 0x03060307
	.4byte 0x03080309
	.4byte 0x030A030B
	.4byte 0x030C030D
	.4byte 0x030E030F
	.4byte 0x03100311
	.4byte 0x03120313
	.4byte 0x03140315
	.4byte 0x03160317
	.4byte 0x03180319
	.4byte 0x031A031B
	.4byte 0
	.4byte 0

glabel lbl_80184080
	# ROM: 0x180180
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00000010
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF

glabel lbl_801840B0
	# ROM: 0x1801B0
	.4byte OSOnShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

glabel lbl_801840C0
	# ROM: 0x1801C0
	.asciz "OSReset.c"
	.balign 4

glabel lbl_801840CC
	# ROM: 0x1801CC
	.asciz "OSReturnToMenu(): Falied to boot system menu.\n"
	.balign 4

glabel lbl_801840FC
	# ROM: 0x1801FC
	.asciz "__OSReturnToMenu(): Falied to boot system menu.\n"
	.balign 4

glabel lbl_80184130
	# ROM: 0x180230
	.asciz "OSResetSystem() is obsoleted. It doesn't work any longer.\n"
	.balign 8

glabel lbl_80184170
	# ROM: 0x180270
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003B
	.4byte 0x0000005A
	.4byte 0x00000078
	.4byte 0x00000097
	.4byte 0x000000B5
	.4byte 0x000000D4
	.4byte 0x000000F3
	.4byte 0x00000111
	.4byte 0x00000130
	.4byte 0x0000014E

glabel lbl_801841A0
	# ROM: 0x1802A0
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003C
	.4byte 0x0000005B
	.4byte 0x00000079
	.4byte 0x00000098
	.4byte 0x000000B6
	.4byte 0x000000D5
	.4byte 0x000000F4
	.4byte 0x00000112
	.4byte 0x00000131
	.4byte 0x0000014F

glabel lbl_801841D0
	# ROM: 0x1802D0
	.4byte 0x20AC0000
	.4byte 0x201A0192
	.4byte 0x201E2026
	.4byte 0x20202021
	.4byte 0x02C62030
	.4byte 0x01602039
	.4byte 0x01520000
	.4byte 0x017D0000
	.4byte 0x00002018
	.4byte 0x2019201C
	.4byte 0x201D2022
	.4byte 0x20132014
	.4byte 0x02DC2122
	.4byte 0x0161203A
	.4byte 0x01530000
	.4byte 0x017E0178
lbl_80184210:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00200021
	.4byte 0x00220023
	.4byte 0x00240025
	.4byte 0x00260027
	.4byte 0x00280029
	.4byte 0x002A002B
	.4byte 0x002C002D
	.4byte 0x002E002F
	.4byte 0x00300031
	.4byte 0x00320033
	.4byte 0x00340035
	.4byte 0x00360037
	.4byte 0x00380039
	.4byte 0x003A003B
	.4byte 0x003C003D
	.4byte 0x003E003F
	.4byte 0x00400041
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460047
	.4byte 0x00480049
	.4byte 0x004A004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x815F005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620063
	.4byte 0x00640065
	.4byte 0x00660067
	.4byte 0x00680069
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006E006F
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00740075
	.4byte 0x00760077
	.4byte 0x00780079
	.4byte 0x007A007B
	.4byte 0x007C007D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81918192
	.4byte 0x0000005C
	.4byte 0x00008198
	.4byte 0x814E0000
	.4byte 0
	.4byte 0x81CA0000
	.4byte 0
	.4byte 0x818B817D
	.4byte 0
	.4byte 0x814C0000
	.4byte 0x81F70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000817E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008180
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80184410:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000839F
	.4byte 0x83A083A1
	.4byte 0x83A283A3
	.4byte 0x83A483A5
	.4byte 0x83A683A7
	.4byte 0x83A883A9
	.4byte 0x83AA83AB
	.4byte 0x83AC83AD
	.4byte 0x83AE83AF
	.4byte 0x000083B0
	.4byte 0x83B183B2
	.4byte 0x83B383B4
	.4byte 0x83B583B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000083BF
	.4byte 0x83C083C1
	.4byte 0x83C283C3
	.4byte 0x83C483C5
	.4byte 0x83C683C7
	.4byte 0x83C883C9
	.4byte 0x83CA83CB
	.4byte 0x83CC83CD
	.4byte 0x83CE83CF
	.4byte 0x000083D0
	.4byte 0x83D183D2
	.4byte 0x83D383D4
	.4byte 0x83D583D6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80184610:
	.4byte 0x00008446
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x84408441
	.4byte 0x84428443
	.4byte 0x84448445
	.4byte 0x84478448
	.4byte 0x8449844A
	.4byte 0x844B844C
	.4byte 0x844D844E
	.4byte 0x844F8450
	.4byte 0x84518452
	.4byte 0x84538454
	.4byte 0x84558456
	.4byte 0x84578458
	.4byte 0x8459845A
	.4byte 0x845B845C
	.4byte 0x845D845E
	.4byte 0x845F8460
	.4byte 0x84708471
	.4byte 0x84728473
	.4byte 0x84748475
	.4byte 0x84778478
	.4byte 0x8479847A
	.4byte 0x847B847C
	.4byte 0x847D847E
	.4byte 0x84808481
	.4byte 0x84828483
	.4byte 0x84848485
	.4byte 0x84868487
	.4byte 0x84888489
	.4byte 0x848A848B
	.4byte 0x848C848D
	.4byte 0x848E848F
	.4byte 0x84908491
	.4byte 0x00008476
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80184810:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x815D0000
	.4byte 0
	.4byte 0x0000815C
	.4byte 0x81610000
	.4byte 0x81658166
	.4byte 0
	.4byte 0x81678168
	.4byte 0
	.4byte 0x81F581F6
	.4byte 0
	.4byte 0x00008164
	.4byte 0x81630000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81F10000
	.4byte 0x818C818D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081A6
	.4byte 0
	.4byte 0x007E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80184A10:
	.4byte 0
	.4byte 0x0000818E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81A981AA
	.4byte 0x81A881AB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81CB0000
	.4byte 0x81CC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80184C10:
	.4byte 0x81CD0000
	.4byte 0x81DD81CE
	.4byte 0
	.4byte 0x000081DE
	.4byte 0x81B80000
	.4byte 0x000081B9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x817C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81E30000
	.4byte 0x000081E5
	.4byte 0x81870000
	.4byte 0x81DA0000
	.4byte 0
	.4byte 0
	.4byte 0x000081C8
	.4byte 0x81C981BF
	.4byte 0x81BE81E7
	.4byte 0x81E80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x818881E6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81E00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x818281DF
	.4byte 0
	.4byte 0
	.4byte 0x81858186
	.4byte 0
	.4byte 0x81E181E2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81BC81BD
	.4byte 0
	.4byte 0x81BA81BB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80184E10:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81DC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80185010:
	.4byte 0x849F84AA
	.4byte 0x84A084AB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x84A10000
	.4byte 0x000084AC
	.4byte 0x84A20000
	.4byte 0x000084AD
	.4byte 0x84A40000
	.4byte 0x000084AF
	.4byte 0x84A30000
	.4byte 0x000084AE
	.4byte 0x84A584BA
	.4byte 0
	.4byte 0x84B50000
	.4byte 0x000084B0
	.4byte 0x84A784BC
	.4byte 0
	.4byte 0x84B70000
	.4byte 0x000084B2
	.4byte 0x84A60000
	.4byte 0x000084B6
	.4byte 0x84BB0000
	.4byte 0x000084B1
	.4byte 0x84A80000
	.4byte 0x000084B8
	.4byte 0x84BD0000
	.4byte 0x000084B3
	.4byte 0x84A90000
	.4byte 0x000084B9
	.4byte 0
	.4byte 0x84BE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000084B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81A181A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81A381A2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81A581A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x819F819E
	.4byte 0
	.4byte 0x0000819B
	.4byte 0
	.4byte 0x819D819C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80185210:
	.4byte 0
	.4byte 0
	.4byte 0x0000819A
	.4byte 0x81990000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x818A0000
	.4byte 0x81890000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81F40000
	.4byte 0x000081F3
	.4byte 0x000081F2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80185410:
	.4byte 0x81408141
	.4byte 0x81428156
	.4byte 0x00008158
	.4byte 0x8159815A
	.4byte 0x81718172
	.4byte 0x81738174
	.4byte 0x81758176
	.4byte 0x81778178
	.4byte 0x8179817A
	.4byte 0x81A781AC
	.4byte 0x816B816C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81600000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000829F
	.4byte 0x82A082A1
	.4byte 0x82A282A3
	.4byte 0x82A482A5
	.4byte 0x82A682A7
	.4byte 0x82A882A9
	.4byte 0x82AA82AB
	.4byte 0x82AC82AD
	.4byte 0x82AE82AF
	.4byte 0x82B082B1
	.4byte 0x82B282B3
	.4byte 0x82B482B5
	.4byte 0x82B682B7
	.4byte 0x82B882B9
	.4byte 0x82BA82BB
	.4byte 0x82BC82BD
	.4byte 0x82BE82BF
	.4byte 0x82C082C1
	.4byte 0x82C282C3
	.4byte 0x82C482C5
	.4byte 0x82C682C7
	.4byte 0x82C882C9
	.4byte 0x82CA82CB
	.4byte 0x82CC82CD
	.4byte 0x82CE82CF
	.4byte 0x82D082D1
	.4byte 0x82D282D3
	.4byte 0x82D482D5
	.4byte 0x82D682D7
	.4byte 0x82D882D9
	.4byte 0x82DA82DB
	.4byte 0x82DC82DD
	.4byte 0x82DE82DF
	.4byte 0x82E082E1
	.4byte 0x82E282E3
	.4byte 0x82E482E5
	.4byte 0x82E682E7
	.4byte 0x82E882E9
	.4byte 0x82EA82EB
	.4byte 0x82EC82ED
	.4byte 0x82EE82EF
	.4byte 0x82F082F1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000814A
	.4byte 0x814B8154
	.4byte 0x81550000
	.4byte 0x00008340
	.4byte 0x83418342
	.4byte 0x83438344
	.4byte 0x83458346
	.4byte 0x83478348
	.4byte 0x8349834A
	.4byte 0x834B834C
	.4byte 0x834D834E
	.4byte 0x834F8350
	.4byte 0x83518352
	.4byte 0x83538354
	.4byte 0x83558356
	.4byte 0x83578358
	.4byte 0x8359835A
	.4byte 0x835B835C
	.4byte 0x835D835E
	.4byte 0x835F8360
	.4byte 0x83618362
	.4byte 0x83638364
	.4byte 0x83658366
	.4byte 0x83678368
	.4byte 0x8369836A
	.4byte 0x836B836C
	.4byte 0x836D836E
	.4byte 0x836F8370
	.4byte 0x83718372
	.4byte 0x83738374
	.4byte 0x83758376
	.4byte 0x83778378
	.4byte 0x8379837A
	.4byte 0x837B837C
	.4byte 0x837D837E
	.4byte 0x83808381
	.4byte 0x83828383
	.4byte 0x83848385
	.4byte 0x83868387
	.4byte 0x83888389
	.4byte 0x838A838B
	.4byte 0x838C838D
	.4byte 0x838E838F
	.4byte 0x83908391
	.4byte 0x83928393
	.4byte 0x83948395
	.4byte 0x83960000
	.4byte 0
	.4byte 0x00008145
	.4byte 0x815B8152
	.4byte 0x81530000
lbl_80185610:
	.4byte 0x88EA929A
	.4byte 0x00008EB5
	.4byte 0
	.4byte 0x0000969C
	.4byte 0x8FE48E4F
	.4byte 0x8FE389BA
	.4byte 0x00009573
	.4byte 0x975E0000
	.4byte 0x98A0894E
	.4byte 0
	.4byte 0x8A8E98A1
	.4byte 0x90A299C0
	.4byte 0x8B7595B8
	.4byte 0
	.4byte 0
	.4byte 0x8FE50000
	.4byte 0x000097BC
	.4byte 0
	.4byte 0
	.4byte 0x95C00000
	.4byte 0
	.4byte 0x98A20000
	.4byte 0x00009286
	.4byte 0
	.4byte 0x000098A3
	.4byte 0x8BF80000
	.4byte 0
	.4byte 0x98A40000
	.4byte 0x8ADB924F
	.4byte 0x00008EE5
	.4byte 0x98A50000
	.4byte 0x000098A6
	.4byte 0
	.4byte 0x98A79454
	.4byte 0x00008B76
	.4byte 0
	.4byte 0
	.4byte 0x00009456
	.4byte 0x000093E1
	.4byte 0x8CC19652
	.4byte 0
	.4byte 0
	.4byte 0x0000E568
	.4byte 0x98A88FE6
	.4byte 0x98A989B3
	.4byte 0
	.4byte 0x00008BE3
	.4byte 0x8CEE96E7
	.4byte 0
	.4byte 0x9BA40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009790
	.4byte 0x000093FB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AA30000
	.4byte 0x8B540000
	.4byte 0x98AA0000
	.4byte 0x000098AB
	.4byte 0x97B90000
	.4byte 0x975C9188
	.4byte 0x98AD8E96
	.4byte 0x93F10000
	.4byte 0x98B00000
	.4byte 0x0000895D
	.4byte 0x8CDD0000
	.4byte 0x8CDC88E4
	.4byte 0
	.4byte 0x986A9869
	.4byte 0x00008DB1
	.4byte 0x889F0000
	.4byte 0x98B198B2
	.4byte 0x98B39653
	.4byte 0x98B40000
	.4byte 0x8CF088E5
	.4byte 0x96920000
	.4byte 0x8B9C0000
	.4byte 0x00008B9D
	.4byte 0x8B9E92E0
	.4byte 0x97BA0000
	.4byte 0x98B50000
	.4byte 0x000098B6
	.4byte 0
	.4byte 0x98B70000
	.4byte 0
	.4byte 0x906C0000
	.4byte 0
	.4byte 0
	.4byte 0x8F59906D
	.4byte 0x98BC0000
	.4byte 0x98BA0000
	.4byte 0x98BB8B77
	.4byte 0
	.4byte 0x8DA189EE
	.4byte 0x000098B9
	.4byte 0x98B895A7
	.4byte 0
	.4byte 0
	.4byte 0x8E658E64
	.4byte 0x91BC98BD
	.4byte 0x957490E5
	.4byte 0
	.4byte 0x00008157
	.4byte 0x98BE98C0
	.4byte 0
	.4byte 0x000091E3
	.4byte 0x97DF88C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000098BF
	.4byte 0x89BC0000
	.4byte 0x8BC20000
	.4byte 0x92870000
	.4byte 0
	.4byte 0x8C8F98C1
	.4byte 0
	.4byte 0x00009443
	.4byte 0
	.4byte 0
lbl_80185810:
	.4byte 0x00008AE9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000098C2
	.4byte 0x88C90000
	.4byte 0x00008CDE
	.4byte 0x8AEA959A
	.4byte 0x94B08B78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89EF0000
	.4byte 0x98E59360
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000948C
	.4byte 0x98C40000
	.4byte 0
	.4byte 0x94BA0000
	.4byte 0x97E00000
	.4byte 0x904C0000
	.4byte 0x8E660000
	.4byte 0x8E9789BE
	.4byte 0
	.4byte 0
	.4byte 0x000092CF
	.4byte 0
	.4byte 0x924198C8
	.4byte 0
	.4byte 0
	.4byte 0x000088CA
	.4byte 0x92E18F5A
	.4byte 0x8DB29743
	.4byte 0x000091CC
	.4byte 0x000089BD
	.4byte 0x000098C7
	.4byte 0x0000975D
	.4byte 0x98C398C5
	.4byte 0x8DEC98C6
	.4byte 0x9B430000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000098CE
	.4byte 0
	.4byte 0
	.4byte 0x000098D1
	.4byte 0x98CF0000
	.4byte 0x000089C0
	.4byte 0x000095B9
	.4byte 0x98C90000
	.4byte 0
	.4byte 0x000098CD
	.4byte 0x8CF10000
	.4byte 0x00008E67
	.4byte 0
	.4byte 0x00008AA4
	.4byte 0
	.4byte 0x98D20000
	.4byte 0x98CA0000
	.4byte 0x000097E1
	.4byte 0x00008E98
	.4byte 0x000098CB
	.4byte 0x000098D0
	.4byte 0
	.4byte 0
	.4byte 0x98D30000
	.4byte 0x98CC0000
	.4byte 0x00008B9F
	.4byte 0x000088CB
	.4byte 0
	.4byte 0x8BA089BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009B44
	.4byte 0x00009699
	.4byte 0x958E8CF2
	.4byte 0
	.4byte 0
	.4byte 0x0000904E
	.4byte 0x97B50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095D6
	.4byte 0
	.4byte 0x8C5791A3
	.4byte 0x89E20000
	.4byte 0
	.4byte 0
	.4byte 0x8F720000
	.4byte 0
	.4byte 0x98D70000
	.4byte 0x98DC98DA
	.4byte 0
	.4byte 0x98D50000
	.4byte 0x000091AD
	.4byte 0x98D80000
	.4byte 0x98DB98D9
	.4byte 0x000095DB
	.4byte 0x000098D6
	.4byte 0x0000904D
	.4byte 0x00009693
	.4byte 0x98DD98DE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F4398EB
	.4byte 0
	.4byte 0x0000946F
	.4byte 0x00009555
	.4byte 0x98E60000
	.4byte 0x95EE0000
	.4byte 0x89B40000
	.4byte 0
	.4byte 0x98EA0000
lbl_80185A10:
	.4byte 0
	.4byte 0
	.4byte 0x000098E4
	.4byte 0x98ED0000
	.4byte 0x00009171
	.4byte 0x00008CC2
	.4byte 0x0000947B
	.4byte 0x0000E0C5
	.4byte 0x000098EC
	.4byte 0x937C0000
	.4byte 0x98E10000
	.4byte 0x8CF40000
	.4byte 0x00008CF3
	.4byte 0x98DF0000
	.4byte 0
	.4byte 0x00008ED8
	.4byte 0x000098E7
	.4byte 0x000095ED
	.4byte 0x926C98E3
	.4byte 0x8C910000
	.4byte 0x98E098E8
	.4byte 0x98E297CF
	.4byte 0x98E99860
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8BE40000
	.4byte 0x00008C90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000098EE
	.4byte 0
	.4byte 0x000098EF
	.4byte 0x98F388CC
	.4byte 0
	.4byte 0
	.4byte 0x000095CE
	.4byte 0x98F20000
	.4byte 0
	.4byte 0x000098F1
	.4byte 0x98F50000
	.4byte 0
	.4byte 0x98F40000
	.4byte 0x92E20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C92
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x98F60000
	.4byte 0
	.4byte 0
	.4byte 0x8EC30000
	.4byte 0x91A492E3
	.4byte 0x8BF40000
	.4byte 0x98F70000
	.4byte 0
	.4byte 0x00008B55
	.4byte 0
	.4byte 0x98F80000
	.4byte 0
	.4byte 0x000098FA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009654
	.4byte 0
	.4byte 0x00008C86
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E5094F5
	.4byte 0x98F90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8DC39762
	.4byte 0
	.4byte 0
	.4byte 0x98FC9942
	.4byte 0x98FB8DC2
	.4byte 0x00008F9D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C580000
	.4byte 0
	.4byte 0x99430000
	.4byte 0x00008BCD
	.4byte 0
	.4byte 0x00009940
	.4byte 0x99410000
	.4byte 0x000093AD
	.4byte 0x0000919C
	.4byte 0x00008BA1
	.4byte 0
	.4byte 0x0000966C
	.4byte 0x99440000
	.4byte 0
	.4byte 0x97BB0000
	.4byte 0
	.4byte 0x99450000
	.4byte 0
	.4byte 0x00009948
	.4byte 0x00009946
	.4byte 0x0000916D
	.4byte 0
	.4byte 0
	.4byte 0x00009947
	.4byte 0x99490000
	.4byte 0
	.4byte 0
	.4byte 0x0000994B
	.4byte 0
	.4byte 0x0000994A
	.4byte 0x000095C6
	.4byte 0
	.4byte 0
lbl_80185C10:
	.4byte 0x8B56994D
	.4byte 0x994E0000
	.4byte 0x89AD0000
	.4byte 0
	.4byte 0x0000994C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EF20000
	.4byte 0x99519950
	.4byte 0x994F0000
	.4byte 0x98D40000
	.4byte 0x99520000
	.4byte 0
	.4byte 0x00008F9E
	.4byte 0x00009953
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97440000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96D70000
	.4byte 0
	.4byte 0x00009955
	.4byte 0
	.4byte 0x99549957
	.4byte 0x99560000
	.4byte 0x00009958
	.4byte 0x995988F2
	.4byte 0x00008CB3
	.4byte 0x8C5A8F5B
	.4byte 0x929B8BA2
	.4byte 0x90E68CF5
	.4byte 0x00008D8E
	.4byte 0x995B96C6
	.4byte 0x93650000
	.4byte 0x8E990000
	.4byte 0x995A0000
	.4byte 0x995C0000
	.4byte 0
	.4byte 0
	.4byte 0x937D0000
	.4byte 0x8A950000
	.4byte 0
	.4byte 0
	.4byte 0x995D0000
	.4byte 0x000093FC
	.4byte 0
	.4byte 0x9153995F
	.4byte 0x996094AA
	.4byte 0x8CF6985A
	.4byte 0x99610000
	.4byte 0x00008BA4
	.4byte 0
	.4byte 0x000095BA
	.4byte 0x91B48BEF
	.4byte 0x93540000
	.4byte 0
	.4byte 0x8C930000
	.4byte 0
	.4byte 0x99620000
	.4byte 0x99630000
	.4byte 0x000093E0
	.4byte 0x897E0000
	.4byte 0x00009966
	.4byte 0x8DFB0000
	.4byte 0x99658DC4
	.4byte 0x00009967
	.4byte 0xE3EC9968
	.4byte 0x96609969
	.4byte 0x0000996A
	.4byte 0x996B8FE7
	.4byte 0x00008ECA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AA50000
	.4byte 0x996E0000
	.4byte 0x996C96BB
	.4byte 0x996D0000
	.4byte 0x9579996F
	.4byte 0x99709971
	.4byte 0x937E0000
	.4byte 0
	.4byte 0x99759973
	.4byte 0x99749972
	.4byte 0x8DE19976
	.4byte 0x96E897E2
	.4byte 0
	.4byte 0
	.4byte 0x00009977
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90A69978
	.4byte 0x8F790000
	.4byte 0x00009979
	.4byte 0x0000929C
	.4byte 0x97BD9380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x99C30000
	.4byte 0
	.4byte 0x0000997A
	.4byte 0xEAA38BC3
	.4byte 0
	.4byte 0x997B967D
	.4byte 0
	.4byte 0
	.4byte 0x8F8891FA
	.4byte 0x0000997D
	.4byte 0x93E20000
	.4byte 0x0000997E
	.4byte 0
	.4byte 0x99808A4D
	.4byte 0
	.4byte 0x00009981
	.4byte 0x8BA50000
	.4byte 0x93CA899A
	.4byte 0x8F6F0000
	.4byte 0x0000949F
	.4byte 0x99820000
lbl_80185E10:
	.4byte 0x93810000
	.4byte 0x0000906E
	.4byte 0x99830000
	.4byte 0x95AA90D8
	.4byte 0x8AA00000
	.4byte 0x8AA79984
	.4byte 0
	.4byte 0x99860000
	.4byte 0x00008C59
	.4byte 0
	.4byte 0x99850000
	.4byte 0x000097F1
	.4byte 0
	.4byte 0
	.4byte 0x00008F89
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94BB95CA
	.4byte 0x00009987
	.4byte 0x00009798
	.4byte 0x99880000
	.4byte 0
	.4byte 0x99890000
	.4byte 0x939E0000
	.4byte 0x0000998A
	.4byte 0
	.4byte 0x90A78DFC
	.4byte 0x8C94998B
	.4byte 0x8E688D8F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000092E4
	.4byte 0x998D0000
	.4byte 0x000091A5
	.4byte 0
	.4byte 0x8DED998E
	.4byte 0x998F914F
	.4byte 0x0000998C
	.4byte 0
	.4byte 0
	.4byte 0x99910000
	.4byte 0x96550000
	.4byte 0
	.4byte 0x00008D84
	.4byte 0
	.4byte 0x99900000
	.4byte 0
	.4byte 0x00008C95
	.4byte 0x8DDC948D
	.4byte 0
	.4byte 0x00009994
	.4byte 0x99920000
	.4byte 0
	.4byte 0x0000959B
	.4byte 0x8FE8999B
	.4byte 0x8A849995
	.4byte 0x9993916E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009997
	.4byte 0x00009996
	.4byte 0
	.4byte 0x00008A63
	.4byte 0
	.4byte 0x00008C80
	.4byte 0x999C97AB
	.4byte 0
	.4byte 0x00009998
	.4byte 0
	.4byte 0x0000999D
	.4byte 0x999A0000
	.4byte 0x99990000
	.4byte 0
	.4byte 0
	.4byte 0x000097CD
	.4byte 0
	.4byte 0x00008CF7
	.4byte 0x89C10000
	.4byte 0x000097F2
	.4byte 0
	.4byte 0
	.4byte 0x00008F95
	.4byte 0x93778D85
	.4byte 0x99A099A1
	.4byte 0
	.4byte 0x000097E3
	.4byte 0
	.4byte 0x984A99A3
	.4byte 0
	.4byte 0x00008CF8
	.4byte 0
	.4byte 0x99A20000
	.4byte 0x8A4E0000
	.4byte 0x000099A4
	.4byte 0x00009675
	.4byte 0x000092BA
	.4byte 0x00009745
	.4byte 0x000095D7
	.4byte 0
	.4byte 0x000099A5
	.4byte 0
	.4byte 0
	.4byte 0xE8D30000
	.4byte 0x000093AE
	.4byte 0x000099A6
	.4byte 0x8AA896B1
	.4byte 0
	.4byte 0x00008F9F
	.4byte 0x99A795E5
	.4byte 0x99AB0000
	.4byte 0x90A899A8
	.4byte 0x8BCE0000
	.4byte 0x99A98AA9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C4D99AC
	.4byte 0x000099AD
	.4byte 0
	.4byte 0x99AE99AF
	.4byte 0x8ED90000
	.4byte 0
	.4byte 0x8CF996DC
lbl_80186010:
	.4byte 0x000096E6
	.4byte 0x93F50000
	.4byte 0x000095EF
	.4byte 0x99B00000
	.4byte 0x99B10000
	.4byte 0
	.4byte 0x000099B3
	.4byte 0x000099B5
	.4byte 0x99B40000
	.4byte 0
	.4byte 0x000099B6
	.4byte 0x89BB966B
	.4byte 0x00008DFA
	.4byte 0x99B70000
	.4byte 0x00009178
	.4byte 0
	.4byte 0x8FA08BA7
	.4byte 0x000099B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94D90000
	.4byte 0
	.4byte 0x000099B9
	.4byte 0x000099BA
	.4byte 0x000099BB
	.4byte 0
	.4byte 0
	.4byte 0x99BC9543
	.4byte 0x8BE688E3
	.4byte 0
	.4byte 0x000093BD
	.4byte 0x99BD8F5C
	.4byte 0x000090E7
	.4byte 0x000099BF
	.4byte 0x99BE8FA1
	.4byte 0x8CDF99C1
	.4byte 0x94BC0000
	.4byte 0x000099C2
	.4byte 0
	.4byte 0x000094DA
	.4byte 0x91B291EC
	.4byte 0x8BA60000
	.4byte 0x000093EC
	.4byte 0x92500000
	.4byte 0x948E0000
	.4byte 0x966D0000
	.4byte 0x99C40000
	.4byte 0x90E80000
	.4byte 0
	.4byte 0
	.4byte 0x8C540000
	.4byte 0x000099C5
	.4byte 0
	.4byte 0
	.4byte 0x99C6894B
	.4byte 0x88F38AEB
	.4byte 0x000091A6
	.4byte 0x8B709791
	.4byte 0x000099C9
	.4byte 0x89B50000
	.4byte 0x000099C8
	.4byte 0
	.4byte 0x00008BA8
	.4byte 0
	.4byte 0x99CA0000
	.4byte 0x96EF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x99CB0000
	.4byte 0x97D00000
	.4byte 0x8CFA0000
	.4byte 0
	.4byte 0x00008CB4
	.4byte 0x99CC0000
	.4byte 0
	.4byte 0x000099CE
	.4byte 0x99CD0000
	.4byte 0x907E8958
	.4byte 0
	.4byte 0x0000897D
	.4byte 0x99CF0000
	.4byte 0x99D00000
	.4byte 0x00008CB5
	.4byte 0
	.4byte 0x99D10000
	.4byte 0
	.4byte 0x00008B8E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E5199D2
	.4byte 0
	.4byte 0
	.4byte 0x96948DB3
	.4byte 0x8B799746
	.4byte 0x916F94BD
	.4byte 0x8EFB0000
	.4byte 0
	.4byte 0
	.4byte 0x8F660000
	.4byte 0x8EE68EF3
	.4byte 0x00008F96
	.4byte 0x000094BE
	.4byte 0
	.4byte 0x000099D5
	.4byte 0x00008962
	.4byte 0x91708CFB
	.4byte 0x8CC38BE5
	.4byte 0
	.4byte 0x99D99240
	.4byte 0x91FC8BA9
	.4byte 0x8FA299DA
	.4byte 0x99D889C2
	.4byte 0x91E48EB6
	.4byte 0x8E6A8945
	.4byte 0
	.4byte 0x8A908D86
	.4byte 0x8E690000
	.4byte 0x99DB0000
	.4byte 0
	.4byte 0
lbl_80186210:
	.4byte 0x000099DC
	.4byte 0x00008B68
	.4byte 0x8A650000
	.4byte 0
	.4byte 0x8D878B67
	.4byte 0x92DD8944
	.4byte 0x93AF96BC
	.4byte 0x8D409799
	.4byte 0x93668CFC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C4E
	.4byte 0x000099E5
	.4byte 0x00008BE1
	.4byte 0x96690000
	.4byte 0
	.4byte 0
	.4byte 0x94DB0000
	.4byte 0x000099E4
	.4byte 0x00008ADC
	.4byte 0x99DF99E0
	.4byte 0x99E20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x99E30000
	.4byte 0x8B7A9081
	.4byte 0x000095AB
	.4byte 0x99E199DD
	.4byte 0x8CE10000
	.4byte 0x99DE0000
	.4byte 0x98430000
	.4byte 0
	.4byte 0x95F00000
	.4byte 0x92E68CE0
	.4byte 0x8D900000
	.4byte 0
	.4byte 0x99E60000
	.4byte 0x000093DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000099EA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EFC0000
	.4byte 0x8EF40000
	.4byte 0
	.4byte 0
	.4byte 0x99ED99EB
	.4byte 0x000096A1
	.4byte 0x000099E8
	.4byte 0x99F199EC
	.4byte 0
	.4byte 0x000099EF
	.4byte 0x8CC496BD
	.4byte 0
	.4byte 0x99F00000
	.4byte 0
	.4byte 0x99F20000
	.4byte 0x99F40000
	.4byte 0
	.4byte 0x00008DEE
	.4byte 0x98610000
	.4byte 0x99E999E7
	.4byte 0x99F30000
	.4byte 0x99EE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x99F60000
	.4byte 0x9A4299F8
	.4byte 0
	.4byte 0x99FC0000
	.4byte 0x00009A40
	.4byte 0x99F90000
	.4byte 0x00009A5D
	.4byte 0
	.4byte 0x8DE78A50
	.4byte 0
	.4byte 0
	.4byte 0x99F70000
	.4byte 0
	.4byte 0x9A4488F4
	.4byte 0x9A430000
	.4byte 0x88A39569
	.4byte 0x9A410000
	.4byte 0x99FA0000
	.4byte 0x000099F5
	.4byte 0x99FB8DC6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A450000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088F5
	.4byte 0x9A4E0000
	.4byte 0x00009A46
	.4byte 0x9A470000
	.4byte 0x8FA39689
	.4byte 0
	.4byte 0x00009A4C
	.4byte 0x9A4B0000
	.4byte 0
	.4byte 0x934E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A4D0000
	.4byte 0x00009A4A
	.4byte 0
lbl_80186410:
	.4byte 0
	.4byte 0
	.4byte 0x89530000
	.4byte 0x8DB4904F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009A48
	.4byte 0x93820000
	.4byte 0
	.4byte 0x9A490000
	.4byte 0x88A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A539742
	.4byte 0x00008FA5
	.4byte 0x00009A59
	.4byte 0
	.4byte 0
	.4byte 0x9A589A4F
	.4byte 0
	.4byte 0
	.4byte 0x91C10000
	.4byte 0x9A500000
	.4byte 0
	.4byte 0x91ED9A55
	.4byte 0x8FA40000
	.4byte 0
	.4byte 0
	.4byte 0x9A520000
	.4byte 0x000096E2
	.4byte 0
	.4byte 0x00008C5B
	.4byte 0
	.4byte 0x9A569A57
	.4byte 0
	.4byte 0
	.4byte 0x9A549A5A
	.4byte 0
	.4byte 0
	.4byte 0x00009A51
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009A60
	.4byte 0x9A650000
	.4byte 0x9A610000
	.4byte 0x9A5C0000
	.4byte 0x00009A66
	.4byte 0x91500000
	.4byte 0x00009A68
	.4byte 0x00008D41
	.4byte 0x9A5E929D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A629A5B
	.4byte 0x8AAB0000
	.4byte 0x8AEC8A85
	.4byte 0x9A639A5F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C96
	.4byte 0x9A699A67
	.4byte 0x91728B69
	.4byte 0x8BAA0000
	.4byte 0x9A640000
	.4byte 0x8BF20000
	.4byte 0
	.4byte 0
	.4byte 0x89630000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A6D9A6B
	.4byte 0x00009AA5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A700000
	.4byte 0
	.4byte 0
	.4byte 0x9A6A0000
	.4byte 0x9A6E0000
	.4byte 0x00009A6C
	.4byte 0
	.4byte 0x00008E6B
	.4byte 0x9A6F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009A72
	.4byte 0x00009A77
	.4byte 0
	.4byte 0x00009A75
	.4byte 0x9A740000
lbl_80186610:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x92510000
	.4byte 0x000089C3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A710000
	.4byte 0x9A738FA6
	.4byte 0x89520000
	.4byte 0x00009A76
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000089DC
	.4byte 0
	.4byte 0
	.4byte 0x00009A82
	.4byte 0x00008FFA
	.4byte 0x9A7D0000
	.4byte 0x9A7B0000
	.4byte 0x9A7C0000
	.4byte 0x9A7E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x895C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91580000
	.4byte 0x9A780000
	.4byte 0x9A790000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008A9A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A810000
	.4byte 0
	.4byte 0x8AED0000
	.4byte 0x9A849A80
	.4byte 0x9A830000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x95AC0000
	.4byte 0
	.4byte 0x93D30000
	.4byte 0x94B60000
	.4byte 0
	.4byte 0
	.4byte 0x9A860000
	.4byte 0
	.4byte 0
	.4byte 0x9A858A64
	.4byte 0
	.4byte 0x9A870000
	.4byte 0
	.4byte 0x00009A8A
	.4byte 0
	.4byte 0
	.4byte 0x9A890000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A880000
	.4byte 0x94580000
	.4byte 0x00009A8B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A8C0000
	.4byte 0
	.4byte 0
	.4byte 0x9A8E0000
	.4byte 0x9A8D0000
	.4byte 0
	.4byte 0
	.4byte 0x9A900000
	.4byte 0
	.4byte 0x9A939A91
	.4byte 0x9A8F9A92
	.4byte 0
	.4byte 0
	.4byte 0x9A940000
	.4byte 0
	.4byte 0
	.4byte 0x9A950000
	.4byte 0x00009A96
	.4byte 0x00009A97
	.4byte 0
	.4byte 0x00009A98
	.4byte 0x99640000
	.4byte 0x8EFA8E6C
	.4byte 0
	.4byte 0x89F10000
	.4byte 0x88F60000
	.4byte 0x00009263
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A990000
	.4byte 0x8DA20000
	.4byte 0x88CD907D
	.4byte 0
	.4byte 0
	.4byte 0x00009A9A
	.4byte 0x8CC50000
	.4byte 0x00008D91
	.4byte 0x00009A9C
lbl_80186810:
	.4byte 0x9A9B0000
	.4byte 0x000095DE
	.4byte 0x9A9D0000
	.4byte 0
	.4byte 0x9A9F9A9E
	.4byte 0x00009AA0
	.4byte 0x00009AA1
	.4byte 0x00008C97
	.4byte 0
	.4byte 0x89809AA2
	.4byte 0
	.4byte 0x9AA40000
	.4byte 0x9AA30000
	.4byte 0
	.4byte 0x9AA60000
	.4byte 0x00009379
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9AA788B3
	.4byte 0x8DDD0000
	.4byte 0
	.4byte 0x00008C5C
	.4byte 0
	.4byte 0x926E0000
	.4byte 0
	.4byte 0
	.4byte 0x00009AA8
	.4byte 0x9AA90000
	.4byte 0x00009AAB
	.4byte 0
	.4byte 0
	.4byte 0x9AAC0000
	.4byte 0x8DE20000
	.4byte 0
	.4byte 0x00008BCF
	.4byte 0
	.4byte 0x96560000
	.4byte 0
	.4byte 0x9AAA9AAD
	.4byte 0x8DBF8D42
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009AB1
	.4byte 0
	.4byte 0x8DA30000
	.4byte 0x92520000
	.4byte 0x00009AAE
	.4byte 0x92D80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009AB2
	.4byte 0
	.4byte 0x90820000
	.4byte 0
	.4byte 0
	.4byte 0x9AB09AB3
	.4byte 0x00008C5E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009AB4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9AB50000
	.4byte 0x8D438A5F
	.4byte 0x9AB70000
	.4byte 0
	.4byte 0
	.4byte 0x9AB80000
	.4byte 0
	.4byte 0
	.4byte 0x9AB90000
	.4byte 0x00009AB6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9AAF0000
	.4byte 0x00009ABA
	.4byte 0
	.4byte 0x9ABB0000
	.4byte 0
	.4byte 0x00009684
	.4byte 0
	.4byte 0x8FE90000
	.4byte 0
	.4byte 0x9ABD9ABE
	.4byte 0x9ABC0000
	.4byte 0x9AC00000
	.4byte 0
	.4byte 0
	.4byte 0x94570000
	.4byte 0x000088E6
	.4byte 0x95750000
	.4byte 0x00009AC1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8FFB0000
	.4byte 0x00008EB7
	.4byte 0x0000947C
	.4byte 0x8AEE0000
	.4byte 0x8DE90000
	.4byte 0
lbl_80186A10:
	.4byte 0x96780000
	.4byte 0x93B00000
	.4byte 0x00008C98
	.4byte 0x91CD0000
	.4byte 0
	.4byte 0x9ABF9AC2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091C2
	.4byte 0
	.4byte 0x00009AC3
	.4byte 0
	.4byte 0x00009AC4
	.4byte 0
	.4byte 0x00009AC6
	.4byte 0
	.4byte 0x92E70000
	.4byte 0
	.4byte 0
	.4byte 0x8AAC0000
	.4byte 0
	.4byte 0x0000EA9F
	.4byte 0x898195F1
	.4byte 0
	.4byte 0x8FEA9367
	.4byte 0
	.4byte 0
	.4byte 0x8DE40000
	.4byte 0x00009ACC
	.4byte 0
	.4byte 0x95BB97DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89F29AC8
	.4byte 0
	.4byte 0
	.4byte 0x00009159
	.4byte 0x9ACB0000
	.4byte 0x93830000
	.4byte 0x00009368
	.4byte 0x938494B7
	.4byte 0x92CB0000
	.4byte 0
	.4byte 0x8DC70000
	.4byte 0
	.4byte 0x9AC70000
	.4byte 0
	.4byte 0
	.4byte 0x00008996
	.4byte 0x00009355
	.4byte 0
	.4byte 0
	.4byte 0x9AC90000
	.4byte 0x9AC50000
	.4byte 0x0000906F
	.4byte 0
	.4byte 0x00009ACD
	.4byte 0
	.4byte 0
	.4byte 0x8F6D0000
	.4byte 0
	.4byte 0x00008BAB
	.4byte 0x00009ACE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095E6
	.4byte 0
	.4byte 0x0000919D
	.4byte 0
	.4byte 0
	.4byte 0x92C40000
	.4byte 0x00009AD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x966E0000
	.4byte 0x00009AD1
	.4byte 0
	.4byte 0x9AD60000
	.4byte 0
	.4byte 0x000095AD
	.4byte 0
	.4byte 0
	.4byte 0x9AD59ACF
	.4byte 0x9AD29AD4
	.4byte 0
	.4byte 0x8DA40000
	.4byte 0x000095C7
	.4byte 0
	.4byte 0x00009AD7
	.4byte 0x00009264
	.4byte 0
	.4byte 0x89F30000
	.4byte 0x8FEB0000
	.4byte 0
	.4byte 0x00009AD9
	.4byte 0x00009AD8
	.4byte 0x00008D88
	.4byte 0x00009ADA
	.4byte 0x9ADC9ADB
	.4byte 0
	.4byte 0x9ADE0000
	.4byte 0x9AD39AE0
	.4byte 0
	.4byte 0
	.4byte 0x9ADF9ADD
	.4byte 0
	.4byte 0
	.4byte 0x00008E6D
	.4byte 0x90700000
	.4byte 0x91739AE1
	.4byte 0x90BA88EB
	.4byte 0x94840000
	.4byte 0
	.4byte 0x000092D9
	.4byte 0x00009AE3
	.4byte 0x9AE29AE4
	.4byte 0x9AE59AE6
	.4byte 0
lbl_80186C10:
	.4byte 0
	.4byte 0x9AE70000
	.4byte 0
	.4byte 0
	.4byte 0x000095CF
	.4byte 0x9AE80000
	.4byte 0
	.4byte 0x000089C4
	.4byte 0x9AE90000
	.4byte 0
	.4byte 0x0000975B
	.4byte 0x8A4F0000
	.4byte 0x99C78F67
	.4byte 0x91BD9AEA
	.4byte 0x96E90000
	.4byte 0
	.4byte 0
	.4byte 0x96B20000
	.4byte 0x00009AEC
	.4byte 0x000091E5
	.4byte 0x00009356
	.4byte 0x91BE9576
	.4byte 0x9AED9AEE
	.4byte 0x899B0000
	.4byte 0x00008EB8
	.4byte 0x9AEF0000
	.4byte 0
	.4byte 0x000088CE
	.4byte 0x9AF00000
	.4byte 0
	.4byte 0
	.4byte 0x9AF10000
	.4byte 0
	.4byte 0
	.4byte 0x89820000
	.4byte 0x00008AEF
	.4byte 0x93DE95F2
	.4byte 0
	.4byte 0
	.4byte 0x9AF59174
	.4byte 0x9AF48C5F
	.4byte 0
	.4byte 0x967A9AF3
	.4byte 0x00009385
	.4byte 0x9AF70000
	.4byte 0x9AF60000
	.4byte 0
	.4byte 0
	.4byte 0x9AF90000
	.4byte 0x9AF80000
	.4byte 0x0000899C
	.4byte 0x00009AFA
	.4byte 0x8FA79AFC
	.4byte 0x92440000
	.4byte 0x9AFB0000
	.4byte 0x95B10000
	.4byte 0
	.4byte 0x00008F97
	.4byte 0x937A0000
	.4byte 0
	.4byte 0x9B400000
	.4byte 0
	.4byte 0x00008D44
	.4byte 0
	.4byte 0x00009B41
	.4byte 0x944094DC
	.4byte 0x96CF0000
	.4byte 0
	.4byte 0
	.4byte 0x94440000
	.4byte 0x00009B4A
	.4byte 0
	.4byte 0
	.4byte 0x00008B57
	.4byte 0
	.4byte 0x97640000
	.4byte 0x000096AD
	.4byte 0x00009BAA
	.4byte 0x00009B42
	.4byte 0
	.4byte 0
	.4byte 0x00009B45
	.4byte 0x000091C3
	.4byte 0
	.4byte 0x96570000
	.4byte 0
	.4byte 0x93690000
	.4byte 0
	.4byte 0
	.4byte 0x9B460000
	.4byte 0
	.4byte 0
	.4byte 0x00009685
	.4byte 0x00008DC8
	.4byte 0
	.4byte 0x8FA80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B470000
	.4byte 0x00008E6F
	.4byte 0x00008E6E
	.4byte 0
	.4byte 0
	.4byte 0x88B78CC6
	.4byte 0x000090A9
	.4byte 0x88CF0000
	.4byte 0
	.4byte 0x00009B4B
	.4byte 0x9B4C0000
	.4byte 0x9B490000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008957
	.4byte 0x8AAD0000
	.4byte 0x9B480000
	.4byte 0x96C39550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x88A60000
	.4byte 0
	.4byte 0x000088F7
	.4byte 0
	.4byte 0x00008E70
lbl_80186E10:
	.4byte 0x000088D0
	.4byte 0x000088A1
	.4byte 0
	.4byte 0
	.4byte 0x00009B51
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009B4F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96BA0000
	.4byte 0x9B520000
	.4byte 0x9B500000
	.4byte 0x00009B4E
	.4byte 0x90500000
	.4byte 0
	.4byte 0x00009B4D
	.4byte 0
	.4byte 0x000095D8
	.4byte 0
	.4byte 0
	.4byte 0x00008CE2
	.4byte 0
	.4byte 0
	.4byte 0x00009B56
	.4byte 0x9B570000
	.4byte 0
	.4byte 0
	.4byte 0x8FA90000
	.4byte 0
	.4byte 0x9B53984B
	.4byte 0
	.4byte 0
	.4byte 0x946B0000
	.4byte 0x00009B55
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8DA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B580000
	.4byte 0
	.4byte 0x95770000
	.4byte 0
	.4byte 0x9B590000
	.4byte 0x9B540000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000096B9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x947D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B5A9551
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B5B9B5F
	.4byte 0x9B5C0000
	.4byte 0x000089C5
	.4byte 0x9B5E0000
	.4byte 0
	.4byte 0
	.4byte 0x00008EB9
	.4byte 0x00009B5D
	.4byte 0x8C990000
	.4byte 0
	.4byte 0x9B6B0000
	.4byte 0
	.4byte 0
	.4byte 0x9B649B61
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009284
	.4byte 0x00009B60
	.4byte 0
	.4byte 0x9B620000
	.4byte 0x00009B63
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B659B66
	.4byte 0
	.4byte 0
lbl_80187010:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008AF0
	.4byte 0x00009B68
	.4byte 0x9B670000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B690000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8FEC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B6C0000
	.4byte 0x92DA0000
	.4byte 0
	.4byte 0x89640000
	.4byte 0x9B6A0000
	.4byte 0
	.4byte 0x9B6D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B6E0000
	.4byte 0x9B710000
	.4byte 0x00009B6F
	.4byte 0x00009B70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E719B72
	.4byte 0
	.4byte 0x8D459B73
	.4byte 0x00008E9A
	.4byte 0x91B60000
	.4byte 0x9B749B75
	.4byte 0x8E798D46
	.4byte 0x000096D0
	.4byte 0
	.4byte 0x00008B47
	.4byte 0x8CC79B76
	.4byte 0x8A770000
	.4byte 0x00009B77
	.4byte 0x000091B7
	.4byte 0
	.4byte 0
	.4byte 0x9B789BA1
	.4byte 0x00009B79
	.4byte 0x00009B7A
	.4byte 0
	.4byte 0x9B7B0000
	.4byte 0x9B7D0000
	.4byte 0
	.4byte 0
	.4byte 0x9B7E0000
	.4byte 0x00009B80
	.4byte 0x000091EE
	.4byte 0x00008946
	.4byte 0x8EE788C0
	.4byte 0x00009176
	.4byte 0x8AAE8EB3
	.4byte 0x00008D47
	.4byte 0
	.4byte 0
	.4byte 0x00009386
	.4byte 0x00008F40
	.4byte 0x8AAF9288
	.4byte 0x92E888B6
	.4byte 0x8B5895F3
	.4byte 0x00008EC0
	.4byte 0
	.4byte 0x8B7190E9
	.4byte 0x8EBA9747
	.4byte 0x9B810000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B7B0000
	.4byte 0x8DC90000
	.4byte 0x00008A51
	.4byte 0x89838FAA
	.4byte 0x89C60000
	.4byte 0x9B829765
	.4byte 0
	.4byte 0
	.4byte 0x00008F68
	.4byte 0
	.4byte 0x8EE29B83
	.4byte 0x8AF193D0
	.4byte 0x96A79B84
	.4byte 0x00009B85
	.4byte 0
	.4byte 0x95780000
	.4byte 0
	.4byte 0x9B870000
	.4byte 0x8AA68BF5
	.4byte 0x9B860000
	.4byte 0
	.4byte 0
	.4byte 0x00008AB0
	.4byte 0x00009051
	.4byte 0x9B8B8E40
	.4byte 0x000089C7
	.4byte 0x9B8A0000
	.4byte 0x9B889B8C
	.4byte 0x9B89944A
	.4byte 0x9ECB9052
	.4byte 0x00009B8D
	.4byte 0
	.4byte 0x97BE0000
	.4byte 0x9B8E0000
	.4byte 0x00009B90
	.4byte 0x0000929E
	.4byte 0x9B8F0000
	.4byte 0x90A10000
	.4byte 0x8E9B0000
	.4byte 0
	.4byte 0x91CE8EF5
lbl_80187210:
	.4byte 0x00009595
	.4byte 0x90EA0000
	.4byte 0x8ECB9B91
	.4byte 0x8FAB9B92
	.4byte 0x9B9388D1
	.4byte 0x91B89071
	.4byte 0x00009B94
	.4byte 0x93B18FAC
	.4byte 0x00008FAD
	.4byte 0x00009B95
	.4byte 0
	.4byte 0x90EB0000
	.4byte 0
	.4byte 0x8FAE0000
	.4byte 0
	.4byte 0
	.4byte 0x9B960000
	.4byte 0x9B970000
	.4byte 0x96DE0000
	.4byte 0
	.4byte 0x9B980000
	.4byte 0
	.4byte 0x00008BC4
	.4byte 0
	.4byte 0x00008F41
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B999B9A
	.4byte 0x8EDA904B
	.4byte 0x93F29073
	.4byte 0x94F69441
	.4byte 0x8BC79B9B
	.4byte 0
	.4byte 0x00008B8F
	.4byte 0x9B9C0000
	.4byte 0x8BFC0000
	.4byte 0x93CD89AE
	.4byte 0x00008E72
	.4byte 0x9B9D9BA0
	.4byte 0x9B9F8BFB
	.4byte 0x00009B9E
	.4byte 0x00009357
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91AE0000
	.4byte 0x936A8EC6
	.4byte 0
	.4byte 0x9177979A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BA20000
	.4byte 0x9BA393D4
	.4byte 0x00008E52
	.4byte 0
	.4byte 0
	.4byte 0x9BA50000
	.4byte 0x00009BA6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BA70000
	.4byte 0
	.4byte 0x8AF29BA8
	.4byte 0
	.4byte 0x9BA90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000089AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x915A8AE2
	.4byte 0x00009BAB
	.4byte 0x96A60000
	.4byte 0
	.4byte 0x000091D0
	.4byte 0x00008A78
	.4byte 0
	.4byte 0x9BAD9BAF
	.4byte 0x8ADD0000
	.4byte 0x00009BAC
	.4byte 0x9BAE0000
	.4byte 0x9BB10000
	.4byte 0
	.4byte 0
	.4byte 0x00009BB0
	.4byte 0x00009BB2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BB3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x93BB8BAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89E39BB4
	.4byte 0x9BB90000
	.4byte 0x00009BB7
	.4byte 0x000095F5
	.4byte 0x95F40000
	.4byte 0
	.4byte 0
	.4byte 0x93870000
	.4byte 0
	.4byte 0x9BB68F73
	.4byte 0x00009BB5
	.4byte 0
lbl_80187410:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009092
	.4byte 0
	.4byte 0x00009BBA
	.4byte 0
	.4byte 0x8DE80000
	.4byte 0x00009BC0
	.4byte 0
	.4byte 0x9BC19BBB
	.4byte 0x8A529BBC
	.4byte 0x9BC59BC4
	.4byte 0x9BC39BBF
	.4byte 0
	.4byte 0x00009BBE
	.4byte 0
	.4byte 0x9BC20000
	.4byte 0
	.4byte 0
	.4byte 0x000095F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BC9
	.4byte 0x9BC60000
	.4byte 0x9BC80000
	.4byte 0x97920000
	.4byte 0x9BC70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BBD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009093
	.4byte 0
	.4byte 0x9BCA0000
	.4byte 0x00008DB5
	.4byte 0
	.4byte 0x00009BCB
	.4byte 0
	.4byte 0x9BCC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BCF0000
	.4byte 0x9BCE0000
	.4byte 0x00009BCD
	.4byte 0
	.4byte 0x00009388
	.4byte 0x9BB80000
	.4byte 0
	.4byte 0x9BD50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BD1
	.4byte 0
	.4byte 0
	.4byte 0x9BD00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BD20000
	.4byte 0x9BD30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BD6
	.4byte 0
	.4byte 0x97E40000
	.4byte 0x9BD79BD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BD8
	.4byte 0
	.4byte 0x8ADE9BD9
	.4byte 0
	.4byte 0
	.4byte 0x9BDB9BDA
	.4byte 0
	.4byte 0x9BDC0000
	.4byte 0
	.4byte 0x00009BDD
	.4byte 0x000090EC
	.4byte 0x8F420000
	.4byte 0x00008F84
	.4byte 0x00009183
	.4byte 0x00008D48
	.4byte 0x8DB68D49
	.4byte 0x8B900000
	.4byte 0x00009BDE
	.4byte 0
	.4byte 0x8DB70000
	.4byte 0x00008CC8
	.4byte 0x9BDF96A4
	.4byte 0x94629BE0
	.4byte 0x00008D4A
	.4byte 0
	.4byte 0x00008AAA
	.4byte 0x00009246
	.4byte 0x8BD00000
lbl_80187610:
	.4byte 0
	.4byte 0x8E73957A
	.4byte 0
	.4byte 0x94BF0000
	.4byte 0
	.4byte 0x00009BE1
	.4byte 0x8AF30000
	.4byte 0
	.4byte 0x00009BE4
	.4byte 0
	.4byte 0
	.4byte 0x929F0000
	.4byte 0x00009BE3
	.4byte 0x9BE29BE5
	.4byte 0x000092E9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009083
	.4byte 0
	.4byte 0
	.4byte 0x00008E74
	.4byte 0x000090C8
	.4byte 0x000091D1
	.4byte 0x8B410000
	.4byte 0x000092A0
	.4byte 0
	.4byte 0x9BE69BE7
	.4byte 0x8FED0000
	.4byte 0
	.4byte 0x00009658
	.4byte 0
	.4byte 0x9BEA0000
	.4byte 0x00009BE9
	.4byte 0x9BE8959D
	.4byte 0x00009BF1
	.4byte 0
	.4byte 0
	.4byte 0x96790000
	.4byte 0x9BEB0000
	.4byte 0
	.4byte 0
	.4byte 0x9BED968B
	.4byte 0x00009BEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BEE
	.4byte 0x000094A6
	.4byte 0x9BEF95BC
	.4byte 0x9BF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AB195BD
	.4byte 0x944E9BF2
	.4byte 0x9BF30000
	.4byte 0x8D4B8AB2
	.4byte 0x9BF48CB6
	.4byte 0x97639748
	.4byte 0x8AF49BF6
	.4byte 0x000092A1
	.4byte 0x00008D4C
	.4byte 0x8FAF0000
	.4byte 0x000094DD
	.4byte 0
	.4byte 0x8FB00000
	.4byte 0
	.4byte 0x00008F98
	.4byte 0
	.4byte 0
	.4byte 0x000092EA
	.4byte 0x95F79358
	.4byte 0
	.4byte 0x8D4D0000
	.4byte 0x957B0000
	.4byte 0
	.4byte 0x9BF70000
	.4byte 0
	.4byte 0
	.4byte 0x93788DC0
	.4byte 0
	.4byte 0x00008CC9
	.4byte 0x000092EB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088C1
	.4byte 0x8F8E8D4E
	.4byte 0x97660000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BF8
	.4byte 0x9BF99470
	.4byte 0
	.4byte 0
	.4byte 0x9BFA97F5
	.4byte 0x984C0000
	.4byte 0
	.4byte 0x00009BFC
	.4byte 0x9BFB0000
	.4byte 0x00008A66
	.4byte 0
	.4byte 0x9C400000
	.4byte 0
	.4byte 0x9C439C44
	.4byte 0x00009C42
	.4byte 0x0000955F
	.4byte 0x8FB19C46
	.4byte 0x9C459C41
	.4byte 0
	.4byte 0
	.4byte 0x9C479C48
	.4byte 0
	.4byte 0x9C490000
	.4byte 0
	.4byte 0x9C4C9C4A
	.4byte 0x00009C4B
	.4byte 0x9C4D0000
	.4byte 0x898492EC
	.4byte 0x9C4E0000
	.4byte 0x8C9A89F4
	.4byte 0x94550000
	.4byte 0x9C4F93F9
lbl_80187810:
	.4byte 0x000095D9
	.4byte 0x00009C50
	.4byte 0x984D0000
	.4byte 0
	.4byte 0x00009C51
	.4byte 0x95BE9C54
	.4byte 0x989F98AF
	.4byte 0x00008EAE
	.4byte 0x93F39C55
	.4byte 0x00008B7C
	.4byte 0x92A288F8
	.4byte 0x9C5695A4
	.4byte 0x8D4F0000
	.4byte 0x0000926F
	.4byte 0
	.4byte 0x000092ED
	.4byte 0
	.4byte 0
	.4byte 0x000096ED
	.4byte 0x8CB78CCA
	.4byte 0x00009C57
	.4byte 0
	.4byte 0x00009C58
	.4byte 0x00009C5E
	.4byte 0x00008EE3
	.4byte 0
	.4byte 0x000092A3
	.4byte 0x00008BAD
	.4byte 0x9C590000
	.4byte 0
	.4byte 0x954A0000
	.4byte 0x92650000
	.4byte 0x00009C5A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C5B0000
	.4byte 0x8BAE0000
	.4byte 0x9C5C0000
	.4byte 0x9C5D0000
	.4byte 0x00009C5F
	.4byte 0x00009396
	.4byte 0
	.4byte 0x9C609C61
	.4byte 0x00009C62
	.4byte 0
	.4byte 0x9C539C52
	.4byte 0
	.4byte 0x00009C63
	.4byte 0x8C600000
	.4byte 0
	.4byte 0x95460000
	.4byte 0x00008DCA
	.4byte 0x955692A4
	.4byte 0x956A9C64
	.4byte 0
	.4byte 0x8FB28965
	.4byte 0x00009C65
	.4byte 0
	.4byte 0x00009C66
	.4byte 0x000096F0
	.4byte 0
	.4byte 0x94DE0000
	.4byte 0x00009C69
	.4byte 0x899D90AA
	.4byte 0x9C689C67
	.4byte 0x8C6191D2
	.4byte 0x00009C6D
	.4byte 0x9C6B0000
	.4byte 0x9C6A97A5
	.4byte 0x8CE30000
	.4byte 0
	.4byte 0x8F999C6C
	.4byte 0x936B8F5D
	.4byte 0
	.4byte 0x000093BE
	.4byte 0x9C709C6F
	.4byte 0
	.4byte 0
	.4byte 0x9C6E0000
	.4byte 0x9C718CE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C72959C
	.4byte 0x8F7A0000
	.4byte 0x00009C73
	.4byte 0x94F70000
	.4byte 0
	.4byte 0x000093BF
	.4byte 0x92A50000
	.4byte 0
	.4byte 0x0000934F
	.4byte 0
	.4byte 0x9C748B4A
	.4byte 0
	.4byte 0
	.4byte 0x00009053
	.4byte 0x0000954B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AF59445
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C758E75
	.4byte 0x9659965A
	.4byte 0
	.4byte 0x899E9C7A
	.4byte 0
	.4byte 0x92890000
	.4byte 0
	.4byte 0x9C770000
	.4byte 0
	.4byte 0
	.4byte 0x000089F5
	.4byte 0
	.4byte 0
	.4byte 0x9CAB9C79
	.4byte 0
	.4byte 0x0000944F
	.4byte 0
	.4byte 0x9C780000
	.4byte 0x00009C76
	.4byte 0x00008D9A
	.4byte 0x00009C7C
lbl_80187A10:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C839C89
	.4byte 0x9C810000
	.4byte 0x937B0000
	.4byte 0x00009C86
	.4byte 0x957C0000
	.4byte 0x00009C80
	.4byte 0x00009C85
	.4byte 0x97E58E76
	.4byte 0
	.4byte 0x91D39C7D
	.4byte 0
	.4byte 0x00008B7D
	.4byte 0x9C8890AB
	.4byte 0x89859C82
	.4byte 0x89F69C87
	.4byte 0
	.4byte 0x00008BAF
	.4byte 0x00009C84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C8A0000
	.4byte 0
	.4byte 0
	.4byte 0x00009C8C
	.4byte 0x9C969C94
	.4byte 0
	.4byte 0x9C910000
	.4byte 0
	.4byte 0x9C9097F6
	.4byte 0x00009C92
	.4byte 0
	.4byte 0x8BB00000
	.4byte 0x8D500000
	.4byte 0x00008F9A
	.4byte 0
	.4byte 0x00009C99
	.4byte 0x9C8B0000
	.4byte 0
	.4byte 0x00009C8F
	.4byte 0x9C7E0000
	.4byte 0x89F89C93
	.4byte 0x9C959270
	.4byte 0
	.4byte 0x8DA689B6
	.4byte 0x9C8D9C98
	.4byte 0x9C978BB1
	.4byte 0x000091A7
	.4byte 0x8A860000
	.4byte 0
	.4byte 0x00008C62
	.4byte 0x00009C8E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009C9A
	.4byte 0x00009C9D
	.4byte 0x9C9F0000
	.4byte 0
	.4byte 0x00008EBB
	.4byte 0x00009CA5
	.4byte 0x92EE9C9B
	.4byte 0
	.4byte 0
	.4byte 0x9CA30000
	.4byte 0x89F70000
	.4byte 0x9CA19CA2
	.4byte 0
	.4byte 0x9C9E9CA0
	.4byte 0
	.4byte 0x00008CE5
	.4byte 0x97490000
	.4byte 0x00008AB3
	.4byte 0
	.4byte 0x89789CA4
	.4byte 0x00009459
	.4byte 0x88AB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94DF9C7B
	.4byte 0x9CAA9CAE
	.4byte 0x96E30000
	.4byte 0x9CA70000
	.4byte 0
	.4byte 0x93899CAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008FEE
	.4byte 0x9CAD93D5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009866
	.4byte 0x00009CA9
	.4byte 0
	.4byte 0
	.4byte 0x9CAF0000
	.4byte 0x8D9B0000
	.4byte 0x90C90000
	.4byte 0x000088D2
	.4byte 0x9CA89CA6
	.4byte 0x00009179
	.4byte 0
	.4byte 0x00009C9C
	.4byte 0x8E530000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91C49CBB
	.4byte 0x0000917A
	.4byte 0x9CB60000
	.4byte 0x9CB39CB4
	.4byte 0x00008EE4
	.4byte 0x9CB79CBA
	.4byte 0
	.4byte 0
lbl_80187C10:
	.4byte 0x9CB58F44
	.4byte 0x00009CB8
	.4byte 0
	.4byte 0x9CB20000
	.4byte 0x96FA96F9
	.4byte 0
	.4byte 0x00009CBC
	.4byte 0x9CBD88D3
	.4byte 0
	.4byte 0
	.4byte 0x00009CB1
	.4byte 0
	.4byte 0
	.4byte 0x8BF088A4
	.4byte 0
	.4byte 0x00008AB4
	.4byte 0x00009CB9
	.4byte 0
	.4byte 0
	.4byte 0x00009CC1
	.4byte 0x9CC00000
	.4byte 0
	.4byte 0x9CC50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9CC60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9CC49CC7
	.4byte 0x9CBF9CC3
	.4byte 0
	.4byte 0x9CC80000
	.4byte 0x9CC90000
	.4byte 0x00009CBE
	.4byte 0x8E9C0000
	.4byte 0x9CC291D4
	.4byte 0x8D519CB0
	.4byte 0x90540000
	.4byte 0
	.4byte 0x00009CD6
	.4byte 0x000095E7
	.4byte 0
	.4byte 0x9CCC9CCD
	.4byte 0x9CCE0000
	.4byte 0x00009CD5
	.4byte 0x00009CD4
	.4byte 0
	.4byte 0x969D8AB5
	.4byte 0x00009CD2
	.4byte 0x00008C64
	.4byte 0x8A530000
	.4byte 0x00009CCF
	.4byte 0
	.4byte 0x97B69CD1
	.4byte 0x88D49CD3
	.4byte 0x00009CCA
	.4byte 0x9CD09CD7
	.4byte 0x8C639CCB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x977C0000
	.4byte 0
	.4byte 0x974A0000
	.4byte 0
	.4byte 0x00009CDA
	.4byte 0
	.4byte 0x9CDE0000
	.4byte 0
	.4byte 0x919E0000
	.4byte 0x97F79CDF
	.4byte 0
	.4byte 0x9CDC0000
	.4byte 0x9CD90000
	.4byte 0x00009CD8
	.4byte 0x9CDD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x95AE0000
	.4byte 0x000093B2
	.4byte 0x00008C65
	.4byte 0x00009CE0
	.4byte 0x9CDB0000
	.4byte 0x9CE10000
	.4byte 0
	.4byte 0x8C9B0000
	.4byte 0
	.4byte 0x89AF0000
	.4byte 0
	.4byte 0x9CE90000
	.4byte 0
	.4byte 0x8AB60000
	.4byte 0
	.4byte 0x00009CE7
	.4byte 0
	.4byte 0x9CE88DA7
	.4byte 0x9CE69CE4
	.4byte 0x9CE39CEA
	.4byte 0x9CE29CEC
	.4byte 0
	.4byte 0x89F90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009CEE
	.4byte 0
	.4byte 0x9CED0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x92A60000
	.4byte 0x9CF10000
	.4byte 0x9CEF9CE5
	.4byte 0x8C9C0000
	.4byte 0x9CF00000
	.4byte 0x9CF49CF3
	.4byte 0x9CF59CF2
lbl_80187E10:
	.4byte 0x9CF60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9CF79CF8
	.4byte 0x95E80000
	.4byte 0x9CFA9CF9
	.4byte 0x8F5E0000
	.4byte 0x90AC89E4
	.4byte 0x89FA0000
	.4byte 0x9CFB0000
	.4byte 0x88BD0000
	.4byte 0
	.4byte 0x90CA9CFC
	.4byte 0x0000E6C1
	.4byte 0x9D408C81
	.4byte 0x00009D41
	.4byte 0
	.4byte 0
	.4byte 0x90ED0000
	.4byte 0
	.4byte 0x9D420000
	.4byte 0
	.4byte 0x9D438B59
	.4byte 0x9D440000
	.4byte 0x9D459D46
	.4byte 0x91D50000
	.4byte 0
	.4byte 0x8CCB0000
	.4byte 0x000096DF
	.4byte 0
	.4byte 0x0000965B
	.4byte 0x8F8A9D47
	.4byte 0
	.4byte 0
	.4byte 0x000090EE
	.4byte 0xE7BB94E0
	.4byte 0x00008EE8
	.4byte 0x00008DCB
	.4byte 0x9D480000
	.4byte 0
	.4byte 0x000091C5
	.4byte 0x000095A5
	.4byte 0
	.4byte 0x91EF0000
	.4byte 0x00009D4B
	.4byte 0
	.4byte 0x9D490000
	.4byte 0x9D4C0000
	.4byte 0x00009D4A
	.4byte 0
	.4byte 0
	.4byte 0x9D4D0000
	.4byte 0
	.4byte 0
	.4byte 0x95AF0000
	.4byte 0x000088B5
	.4byte 0
	.4byte 0
	.4byte 0x957D0000
	.4byte 0x000094E1
	.4byte 0
	.4byte 0x9D4E0000
	.4byte 0x9D518FB3
	.4byte 0x8B5A0000
	.4byte 0x9D4F9D56
	.4byte 0x8FB40000
	.4byte 0
	.4byte 0x00009D50
	.4byte 0x94630000
	.4byte 0
	.4byte 0
	.4byte 0x0000977D
	.4byte 0x9D529D53
	.4byte 0x9D57938A
	.4byte 0x9D548D52
	.4byte 0x90DC0000
	.4byte 0x00009D65
	.4byte 0x94B20000
	.4byte 0x91F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000094E2
	.4byte 0x9DAB0000
	.4byte 0
	.4byte 0x000095F8
	.4byte 0
	.4byte 0x000092EF
	.4byte 0
	.4byte 0x00009695
	.4byte 0x00009D5A
	.4byte 0x899F928A
	.4byte 0
	.4byte 0
	.4byte 0x9D630000
	.4byte 0x00009253
	.4byte 0x9D5D9D64
	.4byte 0x9D5F9D66
	.4byte 0x9D620000
	.4byte 0x9D61948F
	.4byte 0x00009D5B
	.4byte 0x89FB9D59
	.4byte 0x8B9191F1
	.4byte 0x9D550000
	.4byte 0x00009D58
	.4byte 0x8D5390D9
	.4byte 0x00008FB5
	.4byte 0x9D609471
	.4byte 0
	.4byte 0x8B928A67
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8A879040
	.4byte 0x9D689D6D
	.4byte 0x00009D69
	.4byte 0x00008C9D
	.4byte 0x00009D6E
	.4byte 0x8E418D89
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F459D5C
lbl_80188010:
	.4byte 0x00008E9D
	.4byte 0x9D6B0000
	.4byte 0
	.4byte 0x00008E77
	.4byte 0x9D6C88C2
	.4byte 0
	.4byte 0x9D670000
	.4byte 0
	.4byte 0x000092A7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008B93
	.4byte 0
	.4byte 0
	.4byte 0x00008BB2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009D6A
	.4byte 0x88A50000
	.4byte 0x00008DC1
	.4byte 0
	.4byte 0x00009055
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x92F00000
	.4byte 0x000094D2
	.4byte 0x9D70917D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091A8
	.4byte 0
	.4byte 0x8E4A9D71
	.4byte 0x00009D73
	.4byte 0x9D6F0000
	.4byte 0
	.4byte 0x000095DF
	.4byte 0x000092BB
	.4byte 0
	.4byte 0
	.4byte 0x917B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095F9
	.4byte 0x8ECC9D80
	.4byte 0x00009D7E
	.4byte 0
	.4byte 0x90980000
	.4byte 0
	.4byte 0x8C9E0000
	.4byte 0
	.4byte 0x9D788FB7
	.4byte 0
	.4byte 0x93E69450
	.4byte 0
	.4byte 0
	.4byte 0x9D760000
	.4byte 0x0000917C
	.4byte 0
	.4byte 0
	.4byte 0x8EF69D7B
	.4byte 0
	.4byte 0x8FB60000
	.4byte 0x9D759D7A
	.4byte 0
	.4byte 0x94720000
	.4byte 0
	.4byte 0x9D740000
	.4byte 0x8C400000
	.4byte 0x00008A7C
	.4byte 0
	.4byte 0x00009D7C
	.4byte 0x97A98DCC
	.4byte 0x92549D79
	.4byte 0x000090DA
	.4byte 0x00008D54
	.4byte 0x90848986
	.4byte 0x915B9D77
	.4byte 0x8B640000
	.4byte 0
	.4byte 0
	.4byte 0x8C660000
	.4byte 0x92CD9D7D
	.4byte 0
	.4byte 0
	.4byte 0x0000917E
	.4byte 0
	.4byte 0x9D810000
	.4byte 0x9D830000
	.4byte 0x000091B5
	.4byte 0x9D890000
	.4byte 0x9D840000
	.4byte 0x00009D86
	.4byte 0
	.4byte 0
	.4byte 0x00009560
	.4byte 0x92F10000
	.4byte 0x9D870000
	.4byte 0
	.4byte 0x974B0000
	.4byte 0
	.4byte 0x97678AB7
	.4byte 0
	.4byte 0
	.4byte 0x000088AC
	.4byte 0x00009D85
	.4byte 0
	.4byte 0
	.4byte 0x00009D82
	.4byte 0
	.4byte 0
	.4byte 0x8AF60000
	.4byte 0
	.4byte 0
	.4byte 0x89870000
	.4byte 0x9D880000
	.4byte 0
	.4byte 0x97680000
	.4byte 0
	.4byte 0
lbl_80188210:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D8C0000
	.4byte 0
	.4byte 0
	.4byte 0x000091B9
	.4byte 0x00009D93
	.4byte 0
	.4byte 0x00009D8D
	.4byte 0
	.4byte 0x9D8A9D91
	.4byte 0
	.4byte 0
	.4byte 0x9D720000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D8E0000
	.4byte 0x9D920000
	.4byte 0
	.4byte 0x94C0938B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D8B0000
	.4byte 0x9D8F0000
	.4byte 0
	.4byte 0x8C670000
	.4byte 0
	.4byte 0x8DEF0000
	.4byte 0
	.4byte 0x90DB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D970000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x93450000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009D94
	.4byte 0x00009680
	.4byte 0
	.4byte 0
	.4byte 0x00009D95
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D960000
	.4byte 0x96CC0000
	.4byte 0x90A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C82
	.4byte 0
	.4byte 0
	.4byte 0x9D9D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E549D9A
	.4byte 0x00009D99
	.4byte 0
	.4byte 0
	.4byte 0x94510000
	.4byte 0
	.4byte 0x93B30000
	.4byte 0
	.4byte 0
	.4byte 0x93509D9B
	.4byte 0
	.4byte 0x00009D9C
	.4byte 0x0000958F
	.4byte 0x00009464
	.4byte 0x8E420000
	.4byte 0x90EF0000
	.4byte 0x966F0000
	.4byte 0
	.4byte 0
	.4byte 0x00008A68
	.4byte 0x00009DA3
	.4byte 0x9D9E0000
	.4byte 0
	.4byte 0x00009769
	.4byte 0x9DA50000
	.4byte 0x00009DA1
	.4byte 0x00009DA2
	.4byte 0
	.4byte 0
	.4byte 0x00009180
	.4byte 0
	.4byte 0
	.4byte 0x9DA00000
	.4byte 0x9D5E0000
	.4byte 0
	.4byte 0x9DA40000
	.4byte 0x9D9F0000
	.4byte 0
	.4byte 0
	.4byte 0x9DA99DAA
	.4byte 0x93469DAC
	.4byte 0
	.4byte 0x8E439DA7
	.4byte 0
	.4byte 0
	.4byte 0x8B5B0000
	.4byte 0x00009DAD
	.4byte 0x00009DA6
	.4byte 0x9DB10000
	.4byte 0x9DB00000
	.4byte 0x9DAF0000
	.4byte 0
	.4byte 0x9DB20000
	.4byte 0x00009DB4
	.4byte 0x8FEF0000
lbl_80188410:
	.4byte 0x9DB30000
	.4byte 0
	.4byte 0x00009DB7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9DB50000
	.4byte 0
	.4byte 0x9DB69D90
	.4byte 0
	.4byte 0
	.4byte 0x00009DB9
	.4byte 0x9DB80000
	.4byte 0
	.4byte 0
	.4byte 0x9D989DBA
	.4byte 0x9DAE0000
	.4byte 0x00008E78
	.4byte 0
	.4byte 0
	.4byte 0x9DBB9DBC
	.4byte 0x9DBE9DBD
	.4byte 0x9DBF89FC
	.4byte 0x00008D55
	.4byte 0
	.4byte 0x95FA90AD
	.4byte 0
	.4byte 0
	.4byte 0x00008CCC
	.4byte 0
	.4byte 0x9DC10000
	.4byte 0
	.4byte 0x00009DC4
	.4byte 0x00009571
	.4byte 0x00008B7E
	.4byte 0
	.4byte 0x00009DC3
	.4byte 0x9DC29473
	.4byte 0x9DC58BB3
	.4byte 0
	.4byte 0x00009DC7
	.4byte 0x9DC60000
	.4byte 0
	.4byte 0x8AB88E55
	.4byte 0
	.4byte 0x93D60000
	.4byte 0
	.4byte 0
	.4byte 0x8C680000
	.4byte 0
	.4byte 0x90940000
	.4byte 0x9DC80000
	.4byte 0x90AE9347
	.4byte 0x0000957E
	.4byte 0x9DC90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9DCA9DCB
	.4byte 0
	.4byte 0x000095B6
	.4byte 0x9B7C90C4
	.4byte 0
	.4byte 0x956B0000
	.4byte 0x8DD60000
	.4byte 0x94E394C1
	.4byte 0
	.4byte 0
	.4byte 0x0000936C
	.4byte 0x000097BF
	.4byte 0x00009DCD
	.4byte 0x8ECE0000
	.4byte 0x00009DCE
	.4byte 0x000088B4
	.4byte 0
	.4byte 0x8BD290CB
	.4byte 0x00009580
	.4byte 0
	.4byte 0x00009DCF
	.4byte 0x8E619266
	.4byte 0x00008E7A
	.4byte 0x90560000
	.4byte 0
	.4byte 0
	.4byte 0x00009DD0
	.4byte 0x000095FB
	.4byte 0
	.4byte 0x89978E7B
	.4byte 0
	.4byte 0x00009DD3
	.4byte 0x00009DD1
	.4byte 0x9DD497B7
	.4byte 0x9DD20000
	.4byte 0
	.4byte 0x000090F9
	.4byte 0x9DD50000
	.4byte 0x000091B0
	.4byte 0
	.4byte 0x9DD60000
	.4byte 0
	.4byte 0x00008AF8
	.4byte 0x00009DD8
	.4byte 0x00009DD7
	.4byte 0
	.4byte 0
	.4byte 0x9DD99DDA
	.4byte 0x8AF90000
	.4byte 0x000093FA
	.4byte 0x92558B8C
	.4byte 0x8E7C9181
	.4byte 0
	.4byte 0x8F7B88AE
	.4byte 0
	.4byte 0x00009DDB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89A09DDF
	.4byte 0
	.4byte 0
lbl_80188610:
	.4byte 0
	.4byte 0x8D569DDE
	.4byte 0
	.4byte 0x8DA98FB8
	.4byte 0
	.4byte 0x9DDD0000
	.4byte 0x8FB90000
	.4byte 0x96BE8DA8
	.4byte 0
	.4byte 0x000088D5
	.4byte 0x90CC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9DE40000
	.4byte 0x000090AF
	.4byte 0x89660000
	.4byte 0
	.4byte 0x00008F74
	.4byte 0x00009686
	.4byte 0x8DF00000
	.4byte 0
	.4byte 0x00008FBA
	.4byte 0x000090A5
	.4byte 0
	.4byte 0
	.4byte 0x9DE39DE1
	.4byte 0x9DE20000
	.4byte 0
	.4byte 0
	.4byte 0x928B0000
	.4byte 0x00009E45
	.4byte 0x00009DE8
	.4byte 0x8E9E8D57
	.4byte 0x9DE60000
	.4byte 0
	.4byte 0x00009DE7
	.4byte 0x00009057
	.4byte 0
	.4byte 0x00009DE5
	.4byte 0
	.4byte 0x8E4E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009DEA
	.4byte 0x9DE99DEE
	.4byte 0
	.4byte 0x9DEF0000
	.4byte 0x9DEB0000
	.4byte 0x8A419DEC
	.4byte 0x9DED94D3
	.4byte 0
	.4byte 0
	.4byte 0x95818C69
	.4byte 0x9DF00000
	.4byte 0
	.4byte 0x90B00000
	.4byte 0x8FBB0000
	.4byte 0
	.4byte 0x92710000
	.4byte 0
	.4byte 0
	.4byte 0x00008BC5
	.4byte 0x00009DF1
	.4byte 0x9DF50000
	.4byte 0x000089C9
	.4byte 0x9DF29DF4
	.4byte 0
	.4byte 0
	.4byte 0x9DF30000
	.4byte 0x00008F8B
	.4byte 0
	.4byte 0
	.4byte 0x926788C3
	.4byte 0x9DF60000
	.4byte 0
	.4byte 0x00009DF7
	.4byte 0
	.4byte 0
	.4byte 0x92A80000
	.4byte 0
	.4byte 0x97EF0000
	.4byte 0
	.4byte 0x00008E62
	.4byte 0
	.4byte 0x95E90000
	.4byte 0
	.4byte 0
	.4byte 0x965C0000
	.4byte 0
	.4byte 0x9E419DF9
	.4byte 0
	.4byte 0x9DFC0000
	.4byte 0x9DFB0000
	.4byte 0x00009DF8
	.4byte 0
	.4byte 0x9E400000
	.4byte 0x000093DC
	.4byte 0x00009DFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E420000
	.4byte 0x00008F8C
	.4byte 0x9E430000
	.4byte 0x976A9498
	.4byte 0
	.4byte 0x9E440000
	.4byte 0
	.4byte 0
	.4byte 0x9E460000
	.4byte 0x00009E47
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E480000
	.4byte 0x8BC88967
	.4byte 0x8D589E49
	.4byte 0x00009E4A
	.4byte 0x8F919182
	.4byte 0
	.4byte 0x99D6915D
	.4byte 0x915C91D6
lbl_80188810:
	.4byte 0x8DC50000
	.4byte 0x000098F0
	.4byte 0
	.4byte 0
	.4byte 0x8C8E974C
	.4byte 0x000095FC
	.4byte 0x0000959E
	.4byte 0x00009E4B
	.4byte 0
	.4byte 0
	.4byte 0x8DF192BD
	.4byte 0x9E4C984E
	.4byte 0
	.4byte 0x0000965D
	.4byte 0x000092A9
	.4byte 0x9E4D8AFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E4E9E4F
	.4byte 0x96D80000
	.4byte 0x96A29696
	.4byte 0x967B8E44
	.4byte 0x9E510000
	.4byte 0x00008EE9
	.4byte 0
	.4byte 0x96700000
	.4byte 0x9E539E56
	.4byte 0x9E550000
	.4byte 0x8AF70000
	.4byte 0x00008B80
	.4byte 0x00009E52
	.4byte 0x00009E54
	.4byte 0
	.4byte 0
	.4byte 0x9E570000
	.4byte 0x00009099
	.4byte 0
	.4byte 0
	.4byte 0x979B88C7
	.4byte 0x8DDE91BA
	.4byte 0x00008EDB
	.4byte 0
	.4byte 0x8FF10000
	.4byte 0x00009E5A
	.4byte 0
	.4byte 0x936D0000
	.4byte 0x9E5891A9
	.4byte 0x9E598FF0
	.4byte 0x96DB9E5B
	.4byte 0x9E5C9788
	.4byte 0
	.4byte 0
	.4byte 0x9E610000
	.4byte 0x00008D59
	.4byte 0x00009474
	.4byte 0x9E5E938C

glabel lbl_801888F4
	# ROM: 0x1849F4
	.4byte 0x9DDC9DE0
	.4byte 0x00008B6E
	.4byte 0x00009466
	.4byte 0
	.4byte 0
	.4byte 0x9E600000
	.4byte 0x8FBC94C2
	.4byte 0
	.4byte 0
	.4byte 0x00009E66
	.4byte 0x000094F8
	.4byte 0x00009E5D
	.4byte 0x00009E63
	.4byte 0x9E620000
	.4byte 0
	.4byte 0x90CD0000
	.4byte 0
	.4byte 0x0000968D
	.4byte 0x000097D1
	.4byte 0
	.4byte 0x96870000
	.4byte 0x89CA8E7D
	.4byte 0
	.4byte 0x98679E65
	.4byte 0x90950000
	.4byte 0
	.4byte 0x9E640000
	.4byte 0x00009E5F
	.4byte 0
	.4byte 0
	.4byte 0x00008CCD
	.4byte 0
	.4byte 0x00009E6B
	.4byte 0x9E690000
	.4byte 0x89CB9E67
	.4byte 0x9E6D9E73
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091C6
	.4byte 0
	.4byte 0x95BF0000
	.4byte 0x9E750000
	.4byte 0
	.4byte 0x95410000
	.4byte 0
	.4byte 0x9E749490
	.4byte 0x965E8AB9
	.4byte 0x000090F5
	.4byte 0x8F5F0000
	.4byte 0
	.4byte 0x92D10000
	.4byte 0x974D0000
	.4byte 0x00009E70
	.4byte 0x9E6F0000
	.4byte 0
	.4byte 0x9E710000
	.4byte 0x9E6E0000
	.4byte 0x00009E76
	.4byte 0x00009E6C
	.4byte 0
	.4byte 0x9E6A0000
	.4byte 0x9E729E68
	.4byte 0x0000928C
	.4byte 0x000096F6
	.4byte 0x8EC48DF2
	.4byte 0
	.4byte 0
	.4byte 0x00008DB8
	.4byte 0
	.4byte 0x968F8A60
lbl_80188A10:
	.4byte 0
	.4byte 0x92CC93C8
	.4byte 0x89680000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000090F0
	.4byte 0
	.4byte 0x90B28C49
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E780000
	.4byte 0x00008D5A
	.4byte 0x8A9C0000
	.4byte 0
	.4byte 0
	.4byte 0x00009E7A
	.4byte 0x8A949E81
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E7D0000
	.4byte 0x90F10000
	.4byte 0
	.4byte 0x8A6A8DAA
	.4byte 0
	.4byte 0x8A698DCD
	.4byte 0
	.4byte 0x9E7B8C85
	.4byte 0x8C6A938D
	.4byte 0
	.4byte 0x9E790000
	.4byte 0x88C40000
	.4byte 0
	.4byte 0x00009E7C
	.4byte 0x9E7E0000
	.4byte 0x8BCB8C4B
	.4byte 0x00008ABA
	.4byte 0x8B6A0000
	.4byte 0
	.4byte 0x00009E82
	.4byte 0
	.4byte 0x8DF79691
	.4byte 0x00008E56
	.4byte 0
	.4byte 0x00009E83
	.4byte 0
	.4byte 0x0000954F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E8F0000
	.4byte 0x89B19E84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E959E85
	.4byte 0x000097C0
	.4byte 0x00009E8C
	.4byte 0x0000947E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009E94
	.4byte 0x00009E87
	.4byte 0
	.4byte 0x000088B2
	.4byte 0x9E890000
	.4byte 0x00008D5B
	.4byte 0
	.4byte 0x00009E8B
	.4byte 0x00009E8A
	.4byte 0x00009E86
	.4byte 0x9E910000
	.4byte 0x8FBD0000
	.4byte 0
	.4byte 0x9AEB8CE6
	.4byte 0x979C0000
	.4byte 0
	.4byte 0x00009E88
	.4byte 0x000092F2
	.4byte 0x8A428DAB
	.4byte 0x00009E80
	.4byte 0x00009E90
	.4byte 0x8A810000
	.4byte 0x00009E8E
	.4byte 0x9E920000
	.4byte 0x938E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AFC0000
	.4byte 0x9EB00000
	.4byte 0x000096C7
	.4byte 0x9E978AFB
	.4byte 0x00009E9E
	.4byte 0
	.4byte 0
	.4byte 0x965F0000
	.4byte 0x9E9F9EA1
	.4byte 0x00009EA5
	.4byte 0x9E990000
	.4byte 0x92490000
	.4byte 0
	.4byte 0x0000938F
	.4byte 0x9EA99E9C
	.4byte 0x00009EA6
	.4byte 0
	.4byte 0x00009EA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90589EAA
	.4byte 0
	.4byte 0x90B10000
	.4byte 0
	.4byte 0
	.4byte 0x00009EA8
	.4byte 0x8ABB0000
	.4byte 0
	.4byte 0
lbl_80188C10:
	.4byte 0x986F9E96
	.4byte 0
	.4byte 0x9EA488D6
	.4byte 0
	.4byte 0x9E980000
	.4byte 0x000096B8
	.4byte 0x9E9D9041
	.4byte 0x92C59E93
	.4byte 0
	.4byte 0x9EA30000
	.4byte 0
	.4byte 0
	.4byte 0x0000909A
	.4byte 0x9EAD8A91
	.4byte 0x8C9F0000
	.4byte 0
	.4byte 0x00009EAF
	.4byte 0x9E9A9EAE
	.4byte 0x00009EA7
	.4byte 0x9E9B0000
	.4byte 0x9EAB0000
	.4byte 0x9EAC0000
	.4byte 0
	.4byte 0
	.4byte 0x9EBD0000
	.4byte 0
	.4byte 0x93CC0000
	.4byte 0x9EA20000
	.4byte 0x00009EB9
	.4byte 0
	.4byte 0x00009EBB
	.4byte 0x000092D6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x976B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009596
	.4byte 0x9EB691C8
	.4byte 0
	.4byte 0x00009EBC
	.4byte 0x915E0000
	.4byte 0x9EB39EC0
	.4byte 0x9EBF0000
	.4byte 0x93ED9EBE
	.4byte 0x93E80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9EC29EB5
	.4byte 0x00008BC6
	.4byte 0x9EB88F7C
	.4byte 0
	.4byte 0x00009480
	.4byte 0x9EBA8BC9
	.4byte 0x00009EB2
	.4byte 0x9EB49EB1
	.4byte 0
	.4byte 0x984F8A79
	.4byte 0x9EB70000
	.4byte 0x00009EC1
	.4byte 0x8A540000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8DE50000
	.4byte 0
	.4byte 0x897C0000
	.4byte 0x00009ED2
	.4byte 0
	.4byte 0x98509ED5
	.4byte 0
	.4byte 0
	.4byte 0x00009059
	.4byte 0x9ED40000
	.4byte 0
	.4byte 0x9ED30000
	.4byte 0
	.4byte 0
	.4byte 0x00009ED0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9EC40000
	.4byte 0x00009EE1
	.4byte 0x9EC30000
	.4byte 0x9ED60000
	.4byte 0
	.4byte 0
	.4byte 0x00009ECE
	.4byte 0
	.4byte 0x9EC99EC6
	.4byte 0x00009EC7
	.4byte 0x00009ECF
	.4byte 0
	.4byte 0x0000EAA0
	.4byte 0
	.4byte 0x9ECC8D5C
	.4byte 0x92C69184
	.4byte 0x9ECA0000
	.4byte 0x9EC50000
	.4byte 0x00009EC8
	.4byte 0
	.4byte 0
	.4byte 0x976C968A
	.4byte 0
	.4byte 0x00009ECD
	.4byte 0x9ED70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009EDF
	.4byte 0x9ED80000
	.4byte 0x00009EE5
	.4byte 0x00009EE3
	.4byte 0
	.4byte 0
	.4byte 0x9EDE0000
	.4byte 0
	.4byte 0
	.4byte 0x00009EDD
	.4byte 0x000092CE
	.4byte 0x00009185
	.4byte 0x00009EDB
lbl_80188E10:
	.4byte 0
	.4byte 0x9ED90000
	.4byte 0x00009EE0
	.4byte 0
	.4byte 0
	.4byte 0x9EE694F3
	.4byte 0x9EEC0000
	.4byte 0
	.4byte 0
	.4byte 0x9EE79EEA
	.4byte 0x9EE40000
	.4byte 0x00009294
	.4byte 0x00009557
	.4byte 0x00009EDA
	.4byte 0
	.4byte 0x9EE28FBE
	.4byte 0x000096CD
	.4byte 0x9EF69EE9
	.4byte 0
	.4byte 0
	.4byte 0x00008CA0
	.4byte 0x89A18A7E
	.4byte 0
	.4byte 0x9ED10000
	.4byte 0
	.4byte 0
	.4byte 0x00008FBF
	.4byte 0x9EEE0000
	.4byte 0x9EF58EF7
	.4byte 0x8A920000
	.4byte 0x0000924D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9EEB0000
	.4byte 0x00009EF0
	.4byte 0x9EF40000
	.4byte 0x00008BB4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B6B9EF2
	.4byte 0
	.4byte 0
	.4byte 0x00008B40
	.4byte 0x000093C9
	.4byte 0x9EF10000
	.4byte 0
	.4byte 0x9EF30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9EED0000
	.4byte 0
	.4byte 0
	.4byte 0x9EEF0000
	.4byte 0
	.4byte 0
	.4byte 0x00008A80
	.4byte 0x92680000
	.4byte 0
	.4byte 0x9EFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009EF8
	.4byte 0x8CE70000
	.4byte 0x9EF70000
	.4byte 0
	.4byte 0
	.4byte 0x00009F40
	.4byte 0
	.4byte 0
	.4byte 0x9E770000
	.4byte 0
	.4byte 0x9EF90000
	.4byte 0x9EFB9EFC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F4B0000
	.4byte 0x9F470000
	.4byte 0x9E8D0000
	.4byte 0
	.4byte 0x00009F46
	.4byte 0
	.4byte 0
	.4byte 0x9F450000
	.4byte 0x00009F42
	.4byte 0
	.4byte 0
	.4byte 0x00009EE8
	.4byte 0x9F449F43
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009F49
	.4byte 0x00009845
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F4C8BF9
	.4byte 0
	.4byte 0x9F489F4A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94A50000
	.4byte 0x9F4D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F519F4E
	.4byte 0
	.4byte 0
lbl_80189010:
	.4byte 0
	.4byte 0
	.4byte 0x97939F4F
	.4byte 0
	.4byte 0
	.4byte 0x9EDC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F520000
	.4byte 0
	.4byte 0x9F530000
	.4byte 0
	.4byte 0
	.4byte 0x00008954
	.4byte 0x00009F55
	.4byte 0x8C878E9F
	.4byte 0x00008BD3
	.4byte 0
	.4byte 0x000089A2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x977E0000
	.4byte 0
	.4byte 0x00009F57
	.4byte 0x9F569F59
	.4byte 0x8B5C0000
	.4byte 0x00008BD4
	.4byte 0x8ABC0000
	.4byte 0
	.4byte 0x00009F5C
	.4byte 0
	.4byte 0x00009F5B
	.4byte 0x00009F5D
	.4byte 0
	.4byte 0x89CC0000
	.4byte 0x92560000
	.4byte 0x9F5E0000
	.4byte 0x00008ABD
	.4byte 0x9F600000
	.4byte 0
	.4byte 0x00009F5F
	.4byte 0x00009F61
	.4byte 0
	.4byte 0x00009F62
	.4byte 0x00009F63
	.4byte 0x8E7E90B3
	.4byte 0x8D9F0000
	.4byte 0x95900000
	.4byte 0x000095E0
	.4byte 0x98630000
	.4byte 0
	.4byte 0x00008E95
	.4byte 0
	.4byte 0x00008DCE
	.4byte 0x97F00000
	.4byte 0
	.4byte 0x9F649F65
	.4byte 0x00008E80
	.4byte 0
	.4byte 0x00009F66
	.4byte 0x9F670000
	.4byte 0x00009F69
	.4byte 0x9F680000
	.4byte 0x96770000
	.4byte 0x00008F7D
	.4byte 0x8EEA8E63
	.4byte 0x00009F6A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009F6C
	.4byte 0x90420000
	.4byte 0x9F6B0000
	.4byte 0
	.4byte 0
	.4byte 0x9F6D0000
	.4byte 0
	.4byte 0
	.4byte 0x9F6E0000
	.4byte 0
	.4byte 0
	.4byte 0x9F6F9F70
	.4byte 0
	.4byte 0x00009F71
	.4byte 0x00009F73
	.4byte 0x9F729F74
	.4byte 0x89A39269
	.4byte 0x00009F75
	.4byte 0
	.4byte 0x8E458A6B
	.4byte 0x9F760000
	.4byte 0x00009361
	.4byte 0x9ACA0000
	.4byte 0
	.4byte 0x00008B42
	.4byte 0x9F770000
	.4byte 0
	.4byte 0x00009F78
	.4byte 0x000095EA
	.4byte 0x96880000
	.4byte 0
	.4byte 0x93C59F79
	.4byte 0x94E40000
	.4byte 0
	.4byte 0x94F90000
	.4byte 0x000096D1
	.4byte 0
	.4byte 0x00009F7A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009F7C
	.4byte 0x9F7B0000
	.4byte 0x00009F7E
	.4byte 0
	.4byte 0x00009F7D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80189210:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F810000
	.4byte 0
	.4byte 0
	.4byte 0x00008E81
	.4byte 0x000096AF
	.4byte 0x00009F82
	.4byte 0x9F830000
	.4byte 0x00008B43
	.4byte 0
	.4byte 0x00009F84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009F86
	.4byte 0x9F850000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90850000
	.4byte 0x00009558
	.4byte 0x89690000
	.4byte 0
	.4byte 0
	.4byte 0x94C30000
	.4byte 0x92F38F60
	.4byte 0x8B810000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94C40000
	.4byte 0x8EAC0000
	.4byte 0
	.4byte 0x00009F88
	.4byte 0x00008ABE
	.4byte 0
	.4byte 0x89980000
	.4byte 0x000093F0
	.4byte 0x9F878D5D
	.4byte 0x92720000
	.4byte 0x9F890000
	.4byte 0
	.4byte 0
	.4byte 0x9F910000
	.4byte 0x9F8A0000
	.4byte 0
	.4byte 0
	.4byte 0x91BF0000
	.4byte 0x8B829F92
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C880000
	.4byte 0x00008B44
	.4byte 0x9F900000
	.4byte 0x00009F8E
	.4byte 0x9F8B9780
	.4byte 0
	.4byte 0
	.4byte 0x92BE0000
	.4byte 0
	.4byte 0x93D79F8C
	.4byte 0
	.4byte 0x9F940000
	.4byte 0x9F938C42
	.4byte 0
	.4byte 0x89AB0000
	.4byte 0x00008DB9
	.4byte 0x9F8D9F8F
	.4byte 0
	.4byte 0
	.4byte 0x00009676
	.4byte 0x91F20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009697
	.4byte 0
	.4byte 0x9F9C0000
	.4byte 0x00009F9D
	.4byte 0x000089CD
	.4byte 0
	.4byte 0
	.4byte 0x95A696FB
	.4byte 0x9F9F8EA1
	.4byte 0x8FC09F98
	.4byte 0x9F9E8988
	.4byte 0x00008BB5
	.4byte 0
	.4byte 0x9F959F9A
	.4byte 0
	.4byte 0x000090F2
	.4byte 0x94910000
	.4byte 0x94E50000
	.4byte 0
	.4byte 0
	.4byte 0x00009F97
	.4byte 0x00009640
	.4byte 0x00009F99
	.4byte 0x00009FA2
	.4byte 0x00009FA0
	.4byte 0x00009F9B
	.4byte 0
	.4byte 0x00009641
	.4byte 0x94678B83
	.4byte 0x00009344
	.4byte 0
	.4byte 0x928D0000
	.4byte 0x9FA30000
	.4byte 0
	.4byte 0x00009FA1
	.4byte 0x91D79F96
	.4byte 0x0000896A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_80189410:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000976D
	.4byte 0x9FAE0000
	.4byte 0
	.4byte 0
	.4byte 0x9FAD0000
	.4byte 0
	.4byte 0x000090F4
	.4byte 0x00009FAA
	.4byte 0x0000978C
	.4byte 0
	.4byte 0x93B49FA4
	.4byte 0
	.4byte 0
	.4byte 0x000092C3
	.4byte 0
	.4byte 0x0000896B
	.4byte 0x8D5E9FA7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F469FAC
	.4byte 0x00009FAB
	.4byte 0x9FA60000
	.4byte 0x9FA90000
	.4byte 0x00008A88
	.4byte 0x00009FA8
	.4byte 0x94680000
	.4byte 0x000097AC
	.4byte 0
	.4byte 0x8FF290F3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009FB4
	.4byte 0x9FB20000
	.4byte 0x956C0000
	.4byte 0
	.4byte 0
	.4byte 0x00009FAF
	.4byte 0x9FB10000
	.4byte 0x89590000
	.4byte 0x00008D5F
	.4byte 0x98510000
	.4byte 0x8A5C0000
	.4byte 0x95820000
	.4byte 0
	.4byte 0
	.4byte 0x97810000
	.4byte 0x00008A43
	.4byte 0x905A9FB3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009FB8
	.4byte 0
	.4byte 0x8FC10000
	.4byte 0
	.4byte 0x974F0000
	.4byte 0x9FB50000
	.4byte 0
	.4byte 0x00009FB0
	.4byte 0x00009FB6
	.4byte 0
	.4byte 0x000097DC
	.4byte 0x00009393
	.4byte 0x93C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008A55
	.4byte 0
	.4byte 0x89740000
	.4byte 0x00009FBC
	.4byte 0
	.4byte 0x9FBF0000
	.4byte 0
	.4byte 0x97C10000
	.4byte 0
	.4byte 0x97840000
	.4byte 0
	.4byte 0x00009FC6
	.4byte 0x9FC09FBD
	.4byte 0
	.4byte 0x000097D2
	.4byte 0x9FC30000
	.4byte 0
	.4byte 0x00008F69
	.4byte 0x9FC50000
	.4byte 0x00009FCA
	.4byte 0
	.4byte 0x93919FC8
	.4byte 0
	.4byte 0
	.4byte 0x9FC20000
	.4byte 0x00009257
	.4byte 0
	.4byte 0x9FC90000
	.4byte 0x9FBE0000
	.4byte 0x9FC40000
	.4byte 0x9FCB88FA
	.4byte 0x9FC10000
	.4byte 0x9FCC0000
	.4byte 0x0000905B
	.4byte 0x00008F7E
	.4byte 0x000095A3
	.4byte 0x00008DAC
	.4byte 0x00009FB9
	.4byte 0x9FC79359
	.4byte 0
	.4byte 0
lbl_80189610:
	.4byte 0
	.4byte 0
	.4byte 0x000090B4
	.4byte 0x00008A89
	.4byte 0x8DCF8FC2
	.4byte 0x9FBB8F61
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C6B
	.4byte 0x00009FBA
	.4byte 0
	.4byte 0x00009FD0
	.4byte 0x8F8D8CB8
	.4byte 0x00009FDF
	.4byte 0x00009FD9
	.4byte 0x8B94936E
	.4byte 0x00009FD4
	.4byte 0x9FDD88AD
	.4byte 0x89510000
	.4byte 0x000089B7
	.4byte 0x00009FD6
	.4byte 0x91AA9FCD
	.4byte 0x9FCF8D60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9FE00000
	.4byte 0x9FDB0000
	.4byte 0
	.4byte 0x9FD30000
	.4byte 0
	.4byte 0x00009FDA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96A90000
	.4byte 0x00009FD8
	.4byte 0x9FDC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8CCE0000
	.4byte 0x8FC30000
	.4byte 0x00009258
	.4byte 0
	.4byte 0x00009FD2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000974E
	.4byte 0
	.4byte 0x00009FD5
	.4byte 0
	.4byte 0x9FCE9392
	.4byte 0
	.4byte 0x9FD10000
	.4byte 0
	.4byte 0x9FD70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x98708EBC
	.4byte 0x969E0000
	.4byte 0x9FE10000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94AC0000
	.4byte 0x00009FED
	.4byte 0x8CB90000
	.4byte 0
	.4byte 0
	.4byte 0x8F800000
	.4byte 0x9FE30000
	.4byte 0
	.4byte 0x97AD8D61
	.4byte 0x00009FF0
	.4byte 0
	.4byte 0x88EC0000
	.4byte 0x00009FEE
	.4byte 0
	.4byte 0
	.4byte 0x9FE20000
	.4byte 0
	.4byte 0x00009FE8
	.4byte 0
	.4byte 0x9FEA0000
	.4byte 0
	.4byte 0x976E9FE5
	.4byte 0
	.4byte 0x934D0000
	.4byte 0x00009FE7
	.4byte 0
	.4byte 0
	.4byte 0x9FEF0000
	.4byte 0x9FE996C5
	.4byte 0
	.4byte 0x00009FE4
	.4byte 0x00008EA0
	.4byte 0x9FFC0000
	.4byte 0
	.4byte 0x00008A8A
	.4byte 0x00009FE6
	.4byte 0x9FEB9FEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091EA
	.4byte 0x91D80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9FF40000
	.4byte 0x00009FFA
	.4byte 0
	.4byte 0x9FF80000
	.4byte 0x93480000
	.4byte 0x0000E042
	.4byte 0x9FF50000
	.4byte 0
	.4byte 0
	.4byte 0x9FF69FDE
lbl_80189810:
	.4byte 0x00008B99
	.4byte 0x95590000
	.4byte 0
	.4byte 0x8EBD0000
	.4byte 0x00008D97
	.4byte 0
	.4byte 0
	.4byte 0x00009852
	.4byte 0x00009FF2
	.4byte 0x0000E041
	.4byte 0x89899186
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94990000
	.4byte 0x8ABF97F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000969F
	.4byte 0x92D00000
	.4byte 0
	.4byte 0x00009FF9
	.4byte 0x9FFB0000
	.4byte 0
	.4byte 0
	.4byte 0x91510000
	.4byte 0
	.4byte 0
	.4byte 0xE0409FF7
	.4byte 0x00009FF1
	.4byte 0
	.4byte 0x00008AC1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C890000
	.4byte 0
	.4byte 0xE04E0000
	.4byte 0x0000E049
	.4byte 0x90F60000
	.4byte 0x00008A83
	.4byte 0
	.4byte 0
	.4byte 0x8F810000
	.4byte 0xE0520000
	.4byte 0
	.4byte 0
	.4byte 0x0000E04B
	.4byte 0x92AAE048
	.4byte 0x92D70000
	.4byte 0
	.4byte 0xE06B0000
	.4byte 0
	.4byte 0xE0450000
	.4byte 0xE0440000
	.4byte 0xE04D0000
	.4byte 0
	.4byte 0xE047E046
	.4byte 0xE04C0000
	.4byte 0x909F0000
	.4byte 0xE0430000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE04F0000
	.4byte 0x0000E050
	.4byte 0
	.4byte 0
	.4byte 0x00008AC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E055
	.4byte 0x0000E054
	.4byte 0xE0560000
	.4byte 0
	.4byte 0
	.4byte 0xE0590000
	.4byte 0
	.4byte 0
	.4byte 0x00009362
	.4byte 0x0000E053
	.4byte 0
	.4byte 0
	.4byte 0x0000E057
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C8391F7
	.4byte 0xE051945A
	.4byte 0
	.4byte 0xE0580000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE05DE05B
	.4byte 0
	.4byte 0xE05E0000
	.4byte 0x0000E061
	.4byte 0
	.4byte 0x0000E05A
	.4byte 0x8D8A9447
	.4byte 0
	.4byte 0x9FB70000
	.4byte 0
	.4byte 0
	.4byte 0x00009794
	.4byte 0xE05C0000
	.4byte 0xE06091F3
	.4byte 0x0000E05F
	.4byte 0x0000E04A
	.4byte 0
	.4byte 0xE8890000
	.4byte 0
	.4byte 0xE0640000
	.4byte 0
	.4byte 0xE0680000
lbl_80189A10:
	.4byte 0x0000E066
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E062
	.4byte 0x0000E063
	.4byte 0
	.4byte 0x0000E067
	.4byte 0x0000E065
	.4byte 0
	.4byte 0x0000956D
	.4byte 0
	.4byte 0xE06D0000
	.4byte 0xE06AE069
	.4byte 0x0000E06C
	.4byte 0x93D2E06E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x929591EB
	.4byte 0
	.4byte 0
	.4byte 0x90A30000
	.4byte 0
	.4byte 0xE06F0000
	.4byte 0xE0710000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9FF30000
	.4byte 0
	.4byte 0x0000E072
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x93E50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E073
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000089CE
	.4byte 0
	.4byte 0x00009394
	.4byte 0x8A440000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B840000
	.4byte 0
	.4byte 0x8EDC8DD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009846
	.4byte 0x90860000
	.4byte 0
	.4byte 0x898A0000
	.4byte 0
	.4byte 0xE0750000
	.4byte 0
	.4byte 0
	.4byte 0x0000E074
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0789259
	.4byte 0xE07BE076
	.4byte 0
	.4byte 0x0000E07A
	.4byte 0
	.4byte 0
	.4byte 0xE079935F
	.4byte 0x88D70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97F30000
	.4byte 0x0000E07D
	.4byte 0
	.4byte 0x00008947
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E080
	.4byte 0
	.4byte 0x0000E07E
	.4byte 0x0000E07C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E077
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009642
	.4byte 0
	.4byte 0x0000E082
	.4byte 0
lbl_80189C10:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E081
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x898B0000
	.4byte 0
	.4byte 0x0000E084
	.4byte 0x95B00000
	.4byte 0xE0830000
	.4byte 0
	.4byte 0x000096B3
	.4byte 0
	.4byte 0
	.4byte 0x8FC50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91520000
	.4byte 0
	.4byte 0
	.4byte 0x8FC40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000097F9
	.4byte 0
	.4byte 0xE08A0000
	.4byte 0x90F70000
	.4byte 0
	.4byte 0
	.4byte 0x0000E086
	.4byte 0xE08B0000
	.4byte 0x0000898C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0890000
	.4byte 0x9481E085
	.4byte 0xE0888FC6
	.4byte 0x000094CF
	.4byte 0
	.4byte 0xE08C0000
	.4byte 0x8ECF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000090F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE08F0000
	.4byte 0
	.4byte 0xE0870000
	.4byte 0x8C460000
	.4byte 0
	.4byte 0x0000E08D
	.4byte 0
	.4byte 0
	.4byte 0x976FE090
	.4byte 0
	.4byte 0x0000EAA4
	.4byte 0
	.4byte 0
	.4byte 0x00008F6E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0910000
	.4byte 0
	.4byte 0xE0920000
	.4byte 0
	.4byte 0x0000944D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E094
	.4byte 0
	.4byte 0
	.4byte 0xE0950000
	.4byte 0
	.4byte 0x00009452
	.4byte 0
	.4byte 0
	.4byte 0x9395E097
	.4byte 0
	.4byte 0
	.4byte 0xE0990000
	.4byte 0x97D30000
	.4byte 0xE0960000
	.4byte 0xE098898D
	.4byte 0x0000E093
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009A7A
	.4byte 0xE09A0000
	.4byte 0
	.4byte 0x00009187
	.4byte 0x8E57E09C
	.4byte 0
	.4byte 0
	.4byte 0xE09B9043
	.4byte 0x99D70000
	.4byte 0
	.4byte 0
	.4byte 0x0000E09D
	.4byte 0
	.4byte 0x0000E09F
	.4byte 0x0000E08E
	.4byte 0xE09E0000
	.4byte 0x0000E0A0
lbl_80189E10:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x949A0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E0A1
	.4byte 0
	.4byte 0xE0A20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0A3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0A40000
	.4byte 0x92DC0000
	.4byte 0xE0A6E0A5
	.4byte 0
	.4byte 0xE0A70000
	.4byte 0xE0A80000
	.4byte 0x00008EDD
	.4byte 0x95830000
	.4byte 0
	.4byte 0x96EAE0A9
	.4byte 0xE0AA9175
	.4byte 0x8EA2E0AB
	.4byte 0xE0AC0000
	.4byte 0
	.4byte 0
	.4byte 0xE0AD95D0
	.4byte 0x94C50000
	.4byte 0x0000E0AE
	.4byte 0x94760000
	.4byte 0
	.4byte 0
	.4byte 0x92AB0000
	.4byte 0
	.4byte 0
	.4byte 0xE0AF89E5
	.4byte 0x00008B8D
	.4byte 0x000096C4
	.4byte 0x000096B4
	.4byte 0x000089B2
	.4byte 0x98530000
	.4byte 0
	.4byte 0x00009671
	.4byte 0x000095A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90B50000
	.4byte 0xE0B00000
	.4byte 0
	.4byte 0x000093C1
	.4byte 0
	.4byte 0x00008CA1
	.4byte 0xE0B10000
	.4byte 0x8DD2E0B3
	.4byte 0xE0B20000
	.4byte 0
	.4byte 0x0000E0B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0B50000
	.4byte 0
	.4byte 0xE0B60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B5D0000
	.4byte 0xE0B70000
	.4byte 0
	.4byte 0x0000E0B8
	.4byte 0
	.4byte 0
	.4byte 0x8CA20000
	.4byte 0x000094C6
	.4byte 0
	.4byte 0xE0BA0000
	.4byte 0
	.4byte 0x8FF30000
	.4byte 0x0000E0B9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8BB6E0BB
	.4byte 0xE0BD0000
	.4byte 0xE0BC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0BE0000
	.4byte 0x8CCF0000
	.4byte 0xE0BF0000
	.4byte 0
	.4byte 0x00008BE7
	.4byte 0x0000915F
	.4byte 0x00008D9D
	.4byte 0
	.4byte 0
	.4byte 0xE0C1E0C2
	.4byte 0xE0C00000
	.4byte 0
	.4byte 0
	.4byte 0x00008EEB
	.4byte 0
	.4byte 0x93C68BB7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0C4
	.4byte 0x924BE0C3
	.4byte 0
	.4byte 0x98549482
	.4byte 0
lbl_8018A010:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0C70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0C9E0C6
	.4byte 0
	.4byte 0x000096D2
	.4byte 0xE0C8E0CA
	.4byte 0x000097C2
	.4byte 0
	.4byte 0
	.4byte 0x0000E0CE
	.4byte 0
	.4byte 0x0000E0CD
	.4byte 0x9296944C
	.4byte 0
	.4byte 0x8CA3E0CC
	.4byte 0
	.4byte 0
	.4byte 0xE0CB0000
	.4byte 0x97509751
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0CF898E
	.4byte 0
	.4byte 0
	.4byte 0x8D968E82
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0D0E0D1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0D3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008F62
	.4byte 0
	.4byte 0
	.4byte 0xE0D50000
	.4byte 0xE0D40000
	.4byte 0
	.4byte 0
	.4byte 0xE0D60000
	.4byte 0x8A6C0000
	.4byte 0x0000E0D8
	.4byte 0
	.4byte 0xE0D70000
	.4byte 0xE0DAE0D9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8CBA0000
	.4byte 0x000097A6
	.4byte 0x00008BCA
	.4byte 0x000089A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8BE80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008ADF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97E6E0DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0DE
	.4byte 0
	.4byte 0
	.4byte 0xE0DF0000
	.4byte 0x89CF0000
	.4byte 0
	.4byte 0
	.4byte 0xE0DB0000
	.4byte 0x8E580000
	.4byte 0x000092BF
	.4byte 0xE0DD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0E20000
	.4byte 0x8EEC0000
	.4byte 0
	.4byte 0x0000E0E0
	.4byte 0
	.4byte 0
	.4byte 0x8C5D0000
	.4byte 0x000094C7
	.4byte 0xE0E10000
	.4byte 0x0000E0FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0E70000
	.4byte 0
	.4byte 0
	.4byte 0x8CBB0000
lbl_8018A210:
	.4byte 0
	.4byte 0x00008B85
	.4byte 0x0000E0E4
	.4byte 0x979D0000
	.4byte 0x000097AE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91F40000
	.4byte 0x0000E0E6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0E897D4
	.4byte 0x8BD594FA
	.4byte 0x94690000
	.4byte 0
	.4byte 0xE0E90000
	.4byte 0
	.4byte 0x0000E0EB
	.4byte 0x0000E0EE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0EA
	.4byte 0
	.4byte 0x0000E0ED
	.4byte 0x8CE8896C
	.4byte 0xE0EF0000
	.4byte 0x9090E0EC
	.4byte 0x97DA0000
	.4byte 0x0000E0F2
	.4byte 0xEAA20000
	.4byte 0
	.4byte 0x0000E0F0
	.4byte 0xE0F30000
	.4byte 0
	.4byte 0x0000E0E5
	.4byte 0xE0F10000
	.4byte 0x00008DBA
	.4byte 0
	.4byte 0xE0F40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0F50000
	.4byte 0
	.4byte 0x0000979E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0F70000
	.4byte 0
	.4byte 0xE0E30000
	.4byte 0
	.4byte 0x0000E0F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AC20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008EA3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0F90000
	.4byte 0
	.4byte 0x0000E0FA
	.4byte 0
	.4byte 0
	.4byte 0xE0FB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x895A0000
	.4byte 0
	.4byte 0xE1400000
	.4byte 0x955AE141
	.4byte 0
	.4byte 0x8AA2E142
	.4byte 0x0000E143
	.4byte 0
	.4byte 0
	.4byte 0xE1440000
	.4byte 0xE146E147
	.4byte 0xE1450000
	.4byte 0
	.4byte 0x9572E149
	.4byte 0xE1480000
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018A410:
	.4byte 0
	.4byte 0x0000E14B
	.4byte 0xE14AE14C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE14DE14F
	.4byte 0xE14E0000
	.4byte 0x00008D99
	.4byte 0x0000E151
	.4byte 0x0000E150
	.4byte 0
	.4byte 0x8AC30000
	.4byte 0x90720000
	.4byte 0x935B0000
	.4byte 0xE15290B6
	.4byte 0
	.4byte 0x00008E59
	.4byte 0x00008999
	.4byte 0xE1530000
	.4byte 0x97700000
	.4byte 0x000095E1
	.4byte 0xE1540000
	.4byte 0
	.4byte 0x93639752
	.4byte 0x8D62905C
	.4byte 0
	.4byte 0x0000926A
	.4byte 0x99B20000
	.4byte 0x92AC89E6
	.4byte 0xE1550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1560000
	.4byte 0xE15B0000
	.4byte 0x0000E159
	.4byte 0xE1589DC0
	.4byte 0x8A45E157
	.4byte 0x000088D8
	.4byte 0x000094A8
	.4byte 0
	.4byte 0x94C80000
	.4byte 0
	.4byte 0x000097AF
	.4byte 0xE15CE15A
	.4byte 0x927B90A4
	.4byte 0
	.4byte 0x94A90000
	.4byte 0x954C0000
	.4byte 0xE15E97AA
	.4byte 0x8C6CE15F
	.4byte 0x0000E15D
	.4byte 0x94D4E160
	.4byte 0x0000E161
	.4byte 0
	.4byte 0x88D90000
	.4byte 0x00008FF4
	.4byte 0xE1660000
	.4byte 0xE16393EB
	.4byte 0xE1620000
	.4byte 0
	.4byte 0
	.4byte 0x00008B45
	.4byte 0
	.4byte 0xE1690000
	.4byte 0
	.4byte 0xE164E165
	.4byte 0x0000E168
	.4byte 0xE1679544
	.4byte 0
	.4byte 0x91619160
	.4byte 0x00008B5E
	.4byte 0
	.4byte 0xE16A0000
	.4byte 0
	.4byte 0
	.4byte 0xE16B0000
	.4byte 0x0000E16C
	.4byte 0
	.4byte 0
	.4byte 0x0000E16E
	.4byte 0x0000E16D
	.4byte 0
	.4byte 0
	.4byte 0x00008975
	.4byte 0
	.4byte 0
	.4byte 0x0000E176
	.4byte 0x94E6E170
	.4byte 0x0000E172
	.4byte 0
	.4byte 0xE174905D
	.4byte 0
	.4byte 0xE175E173
	.4byte 0x8EBE0000
	.4byte 0
	.4byte 0xE16FE171
	.4byte 0x00009561
	.4byte 0x00008FC7
	.4byte 0
	.4byte 0xE1780000
	.4byte 0x0000E177
	.4byte 0
	.4byte 0
	.4byte 0xE1790000
	.4byte 0x8EA48DAD
	.4byte 0
	.4byte 0x9397E17A
	.4byte 0x000092C9
	.4byte 0
	.4byte 0xE17C0000
	.4byte 0
	.4byte 0x979FE17B
	.4byte 0
	.4byte 0
	.4byte 0x00009189
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1820000
	.4byte 0xE184E185
	.4byte 0x92730000
	.4byte 0
	.4byte 0
	.4byte 0xE1830000
	.4byte 0xE1800000
	.4byte 0xE17DE17E
lbl_8018A610:
	.4byte 0x0000E181
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E188
	.4byte 0x0000E186
	.4byte 0x0000E187
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E189
	.4byte 0xE18BE18C
	.4byte 0xE18D0000
	.4byte 0xE18E0000
	.4byte 0x0000E18A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1900000
	.4byte 0
	.4byte 0xE18F0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E191
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97C30000
	.4byte 0
	.4byte 0xE194E192
	.4byte 0xE1930000
	.4byte 0
	.4byte 0x8AE00000
	.4byte 0
	.4byte 0
	.4byte 0x96FC0000
	.4byte 0
	.4byte 0x95C80000
	.4byte 0xE1960000
	.4byte 0
	.4byte 0xE1950000
	.4byte 0
	.4byte 0x0000E197
	.4byte 0xE1980000
	.4byte 0
	.4byte 0x0000E19C
	.4byte 0xE199E19A
	.4byte 0xE19B0000
	.4byte 0xE19D0000
	.4byte 0
	.4byte 0xE19E0000
	.4byte 0xE19F0000
	.4byte 0
	.4byte 0xE1A00000
	.4byte 0xE1A10000
	.4byte 0x94AD936F
	.4byte 0xE1A29492
	.4byte 0x95530000
	.4byte 0xE1A30000
	.4byte 0x0000E1A4
	.4byte 0x93490000
	.4byte 0x8A468D63
	.4byte 0xE1A50000
	.4byte 0x0000E1A6
	.4byte 0
	.4byte 0xE1A70000
	.4byte 0x8E480000
	.4byte 0x0000E1A9
	.4byte 0
	.4byte 0xE1A80000
	.4byte 0x0000E1AA
	.4byte 0xE1AB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94E70000
	.4byte 0xE1AC0000
	.4byte 0
	.4byte 0xE1AD0000
	.4byte 0x0000EA89
	.4byte 0xE1AEE1AF
	.4byte 0xE1B00000
	.4byte 0
	.4byte 0x00008E4D
	.4byte 0
	.4byte 0xE1B19475
	.4byte 0
	.4byte 0x967E0000
	.4byte 0x896D0000
	.4byte 0x89760000
	.4byte 0x0000E1B2
	.4byte 0
	.4byte 0
	.4byte 0xE1B40000
	.4byte 0
	.4byte 0xE1B39390
	.4byte 0
	.4byte 0x000090B7
	.4byte 0x9F580000
	.4byte 0xE1B596BF
	.4byte 0x0000E1B6
	.4byte 0x00008AC4
	.4byte 0x94D5E1B7
	.4byte 0x0000E1B8
	.4byte 0
	.4byte 0xE1B90000
	.4byte 0
	.4byte 0x96DA0000
	.4byte 0
	.4byte 0x96D30000
	.4byte 0x92BC0000
	.4byte 0
	.4byte 0x918A0000
	.4byte 0x0000E1BB
	.4byte 0
	.4byte 0x8F820000
lbl_8018A810:
	.4byte 0x00008FC8
	.4byte 0
	.4byte 0xE1BE0000
	.4byte 0x0000E1BD
	.4byte 0xE1BC94FB
	.4byte 0x00008AC5
	.4byte 0x8CA70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1C4
	.4byte 0
	.4byte 0xE1C1905E
	.4byte 0x96B00000
	.4byte 0
	.4byte 0xE1C0E1C2
	.4byte 0xE1C30000
	.4byte 0x0000E1BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1C5
	.4byte 0xE1C60000
	.4byte 0x92AD0000
	.4byte 0x8AE10000
	.4byte 0
	.4byte 0x92850000
	.4byte 0
	.4byte 0
	.4byte 0x0000E1C7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1C8E1CB
	.4byte 0
	.4byte 0
	.4byte 0x00009087
	.4byte 0x000093C2
	.4byte 0x0000E1CC
	.4byte 0x96720000
	.4byte 0xE1C90000
	.4byte 0x0000E1CA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1CF
	.4byte 0
	.4byte 0
	.4byte 0xE1CEE1CD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1D1
	.4byte 0
	.4byte 0xE1D00000
	.4byte 0x0000E1D2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1D40000
	.4byte 0xE1D30000
	.4byte 0
	.4byte 0x000095CB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F7597C4
	.4byte 0
	.4byte 0xE1D50000
	.4byte 0x000093B5
	.4byte 0
	.4byte 0xE1D60000
	.4byte 0x0000E1D7
	.4byte 0x0000E1DB
	.4byte 0xE1D9E1DA
	.4byte 0x0000E1D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1DC
	.4byte 0
	.4byte 0
	.4byte 0x0000E1DD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1DE
	.4byte 0
	.4byte 0xE1DF96B5
	.4byte 0xE1E00000
	.4byte 0
	.4byte 0
	.4byte 0x96EEE1E1
	.4byte 0x0000926D
	.4byte 0x0000948A
	.4byte 0x00008BE9
	.4byte 0
	.4byte 0x0000925A
	.4byte 0xE1E28BB8
	.4byte 0
	.4byte 0x000090CE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1E30000
	.4byte 0
lbl_8018AA10:
	.4byte 0
	.4byte 0x8DBB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1E40000
	.4byte 0
	.4byte 0
	.4byte 0xE1E50000
	.4byte 0x8CA48DD3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1E70000
	.4byte 0
	.4byte 0x00009375
	.4byte 0x8DD48B6D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96430000
	.4byte 0x946A0000
	.4byte 0
	.4byte 0
	.4byte 0x93760000
	.4byte 0
	.4byte 0x00008D7B
	.4byte 0
	.4byte 0
	.4byte 0x0000E1E9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008FC9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000097B0
	.4byte 0x8D640000
	.4byte 0x00008CA5
	.4byte 0
	.4byte 0x94A10000
	.4byte 0xE1EB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1ED0000
	.4byte 0
	.4byte 0x00008CE9
	.4byte 0
	.4byte 0
	.4byte 0xE1EC92F4
	.4byte 0
	.4byte 0
	.4byte 0xE1EF8A56
	.4byte 0xE1EA0000
	.4byte 0x000094E8
	.4byte 0x0000894F
	.4byte 0x00008DEA
	.4byte 0x00009871
	.4byte 0
	.4byte 0xE1EE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1F0
	.4byte 0
	.4byte 0x000095C9
	.4byte 0x000090D7
	.4byte 0xE1F20000
	.4byte 0
	.4byte 0x0000E1F3
	.4byte 0
	.4byte 0
	.4byte 0x0000E1F1
	.4byte 0
	.4byte 0
	.4byte 0x8A6D0000
	.4byte 0xE1F90000
	.4byte 0xE1F80000
	.4byte 0x00008EA5
	.4byte 0
	.4byte 0x0000E1FA
	.4byte 0xE1F50000
	.4byte 0
	.4byte 0xE1FBE1F6
	.4byte 0
	.4byte 0
	.4byte 0x94D6E1F4
	.4byte 0
	.4byte 0xE1F70000
	.4byte 0
	.4byte 0
	.4byte 0xE2410000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E240
	.4byte 0x96810000
	.4byte 0
	.4byte 0xE1FC0000
	.4byte 0x000088E9
	.4byte 0
	.4byte 0
	.4byte 0xE2430000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E242
	.4byte 0
lbl_8018AC10:
	.4byte 0x00008FCA
	.4byte 0
	.4byte 0
	.4byte 0x0000E244
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91620000
	.4byte 0x0000E246
	.4byte 0xE2450000
	.4byte 0
	.4byte 0
	.4byte 0x0000E247
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1E60000
	.4byte 0
	.4byte 0xE1E8E249
	.4byte 0xE2480000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EA60000
	.4byte 0x97E70000
	.4byte 0x8ED00000
	.4byte 0xE24A8C56
	.4byte 0
	.4byte 0
	.4byte 0x00008B5F
	.4byte 0x8B468E83
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97530000
	.4byte 0x0000E250
	.4byte 0x0000E24F
	.4byte 0x9163E24C
	.4byte 0
	.4byte 0xE24E0000
	.4byte 0x00008F6A
	.4byte 0x905FE24D
	.4byte 0xE24B0000
	.4byte 0x94490000
	.4byte 0x00008FCB
	.4byte 0
	.4byte 0x955B0000
	.4byte 0
	.4byte 0x00008DD5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009398
	.4byte 0
	.4byte 0xE2510000
	.4byte 0
	.4byte 0x0000E252
	.4byte 0xE2688BD6
	.4byte 0
	.4byte 0x985C9154
	.4byte 0
	.4byte 0
	.4byte 0xE2530000
	.4byte 0x000089D0
	.4byte 0x92F5959F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E254
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B9AE255
	.4byte 0
	.4byte 0xE2570000
	.4byte 0
	.4byte 0xE2580000
	.4byte 0x94480000
	.4byte 0x0000E259
	.4byte 0
	.4byte 0
	.4byte 0x0000E25A
	.4byte 0xE25B0000
	.4byte 0x00008BD7
	.4byte 0x89D193C3
	.4byte 0x8F478E84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E25C
	.4byte 0x00008F48
	.4byte 0
	.4byte 0
	.4byte 0x000089C8
	.4byte 0x95620000
	.4byte 0x0000E25D
	.4byte 0
	.4byte 0x94E90000
	.4byte 0
	.4byte 0
	.4byte 0x00009164
	.4byte 0x0000E260
	.4byte 0x0000E261
	.4byte 0x94890000
	.4byte 0x9060E25E
	.4byte 0x00009281
	.4byte 0
	.4byte 0xE25F0000
	.4byte 0
	.4byte 0x8FCC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088DA
	.4byte 0
	.4byte 0
lbl_8018AE10:
	.4byte 0x8B480000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE2620000
	.4byte 0x000092F6
	.4byte 0x0000E263
	.4byte 0x90C50000
	.4byte 0
	.4byte 0
	.4byte 0x96AB0000
	.4byte 0x00009542
	.4byte 0xE264E265
	.4byte 0x92740000
	.4byte 0x97C50000
	.4byte 0x0000E267
	.4byte 0xE2660000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EED0000
	.4byte 0x0000E269
	.4byte 0x88EE0000
	.4byte 0
	.4byte 0x0000E26C
	.4byte 0
	.4byte 0x0000E26A
	.4byte 0x89D28C6D
	.4byte 0xE26B8D65
	.4byte 0x8D920000
	.4byte 0x95E4E26D
	.4byte 0
	.4byte 0x96730000
	.4byte 0x0000E26F
	.4byte 0
	.4byte 0x000090CF
	.4byte 0x896E89B8
	.4byte 0x88AA0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E26E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E270
	.4byte 0xE2718FF5
	.4byte 0
	.4byte 0
	.4byte 0x0000E272
	.4byte 0x00008A6E
	.4byte 0
	.4byte 0
	.4byte 0xE2740000
	.4byte 0
	.4byte 0x8C8A0000
	.4byte 0x8B860000
	.4byte 0x0000E275
	.4byte 0x8BF30000
	.4byte 0x0000E276
	.4byte 0x000090FA
	.4byte 0x000093CB
	.4byte 0x000090DE
	.4byte 0x8DF30000
	.4byte 0
	.4byte 0xE2770000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9282918B
	.4byte 0x0000E279
	.4byte 0xE27BE278
	.4byte 0xE27A0000
	.4byte 0
	.4byte 0
	.4byte 0x00008C41
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E27C
	.4byte 0x8C450000
	.4byte 0
	.4byte 0x8B879771
	.4byte 0xE27E0000
	.4byte 0
	.4byte 0
	.4byte 0xE2800000
	.4byte 0
	.4byte 0x894D0000
	.4byte 0
	.4byte 0x0000E283
	.4byte 0
	.4byte 0x00008A96
	.4byte 0xE282E281
	.4byte 0x0000E285
	.4byte 0xE27D0000
	.4byte 0xE28697A7
	.4byte 0x0000E287
	.4byte 0x0000E288
	.4byte 0
	.4byte 0x9AF2E28A
	.4byte 0x0000E289
	.4byte 0
	.4byte 0x0000E28B
	.4byte 0xE28C0000
	.4byte 0x97B3E28D
	.4byte 0x0000E8ED
	.4byte 0x8FCDE28E
	.4byte 0xE28F8F76
	.4byte 0x000093B6
	.4byte 0xE2900000
	.4byte 0
	.4byte 0x92470000
	.4byte 0x0000E291
	.4byte 0x0000925B
	.4byte 0xE2920000
	.4byte 0
	.4byte 0
	.4byte 0x8BA30000
	.4byte 0x995E927C
	.4byte 0x8EB10000
	.4byte 0
	.4byte 0x00008AC6
lbl_8018B010:
	.4byte 0
	.4byte 0xE2930000
	.4byte 0xE2A00000
	.4byte 0xE2960000
	.4byte 0x8B880000
	.4byte 0xE295E2A2
	.4byte 0
	.4byte 0x0000E294
	.4byte 0x00008FCE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE298E299
	.4byte 0x0000934A
	.4byte 0
	.4byte 0xE29A0000
	.4byte 0x8A7D0000
	.4byte 0
	.4byte 0x00009079
	.4byte 0x95840000
	.4byte 0xE29C0000
	.4byte 0
	.4byte 0x91E60000
	.4byte 0
	.4byte 0
	.4byte 0x0000E297
	.4byte 0x0000E29B
	.4byte 0xE29D0000
	.4byte 0x00008DF9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2A4
	.4byte 0x954D0000
	.4byte 0x94A49399
	.4byte 0x00008BD8
	.4byte 0xE2A3E2A1
	.4byte 0x000094B3
	.4byte 0xE29E927D
	.4byte 0x939B0000
	.4byte 0x939A0000
	.4byte 0x8DF40000
	.4byte 0
	.4byte 0
	.4byte 0x0000E2B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2A6
	.4byte 0x0000E2A8
	.4byte 0
	.4byte 0
	.4byte 0xE2AB0000
	.4byte 0xE2AC0000
	.4byte 0xE2A9E2AA
	.4byte 0
	.4byte 0xE2A7E2A5
	.4byte 0
	.4byte 0
	.4byte 0xE29F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x95CD89D3
	.4byte 0
	.4byte 0x0000E2B3
	.4byte 0x0000E2B0
	.4byte 0x0000E2B5
	.4byte 0
	.4byte 0xE2B40000
	.4byte 0x949396A5
	.4byte 0x00008E5A
	.4byte 0xE2AEE2B7
	.4byte 0xE2B20000
	.4byte 0xE2B1E2AD
	.4byte 0x0000E2AF
	.4byte 0x00008AC7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x925C0000
	.4byte 0x000090FB
	.4byte 0
	.4byte 0x000094A0
	.4byte 0
	.4byte 0xE2BC0000
	.4byte 0
	.4byte 0x94A20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90DFE2B9
	.4byte 0
	.4byte 0x94CD0000
	.4byte 0xE2BD95D1
	.4byte 0x0000927A
	.4byte 0x0000E2B8
	.4byte 0xE2BA0000
	.4byte 0x0000E2BB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2BE
	.4byte 0
	.4byte 0x8EC20000
	.4byte 0
	.4byte 0x93C4E2C3
	.4byte 0xE2C20000
	.4byte 0x0000E2BF
	.4byte 0
	.4byte 0x00009855
	.4byte 0
	.4byte 0
	.4byte 0x0000E2C8
	.4byte 0
	.4byte 0xE2CCE2C9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018B210:
	.4byte 0xE2C50000
	.4byte 0
	.4byte 0
	.4byte 0x0000E2C6
	.4byte 0
	.4byte 0
	.4byte 0x0000E2CB
	.4byte 0
	.4byte 0x0000E2C0
	.4byte 0x99D3E2C7
	.4byte 0xE2C10000
	.4byte 0x0000E2CA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2D0
	.4byte 0x00008AC8
	.4byte 0x0000E2CD
	.4byte 0
	.4byte 0x0000E2CE
	.4byte 0
	.4byte 0xE2CFE2D2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2D1
	.4byte 0x94F40000
	.4byte 0
	.4byte 0x0000E2D3
	.4byte 0x97FA95EB
	.4byte 0xE2D80000
	.4byte 0x0000E2D5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE2D490D0
	.4byte 0x0000E2D7
	.4byte 0xE2D90000
	.4byte 0
	.4byte 0xE2D60000
	.4byte 0xE2DD0000
	.4byte 0xE2DA0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E2DB
	.4byte 0xE2C40000
	.4byte 0
	.4byte 0xE2DCE2DE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE2DF0000
	.4byte 0
	.4byte 0
	.4byte 0x000095C4
	.4byte 0x0000E2E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96E00000
	.4byte 0x00008BCC
	.4byte 0x8C48E2E1
	.4byte 0
	.4byte 0
	.4byte 0x000095B2
	.4byte 0x00009088
	.4byte 0x000096AE
	.4byte 0
	.4byte 0xE2E20000
	.4byte 0x97B10000
	.4byte 0x00009494
	.4byte 0x00009165
	.4byte 0x94530000
	.4byte 0x00008F6C
	.4byte 0
	.4byte 0x000088BE
	.4byte 0x0000E2E7
	.4byte 0xE2E50000
	.4byte 0xE2E38A9F
	.4byte 0x00008FCF
	.4byte 0xE2E80000
	.4byte 0x0000E2E6
	.4byte 0x0000E2E4
	.4byte 0xE2EC0000
	.4byte 0x0000E2EB
	.4byte 0xE2EAE2E9
	.4byte 0
	.4byte 0
	.4byte 0x0000E2ED
	.4byte 0
	.4byte 0x0000E2EE
	.4byte 0x90B80000
	.4byte 0xE2EF0000
	.4byte 0xE2F10000
	.4byte 0x0000E2F0
	.4byte 0
	.4byte 0
	.4byte 0x8CD00000
	.4byte 0
	.4byte 0x91570000
	.4byte 0
	.4byte 0xE2F30000
	.4byte 0
	.4byte 0x939C0000
	.4byte 0xE2F20000
	.4byte 0
	.4byte 0xE2F40000
	.4byte 0x95B3918C
	.4byte 0x8D660000
	.4byte 0xE2F50000
	.4byte 0
	.4byte 0x000097C6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2F7
	.4byte 0
	.4byte 0xE2F80000
	.4byte 0xE2F90000
	.4byte 0xE2FA0000
	.4byte 0x8E850000
	.4byte 0xE2FB8C6E
	.4byte 0
	.4byte 0x8B8A0000
lbl_8018B410:
	.4byte 0x8B490000
	.4byte 0xE3400000
	.4byte 0x96F18D67
	.4byte 0xE2FC0000
	.4byte 0
	.4byte 0xE34396E4
	.4byte 0x0000945B
	.4byte 0
	.4byte 0x95520000
	.4byte 0
	.4byte 0x8F83E342
	.4byte 0x00008ED1
	.4byte 0x8D688E86
	.4byte 0x8B8995B4
	.4byte 0xE3410000
	.4byte 0
	.4byte 0x91669661
	.4byte 0x8DF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008E87
	.4byte 0x92DB0000
	.4byte 0xE34697DD
	.4byte 0x8DD70000
	.4byte 0xE3479061
	.4byte 0x0000E349
	.4byte 0
	.4byte 0x00008FD0
	.4byte 0x8DAE0000
	.4byte 0
	.4byte 0x0000E348
	.4byte 0
	.4byte 0x8F498CBC
	.4byte 0x9167E344
	.4byte 0xE34A0000
	.4byte 0
	.4byte 0x0000E345
	.4byte 0x8C6F0000
	.4byte 0xE34DE351
	.4byte 0x8C8B0000
	.4byte 0
	.4byte 0
	.4byte 0xE34C0000
	.4byte 0
	.4byte 0x0000E355
	.4byte 0
	.4byte 0x8D690000
	.4byte 0x0000978D
	.4byte 0x88BAE352
	.4byte 0
	.4byte 0x8B8B0000
	.4byte 0xE34F0000
	.4byte 0
	.4byte 0
	.4byte 0xE3500000
	.4byte 0x0000939D
	.4byte 0xE34EE34B
	.4byte 0x00008A47
	.4byte 0x90E20000
	.4byte 0x00008CA6
	.4byte 0
	.4byte 0x0000E357
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E354
	.4byte 0
	.4byte 0
	.4byte 0x0000E356
	.4byte 0
	.4byte 0x0000E353
	.4byte 0
	.4byte 0
	.4byte 0x00008C70
	.4byte 0x91B1E358
	.4byte 0x918E0000
	.4byte 0x0000E365
	.4byte 0
	.4byte 0xE361E35B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E35F
	.4byte 0x8EF888DB
	.4byte 0xE35AE362
	.4byte 0xE3668D6A
	.4byte 0x96D40000
	.4byte 0x92D4E35C
	.4byte 0
	.4byte 0xE3640000
	.4byte 0xE359925D
	.4byte 0x0000E35E
	.4byte 0x88BB96C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E35D
	.4byte 0
	.4byte 0x8BD994EA
	.4byte 0
	.4byte 0x0000918D
	.4byte 0x000097CE
	.4byte 0x8F8F0000
	.4byte 0x0000E38E
	.4byte 0
	.4byte 0xE3670000
	.4byte 0x90FC0000
	.4byte 0xE363E368
	.4byte 0xE36A0000
	.4byte 0x92F7E36D
	.4byte 0
	.4byte 0xE3690000
	.4byte 0
	.4byte 0x95D28AC9
	.4byte 0
	.4byte 0x96C90000
	.4byte 0x000088DC
	.4byte 0
	.4byte 0xE36C0000
	.4byte 0x97FB0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E36B
	.4byte 0
	.4byte 0
lbl_8018B610:
	.4byte 0x0000898F
	.4byte 0
	.4byte 0x93EAE36E
	.4byte 0
	.4byte 0x0000E375
	.4byte 0xE36FE376
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3720000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000949B
	.4byte 0
	.4byte 0x8EC8E374
	.4byte 0x0000E371
	.4byte 0xE377E370
	.4byte 0
	.4byte 0x8F630000
	.4byte 0
	.4byte 0x00009644
	.4byte 0
	.4byte 0x8F6B0000
	.4byte 0x0000E373
	.4byte 0xE3800000
	.4byte 0x0000E37B
	.4byte 0x0000E37E
	.4byte 0x0000E37C
	.4byte 0xE381E37A
	.4byte 0x0000E360
	.4byte 0x90D10000
	.4byte 0x000094C9
	.4byte 0x0000E37D
	.4byte 0
	.4byte 0xE3780000
	.4byte 0
	.4byte 0x91408C71
	.4byte 0x00008F4A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90449155
	.4byte 0xE3840000
	.4byte 0x0000E386
	.4byte 0xE3870000
	.4byte 0x0000E383
	.4byte 0xE3850000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE379E382
	.4byte 0x0000E38A
	.4byte 0xE3890000
	.4byte 0x0000969A
	.4byte 0
	.4byte 0x8C4A0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E388
	.4byte 0x0000E38C
	.4byte 0xE38BE38F
	.4byte 0x0000E391
	.4byte 0
	.4byte 0x8E5BE38D
	.4byte 0
	.4byte 0
	.4byte 0xE392E393
	.4byte 0
	.4byte 0xE3940000
	.4byte 0xE39A935A
	.4byte 0xE3960000
	.4byte 0xE395E397
	.4byte 0xE3980000
	.4byte 0xE3990000
	.4byte 0
	.4byte 0x0000E39B
	.4byte 0xE39C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018B810:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8ACA0000
	.4byte 0xE39D0000
	.4byte 0xE39E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E39F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3A0E3A1
	.4byte 0xE3A20000
	.4byte 0xE3A3E3A4
	.4byte 0
	.4byte 0xE3A6E3A5
	.4byte 0
	.4byte 0xE3A70000
	.4byte 0
	.4byte 0
	.4byte 0x0000E3A8
	.4byte 0xE3A90000
	.4byte 0
	.4byte 0
	.4byte 0x0000E3AC
	.4byte 0xE3AAE3AB
	.4byte 0x8DDF8C72
	.4byte 0
	.4byte 0x92750000
	.4byte 0x94B10000
	.4byte 0x8F900000
	.4byte 0x0000946C
	.4byte 0x000094EB
	.4byte 0xE3AD9CEB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3AEE3B0
	.4byte 0x00009785
	.4byte 0xE3AFE3B2
	.4byte 0xE3B10000
	.4byte 0x97720000
	.4byte 0xE3B30000
	.4byte 0x94FC0000
	.4byte 0
	.4byte 0
	.4byte 0xE3B40000
	.4byte 0
	.4byte 0
	.4byte 0xE3B70000
	.4byte 0x0000E3B6
	.4byte 0xE3B50000
	.4byte 0
	.4byte 0x0000E3B8
	.4byte 0x8C510000
	.4byte 0
	.4byte 0x91418B60
	.4byte 0
	.4byte 0
	.4byte 0xE3BCE3B9
	.4byte 0
	.4byte 0xE3BA0000
	.4byte 0
	.4byte 0xE3BD0000
	.4byte 0xE3BEE3BB
	.4byte 0
	.4byte 0x00008948
	.4byte 0
	.4byte 0x000089A5
	.4byte 0
	.4byte 0x0000E3C0
	.4byte 0xE3C10000
	.4byte 0
	.4byte 0xE3C20000
	.4byte 0x97820000
	.4byte 0
	.4byte 0
	.4byte 0x8F4B0000
	.4byte 0xE3C4E3C3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9089E3C5
	.4byte 0
	.4byte 0
	.4byte 0xE3C60000
	.4byte 0x0000E3C7
	.4byte 0x00008AE3
	.4byte 0
	.4byte 0
	.4byte 0x8ACB0000
	.4byte 0x0000E3C8
	.4byte 0
	.4byte 0
	.4byte 0x0000E3C9
	.4byte 0x0000967C
	.4byte 0x97830000
	.4byte 0
lbl_8018BA10:
	.4byte 0x97739856
	.4byte 0x00008D6C
	.4byte 0xE3CC8ED2
	.4byte 0xE3CB0000
	.4byte 0
	.4byte 0x0000E3CD
	.4byte 0x8EA70000
	.4byte 0
	.4byte 0x91CF0000
	.4byte 0xE3CE0000
	.4byte 0x00008D6B
	.4byte 0x000096D5
	.4byte 0xE3CFE3D0
	.4byte 0
	.4byte 0xE3D10000
	.4byte 0
	.4byte 0x0000E3D2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3D30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008EA8
	.4byte 0
	.4byte 0x96EB0000
	.4byte 0
	.4byte 0x0000E3D5
	.4byte 0x0000925E
	.4byte 0x0000E3D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3D70000
	.4byte 0
	.4byte 0xE3D60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3D80000
	.4byte 0
	.4byte 0x90B90000
	.4byte 0xE3D90000
	.4byte 0xE3DA0000
	.4byte 0
	.4byte 0x95B7E3DB
	.4byte 0x0000918F
	.4byte 0xE3DC0000
	.4byte 0
	.4byte 0
	.4byte 0xE3DD0000
	.4byte 0
	.4byte 0
	.4byte 0x000097FC
	.4byte 0xE3E00000
	.4byte 0xE3DFE3DE
	.4byte 0x92AE0000
	.4byte 0xE3E19045
	.4byte 0x0000E3E2
	.4byte 0
	.4byte 0x0000E3E3
	.4byte 0x9857E3E4
	.4byte 0
	.4byte 0
	.4byte 0xE3E5E3E7
	.4byte 0xE3E694A3
	.4byte 0x000093F7
	.4byte 0x0000985D
	.4byte 0x94A70000
	.4byte 0
	.4byte 0
	.4byte 0x0000E3E9
	.4byte 0
	.4byte 0x8FD10000
	.4byte 0x95490000
	.4byte 0xE3EAE3E8
	.4byte 0x00008ACC
	.4byte 0
	.4byte 0x00008CD2
	.4byte 0x8E880000
	.4byte 0x000094EC
	.4byte 0
	.4byte 0x00008CA8
	.4byte 0x96620000
	.4byte 0xE3EDE3EB
	.4byte 0x00008D6D
	.4byte 0x00008D6E
	.4byte 0x88E70000
	.4byte 0x8DE60000
	.4byte 0
	.4byte 0
	.4byte 0x94780000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088DD
	.4byte 0xE3F20000
	.4byte 0x925F0000
	.4byte 0
	.4byte 0
	.4byte 0x94770000
	.4byte 0x91D90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3F40000
	.4byte 0x0000E3F0
	.4byte 0xE3F3E3EE
	.4byte 0x0000E3F1
	.4byte 0x96450000
	.4byte 0x00008CD3
	.4byte 0
	.4byte 0x88FBE3EF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E3F6
	.4byte 0x0000E3F7
	.4byte 0
	.4byte 0x93B70000
	.4byte 0
	.4byte 0x8BB90000
	.4byte 0
	.4byte 0xE445945C
	.4byte 0
lbl_8018BC10:
	.4byte 0
	.4byte 0x8E890000
	.4byte 0x00008BBA
	.4byte 0x90C69865
	.4byte 0x96ACE3F5
	.4byte 0x90D20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B72E3F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E3FA
	.4byte 0
	.4byte 0
	.4byte 0x0000E3F9
	.4byte 0
	.4byte 0
	.4byte 0x0000E3FB
	.4byte 0x00009245
	.4byte 0x0000945D
	.4byte 0
	.4byte 0
	.4byte 0x000092AF
	.4byte 0
	.4byte 0
	.4byte 0xE4420000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4410000
	.4byte 0
	.4byte 0x0000E3FC
	.4byte 0
	.4byte 0x90740000
	.4byte 0x9585E444
	.4byte 0x0000E443
	.4byte 0x8D6F9872
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E454
	.4byte 0
	.4byte 0
	.4byte 0x0000E448
	.4byte 0xE4490000
	.4byte 0
	.4byte 0x00008EEE
	.4byte 0
	.4byte 0xE4470000
	.4byte 0x8D98E446
	.4byte 0
	.4byte 0xE44A0000
	.4byte 0
	.4byte 0x92B095A0
	.4byte 0x91420000
	.4byte 0
	.4byte 0x000091DA
	.4byte 0xE44E0000
	.4byte 0xE44FE44B
	.4byte 0
	.4byte 0
	.4byte 0xE44C0000
	.4byte 0xE44D0000
	.4byte 0
	.4byte 0x00008D70
	.4byte 0
	.4byte 0x0000E455
	.4byte 0x0000E451
	.4byte 0
	.4byte 0
	.4byte 0x95860000
	.4byte 0x968C9547
	.4byte 0
	.4byte 0xE4500000
	.4byte 0x0000E453
	.4byte 0xE4520000
	.4byte 0
	.4byte 0x9663E456
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4570000
	.4byte 0x00009156
	.4byte 0x0000E458
	.4byte 0
	.4byte 0xE45A0000
	.4byte 0xE45E0000
	.4byte 0x0000E45B
	.4byte 0xE459945E
	.4byte 0xE45C0000
	.4byte 0xE45D0000
	.4byte 0
	.4byte 0x89B00000
	.4byte 0xE464E45F
	.4byte 0
	.4byte 0x0000E460
	.4byte 0
	.4byte 0x0000E461
	.4byte 0x0000919F
	.4byte 0
	.4byte 0
	.4byte 0xE463E462
	.4byte 0xE4650000
	.4byte 0
	.4byte 0x0000E466
	.4byte 0xE4670000
	.4byte 0x00009062
	.4byte 0x000089E7
	.4byte 0x0000E468
	.4byte 0x97D50000
	.4byte 0x8EA90000
	.4byte 0x00008F4C
	.4byte 0
	.4byte 0
	.4byte 0x00008E8A
	.4byte 0x92760000
	.4byte 0
	.4byte 0
	.4byte 0xE469E46A
	.4byte 0x89500000
	.4byte 0xE46B0000
lbl_8018BE10:
	.4byte 0x0000E46C
	.4byte 0xE46D0000
	.4byte 0x0000E46E
	.4byte 0x0000E46F
	.4byte 0x8BBB9DA8
	.4byte 0xE4700000
	.4byte 0x90E3E471
	.4byte 0x8EC90000
	.4byte 0xE4720000
	.4byte 0x98AE0000
	.4byte 0
	.4byte 0xE47395DC
	.4byte 0x8ADA0000
	.4byte 0x00009143
	.4byte 0x8F770000
	.4byte 0x95918F4D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E474
	.4byte 0x8D71E475
	.4byte 0x94CA0000
	.4byte 0xE4840000
	.4byte 0
	.4byte 0x0000E477
	.4byte 0x000091C7
	.4byte 0x94958CBD
	.4byte 0xE4769144
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4780000
	.4byte 0
	.4byte 0
	.4byte 0x000092F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE47AE479
	.4byte 0xE47C0000
	.4byte 0x0000E47B
	.4byte 0x0000E47D
	.4byte 0
	.4byte 0xE4800000
	.4byte 0xE47E0000
	.4byte 0x8ACD0000
	.4byte 0xE4810000
	.4byte 0xE482E483
	.4byte 0
	.4byte 0x8DAF97C7
	.4byte 0x0000E485
	.4byte 0x90460000
	.4byte 0
	.4byte 0x8990E486
	.4byte 0xE4870000
	.4byte 0
	.4byte 0
	.4byte 0xE4880000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088F0
	.4byte 0x0000E489
	.4byte 0
	.4byte 0
	.4byte 0xE48A0000
	.4byte 0
	.4byte 0
	.4byte 0x00009587
	.4byte 0
	.4byte 0x00008EC5
	.4byte 0x0000E48C
	.4byte 0
	.4byte 0
	.4byte 0x00008A48
	.4byte 0x88B00000
	.4byte 0
	.4byte 0x0000E48B
	.4byte 0xE48E946D
	.4byte 0x00009063
	.4byte 0x000089D4
	.4byte 0x00009646
	.4byte 0
	.4byte 0
	.4byte 0x8C7C8BDA
	.4byte 0x0000E48D
	.4byte 0x000089E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008AA1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008991
	.4byte 0xE49297E8
	.4byte 0x91DB0000
	.4byte 0x00009563
	.4byte 0x0000E49E
	.4byte 0x000089D5
	.4byte 0xE49C0000
	.4byte 0xE49AE491
	.4byte 0x0000E48F
	.4byte 0x0000E490
	.4byte 0x00008EE1
	.4byte 0x8BEA9297
	.4byte 0
	.4byte 0x000093CF
	.4byte 0
	.4byte 0
	.4byte 0x00008970
	.4byte 0x0000E494
	.4byte 0xE4930000
	.4byte 0
	.4byte 0x0000E499
	.4byte 0xE495E498
	.4byte 0
	.4byte 0
lbl_8018C010:
	.4byte 0
	.4byte 0x96CEE497
	.4byte 0x89D68A9D
	.4byte 0xE49B0000
	.4byte 0x0000E49D
	.4byte 0
	.4byte 0
	.4byte 0x8C730000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4A1E4AA
	.4byte 0xE4AB0000
	.4byte 0
	.4byte 0x88A90000
	.4byte 0
	.4byte 0
	.4byte 0x0000E4B2
	.4byte 0
	.4byte 0
	.4byte 0x88EF0000
	.4byte 0x0000E4A9
	.4byte 0
	.4byte 0x0000E4A8
	.4byte 0x0000E4A3
	.4byte 0xE4A20000
	.4byte 0xE4A0E49F
	.4byte 0x92830000
	.4byte 0x91F9E4A5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4A40000
	.4byte 0
	.4byte 0x0000E4A7
	.4byte 0
	.4byte 0x00009190
	.4byte 0x8C740000
	.4byte 0
	.4byte 0x00008960
	.4byte 0xE4A60000
	.4byte 0x8D720000
	.4byte 0
	.4byte 0
	.4byte 0x91910000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4B8
	.4byte 0x0000E4B9
	.4byte 0x000089D7
	.4byte 0
	.4byte 0x000089AC
	.4byte 0xE4B60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4AC
	.4byte 0x0000E4B4
	.4byte 0x0000E4BB
	.4byte 0xE4B50000
	.4byte 0
	.4byte 0xE4B30000
	.4byte 0
	.4byte 0x0000E496
	.4byte 0
	.4byte 0xE4B10000
	.4byte 0
	.4byte 0xE4AD0000
	.4byte 0
	.4byte 0x8ACEE4AF
	.4byte 0xE4BA0000
	.4byte 0xE4B00000
	.4byte 0
	.4byte 0
	.4byte 0xE4BC0000
	.4byte 0xE4AE949C
	.4byte 0
	.4byte 0
	.4byte 0x00009789
	.4byte 0
	.4byte 0x0000E4B7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4CD
	.4byte 0
	.4byte 0x0000E4C5
	.4byte 0
	.4byte 0x0000909B
	.4byte 0
	.4byte 0
	.4byte 0x8B650000
	.4byte 0x8BDB0000
	.4byte 0xE4C00000
	.4byte 0
	.4byte 0x000089D9
	.4byte 0
	.4byte 0x8FD20000
	.4byte 0xE4C30000
	.4byte 0
	.4byte 0x8DD80000
	.4byte 0x00009370
	.4byte 0xE4C80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095EC
	.4byte 0x0000E4BF
	.4byte 0
	.4byte 0x000089D8
	.4byte 0x8CD49548
	.4byte 0xE4C90000
	.4byte 0xE4BD0000
	.4byte 0x0000E4C6
	.4byte 0
	.4byte 0x0000E4D0
	.4byte 0x0000E4C1
	.4byte 0
lbl_8018C210:
	.4byte 0
	.4byte 0x0000E4C2
	.4byte 0x93B80000
	.4byte 0x0000E4C7
	.4byte 0
	.4byte 0x0000E4C4
	.4byte 0x9647E4CA
	.4byte 0x88DE0000
	.4byte 0
	.4byte 0x0000E4BE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4CC0000
	.4byte 0xE4CB0000
	.4byte 0
	.4byte 0
	.4byte 0x0000948B
	.4byte 0xE4D20000
	.4byte 0xE4DD0000
	.4byte 0
	.4byte 0x00008A9E
	.4byte 0
	.4byte 0x0000E4E0
	.4byte 0
	.4byte 0xE4CE0000
	.4byte 0
	.4byte 0xE4D3978E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4DC0000
	.4byte 0x00009774
	.4byte 0
	.4byte 0
	.4byte 0x97A80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009298
	.4byte 0
	.4byte 0x00008A8B
	.4byte 0
	.4byte 0
	.4byte 0x00009592
	.4byte 0xE4E2939F
	.4byte 0
	.4byte 0x88AF0000
	.4byte 0x0000E4DB
	.4byte 0x0000E4D7
	.4byte 0x9192E4D1
	.4byte 0xE4D9E4DE
	.4byte 0x0000944B
	.4byte 0
	.4byte 0x000088A8
	.4byte 0x0000E4D6
	.4byte 0x0000E4DF
	.4byte 0x95980000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4DA0000
	.4byte 0xE4D50000
	.4byte 0
	.4byte 0
	.4byte 0x00008FD3
	.4byte 0
	.4byte 0
	.4byte 0x8F4E0000
	.4byte 0
	.4byte 0x8EAA0000
	.4byte 0
	.4byte 0x000096D6
	.4byte 0
	.4byte 0x95660000
	.4byte 0x0000E4E5
	.4byte 0x0000E4EE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4D8
	.4byte 0
	.4byte 0
	.4byte 0x8A970000
	.4byte 0
	.4byte 0
	.4byte 0x8FF6E4E3
	.4byte 0x0000E4E8
	.4byte 0x91930000
	.4byte 0x0000E4E4
	.4byte 0x0000E4EB
	.4byte 0
	.4byte 0x927E0000
	.4byte 0xE4EC0000
	.4byte 0x00009775
	.4byte 0xE4E18A57
	.4byte 0x0000E4E7
	.4byte 0
	.4byte 0xE4EA96AA
	.4byte 0
	.4byte 0
	.4byte 0xE4ED0000
	.4byte 0x0000E4E6
	.4byte 0xE4E90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96480000
	.4byte 0x98400000
	.4byte 0

glabel lbl_8018C3F4
	# ROM: 0x1884F4
	.4byte 0
	.4byte 0xE4F10000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4F80000
	.4byte 0x0000E4F0
lbl_8018C410:
	.4byte 0x8EC10000
	.4byte 0
	.4byte 0
	.4byte 0xE4CF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095CC
	.4byte 0x000096A0
	.4byte 0xE4F7E4F6
	.4byte 0x0000E4F2
	.4byte 0xE4F30000
	.4byte 0x89550000
	.4byte 0
	.4byte 0x0000E4F5
	.4byte 0x0000E4EF
	.4byte 0
	.4byte 0
	.4byte 0x92D30000
	.4byte 0
	.4byte 0
	.4byte 0xE4F488FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095C1
	.4byte 0
	.4byte 0xE4F9E540
	.4byte 0x000094D7
	.4byte 0
	.4byte 0
	.4byte 0xE4FC8FD4
	.4byte 0x8EC7E542
	.4byte 0
	.4byte 0x8BBC0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E543
	.4byte 0x00009599
	.4byte 0xE4FB0000
	.4byte 0xE4D40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4FA
	.4byte 0
	.4byte 0
	.4byte 0x986E93A0
	.4byte 0x95930000
	.4byte 0x0000E54A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5510000
	.4byte 0xE5440000
	.4byte 0
	.4byte 0x94960000
	.4byte 0x0000E54E
	.4byte 0xE5460000
	.4byte 0xE5480000
	.4byte 0
	.4byte 0
	.4byte 0xE552E547
	.4byte 0
	.4byte 0xE54B0000
	.4byte 0x00008992
	.4byte 0x000093E3
	.4byte 0x0000E54C
	.4byte 0xE54F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5450000
	.4byte 0x91450000
	.4byte 0xE5498E46
	.4byte 0x90648C4F
	.4byte 0x96F20000
	.4byte 0x96F78F92
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E556
	.4byte 0xE5540000
	.4byte 0
	.4byte 0
	.4byte 0x0000986D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E553
	.4byte 0
	.4byte 0x00009795
	.4byte 0x0000E555
	.4byte 0xE5570000
	.4byte 0
	.4byte 0x0000E558
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE55BE559
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x93A1E55A
	.4byte 0
	.4byte 0x000094CB
	.4byte 0xE54D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008F93
	.4byte 0x0000E55C
	.4byte 0xE5619194
	.4byte 0
	.4byte 0xE5600000
lbl_8018C610:
	.4byte 0
	.4byte 0xE5410000
	.4byte 0
	.4byte 0xE5629168
	.4byte 0
	.4byte 0xE55DE55F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E55E
	.4byte 0
	.4byte 0x9F509F41
	.4byte 0
	.4byte 0xE5640000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5630000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009796
	.4byte 0x0000E1BA
	.4byte 0xE5650000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E566
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E567
	.4byte 0x8CD50000
	.4byte 0x8B730000
	.4byte 0
	.4byte 0xE569997C
	.4byte 0
	.4byte 0
	.4byte 0x8B950000
	.4byte 0x97B80000
	.4byte 0x8BF1E56A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E56B
	.4byte 0
	.4byte 0x0000928E
	.4byte 0
	.4byte 0
	.4byte 0x0000E56C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000093F8
	.4byte 0x000088B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89E1E571
	.4byte 0xE5720000
	.4byte 0
	.4byte 0
	.4byte 0x0000E56D
	.4byte 0x00008E5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E56E
	.4byte 0x94610000
	.4byte 0
	.4byte 0x0000E56F
	.4byte 0xE570E57A
	.4byte 0
	.4byte 0x0000E574
	.4byte 0xE5770000
	.4byte 0
	.4byte 0
	.4byte 0xE5730000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5750000
	.4byte 0xE5768ED6
	.4byte 0x0000E578
	.4byte 0x00009260
	.4byte 0x00008C75
	.4byte 0x8A610000
	.4byte 0
	.4byte 0
	.4byte 0xE57B0000
	.4byte 0
	.4byte 0x00008A5E
	.4byte 0x0000E581
	.4byte 0
	.4byte 0xE57CE580
	.4byte 0
	.4byte 0
	.4byte 0x94B80000
	.4byte 0
	.4byte 0x0000E57D
	.4byte 0
	.4byte 0xE57E9567
	.4byte 0x94D8E582
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91FBE58C
	.4byte 0x0000E588
	.4byte 0
	.4byte 0x89E90000
lbl_8018C810:
	.4byte 0xE5860000
	.4byte 0x9649E587
	.4byte 0
	.4byte 0xE5840000
	.4byte 0xE585E58A
	.4byte 0xE58D0000
	.4byte 0x0000E58B
	.4byte 0
	.4byte 0x0000E589
	.4byte 0xE5830000
	.4byte 0
	.4byte 0
	.4byte 0x92770000
	.4byte 0xE5940000
	.4byte 0x96A80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E592
	.4byte 0
	.4byte 0x0000E593
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE58E0000
	.4byte 0x0000E590
	.4byte 0
	.4byte 0x0000E591
	.4byte 0
	.4byte 0x0000E58F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000090E4
	.4byte 0x00009858
	.4byte 0xE5980000
	.4byte 0xE5990000
	.4byte 0
	.4byte 0x0000E59F
	.4byte 0x00009049
	.4byte 0x0000E59B
	.4byte 0x0000E59E
	.4byte 0
	.4byte 0
	.4byte 0x0000E596
	.4byte 0xE5950000
	.4byte 0x0000E5A0
	.4byte 0
	.4byte 0x89DA0000
	.4byte 0xE59C0000
	.4byte 0xE5A10000
	.4byte 0
	.4byte 0xE59D0000
	.4byte 0
	.4byte 0
	.4byte 0xE59A0000
	.4byte 0x92B10000
	.4byte 0xE5970000
	.4byte 0
	.4byte 0
	.4byte 0x00009488
	.4byte 0
	.4byte 0xE5A50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000975A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5A4
	.4byte 0
	.4byte 0xE5A30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5AC
	.4byte 0
	.4byte 0x0000E5A6
	.4byte 0
	.4byte 0x0000E5AE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9786E5B1
	.4byte 0x0000E5A8
	.4byte 0
	.4byte 0xE5A90000
	.4byte 0
	.4byte 0xE5AD0000
	.4byte 0xE5B0E5AF
	.4byte 0
	.4byte 0x0000E5A7
	.4byte 0
	.4byte 0
	.4byte 0xE5AA0000
	.4byte 0xE5BB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5B40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5B2
	.4byte 0
	.4byte 0xE5B30000
	.4byte 0
	.4byte 0xE5B8E5B9
	.4byte 0x00008A49
	.4byte 0x00008B61
	.4byte 0
	.4byte 0xE5B70000
lbl_8018CA10:
	.4byte 0
	.4byte 0
	.4byte 0x0000E5A2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5B6
	.4byte 0xE5BAE5B5
	.4byte 0x0000E5BC
	.4byte 0
	.4byte 0x0000E5BE
	.4byte 0xE5BD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5C0
	.4byte 0xE5BFE579
	.4byte 0
	.4byte 0x0000E5C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5C1
	.4byte 0
	.4byte 0
	.4byte 0xE5C20000
	.4byte 0x0000E5C3
	.4byte 0x0000E5C5
	.4byte 0
	.4byte 0
	.4byte 0x8C8C0000
	.4byte 0xE5C70000
	.4byte 0xE5C60000
	.4byte 0x8F4F0000
	.4byte 0
	.4byte 0
	.4byte 0x8D739FA5
	.4byte 0
	.4byte 0
	.4byte 0xE5C88F70
	.4byte 0
	.4byte 0x00008A58
	.4byte 0x0000E5C9
	.4byte 0x00008971
	.4byte 0x00008FD5
	.4byte 0xE5CA0000
	.4byte 0x00008D74
	.4byte 0xE5CB88DF
	.4byte 0
	.4byte 0
	.4byte 0x955C0000
	.4byte 0x0000E5CC
	.4byte 0
	.4byte 0
	.4byte 0x908A0000
	.4byte 0xE5D30000
	.4byte 0x0000E5D0
	.4byte 0x0000928F
	.4byte 0
	.4byte 0
	.4byte 0x0000E5D1
	.4byte 0xE5CE8BDC
	.4byte 0x0000E5CD
	.4byte 0xE5D40000
	.4byte 0
	.4byte 0
	.4byte 0x8C550000
	.4byte 0x000091DC
	.4byte 0x0000E5DA
	.4byte 0
	.4byte 0
	.4byte 0xE5D60000
	.4byte 0
	.4byte 0x91B3E5D5
	.4byte 0x0000E5D8
	.4byte 0
	.4byte 0
	.4byte 0xE5CF0000
	.4byte 0
	.4byte 0xE5D90000
	.4byte 0xE5DB0000
	.4byte 0
	.4byte 0
	.4byte 0x000094ED
	.4byte 0
	.4byte 0xE5D70000
	.4byte 0xE5DCE5DE
	.4byte 0
	.4byte 0x8CD1E5D2
	.4byte 0x000088BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5DD
	.4byte 0x00008DD9
	.4byte 0x97F4E5DF
	.4byte 0xE5E09195
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000097A0
	.4byte 0
	.4byte 0
	.4byte 0xE5E19754
	.4byte 0
	.4byte 0xE5E2E5E3
	.4byte 0
	.4byte 0x95E2E5E4
	.4byte 0x00008DBE
	.4byte 0x000097A1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5E90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5EA8FD6
	.4byte 0xE5E80000
	.4byte 0
	.4byte 0x9787E5E5
	.4byte 0
	.4byte 0xE5E790BB
	.4byte 0x909E0000
lbl_8018CC10:
	.4byte 0
	.4byte 0xE5E60000
	.4byte 0xE5EB0000
	.4byte 0x000095A1
	.4byte 0
	.4byte 0xE5ED0000
	.4byte 0xE5EC0000
	.4byte 0
	.4byte 0x8A8C0000
	.4byte 0x964AE5EE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5FA
	.4byte 0xE5F00000
	.4byte 0
	.4byte 0
	.4byte 0x0000E5F1
	.4byte 0
	.4byte 0
	.4byte 0xE5F2E5F3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5F70000
	.4byte 0xE5F80000
	.4byte 0x0000E5F6
	.4byte 0
	.4byte 0
	.4byte 0x0000E5F4
	.4byte 0x0000E5EF
	.4byte 0xE5F50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5F9E8B5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5FC8BDD
	.4byte 0xE5FB0000
	.4byte 0
	.4byte 0xE6410000
	.4byte 0xE6400000
	.4byte 0
	.4byte 0xE6430000
	.4byte 0x0000E642
	.4byte 0x0000E644
	.4byte 0
	.4byte 0x8F500000
	.4byte 0xE6450000
	.4byte 0x0000E646
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE64790BC
	.4byte 0x00009776
	.4byte 0x0000E648
	.4byte 0
	.4byte 0x95A29465
	.4byte 0xE6490000
	.4byte 0xE64A8CA9
	.4byte 0
	.4byte 0x00008B4B
	.4byte 0
	.4byte 0x0000E64B
	.4byte 0
	.4byte 0x8E8B9460
	.4byte 0xE64C0000
	.4byte 0x8A6F0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E64D
	.4byte 0
	.4byte 0
	.4byte 0xE64F9797
	.4byte 0x0000E64E
	.4byte 0x90650000
	.4byte 0xE6500000
	.4byte 0x0000E651
	.4byte 0
	.4byte 0xE6528ACF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6530000
	.4byte 0x0000E654
	.4byte 0x0000E655
	.4byte 0xE6560000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8A700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6570000
	.4byte 0xE658E659
	.4byte 0
	.4byte 0
	.4byte 0x000089F0
	.4byte 0
	.4byte 0x9047E65A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE65B0000
	.4byte 0
	.4byte 0xE65C0000
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018CE10:
	.4byte 0x8CBE0000
	.4byte 0x92F9E65D
	.4byte 0
	.4byte 0
	.4byte 0x8C760000
	.4byte 0x90750000
	.4byte 0xE6600000
	.4byte 0x93A20000
	.4byte 0xE65F0000
	.4byte 0x00008C50
	.4byte 0
	.4byte 0xE65E91F5
	.4byte 0x8B4C0000
	.4byte 0x0000E661
	.4byte 0x0000E662
	.4byte 0x00008FD7
	.4byte 0
	.4byte 0x00008C8D
	.4byte 0x0000E663
	.4byte 0
	.4byte 0
	.4byte 0x964B0000
	.4byte 0x000090DD
	.4byte 0
	.4byte 0x00008B96
	.4byte 0x000096F3
	.4byte 0x91690000
	.4byte 0xE6640000
	.4byte 0
	.4byte 0x90669290
	.4byte 0x8FD80000
	.4byte 0
	.4byte 0x0000E665
	.4byte 0
	.4byte 0
	.4byte 0xE6680000
	.4byte 0xE6690000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8DBC91C0
	.4byte 0xE6670000
	.4byte 0x8FD9955D
	.4byte 0
	.4byte 0
	.4byte 0x0000E666
	.4byte 0
	.4byte 0x8E8C0000
	.4byte 0x89720000
	.4byte 0xE66D8C77
	.4byte 0
	.4byte 0x8E8E0000
	.4byte 0x00008E8D
	.4byte 0x0000986C
	.4byte 0xE66CE66B
	.4byte 0x91460000
	.4byte 0x8B6C9862
	.4byte 0x8A598FDA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE66A0000
	.4byte 0
	.4byte 0
	.4byte 0xE66F0000
	.4byte 0xE670E66E
	.4byte 0x00008CD6
	.4byte 0x0000975F
	.4byte 0
	.4byte 0x8E8F9446
	.4byte 0
	.4byte 0x0000E673
	.4byte 0x000090BE
	.4byte 0x00009261
	.4byte 0
	.4byte 0x97550000
	.4byte 0xE6760000
	.4byte 0
	.4byte 0x8CEA0000
	.4byte 0x90BDE672
	.4byte 0x0000E677
	.4byte 0x8CEBE674
	.4byte 0xE6750000
	.4byte 0xE6710000
	.4byte 0
	.4byte 0x90E093C7
	.4byte 0
	.4byte 0x924E0000
	.4byte 0x89DB0000
	.4byte 0
	.4byte 0
	.4byte 0x000094EE
	.4byte 0
	.4byte 0x8B620000
	.4byte 0x000092B2
	.4byte 0
	.4byte 0xE67A0000
	.4byte 0xE6780000
	.4byte 0x0000926B
	.4byte 0
	.4byte 0x000090BF
	.4byte 0x8AD0E679
	.4byte 0x0000907A
	.4byte 0
	.4byte 0x97C80000
	.4byte 0
	.4byte 0x985F0000
	.4byte 0
	.4byte 0xE67BE687
	.4byte 0x92B30000
	.4byte 0xE6860000
	.4byte 0xE683E68B
	.4byte 0xE6840000
	.4byte 0xE6800000
	.4byte 0x92FAE67E
	.4byte 0
	.4byte 0x0000E67C
	.4byte 0x00009740
	.4byte 0x8E900000
	.4byte 0x0000E681
	.4byte 0x0000E67D
	.4byte 0
	.4byte 0x0000E685
	.4byte 0x8F940000
	.4byte 0x8CBF0000
	.4byte 0
	.4byte 0x91F80000
lbl_8018D010:
	.4byte 0x96648979
	.4byte 0x88E00000
	.4byte 0x93A30000
	.4byte 0x0000E689
	.4byte 0
	.4byte 0
	.4byte 0xE6880000
	.4byte 0x93E40000
	.4byte 0xE68D0000
	.4byte 0
	.4byte 0xE6820000
	.4byte 0xE68CE68E
	.4byte 0x00008CAA
	.4byte 0xE68A8D75
	.4byte 0x00008ED3
	.4byte 0
	.4byte 0xE68F9777
	.4byte 0
	.4byte 0
	.4byte 0xE6920000
	.4byte 0xE6950000
	.4byte 0x0000E693
	.4byte 0x95540000
	.4byte 0
	.4byte 0
	.4byte 0x0000E690
	.4byte 0
	.4byte 0
	.4byte 0x00008BDE
	.4byte 0
	.4byte 0
	.4byte 0xE6940000
	.4byte 0x0000E696
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E69A
	.4byte 0
	.4byte 0xE6970000
	.4byte 0xE699E698
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE69B0000
	.4byte 0x8EAF0000
	.4byte 0xE69DE69C
	.4byte 0x95880000
	.4byte 0x0000E69F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C780000
	.4byte 0
	.4byte 0x0000E69E
	.4byte 0xE6A00000
	.4byte 0x0000E6A1
	.4byte 0x8B63E3BF
	.4byte 0x8FF70000
	.4byte 0xE6A20000
	.4byte 0x00008CEC
	.4byte 0
	.4byte 0
	.4byte 0x0000E6A3
	.4byte 0
	.4byte 0xE6A40000
	.4byte 0x00008E5D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9DCC0000
	.4byte 0xE6A50000
	.4byte 0xE6A60000
	.4byte 0x8F510000
	.4byte 0xE6A7E6A8
	.4byte 0
	.4byte 0xE6A90000
	.4byte 0x0000E6AA
	.4byte 0xE6AB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018D210:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000924A
	.4byte 0
	.4byte 0xE6AC0000
	.4byte 0
	.4byte 0x0000E6AE
	.4byte 0x0000E6AD
	.4byte 0
	.4byte 0
	.4byte 0x93A40000
	.4byte 0xE6AF0000
	.4byte 0x964C0000
	.4byte 0xE6B00000
	.4byte 0xE6B10000
	.4byte 0xE6B20000
	.4byte 0
	.4byte 0x0000E6B3
	.4byte 0
	.4byte 0
	.4byte 0x93D80000
	.4byte 0
	.4byte 0
	.4byte 0x00008FDB
	.4byte 0xE6B40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8D8B98AC
	.4byte 0xE6B50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6B6955E
	.4byte 0xE6B70000
	.4byte 0xE6BF0000
	.4byte 0
	.4byte 0
	.4byte 0xE6B80000
	.4byte 0x0000E6BA
	.4byte 0
	.4byte 0x0000E6B9
	.4byte 0xE6BB0000
	.4byte 0x9665E6BC
	.4byte 0xE6BD0000
	.4byte 0
	.4byte 0
	.4byte 0xE6BE0000
	.4byte 0
	.4byte 0xE6C00000
	.4byte 0
	.4byte 0x00008A4C
	.4byte 0x92E50000
	.4byte 0x95898DE0
	.4byte 0x8D760000
	.4byte 0
	.4byte 0x0000956E
	.4byte 0x89DD94CC
	.4byte 0xE6C38AD1
	.4byte 0x90D3E6C2
	.4byte 0xE6C79299
	.4byte 0x96E10000
	.4byte 0xE6C5E6C6
	.4byte 0x8B4D0000
	.4byte 0xE6C89483
	.4byte 0x91DD0000
	.4byte 0x000094EF
	.4byte 0x935CE6C4
	.4byte 0x00009666
	.4byte 0x89EAE6CA
	.4byte 0x984792C0
	.4byte 0x98640000
	.4byte 0x00008E91
	.4byte 0xE6C90000
	.4byte 0x91AF0000
	.4byte 0x0000E6DA
	.4byte 0x91470000
	.4byte 0x000093F6
	.4byte 0x0000956F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6CD8E5E
	.4byte 0x8E920000
	.4byte 0x8FDC0000
	.4byte 0x94850000
	.4byte 0x8CABE6CC
	.4byte 0xE6CB0000
	.4byte 0x958A0000
	.4byte 0
	.4byte 0x8EBF0000
	.4byte 0x00009371
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6CFE6D0
	.4byte 0x8D77E6CE
	.4byte 0
lbl_8018D410:
	.4byte 0
	.4byte 0
	.4byte 0xE6D1E6D2
	.4byte 0x0000E6D4
	.4byte 0x91A10000
	.4byte 0xE6D38AE4
	.4byte 0x0000E6D6
	.4byte 0x0000E6D5
	.4byte 0xE6D70000
	.4byte 0x0000E6D9
	.4byte 0xE6DB0000
	.4byte 0xE6DC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90D40000
	.4byte 0x8ECDE6DD
	.4byte 0
	.4byte 0x00008A71
	.4byte 0x0000E6DE
	.4byte 0
	.4byte 0x9196E6DF
	.4byte 0x0000E6E0
	.4byte 0x958B0000
	.4byte 0x00008B4E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E6E1
	.4byte 0
	.4byte 0x000092B4
	.4byte 0
	.4byte 0
	.4byte 0x897A0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E6E2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008EEF
	.4byte 0
	.4byte 0
	.4byte 0x90960000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091AB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6E50000
	.4byte 0
	.4byte 0xE6E40000
	.4byte 0
	.4byte 0xE6E30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E6EB
	.4byte 0xE6E90000
	.4byte 0x0000E6E6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6E80000
	.4byte 0
	.4byte 0xE6E7E6EA
	.4byte 0x00008B97
	.4byte 0x0000E6EE
	.4byte 0x000090D5
	.4byte 0x0000E6EF
	.4byte 0
	.4byte 0
	.4byte 0x8CD70000
	.4byte 0xE6ECE6ED
	.4byte 0
	.4byte 0x00009848
	.4byte 0
	.4byte 0x000092B5
	.4byte 0x00009148
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6F00000
	.4byte 0x0000E6F3
lbl_8018D610:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6F1E6F2
	.4byte 0x97780000
	.4byte 0
	.4byte 0x000093A5
	.4byte 0xE6F60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E6F4
	.4byte 0xE6F5E6F7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7480000
	.4byte 0
	.4byte 0
	.4byte 0xE6FA0000
	.4byte 0
	.4byte 0xE6FBE6F9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6F80000
	.4byte 0x92FB0000
	.4byte 0x0000E740
	.4byte 0xE744E741
	.4byte 0xE6FC0000
	.4byte 0xE7420000
	.4byte 0
	.4byte 0xE7430000
	.4byte 0
	.4byte 0x0000E74A
	.4byte 0
	.4byte 0x0000E745
	.4byte 0
	.4byte 0
	.4byte 0x000090D6
	.4byte 0xE7470000
	.4byte 0x0000E749
	.4byte 0xE7460000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE74C0000
	.4byte 0x8F520000
	.4byte 0xE74B0000
	.4byte 0
	.4byte 0
	.4byte 0xE74D0000
	.4byte 0
	.4byte 0x0000E74E
	.4byte 0
	.4byte 0xE751E750
	.4byte 0x0000E74F
	.4byte 0
	.4byte 0xE753E752
	.4byte 0x000096F4
	.4byte 0
	.4byte 0x0000E755
	.4byte 0x0000E754
	.4byte 0xE7560000
	.4byte 0
	.4byte 0x0000E757
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E759
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7589067
	.4byte 0xE75A0000
	.4byte 0x00008BEB
	.4byte 0xE75BE75D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE75E0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E75F
	.4byte 0xE75C0000
	.4byte 0xE7600000
	.4byte 0x8ED4E761
	.4byte 0x8B4F8C52
	.4byte 0
	.4byte 0
	.4byte 0x8CAC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E762
	.4byte 0
	.4byte 0x000093EE
	.4byte 0
	.4byte 0x935DE763
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E766
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EB20000
	.4byte 0x0000E765
	.4byte 0xE7648C79
	.4byte 0xE7670000
lbl_8018D810:
	.4byte 0
	.4byte 0x00008A72
	.4byte 0x0000E769
	.4byte 0
	.4byte 0x00008DDA
	.4byte 0xE7680000
	.4byte 0xE7710000
	.4byte 0
	.4byte 0
	.4byte 0xE76BE76D
	.4byte 0x95E3E76A
	.4byte 0
	.4byte 0x0000E76C
	.4byte 0x0000E770
	.4byte 0xE76E8B50
	.4byte 0x0000E76F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7720000
	.4byte 0x00009479
	.4byte 0x97D60000
	.4byte 0
	.4byte 0x00008F53
	.4byte 0
	.4byte 0x0000E773
	.4byte 0
	.4byte 0
	.4byte 0x9741E775
	.4byte 0x0000E774
	.4byte 0
	.4byte 0xE7789760
	.4byte 0
	.4byte 0xE7770000
	.4byte 0x8A8DE776
	.4byte 0xE77B0000
	.4byte 0x0000E77A
	.4byte 0
	.4byte 0xE7799351
	.4byte 0xE77C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E77D
	.4byte 0
	.4byte 0
	.4byte 0xE77E0000
	.4byte 0x00008D8C
	.4byte 0x00008C44
	.4byte 0xE780E781
	.4byte 0xE7820000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009068
	.4byte 0xE7830000
	.4byte 0x8EABE784
	.4byte 0
	.4byte 0x0000E785
	.4byte 0
	.4byte 0x0000999F
	.4byte 0x999E0000
	.4byte 0
	.4byte 0x0000E786
	.4byte 0xE390E787
	.4byte 0x9243904A
	.4byte 0x945F0000
	.4byte 0
	.4byte 0x0000E788
	.4byte 0
	.4byte 0x95D392D2
	.4byte 0x8D9E0000
	.4byte 0x00009248
	.4byte 0
	.4byte 0x89490000
	.4byte 0x96989076
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C7D0000
	.4byte 0x00008BDF
	.4byte 0
	.4byte 0x95D40000
	.4byte 0
	.4byte 0
	.4byte 0xE7890000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE78B0000
	.4byte 0x0000E78A
	.4byte 0x89DE0000
	.4byte 0x000093F4
	.4byte 0xE78C9497
	.4byte 0x00009352
	.4byte 0x0000E78D
	.4byte 0x8F710000
	.4byte 0
	.4byte 0xE78F0000
	.4byte 0x000096C0
	.4byte 0xE79EE791
	.4byte 0xE7920000
	.4byte 0x000092C7
	.4byte 0
lbl_8018DA10:
	.4byte 0x91DE9197
	.4byte 0x000093A6
	.4byte 0x0000E790
	.4byte 0x8B740000
	.4byte 0
	.4byte 0x0000E799
	.4byte 0x0000E796
	.4byte 0xE7A393A7
	.4byte 0x9280E793
	.4byte 0x000092FC
	.4byte 0x9372E794
	.4byte 0xE7989080
	.4byte 0x00009487
	.4byte 0x92CA0000
	.4byte 0x000090C0
	.4byte 0xE79791AC
	.4byte 0x91A2E795
	.4byte 0x88A79841
	.4byte 0
	.4byte 0x0000E79A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91DF0000
	.4byte 0x00008F54
	.4byte 0x90690000
	.4byte 0x0000E79C
	.4byte 0xE79B0000
	.4byte 0x88EDE79D
	.4byte 0
	.4byte 0x954E0000
	.4byte 0xE7A50000
	.4byte 0x000093D9
	.4byte 0x908B0000
	.4byte 0x00009278
	.4byte 0x00008BF6
	.4byte 0x0000E7A4
	.4byte 0x9756895E
	.4byte 0x000095D5
	.4byte 0x89DFE79F
	.4byte 0xE7A0E7A1
	.4byte 0xE7A293B9
	.4byte 0x924288E1
	.4byte 0xE7A60000
	.4byte 0xE7A7EAA1
	.4byte 0
	.4byte 0x91BB0000
	.4byte 0xE7A80000
	.4byte 0x8993916B
	.4byte 0x00008CAD
	.4byte 0x00009779
	.4byte 0
	.4byte 0xE7A9934B
	.4byte 0
	.4byte 0x00009198
	.4byte 0x8ED5E7AA
	.4byte 0
	.4byte 0xE7AD0000
	.4byte 0x00008F85
	.4byte 0xE7AB914A
	.4byte 0x91490000
	.4byte 0x88E20000
	.4byte 0x97C9E7AF
	.4byte 0x000094F0
	.4byte 0xE7B1E7B0
	.4byte 0xE7AEE284
	.4byte 0x8AD20000
	.4byte 0x0000E78E
	.4byte 0x0000E7B3
	.4byte 0xE7B20000
	.4byte 0
	.4byte 0x0000E7B4
	.4byte 0x00009757
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000093DF
	.4byte 0
	.4byte 0x964D0000
	.4byte 0xE7B50000
	.4byte 0x8ED70000
	.4byte 0
	.4byte 0x0000E7B6
	.4byte 0x0000E7B7
	.4byte 0
	.4byte 0x0000E7B8
	.4byte 0
	.4byte 0x93400000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8D780000
	.4byte 0
	.4byte 0x98590000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7BC
	.4byte 0
	.4byte 0
	.4byte 0x00008C53
	.4byte 0xE7B90000
	.4byte 0xE7BA0000
	.4byte 0
	.4byte 0x95940000
	.4byte 0
	.4byte 0x00008A73
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009758
	.4byte 0x00008BBD
	.4byte 0
	.4byte 0
	.4byte 0x00009373
	.4byte 0
lbl_8018DC10:
	.4byte 0
	.4byte 0xE7BD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7BE0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E7BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009341
	.4byte 0
	.4byte 0xE7C10000
	.4byte 0xE7C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000093D1
	.4byte 0xE7C28F55
	.4byte 0x8EDE947A
	.4byte 0x92910000
	.4byte 0
	.4byte 0x8EF00000
	.4byte 0x908C0000
	.4byte 0xE7C30000
	.4byte 0xE7C40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x907CE7C5
	.4byte 0x0000E7C6
	.4byte 0
	.4byte 0x0000E7C7
	.4byte 0x978F0000
	.4byte 0x8F560000
	.4byte 0
	.4byte 0
	.4byte 0xE7C9E7C8
	.4byte 0x00008D79
	.4byte 0x00008D93
	.4byte 0x8E5F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7CC0000
	.4byte 0
	.4byte 0x00008F86
	.4byte 0x0000E7CB
	.4byte 0x0000E7CA
	.4byte 0x000091E7
	.4byte 0
	.4byte 0x8CED0000
	.4byte 0x90C10000
	.4byte 0
	.4byte 0x000094AE
	.4byte 0
	.4byte 0
	.4byte 0x8F580000
	.4byte 0
	.4byte 0
	.4byte 0xE7CD0000
	.4byte 0x8FDD0000
	.4byte 0
	.4byte 0
	.4byte 0xE7D0E7CE
	.4byte 0
	.4byte 0x0000E7CF
	.4byte 0
	.4byte 0
	.4byte 0xE7D2E7D1
	.4byte 0
	.4byte 0x8FF80000
	.4byte 0xE7D30000
	.4byte 0
	.4byte 0
	.4byte 0xE7D4E7D5
	.4byte 0
	.4byte 0
	.4byte 0x94CE8DD1
	.4byte 0x8EDFE7D6
	.4byte 0x0000E7D7
	.4byte 0x97A28F64
	.4byte 0x96EC97CA
	.4byte 0xE7D88BE0
	.4byte 0
	.4byte 0
	.4byte 0xE7D90000
	.4byte 0x93420000
	.4byte 0x0000E7DC
	.4byte 0x8A98906A
	.4byte 0x0000E7DA
	.4byte 0x0000E7DB
	.4byte 0x000092DE
	.4byte 0
	.4byte 0x96748BFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7DE
	.4byte 0xE7DF0000
	.4byte 0
	.4byte 0
	.4byte 0xE7DD0000
	.4byte 0x0000E7E1
lbl_8018DE10:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000093DD
	.4byte 0x8A620000
	.4byte 0x0000E7E5
	.4byte 0
	.4byte 0xE7E2E7E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7E00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E86E
	.4byte 0
	.4byte 0xE7E30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97E90000
	.4byte 0x00008CD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7ED
	.4byte 0
	.4byte 0
	.4byte 0x9353E7E8
	.4byte 0
	.4byte 0xE7EBE7E9
	.4byte 0x0000E7EE
	.4byte 0
	.4byte 0
	.4byte 0xE7EF0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E7E7
	.4byte 0
	.4byte 0xE7F48994
	.4byte 0
	.4byte 0xE7E60000
	.4byte 0
	.4byte 0x94AB0000
	.4byte 0xE7EA0000
	.4byte 0x8FDE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008D7A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96670000
	.4byte 0x8BE20000
	.4byte 0x00008F65
	.4byte 0x000093BA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000914C
	.4byte 0x0000E7F2
	.4byte 0x0000E7EC
	.4byte 0xE7F10000
	.4byte 0x96C10000
	.4byte 0x92B6E7F3
	.4byte 0xE7F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000914B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7F7
	.4byte 0x0000E7F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7F5
	.4byte 0
	.4byte 0x964E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F9B0000
	.4byte 0
	.4byte 0x0000E7F8
	.4byte 0x95DD0000
	.4byte 0x00008973
	.4byte 0
	.4byte 0
	.4byte 0x95659292
	.4byte 0
	.4byte 0
	.4byte 0x8B980000
	.4byte 0xE7FA0000
	.4byte 0x8D7C0000
	.4byte 0
lbl_8018E010:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E4B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7F9
	.4byte 0x908D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x908EE840
	.4byte 0xE8420000
	.4byte 0
	.4byte 0
	.4byte 0x8FF90000
	.4byte 0xE841E843
	.4byte 0
	.4byte 0x8BD10000
	.4byte 0x95640000
	.4byte 0x00008EE0
	.4byte 0x98420000
	.4byte 0xE7FC8DF6
	.4byte 0
	.4byte 0x985E0000
	.4byte 0x0000E845
	.4byte 0
	.4byte 0
	.4byte 0xE844E846
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7FB0000
	.4byte 0
	.4byte 0
	.4byte 0x000093E7
	.4byte 0x00009374
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x92D50000
	.4byte 0xE84B0000
	.4byte 0
	.4byte 0x00009262
	.4byte 0xE8470000
	.4byte 0
	.4byte 0xE8480000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C4C0000
	.4byte 0xE84A0000
	.4byte 0
	.4byte 0
	.4byte 0x00008CAE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8490000
	.4byte 0x8FDF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8A990000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE84F0000
	.4byte 0x8DBD9199
	.4byte 0
	.4byte 0x92C80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008A5A
	.4byte 0
	.4byte 0
	.4byte 0xE84DE84E
	.4byte 0x92C10000
	.4byte 0xE84C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E850
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E856
	.4byte 0
	.4byte 0
	.4byte 0xE8590000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE858934C
	.4byte 0
	.4byte 0
	.4byte 0xE851E852
	.4byte 0xE8550000
	.4byte 0
	.4byte 0x0000E857
	.4byte 0
	.4byte 0x00008BBE
	.4byte 0
	.4byte 0xE85AE854
	.4byte 0
	.4byte 0xE8530000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018E210:
	.4byte 0
	.4byte 0x0000E85E
	.4byte 0
	.4byte 0x0000E85F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8600000
	.4byte 0x0000E85D
	.4byte 0xE85C0000
	.4byte 0
	.4byte 0x8FE093A8
	.4byte 0xE85B0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E864
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E862
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E863
	.4byte 0xE8610000
	.4byte 0x91F60000
	.4byte 0xE8650000
	.4byte 0
	.4byte 0
	.4byte 0x0000E866
	.4byte 0
	.4byte 0xE8680000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008AD3
	.4byte 0xE86796F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE873E869
	.4byte 0
	.4byte 0xE86C0000
	.4byte 0xE86A0000
	.4byte 0xE86B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE86D0000
	.4byte 0
	.4byte 0
	.4byte 0xE86F0000
	.4byte 0
	.4byte 0x0000E870
	.4byte 0x0000E871
	.4byte 0
	.4byte 0
	.4byte 0xE874E872
	.4byte 0xE875E877
	.4byte 0x0000E876
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018E410:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000092B7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96E50000
	.4byte 0xE878914D
	.4byte 0
	.4byte 0x0000E879
	.4byte 0x000095C2
	.4byte 0xE87A8A4A
	.4byte 0
	.4byte 0x0000895B
	.4byte 0x00008AD5
	.4byte 0x00008AD4
	.4byte 0xE87B0000
	.4byte 0xE87C0000
	.4byte 0xE87DE87E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8800000
	.4byte 0x8AD68A74
	.4byte 0x8D7D94B4
	.4byte 0x0000E882
	.4byte 0xE8810000
	.4byte 0
	.4byte 0x0000E883
	.4byte 0
	.4byte 0
	.4byte 0x897B0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E886
	.4byte 0x0000E885
	.4byte 0xE8840000
	.4byte 0xE8870000
	.4byte 0
	.4byte 0x0000E88A
	.4byte 0
	.4byte 0x000088C5
	.4byte 0
	.4byte 0xE8880000
	.4byte 0xE88CE88B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE88EE88D
	.4byte 0xE88F0000
	.4byte 0x93AC0000
	.4byte 0
	.4byte 0xE8900000
	.4byte 0
	.4byte 0x0000E891
	.4byte 0xE8930000
	.4byte 0x0000E892
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018E610:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x958C0000
	.4byte 0
	.4byte 0x0000E894
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8950000
	.4byte 0x8DE30000
	.4byte 0
	.4byte 0xE896E897
	.4byte 0
	.4byte 0x96680000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000916A
	.4byte 0
	.4byte 0x000088A2
	.4byte 0x91C90000
	.4byte 0xE8980000
	.4byte 0x958D0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E89B
	.4byte 0xE8998D7E
	.4byte 0x0000E89A
	.4byte 0x8CC00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095C3
	.4byte 0xE89DE89F
	.4byte 0xE89EE8A0
	.4byte 0
	.4byte 0x89409077
	.4byte 0x8F9C8AD7
	.4byte 0xE8A10000
	.4byte 0
	.4byte 0x94860000
	.4byte 0xE8A30000
	.4byte 0
	.4byte 0x89410000
	.4byte 0xE8A292C2
	.4byte 0x000097CB
	.4byte 0x93A9E89C
	.4byte 0x97A40000
	.4byte 0x8CAF0000
	.4byte 0x0000977A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008BF7
	.4byte 0x97B20000
	.4byte 0x8C470000
	.4byte 0x91E0E440
	.4byte 0x0000E8A4
	.4byte 0x8A4B908F
	.4byte 0
	.4byte 0
	.4byte 0x8A75E8A6
	.4byte 0x0000E8A7
	.4byte 0xE8A58C84
	.4byte 0x00008DDB
	.4byte 0x8FE10000
	.4byte 0
	.4byte 0x89420000
	.4byte 0x000097D7
	.4byte 0
	.4byte 0x0000E8A9
	.4byte 0xE7AC0000
	.4byte 0xE8A80000
	.4byte 0
	.4byte 0
	.4byte 0xE8ACE8AA
	.4byte 0xE8AB0000
	.4byte 0xE8AD0000
	.4byte 0xE8AE97EA
	.4byte 0xE8AFE8B0
	.4byte 0x000090C7
	.4byte 0x94B90000
	.4byte 0
	.4byte 0x909D8AE5
	.4byte 0
	.4byte 0x975989EB
	.4byte 0x8F578CD9
	.4byte 0x0000E8B3
	.4byte 0x0000E8B2
	.4byte 0x8E93E8B4
	.4byte 0xE8B10000
	.4byte 0x00008E47
	.4byte 0
	.4byte 0x0000E8B8
	.4byte 0xE5AB0000
	.4byte 0x000099D4
	.4byte 0x00009097
	.4byte 0xE8B60000
	.4byte 0
	.4byte 0
	.4byte 0x97A393EF
	.4byte 0
	.4byte 0
	.4byte 0x894A0000
	.4byte 0x90E18EB4
	.4byte 0
	.4byte 0
	.4byte 0x95B50000
	.4byte 0x895F0000
	.4byte 0
	.4byte 0x97EB978B
	.4byte 0x0000E8B9
	.4byte 0x00009364
	.4byte 0
	.4byte 0
lbl_8018E810:
	.4byte 0x8EF90000
	.4byte 0
	.4byte 0xE8BA0000
	.4byte 0xE8BB906B
	.4byte 0xE8BC0000
	.4byte 0x97EC0000
	.4byte 0x0000E8B7
	.4byte 0xE8BEE8C0
	.4byte 0x0000E8BF
	.4byte 0x0000E8BD
	.4byte 0
	.4byte 0xE8C10000
	.4byte 0x0000E8C2
	.4byte 0
	.4byte 0x919A0000
	.4byte 0x89E00000
	.4byte 0
	.4byte 0
	.4byte 0xE8C30000
	.4byte 0x000096B6
	.4byte 0
	.4byte 0xE8C40000
	.4byte 0
	.4byte 0
	.4byte 0xE8C50000
	.4byte 0x98490000
	.4byte 0
	.4byte 0
	.4byte 0x9E50E8C6
	.4byte 0
	.4byte 0x0000E8C7
	.4byte 0xE8C80000
	.4byte 0
	.4byte 0xE8CC0000
	.4byte 0xE8C90000
	.4byte 0xE8CA0000
	.4byte 0xE8CBE8CD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90C20000
	.4byte 0
	.4byte 0x96F50000
	.4byte 0x000090C3
	.4byte 0
	.4byte 0xE8CE0000
	.4byte 0x94F10000
	.4byte 0xE8CFEA72
	.4byte 0x96CA0000
	.4byte 0xE8D00000
	.4byte 0xE8D10000
	.4byte 0xE8D28A76
	.4byte 0x0000E8D4
	.4byte 0x00009078
	.4byte 0
	.4byte 0x0000E8D5
	.4byte 0
	.4byte 0x8C430000
	.4byte 0
	.4byte 0x0000E8D6
	.4byte 0xE8DA0000
	.4byte 0xE8D80000
	.4byte 0
	.4byte 0x0000E8D9
	.4byte 0
	.4byte 0x8A93E8D7
	.4byte 0xE8DB0000
	.4byte 0
	.4byte 0x0000E8DC
	.4byte 0x000088C6
	.4byte 0x0000E8DD
	.4byte 0xE8DE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8FE20000
	.4byte 0
	.4byte 0xE8DF0000
	.4byte 0
	.4byte 0x8B660000
	.4byte 0x0000E8E2
	.4byte 0
	.4byte 0xE8E10000
	.4byte 0xE8E00000
	.4byte 0x0000E691
	.4byte 0x000095DA
	.4byte 0
	.4byte 0
	.4byte 0x0000E8E3
	.4byte 0xE8E40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E8E5
	.4byte 0
	.4byte 0xE8E60000
	.4byte 0xE8E70000
	.4byte 0x0000E8E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008AD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8E90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E8EA
	.4byte 0x94420000
	.4byte 0
	.4byte 0xE8EC89B9
	.4byte 0x0000E8EF
	.4byte 0xE8EE0000
	.4byte 0
	.4byte 0x00008943
	.4byte 0
	.4byte 0x00008BBF
lbl_8018EA10:
	.4byte 0x000095C5
	.4byte 0x92B88DA0
	.4byte 0x00008D80
	.4byte 0x8F870000
	.4byte 0x907B0000
	.4byte 0
	.4byte 0xE8F10000
	.4byte 0x0000E8F0
	.4byte 0x97618AE6
	.4byte 0x94D093DA
	.4byte 0
	.4byte 0x0000909C
	.4byte 0x97CC0000
	.4byte 0x8C7A0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E8F4
	.4byte 0
	.4byte 0xE8F30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x966A93AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x896F0000
	.4byte 0x0000E8F5
	.4byte 0xE8F20000
	.4byte 0x00009570
	.4byte 0x978AE8F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8F70000
	.4byte 0
	.4byte 0x0000E8F9
	.4byte 0x91E88A7A
	.4byte 0x8A7BE8F8
	.4byte 0
	.4byte 0
	.4byte 0x8AE78CB0
	.4byte 0
	.4byte 0x8AE80000
	.4byte 0x0000935E
	.4byte 0
	.4byte 0x97DE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008CDA
	.4byte 0
	.4byte 0x0000E8FA
	.4byte 0
	.4byte 0x0000E8FB
	.4byte 0xE8FCE940
	.4byte 0x0000E942
	.4byte 0xE9410000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_8018EB20
	# ROM: 0x18AC20
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x95970000
	.4byte 0xE9430000
	.4byte 0
	.4byte 0x0000E944
	.4byte 0x0000E945
	.4byte 0
	.4byte 0
	.4byte 0xE9460000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E948
	.4byte 0xE9470000
	.4byte 0xE9490000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000094F2
	.4byte 0xE3CA0000
	.4byte 0x00009048
	.4byte 0
	.4byte 0x8B510000
	.4byte 0
	.4byte 0
	.4byte 0x0000E94A
	.4byte 0x0000E94B
	.4byte 0x000099AA
	.4byte 0x9F5A94D1
	.4byte 0
	.4byte 0x88F90000
	.4byte 0x88B90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E94964F
	.4byte 0x8FFC0000
lbl_8018EC10:
	.4byte 0
	.4byte 0x0000E94C
	.4byte 0x000096DD
	.4byte 0
	.4byte 0x0000E94D
	.4byte 0x977B0000
	.4byte 0x89610000
	.4byte 0
	.4byte 0x8E600000
	.4byte 0xE94E89EC
	.4byte 0xE94F0000
	.4byte 0
	.4byte 0xE9500000
	.4byte 0
	.4byte 0x0000E952
	.4byte 0xE9530000
	.4byte 0xE955E951
	.4byte 0
	.4byte 0xE9540000
	.4byte 0
	.4byte 0x8AD90000
	.4byte 0
	.4byte 0xE9560000
	.4byte 0xE9570000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E958
	.4byte 0xE9590000
	.4byte 0
	.4byte 0xE95A0000
	.4byte 0x0000E95C
	.4byte 0
	.4byte 0x0000E95B
	.4byte 0x0000E95E
	.4byte 0xE9610000
	.4byte 0
	.4byte 0xE95DE95F
	.4byte 0xE9600000
	.4byte 0x0000E962
	.4byte 0x00008BC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EF1E963
	.4byte 0xE9648D81
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E965
	.4byte 0
	.4byte 0x8A5D0000
	.4byte 0
	.4byte 0x946EE966
	.4byte 0xE9670000
	.4byte 0
	.4byte 0x00009279
	.4byte 0x93E90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9680000
	.4byte 0
	.4byte 0x0000949D
	.4byte 0
	.4byte 0x91CA8977
	.4byte 0x8BEC0000
	.4byte 0x8BED0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9293E96D
	.4byte 0x8BEE0000
	.4byte 0x000089ED
	.4byte 0
	.4byte 0xE96C0000
	.4byte 0x0000E96A
	.4byte 0x0000E96B
	.4byte 0x0000E969
	.4byte 0
	.4byte 0xE9770000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E96E
	.4byte 0xE96F0000
	.4byte 0x0000E970
	.4byte 0xE9710000
	.4byte 0
	.4byte 0
	.4byte 0xE9730000
	.4byte 0x0000E972
	.4byte 0
	.4byte 0x00008F78
lbl_8018EE10:
	.4byte 0x0000E974
	.4byte 0
	.4byte 0x0000E976
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B52E975
	.4byte 0
	.4byte 0x919B8CB1
	.4byte 0
	.4byte 0
	.4byte 0x0000E978
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91CB0000
	.4byte 0x0000E979
	.4byte 0
	.4byte 0
	.4byte 0x93AB0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E97A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9800000
	.4byte 0xE97D0000
	.4byte 0xE97CE97E
	.4byte 0x0000E97B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E982
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E981
	.4byte 0x0000E984
	.4byte 0
	.4byte 0x8BC1E983
	.4byte 0
	.4byte 0x0000E985
	.4byte 0
	.4byte 0xE9860000
	.4byte 0xE988E987
	.4byte 0
	.4byte 0x0000E989
	.4byte 0xE98BE98A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8D9C0000
	.4byte 0
	.4byte 0x0000E98C
	.4byte 0
	.4byte 0xE98D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8A5B0000
	.4byte 0
	.4byte 0xE98E0000
	.4byte 0
	.4byte 0xE98F0000
	.4byte 0
	.4byte 0x90910000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E990
	.4byte 0x0000E991
	.4byte 0x0000E992
	.4byte 0xE9930000
	.4byte 0
	.4byte 0x8D820000
	.4byte 0
	.4byte 0
	.4byte 0xE994E995
	.4byte 0
	.4byte 0xE996E997
	.4byte 0
	.4byte 0xE9980000
	.4byte 0
	.4byte 0x94AFE99A
	.4byte 0x00009545
	.4byte 0xE99BE999
	.4byte 0x0000E99D
	.4byte 0
	.4byte 0xE99C0000
	.4byte 0x0000E99E
	.4byte 0
	.4byte 0x0000E99F
	.4byte 0
	.4byte 0
lbl_8018F010:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9A10000
	.4byte 0xE9A20000
	.4byte 0
	.4byte 0x0000E9A3
	.4byte 0
	.4byte 0xE9A4E9A5
	.4byte 0x0000E9A6
	.4byte 0x0000E9A7
	.4byte 0xE9A8E9A9
	.4byte 0xE9AA0000
	.4byte 0
	.4byte 0xE9ABE9AC
	.4byte 0x00009F54
	.4byte 0xE9AD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2F6
	.4byte 0x8B530000
	.4byte 0
	.4byte 0x00008A40
	.4byte 0x8DB0E9AF
	.4byte 0xE9AE96A3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E9B1
	.4byte 0xE9B2E9B0
	.4byte 0x0000E9B3
	.4byte 0
	.4byte 0x96820000
	.4byte 0
	.4byte 0xE9B40000
	.4byte 0x8B9B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009844
	.4byte 0
	.4byte 0
	.4byte 0xE9B50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E9B7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x88BC0000
	.4byte 0x0000E9B8
	.4byte 0x95A9E9B6
	.4byte 0
	.4byte 0xE9B9E9BA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E9BB
	.4byte 0xE9BC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9BD0000
	.4byte 0x968E8E4C
	.4byte 0x00008DF8
	.4byte 0x914E0000
	.4byte 0
	.4byte 0
	.4byte 0xE9BE0000
	.4byte 0
	.4byte 0x0000E9C1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9BF0000
	.4byte 0
	.4byte 0
	.4byte 0xE9C20000
	.4byte 0x00008CEF
	.4byte 0xE9C00000
	.4byte 0
	.4byte 0x0000E9C3
	.4byte 0x0000E9C4
	.4byte 0xE9C50000
	.4byte 0xE9C90000
	.4byte 0x8E490000
	.4byte 0
	.4byte 0x000091E2
	.4byte 0
	.4byte 0
	.4byte 0x0000E9CA
	.4byte 0xE9C7E9C6
	.4byte 0xE9C80000
	.4byte 0
	.4byte 0x8C7E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9CEE9CD
	.4byte 0xE9CC0000
	.4byte 0x000088B1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018F210:
	.4byte 0
	.4byte 0
	.4byte 0xE9D80000
	.4byte 0xE9D40000
	.4byte 0xE9D5E9D1
	.4byte 0xE9D70000
	.4byte 0xE9D38A82
	.4byte 0
	.4byte 0x986B0000
	.4byte 0xE9D6E9D2
	.4byte 0xE9D0E9CF
	.4byte 0
	.4byte 0
	.4byte 0x0000E9DA
	.4byte 0
	.4byte 0
	.4byte 0x0000E9DD
	.4byte 0
	.4byte 0xE9DCE9DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009568
	.4byte 0xE9D988F1
	.4byte 0xE9DE0000
	.4byte 0xE9E00000
	.4byte 0
	.4byte 0
	.4byte 0x00008A8F
	.4byte 0xE9CB8956
	.4byte 0
	.4byte 0xE9E20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9E1E9DF
	.4byte 0x924C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96900000
	.4byte 0
	.4byte 0x000097D8
	.4byte 0
	.4byte 0xE9E30000
	.4byte 0
	.4byte 0
	.4byte 0xE9E40000
	.4byte 0
	.4byte 0
	.4byte 0x0000E9E5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9E60000
	.4byte 0xE9E70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000092B9
	.4byte 0x0000E9E8
	.4byte 0x000094B5
	.4byte 0x0000E9ED
	.4byte 0xE9E90000
	.4byte 0
	.4byte 0xE9EA0000
	.4byte 0x00009650
	.4byte 0x96C20000
	.4byte 0x93CE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018F410:
	.4byte 0
	.4byte 0x0000E9EE
	.4byte 0
	.4byte 0xE9EF93BC
	.4byte 0xE9ECE9EB
	.4byte 0
	.4byte 0
	.4byte 0x89A80000
	.4byte 0
	.4byte 0xE9F70000
	.4byte 0x0000E9F6
	.4byte 0
	.4byte 0
	.4byte 0x00008995
	.4byte 0
	.4byte 0x0000E9F4
	.4byte 0
	.4byte 0x0000E9F3
	.4byte 0
	.4byte 0xE9F10000
	.4byte 0x8A9B0000
	.4byte 0xE9F08EB0
	.4byte 0x89A70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008D83
	.4byte 0
	.4byte 0xE9FAE9F9
	.4byte 0x0000E9F8
	.4byte 0
	.4byte 0xE9F50000
	.4byte 0xE9FB0000
	.4byte 0xE9FC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA44EA43
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA45
	.4byte 0
	.4byte 0x894CEA40
	.4byte 0xEA410000
	.4byte 0x8D9496B7
	.4byte 0
	.4byte 0xEA420000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96510000
	.4byte 0x0000EA4A
	.4byte 0
	.4byte 0xEA460000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA4B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA48
	.4byte 0x0000EA47
	.4byte 0
	.4byte 0
	.4byte 0x00008C7B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA4C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA4D0000
	.4byte 0
	.4byte 0x0000EA4E
	.4byte 0x0000EA49
	.4byte 0
	.4byte 0x0000E9F2
	.4byte 0
	.4byte 0xEA4F0000
	.4byte 0x92DF0000
	.4byte 0
	.4byte 0xEA530000
	.4byte 0xEA54EA52
	.4byte 0
	.4byte 0
	.4byte 0x0000EA51
	.4byte 0xEA570000
	.4byte 0xEA500000
	.4byte 0xEA550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA56
	.4byte 0
	.4byte 0x0000EA59
	.4byte 0
	.4byte 0
	.4byte 0x0000EA58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA5B0000
	.4byte 0
	.4byte 0
	.4byte 0x0000EA5C
	.4byte 0x0000EA5D
	.4byte 0
	.4byte 0x98680000
	.4byte 0
	.4byte 0
	.4byte 0xEA5A91E9
	.4byte 0x8DEB0000
	.4byte 0x0000EA5E
	.4byte 0
lbl_8018F610:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA5FEA60
	.4byte 0
	.4byte 0xEA610000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA62
	.4byte 0
	.4byte 0x8CB2EA63
	.4byte 0
	.4byte 0x0000EA64
	.4byte 0x00008EAD
	.4byte 0x0000EA65
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA660000
	.4byte 0x0000EA67
	.4byte 0xEA680000
	.4byte 0
	.4byte 0x0000EA6B
	.4byte 0xEA69985B
	.4byte 0x0000EA6A
	.4byte 0x000097ED
	.4byte 0
	.4byte 0
	.4byte 0x0000EA6C
	.4byte 0x000097D9
	.4byte 0
	.4byte 0
	.4byte 0x0000EA6D
	.4byte 0x949E0000
	.4byte 0x0000EA6E
	.4byte 0xEA700000
	.4byte 0x0000EA71
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA6F8D8D
	.4byte 0x96CB9683
	.4byte 0x9BF50000
	.4byte 0x9F80969B
	.4byte 0
	.4byte 0
	.4byte 0x89A90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA738B6F
	.4byte 0xEA74EA75
	.4byte 0xEA760000
	.4byte 0x8D950000
	.4byte 0xEA770000
	.4byte 0
	.4byte 0xE0D296D9
	.4byte 0x000091E1
	.4byte 0xEA78EA7A
	.4byte 0xEA790000
	.4byte 0xEA7B0000
	.4byte 0
	.4byte 0x0000EA7C
	.4byte 0
	.4byte 0xEA7D0000
	.4byte 0
	.4byte 0
	.4byte 0x0000EA7E
	.4byte 0
	.4byte 0
	.4byte 0xEA800000
	.4byte 0xEA81EA82
	.4byte 0x0000EA83
	.4byte 0x0000EA84
	.4byte 0xEA85EA86
	.4byte 0
lbl_8018F810:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA87
	.4byte 0xEA880000
	.4byte 0
	.4byte 0
	.4byte 0x93430000
	.4byte 0
	.4byte 0x00008CDB
	.4byte 0x0000EA8A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x916CEA8B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA8C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009540
	.4byte 0
	.4byte 0xEA8D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA8EE256
	.4byte 0
	.4byte 0xE6D8E8EB
	.4byte 0
	.4byte 0xEA8F0000
	.4byte 0xEA900000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA92
	.4byte 0xEA93EA94
	.4byte 0x97EEEA91
	.4byte 0
	.4byte 0xEA95EA96
	.4byte 0
	.4byte 0xEA980000
	.4byte 0xEA970000
	.4byte 0
	.4byte 0
	.4byte 0xEA9A0000
	.4byte 0
	.4byte 0xEA9BEA99
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000097B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA9C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA9DE273
	.4byte 0
	.4byte 0xEA9E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
lbl_8018FA10:
	.4byte 0x00008149
	.4byte 0x00008194
	.4byte 0x81908193
	.4byte 0x81950000
	.4byte 0x8169816A
	.4byte 0x8196817B
	.4byte 0x81430000
	.4byte 0x8144815E
	.4byte 0x824F8250
	.4byte 0x82518252
	.4byte 0x82538254
	.4byte 0x82558256
	.4byte 0x82578258
	.4byte 0x81468147
	.4byte 0x81838181
	.4byte 0x81848148
	.4byte 0x81978260
	.4byte 0x82618262
	.4byte 0x82638264
	.4byte 0x82658266
	.4byte 0x82678268
	.4byte 0x8269826A
	.4byte 0x826B826C
	.4byte 0x826D826E
	.4byte 0x826F8270
	.4byte 0x82718272
	.4byte 0x82738274
	.4byte 0x82758276
	.4byte 0x82778278
	.4byte 0x8279816D
	.4byte 0x0000816E
	.4byte 0x814F8151
	.4byte 0x814D8281
	.4byte 0x82828283
	.4byte 0x82848285
	.4byte 0x82868287
	.4byte 0x82888289
	.4byte 0x828A828B
	.4byte 0x828C828D
	.4byte 0x828E828F
	.4byte 0x82908291
	.4byte 0x82928293
	.4byte 0x82948295
	.4byte 0x82968297
	.4byte 0x82988299
	.4byte 0x829A816F
	.4byte 0x81628170
	.4byte 0
	.4byte 0x000000A1
	.4byte 0x00A200A3
	.4byte 0x00A400A5
	.4byte 0x00A600A7
	.4byte 0x00A800A9
	.4byte 0x00AA00AB
	.4byte 0x00AC00AD
	.4byte 0x00AE00AF
	.4byte 0x00B000B1
	.4byte 0x00B200B3
	.4byte 0x00B400B5
	.4byte 0x00B600B7
	.4byte 0x00B800B9
	.4byte 0x00BA00BB
	.4byte 0x00BC00BD
	.4byte 0x00BE00BF
	.4byte 0x00C000C1
	.4byte 0x00C200C3
	.4byte 0x00C400C5
	.4byte 0x00C600C7
	.4byte 0x00C800C9
	.4byte 0x00CA00CB
	.4byte 0x00CC00CD
	.4byte 0x00CE00CF
	.4byte 0x00D000D1
	.4byte 0x00D200D3
	.4byte 0x00D400D5
	.4byte 0x00D600D7
	.4byte 0x00D800D9
	.4byte 0x00DA00DB
	.4byte 0x00DC00DD
	.4byte 0x00DE00DF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008150
	.4byte 0x0000818F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_8018FC10
	# ROM: 0x18BD10
	.4byte lbl_80184210
	.4byte 0
	.4byte 0
	.4byte lbl_80184410
	.4byte lbl_80184610
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80184810
	.4byte lbl_80184A10
	.4byte lbl_80184C10
	.4byte lbl_80184E10
	.4byte 0
	.4byte lbl_80185010
	.4byte lbl_80185210
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80185410
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80185610
	.4byte lbl_80185810
	.4byte lbl_80185A10
	.4byte lbl_80185C10
	.4byte lbl_80185E10
	.4byte lbl_80186010
	.4byte lbl_80186210
	.4byte lbl_80186410
	.4byte lbl_80186610
	.4byte lbl_80186810
	.4byte lbl_80186A10
	.4byte lbl_80186C10
	.4byte lbl_80186E10
	.4byte lbl_80187010
	.4byte lbl_80187210
	.4byte lbl_80187410
	.4byte lbl_80187610
	.4byte lbl_80187810
	.4byte lbl_80187A10
	.4byte lbl_80187C10
	.4byte lbl_80187E10
	.4byte lbl_80188010
	.4byte lbl_80188210
	.4byte lbl_80188410
	.4byte lbl_80188610
	.4byte lbl_80188810
	.4byte lbl_80188A10
	.4byte lbl_80188C10
	.4byte lbl_80188E10
	.4byte lbl_80189010
	.4byte lbl_80189210
	.4byte lbl_80189410
	.4byte lbl_80189610
	.4byte lbl_80189810
	.4byte lbl_80189A10
	.4byte lbl_80189C10
	.4byte lbl_80189E10
	.4byte lbl_8018A010
	.4byte lbl_8018A210
	.4byte lbl_8018A410
	.4byte lbl_8018A610
	.4byte lbl_8018A810
	.4byte lbl_8018AA10
	.4byte lbl_8018AC10
	.4byte lbl_8018AE10
	.4byte lbl_8018B010
	.4byte lbl_8018B210
	.4byte lbl_8018B410
	.4byte lbl_8018B610
	.4byte lbl_8018B810
	.4byte lbl_8018BA10
	.4byte lbl_8018BC10
	.4byte lbl_8018BE10
	.4byte lbl_8018C010
	.4byte lbl_8018C210
	.4byte lbl_8018C410
	.4byte lbl_8018C610
	.4byte lbl_8018C810
	.4byte lbl_8018CA10
	.4byte lbl_8018CC10
	.4byte lbl_8018CE10
	.4byte lbl_8018D010
	.4byte lbl_8018D210
	.4byte lbl_8018D410
	.4byte lbl_8018D610
	.4byte lbl_8018D810
	.4byte lbl_8018DA10
	.4byte lbl_8018DC10
	.4byte lbl_8018DE10
	.4byte lbl_8018E010
	.4byte lbl_8018E210
	.4byte lbl_8018E410
	.4byte lbl_8018E610
	.4byte lbl_8018E810
	.4byte lbl_8018EA10
	.4byte lbl_8018EC10
	.4byte lbl_8018EE10
	.4byte lbl_8018F010
	.4byte lbl_8018F210
	.4byte lbl_8018F410
	.4byte lbl_8018F610
	.4byte lbl_8018F810
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8018FA10

glabel lbl_80190010
	# ROM: 0x18C110
	.asciz "/dev/stm/immediate"
	.balign 4

glabel lbl_80190024
	# ROM: 0x18C124
	.asciz "/dev/stm/eventhook"
	.balign 4

glabel lbl_80190038
	# ROM: 0x18C138
	.asciz "OSStateTM.c"

glabel lbl_80190044
	# ROM: 0x18C144
	.asciz "Error: The firmware doesn't support shutdown feature.\n"
	.balign 4

glabel lbl_8019007C
	# ROM: 0x18C17C
	.asciz "Error: The firmware doesn't support reboot feature.\n"
	.balign 4

glabel lbl_801900B4
	# ROM: 0x18C1B4
	.asciz "Error on STM state event handler\n"
	.balign 4

glabel lbl_801900D8
	# ROM: 0x18C1D8
	.asciz "/title/00000001/00000002/data/play_rec.dat"
	.balign 4

glabel lbl_80190104
	# ROM: 0x18C204
	.4byte lbl_80099DF4
	.4byte lbl_80099E00
	.4byte lbl_80099E7C
	.4byte lbl_80099EC0
	.4byte lbl_80099EE8
	.4byte lbl_80099EF4
	.4byte lbl_80099F7C

glabel lbl_80190120
	# ROM: 0x18C220
	.asciz "/title/00000001/00000002/data/state.dat"

glabel lbl_80190148
	# ROM: 0x18C248
	.asciz "Failed to register network shutdown function. %d\n"
	.balign 4
	.asciz "Failed to suspend the WiiConnect24 scheduler. %d\n"
	.balign 4
	.asciz "Failed to synchronize time with network resource managers. %d\n"
	.balign 4
	.asciz "NWC24iPrepareShutdown"
	.balign 4

glabel lbl_80190208
	# ROM: 0x18C308
	.asciz "/dev/net/kd/request"
	.asciz "NWC24SuspendScheduler"
	.balign 4
	.asciz "NWC24ResumeScheduler"
	.balign 4
	.asciz "NWC24iRequestShutdown"
	.balign 4

glabel lbl_80190264
	# ROM: 0x18C364
	.asciz "NWC24Shutdown_: Give up!\n"
	.balign 4
	.asciz "NWC24iSetRtcCounter_"
	.balign 4

glabel lbl_80190298
	# ROM: 0x18C398
	.asciz "/dev/net/kd/time"
	.balign 8

glabel lbl_801902B0
	# ROM: 0x18C3B0
	.asciz "/shared2/sys/NANDBOOTINFO"
	.balign 8

glabel lbl_801902D0
	.asciz "<< RVL_SDK - EXI \trelease build: Nov 30 2006 03:26:56 (0x4199_60831) >>"

glabel lbl_80190318
	.asciz "<< RVL_SDK - SI \trelease build: Nov 30 2006 03:31:44 (0x4199_60831) >>"
	.balign 4

glabel lbl_80190360
	# ROM: 0x18C460
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80190378
	# ROM: 0x18C478
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008

glabel lbl_80190388
	# ROM: 0x18C488
	.4byte 0x00F60200
	.4byte 0x000E1300
	.4byte 0x001E0900
	.4byte 0x002C0600
	.4byte 0x00340500
	.4byte 0x00410400
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x01280200
	.4byte 0x000F1500
	.4byte 0x001D0B00
	.4byte 0x002D0700
	.4byte 0x00340600
	.4byte 0x003F0500
	.4byte 0x004E0400
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x009C0200
	.asciz "SISetSamplingRate: unknown TV format. Use default."
	.balign 8

glabel lbl_80190420
	# ROM: 0x18C520
	.asciz "DBExceptionDestination\n"

glabel lbl_80190438
	# ROM: 0x18C538
	.asciz "<< RVL_SDK - VI \trelease build: Nov 30 2006 03:31:49 (0x4199_60831) >>"
	.balign 4

glabel lbl_80190480
	# ROM: 0x18C580
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x00040C0C
	.4byte 0x0C0C0208
	.4byte 0x02080208
	.4byte 0x0208020E
	.4byte 0x01AD4047
	.4byte 0x69A20175
	.4byte 0x7A00019C
	.4byte 0x0500011F
	.4byte 0x00230024
	.4byte 0x00010000
	.4byte 0x0D0C0B0A
	.4byte 0x026B026A
	.4byte 0x0269026C
	.4byte 0x027101B0
	.4byte 0x404B6AAC
	.4byte 0x017C8500
	.4byte 0x01A40500
	.4byte 0x011F0021
	.4byte 0x00210002
	.4byte 0x00020D0B
	.4byte 0x0D0B026B
	.4byte 0x026D026B
	.4byte 0x026D0270
	.4byte 0x01B0404B
	.4byte 0x6AAC017C
	.4byte 0x850001A4
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x100F0E0D
	.4byte 0x02060205
	.4byte 0x02040207
	.4byte 0x020D01AD
	.4byte 0x404E70A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x0004100E
	.4byte 0x100E0206
	.4byte 0x02080206
	.4byte 0x0208020E
	.4byte 0x01AD404E
	.4byte 0x70A20175
	.4byte 0x7A00019C
	.4byte 0x0C0001E0
	.4byte 0x00300030
	.4byte 0x00060006
	.4byte 0x18181818
	.4byte 0x040E040E
	.4byte 0x040E040E
	.4byte 0x041A01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0C00
	.4byte 0x01E0002C
	.4byte 0x002C000A
	.4byte 0x000A1818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69A8017B
	.4byte 0x7A00019C
	.4byte 0x060000F1
	.4byte 0x00180019
	.4byte 0x00010000
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x4047699F
	.4byte 0x01727A00
	.4byte 0x019C0C00
	.4byte 0x01E00030
	.4byte 0x00300006
	.4byte 0x00061818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69B40187
	.4byte 0x7A00019C
	.4byte 0x0A000240
	.4byte 0x003E003E
	.4byte 0x00060006
	.4byte 0x14141414
	.4byte 0x04D804D8
	.4byte 0x04D804D8
	.4byte 0x04E201B0
	.4byte 0x404B6AAC
	.4byte 0x017C7A00
	.4byte 0x019C0000

glabel lbl_80190624
	# ROM: 0x18C724
	.4byte 0x01F001DC
	.4byte 0x01AE0174
	.4byte 0x012900DB
	.4byte 0x008E0046
	.4byte 0x000C00E2
	.4byte 0x00CB00C0
	.4byte 0x00C400CF
	.4byte 0x00DE00EC
	.4byte 0x00FC0008
	.4byte 0x000F0013
	.4byte 0x0013000F
	.4byte 0x000C0008
	.4byte 0x00010000

glabel lbl_80190658
	# ROM: 0x18C758
	.4byte VIOnShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

glabel lbl_80190668
	# ROM: 0x18C768
	.4byte lbl_8009E91C
	.4byte lbl_8009E924
	.4byte lbl_8009E92C
	.4byte lbl_8009E91C
	.4byte lbl_8009E924
	.4byte lbl_8009E92C
	.4byte lbl_8009E91C
	.4byte lbl_8009E91C

glabel lbl_80190688
	# ROM: 0x18C788
	.4byte lbl_8009EE8C
	.4byte lbl_8009EE98
	.4byte lbl_8009EF04
	.4byte lbl_8009EF14
	.4byte lbl_8009EEA8
	.4byte lbl_8009EEB8
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF6C
	.4byte lbl_8009EEE4
	.4byte lbl_8009EEF4
	.4byte lbl_8009EF04
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF24
	.4byte lbl_8009EF34
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF6C
	.4byte lbl_8009EEC8
	.4byte lbl_8009EED4
	.4byte lbl_8009EF04
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF44
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF54
	.4byte lbl_8009EF6C
	.4byte lbl_8009EF64
	.4byte lbl_8009EF64
	.4byte lbl_8009EF64

glabel lbl_80190704
	# ROM: 0x18C804
	.4byte lbl_8009F614
	.4byte lbl_8009F61C
	.4byte lbl_8009F624
	.4byte lbl_8009F614
	.4byte lbl_8009F61C
	.4byte lbl_8009F624
	.4byte lbl_8009F614
	.4byte lbl_8009F614
	.asciz "***************************************\n"
	.balign 4
	.asciz " ! ! ! C A U T I O N ! ! !             \n"
	.balign 4
	.asciz "This TV format \"DEBUG_PAL\" is only for \n"
	.balign 4
	.asciz "temporary solution until PAL DAC board \n"
	.balign 4
	.asciz "is available. Please do NOT use this   \n"
	.balign 4
	.asciz "mode in real games!!!                  \n"
	.balign 4
	.asciz "VIConfigure(): Tried to change mode from (%d) to (%d), which is forbidden\n"
	.balign 4

glabel lbl_80190878
	# ROM: 0x18C978
	.4byte lbl_800A09BC
	.4byte lbl_800A09C4
	.4byte lbl_800A09C8
	.4byte lbl_800A09BC
	.4byte lbl_800A09C4
	.4byte lbl_800A09C8
	.4byte lbl_800A09BC
	.4byte lbl_800A09BC

glabel lbl_80190898
	# ROM: 0x18C998
	.4byte lbl_800A0C98
	.4byte lbl_800A0CA0
	.4byte lbl_800A0CA4
	.4byte lbl_800A0C98
	.4byte lbl_800A0CA0
	.4byte lbl_800A0CA4
	.4byte lbl_800A0C98
	.4byte lbl_800A0C98

glabel lbl_801908B8
	# ROM: 0x18C9B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00300397
	.4byte 0x3B49101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x10001000
	.4byte 0x10001080
	.4byte 0x1B80EB00
	.4byte 0x00000028
	.4byte 0x005A02DB
	.4byte 0x0D8D3049
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10001000
	.4byte 0x10401100
	.4byte 0x18804200
	.4byte 0xEB000000
	.4byte 0x007A023C
	.4byte 0x076D129C
	.4byte 0x2724101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x100010C0
	.4byte 0x15802900
	.4byte 0x6200EB00
	.4byte 0x004E0199
	.4byte 0x052D0B24
	.4byte 0x142920A4
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10001040
	.4byte 0x12C01DC0
	.4byte 0x3B0078C0
	.4byte 0xEB0000EC
	.4byte 0x03D70800
	.4byte 0x0D9E143E
	.4byte 0x1BDB101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x10C016C0
	.4byte 0x27C04B80
	.4byte 0x8980EB00
	.4byte 0x02760666
	.4byte 0x0A960EF3
	.4byte 0x13AC1849
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10001200
	.4byte 0x1C003280
	.4byte 0x59C09600
	.4byte 0xEB0004EC
	.4byte 0x08F50C96
	.4byte 0x0FCF12C6
	.4byte 0x1580101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x14002200
	.4byte 0x3CC06640
	.4byte 0x9FC0EB00
	.4byte 0x08000BAE
	.4byte 0x0E001030
	.4byte 0x11CB1349
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10001680
	.4byte 0x28C04680
	.4byte 0x7100A780
	.4byte 0xEB000BB1
	.4byte 0x0E140F2D
	.4byte 0x101810E5
	.4byte 0x1180101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x19802F80
	.4byte 0x4FC07A00
	.4byte 0xADC0EB00
	.4byte 0x10001000
	.4byte 0x10001000
	.4byte 0x10001000
	.4byte 0x10204060
	.4byte 0x80A0EB00
	.4byte 0x10002000
	.4byte 0x40006000
	.4byte lbl_8000A000
	.4byte 0xEB0014EC
	.4byte 0x11C21078
	.4byte 0x0FB60F2F
	.4byte 0x0EB6101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x21003CC0
	.4byte 0x5FC08900
	.4byte 0xB780EB00
	.4byte 0x19D81333
	.4byte 0x10D20F6D
	.4byte 0x0E5E0DA4
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10002500
	.4byte 0x430066C0
	.4byte 0x8F40BB40
	.4byte 0xEB001EC4
	.4byte 0x147A110F
	.4byte 0x0F0C0DA1
	.4byte 0x0CB6101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x29004900
	.4byte 0x6D4094C0
	.4byte 0xBE80EB00
	.4byte 0x24001570
	.4byte 0x110F0EAA
	.4byte 0x0D0F0BDB
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10002D40
	.4byte 0x4EC07300
	.4byte 0x9980C180
	.4byte 0xEB00293B
	.4byte 0x163D110F
	.4byte 0x0E300C7D
	.4byte 0x0B24101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x31805440
	.4byte 0x78809DC0
	.4byte 0xC400EB00
	.4byte 0x2E27170A
	.4byte 0x10D20DE7
	.4byte 0x0BEB0A80
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10003580
	.4byte 0x59807D40
	.4byte 0xA1C0C640
	.4byte 0xEB003362
	.4byte 0x175C10D2
	.4byte 0x0D6D0B6D
	.4byte 0x09ED101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x39C05E40
	.4byte 0x8200A540
	.4byte 0xC840EB00
	.4byte 0x384E17AE
	.4byte 0x10B40D0C
	.4byte 0x0AF0096D
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10003DC0
	.4byte 0x62C08640
	.4byte 0xA880CA00
	.4byte 0xEB003D3B
	.4byte 0x1800105A
	.4byte 0x0CC30A72
	.4byte 0x0900101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x41C06740
	.4byte 0x8A00AB80
	.4byte 0xCB80EB00
	.4byte 0x41D81828
	.4byte 0x103C0C49
	.4byte 0x0A1F0892
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10004580
	.4byte 0x6B408DC0
	.4byte 0xAE00CD00
	.4byte 0xEB004676
	.4byte 0x18510FE1
	.4byte 0x0C0009B6
	.4byte 0x0836101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x49406F40
	.4byte 0x9100B080
	.4byte 0xCE40EB00
	.4byte 0x4AC4187A
	.4byte 0x0FA50B9E
	.4byte 0x096307DB
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10004CC0
	.4byte 0x73009440
	.4byte 0xB2C0CF80
	.4byte 0xEB004F13
	.4byte 0x18510F69
	.4byte 0x0B6D090F
	.4byte 0x0780101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x50407640
	.4byte 0x9700B500
	.4byte 0xD0C0EB00
	.4byte 0x5313187A
	.4byte 0x0F0F0B24
	.4byte 0x08BC0736
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10005380
	.4byte 0x79C099C0
	.4byte 0xB700D1C0
	.4byte 0xEB005713
	.4byte 0x18510EF0
	.4byte 0x0AC3087D
	.4byte 0x06ED101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x56C07CC0
	.4byte 0x9C80B8C0
	.4byte 0xD2C0EB00
	.4byte 0x5B131828
	.4byte 0x0E960A92
	.4byte 0x082906B6
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10005A00
	.4byte 0x7FC09EC0
	.4byte 0xBA80D380
	.4byte 0xEB005EC4
	.4byte 0x18000E78
	.4byte 0x0A300800
	.4byte 0x066D101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x5D008280
	.4byte 0xA140BC00
	.4byte 0xD480EB00
	.4byte 0x627617D7
	.4byte 0x0E1E0A00
	.4byte 0x07C10636
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10006000
	.4byte 0x8540A340
	.4byte 0xBD80D540
	.4byte 0xEB0065D8
	.4byte 0x17AE0DE1
	.4byte 0x09CF0782
	.4byte 0x0600101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x62C087C0
	.4byte 0xA540BF00
	.4byte 0xD600EB00
	.4byte 0x693B1785
	.4byte 0x0DA50986
	.4byte 0x074305DB
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10006580
	.4byte 0x8A40A740
	.4byte 0xC040D680
	.4byte 0xEB000000
	.4byte 0x36000000
	.4byte 0
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F600000
	.4byte 0
	.4byte 0
	.4byte 0x3E1D1125
	.4byte 0x11010700
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F60010A
	.4byte 0x00050403
	.4byte 0xFF000000
	.4byte 0x3E171521
	.4byte 0x15050502
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F60010A
	.4byte 0x00050403
	.4byte 0xFF000000
	.4byte 0x361A222A
	.4byte 0x22050200
	.4byte 0x1C3D1403
	.4byte 0xFE0154FE
	.4byte 0x7E600008
	.4byte 0x00040701
	.4byte 0x55010000
	.4byte 0x361A222A
	.4byte 0x22050200
	.4byte 0x1C3D1403
	.4byte 0xFE0154FE
	.4byte 0x7E600008
	.4byte 0x00040701
	.4byte 0x55010000
	.4byte 0x361A222A
	.4byte 0x22050200
	.4byte 0x1C3D1403
	.4byte 0xFE0154FE
	.4byte 0x7E600008
	.4byte 0x00040701
	.4byte 0x55010000
	.4byte 0x36000000
	.4byte 0
	.4byte 0x1B1B2407
	.4byte 0xF800001E
	.4byte 0x1E600000
	.4byte 0
	.4byte 0x00010000
	.4byte 0x361D1125
	.4byte 0x11010700
	.4byte 0x1B1B2407
	.4byte 0xF800001E
	.4byte 0x1E60010A
	.4byte 0x00050403
	.4byte 0xFF010000
	.4byte 0x36171521
	.4byte 0x15050502
	.4byte 0x1B1B2407
	.4byte 0xF800001E
	.4byte 0x1E60010A
	.4byte 0x00050403
	.4byte 0xFF010000
	.4byte 0x36000000
	.4byte 0
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F600000
	.4byte 0
	.4byte 0
	.4byte 0x361D1125
	.4byte 0x11010700
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F60010A
	.4byte 0x00050403
	.4byte 0xFF000000
	.4byte 0x36171521
	.4byte 0x15050502
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F60010A
	.4byte 0x00050403
	.4byte 0xFF000000
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80190E60
	# ROM: 0x18CF60
	.asciz "<< RVL_SDK - GX \trelease build: Nov 30 2006 03:30:39 (0x4199_60831) >>"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000011
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000012
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000013
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xBF800000
	.4byte 0xC0000000
	.4byte 0
	.4byte 0

glabel lbl_80190FD0
	# ROM: 0x18D0D0
	.4byte 0
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00030000
	.4byte 0x00040000
	.4byte 0x00050000
	.4byte 0x00060000
	.4byte 0x00070000
	.4byte 0x00008000
	.4byte 0x00018000
	.4byte 0x00028000
	.4byte 0x00038000
	.4byte 0x00048000
	.4byte 0x00058000
	.4byte 0x00068000
	.4byte 0x00078000
	.4byte 0
	.4byte 0x00090000
	.4byte 0x00020000
	.4byte 0x000B0000
	.4byte 0x00040000
	.4byte 0x00098000
	.4byte 0x00060000
	.4byte 0x000B8000
	.4byte 0x00080000
	.4byte 0x00010000
	.4byte 0x000A0000
	.4byte 0x00030000
	.4byte 0x00088000
	.4byte 0x00050000
	.4byte 0x000A8000
	.4byte 0x00070000
	.4byte 0
	.4byte 0x00090000
	.4byte 0x00020000
	.4byte 0x000B0000
	.4byte 0x00040000
	.4byte 0x00090000
	.4byte 0x00060000
	.4byte 0x000B0000
	.4byte 0x00080000
	.4byte 0x00010000
	.4byte 0x000A0000
	.4byte 0x00030000
	.4byte 0x00080000
	.4byte 0x00050000
	.4byte 0x000A0000
	.4byte 0x00070000

glabel lbl_80191090
	# ROM: 0x18D190
	.4byte __GXShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

glabel lbl_801910A0
	# ROM: 0x18D1A0
	.asciz "CPUFifo: %08X - %08X\n"
	.balign 4

glabel lbl_801910B8
	# ROM: 0x18D1B8
	.asciz "GP Fifo: %08X - %08X\n"
	.balign 4

glabel lbl_801910D0
	# ROM: 0x18D1D0
	.4byte lbl_800A50D0
	.4byte lbl_800A50E4
	.4byte lbl_800A50F8
	.4byte lbl_800A510C
	.4byte lbl_800A5120
	.4byte lbl_800A5134
	.4byte lbl_800A5148
	.4byte lbl_800A515C
	.4byte lbl_800A5170
	.4byte lbl_800A5184
	.4byte lbl_800A5198
	.4byte lbl_800A5200
	.4byte lbl_800A5214
	.4byte lbl_800A5228
	.4byte lbl_800A523C
	.4byte lbl_800A5250
	.4byte lbl_800A5264
	.4byte lbl_800A5278
	.4byte lbl_800A528C
	.4byte lbl_800A52A0
	.4byte lbl_800A52B4
	.4byte lbl_800A52C4
	.4byte lbl_800A52C4
	.4byte lbl_800A52C4
	.4byte lbl_800A52C4
	.4byte lbl_800A51CC

glabel lbl_80191138
	# ROM: 0x18D238
	.4byte lbl_800A5554
	.4byte lbl_800A556C
	.4byte lbl_800A55A8
	.4byte lbl_800A55BC
	.4byte lbl_800A55D0
	.4byte lbl_800A55E8
	.4byte lbl_800A5600
	.4byte lbl_800A5618
	.4byte lbl_800A5630
	.4byte lbl_800A5650
	.4byte lbl_800A5668
	.4byte lbl_800A5680
	.4byte lbl_800A5694
	.4byte lbl_800A5694
	.4byte lbl_800A5694
	.4byte lbl_800A5694
	.4byte lbl_800A556C
	.4byte lbl_800A5708
	.4byte lbl_800A5720
	.4byte lbl_800A575C
	.4byte lbl_800A5770
	.4byte lbl_800A5784
	.4byte lbl_800A579C
	.4byte lbl_800A57B4
	.4byte lbl_800A57CC
	.4byte lbl_800A57E4
	.4byte lbl_800A5804
	.4byte lbl_800A581C
	.4byte lbl_800A5834
	.4byte lbl_800A5848
	.4byte lbl_800A5848
	.4byte lbl_800A5848
	.4byte lbl_800A5848
	.4byte lbl_800A5720

glabel lbl_801911C0
	# ROM: 0x18D2C0
	.4byte lbl_800A5AF4
	.4byte lbl_800A5B04
	.4byte lbl_800A5B14
	.4byte lbl_800A5B24
	.4byte lbl_800A5B34
	.4byte lbl_800A5B44
	.4byte lbl_800A5B54

glabel lbl_801911DC
	# ROM: 0x18D2DC
	.4byte lbl_800A5984
	.4byte lbl_800A5990
	.4byte lbl_800A599C
	.4byte lbl_800A59A8
	.4byte lbl_800A59C4
	.4byte lbl_800A59CC
	.4byte lbl_800A59D4
	.4byte lbl_800A59DC
	.4byte lbl_800A59E4
	.4byte lbl_800A59EC
	.4byte lbl_800A59F4
	.4byte lbl_800A59FC
	.4byte lbl_800A5A00
	.4byte lbl_800A5A00
	.4byte lbl_800A5A00
	.4byte lbl_800A5A00
	.4byte lbl_800A5A00
	.4byte lbl_800A5A00
	.4byte lbl_800A5A00
	.4byte lbl_800A59B4
	.4byte lbl_800A59BC

glabel lbl_80191230
	# ROM: 0x18D330
	.4byte 0
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

glabel lbl_8019126C
	# ROM: 0x18D36C
	.4byte 0x00000002
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

glabel lbl_801912A8
	# ROM: 0x18D3A8
	.4byte 0x00000008
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

glabel lbl_801912E4
	# ROM: 0x18D3E4
	.4byte 0x00000004
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

glabel lbl_80191320
	# ROM: 0x18D420
	.4byte 0x00000014
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000
	.4byte 0

glabel lbl_80191360
	# ROM: 0x18D460
	.4byte lbl_800A7834
	.4byte lbl_800A7840
	.4byte lbl_800A7840
	.4byte lbl_800A784C
	.4byte lbl_800A784C
	.4byte lbl_800A784C
	.4byte lbl_800A784C
	.4byte lbl_800A7858
	.4byte lbl_800A7834
	.4byte lbl_800A7840
	.4byte lbl_800A784C
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7834
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7840
	.4byte lbl_800A7858
	.4byte lbl_800A784C
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A784C
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7834
	.4byte lbl_800A7858
	.4byte lbl_800A7840
	.4byte lbl_800A784C
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7840
	.4byte lbl_800A7840
	.4byte lbl_800A7840
	.4byte lbl_800A7840
	.4byte lbl_800A784C
	.4byte lbl_800A784C
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7834
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7858
	.4byte lbl_800A7840
	.4byte lbl_800A7840
	.4byte lbl_800A7858
	.4byte lbl_800A784C

glabel lbl_80191454
	# ROM: 0x18D554
	.4byte lbl_800A7A18
	.4byte lbl_800A7A2C
	.4byte lbl_800A7A2C
	.4byte lbl_800A7A40
	.4byte lbl_800A7A40
	.4byte lbl_800A7A40
	.4byte lbl_800A7A54
	.4byte lbl_800A7A7C
	.4byte lbl_800A7A18
	.4byte lbl_800A7A2C
	.4byte lbl_800A7A40
	.4byte lbl_800A7A7C
	.4byte lbl_800A7A7C
	.4byte lbl_800A7A7C
	.4byte lbl_800A7A68

glabel lbl_80191490
	# ROM: 0x18D590
	.4byte 0xC008F8AF
	.4byte 0xC008A89F
	.4byte 0xC008AC8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFFA
	.4byte 0xC008F80F
	.4byte 0xC008089F
	.4byte 0xC0080C8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFF0
	.4byte 0xC108F2F0
	.4byte 0xC108FFD0
	.4byte 0xC108F2F0
	.4byte 0xC108FFC0
	.4byte 0xC108FFD0
	.4byte 0xC108F070
	.4byte 0xC108FF80
	.4byte 0xC108F070
	.4byte 0xC108FFC0
	.4byte 0xC108FF80

glabel lbl_801914E0
	# ROM: 0x18D5E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0

glabel lbl_80191508
	# ROM: 0x18D608
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005

glabel lbl_80191528
	# ROM: 0x18D628
	.4byte lbl_800AA104
	.4byte lbl_800AA120
	.4byte lbl_800AA13C
	.4byte lbl_800AA158
	.4byte lbl_800AA1AC
	.4byte lbl_800AA1C8
	.4byte lbl_800AA1E4
	.4byte lbl_800AA200
	.4byte lbl_800AA174
	.4byte lbl_800AA21C
	.4byte lbl_800AA24C
	.4byte lbl_800AA27C
	.4byte lbl_800AA2AC
	.4byte lbl_800AA2DC
	.4byte lbl_800AA30C
	.4byte lbl_800AA33C
	.4byte lbl_800AA36C
	.4byte lbl_800AA398
	.4byte lbl_800AA3A8
	.4byte lbl_800AA3B8
	.4byte lbl_800AA3C8
	.4byte lbl_800AA190
	.4byte lbl_800AA3D4

glabel lbl_80191584
	# ROM: 0x18D684
	.4byte lbl_800A9CE0
	.4byte lbl_800A9D00
	.4byte lbl_800A9D20
	.4byte lbl_800A9D40
	.4byte lbl_800A9D60
	.4byte lbl_800A9D80
	.4byte lbl_800A9DA0
	.4byte lbl_800A9DC0
	.4byte lbl_800A9DE0
	.4byte lbl_800A9E00
	.4byte lbl_800A9E40
	.4byte lbl_800A9E60
	.4byte lbl_800A9E7C
	.4byte lbl_800A9E98
	.4byte lbl_800A9EB4
	.4byte lbl_800A9ED0
	.4byte lbl_800A9EEC
	.4byte lbl_800A9F08
	.4byte lbl_800A9F24
	.4byte lbl_800A9F40
	.4byte lbl_800A9F5C
	.4byte lbl_800A9F78
	.4byte lbl_800A9F94
	.4byte lbl_800A9FB0
	.4byte lbl_800A9FCC
	.4byte lbl_800A9FE8
	.4byte lbl_800AA004
	.4byte lbl_800AA020
	.4byte lbl_800AA03C
	.4byte lbl_800AA058
	.4byte lbl_800AA074
	.4byte lbl_800AA090
	.4byte lbl_800AA0AC
	.4byte lbl_800AA0C8
	.4byte lbl_800A9E20
	.4byte lbl_800AA0E0
	.4byte 0
	.asciz "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"

glabel lbl_801916E0
	# ROM: 0x18D7E0
	.asciz "DVDReadAsync(): specified area is out of the file  "

glabel lbl_80191714
	# ROM: 0x18D814
	.asciz "DVDRead(): specified area is out of the file  "
	.balign 4

glabel lbl_80191744
	# ROM: 0x18D844
	.asciz "Warning: DVDOpenDir(): file '%s' was not found under %s.\n"
	.balign 4

glabel lbl_80191780
	.asciz "<< RVL_SDK - DVD \trelease build: Apr 24 2007 11:44:29 (0x4199_60831) >>"

glabel lbl_801917C8
	# ROM: 0x18D8C8
	.asciz "DVDChangeDisk(): FST in the new disc is too big.   "

glabel lbl_801917FC
	# ROM: 0x18D8FC
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFE4
	.4byte lbl_800ACFE4
	.4byte lbl_800ACFF0
	.4byte lbl_800ACF90
	.4byte lbl_800ACF90
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACF90
	.4byte lbl_800ACFF0
	.4byte lbl_800ACF90
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFF0
	.4byte lbl_800ACFC4
	.4byte lbl_800ACF90
	.4byte lbl_800ACF90
	.4byte lbl_800ACFCC
	.4byte lbl_800ACFCC
	.4byte lbl_800ACF90
	.4byte lbl_800ACFCC

glabel lbl_80191898
	# ROM: 0x18D998
	.4byte lbl_800AE05C
	.4byte lbl_800ADCC4
	.4byte lbl_800ADDEC
	.4byte lbl_800ADE08
	.4byte lbl_800ADCC4
	.4byte lbl_800ADCA0
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800ADE38
	.4byte lbl_800ADE58
	.4byte lbl_800ADE20
	.4byte lbl_800ADE7C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800AE05C
	.4byte lbl_800ADE9C
	.4byte lbl_800ADEB4
	.4byte lbl_800ADFDC
	.4byte lbl_800AE008
	.4byte lbl_800AE030
	.4byte lbl_800AE040
	.4byte lbl_800AE020
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

glabel lbl_80191940
	# ROM: 0x18DA40
	.4byte lbl_800AEDF4
	.4byte lbl_800AED94
	.4byte lbl_800AED94
	.4byte lbl_800AEDF4
	.4byte lbl_800AED74
	.4byte lbl_800AED74
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AED74
	.4byte lbl_800AEDF4
	.4byte lbl_800AED74
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AED74
	.4byte lbl_800AED74
	.4byte lbl_800AEDF4
	.4byte lbl_800AEDF4
	.4byte lbl_800AED74

glabel lbl_801919D8
	# ROM: 0x18DAD8
	.4byte lbl_800AEC90
	.4byte lbl_800AEC90
	.4byte lbl_800AECB0
	.4byte lbl_800AED04
	.4byte lbl_800AED50
	.4byte lbl_800AEE20
	.4byte lbl_800AEE20
	.4byte lbl_800AEE20
	.4byte lbl_800AEE20
	.4byte lbl_800AEF6C
	.4byte lbl_800AEF6C
	.4byte lbl_800AEC90
	.4byte lbl_800AEE20
	.4byte lbl_800AEF1C

glabel lbl_80191A10
	# ROM: 0x18DB10
	.asciz "/shared2/test2/dvderror.dat"

glabel lbl_80191A2C
	# ROM: 0x18DB2C
	.asciz "/shared2/test2"
	.balign 8

glabel lbl_80191A40
	.4byte 0x0A0A0A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A83
	.4byte 0x43835783
	.4byte 0x46834E83
	.4byte 0x67837B83
	.4byte 0x5E839382
	.4byte 0xF0899F82
	.4byte 0xB582C483
	.4byte 0x66834283
	.4byte 0x58834E82
	.4byte 0xF08EE682
	.4byte 0xE88F6F82
	.4byte 0xB582C482
	.4byte 0xA90A82E7
	.4byte 0x8141967B
	.4byte 0x91CC82CC
	.4byte 0x93648CB9
	.4byte 0x82F04F46
	.4byte 0x4682C982
	.4byte 0xB582C481
	.4byte 0x41967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC0A
	.4byte 0x8E778EA6
	.4byte 0x82C98F5D
	.4byte 0x82C182C4
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000

glabel lbl_80191AD0
	.asciz "\n\n\nAn error has occurred.\nPress the Eject Button, remove the\nGame Disc, and turn the power off.\nPlease read the Wii operations manual\nfor more information."

glabel lbl_80191B6C
	.4byte 0x0A0A0A45
	.4byte 0x696E2046
	.4byte 0x65686C65
	.4byte 0x72206973
	.4byte 0x74206175
	.4byte 0x66676574
	.4byte 0x72657465
	.4byte 0x6E2E0A44
	.4byte 0x72FC636B
	.asciz "e den Ausgabeknopf, entnimm die\nGame Disc und schalte die Wii-Konsole\naus. Bitte lies die Bedienungsanleitung der\nWii-Konsole, um weitere Informationen zu\nerhalten."
	.balign 4

glabel lbl_80191C38
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652E0A
	.4byte 0x41707075
	.4byte 0x79657A20
	.4byte 0x73757220
	.4byte 0x6C652062
	.4byte 0x6F75746F
	.4byte 0x6E20454A
	.4byte 0x4543542C
	.4byte 0x20726574
	.4byte 0x6972657A
	.4byte 0x0A6C6520
	.4byte 0x64697371
	.4byte 0x75652064
	.4byte 0x65206A65
	.4byte 0x75206574
	.4byte 0x20E97465
	.4byte 0x69676E65
	.4byte 0x7A206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C65
	.4byte 0x2E0A5665
	.4byte 0x75696C6C
	.4byte 0x657A2076
	.4byte 0x6F757320
	.4byte 0x72E966E9
	.asciz "rer au mode d'emploi\nde la console pour de plus amples\ninformations."
	.balign 4

glabel lbl_80191CFC
	.4byte 0x0A0A0A53
	.4byte 0x65206861
	.4byte 0x2070726F
	.4byte 0x64756369
	.4byte 0x646F2075
	.4byte 0x6E206572
	.4byte 0x726F722E
	.4byte 0x0A50756C
	.4byte 0x73612065
	.4byte 0x6C20426F
	.4byte 0x74F36E20
	.4byte 0x454A4543
	.4byte 0x542C2073
	.4byte 0x61636120
	.4byte 0x656C2064
	.4byte 0x6973636F
	.4byte 0x20790A61
	.4byte 0x70616761
	.4byte 0x206C6120
	.4byte 0x636F6E73
	.4byte 0x6F6C612E
	.4byte 0x20436F6E
	.4byte 0x73756C74
	.4byte 0x6120656C
	.4byte 0x206D616E
	.4byte 0x75616C20
	.4byte 0x64650A69
	.4byte 0x6E737472
	.4byte 0x75636369
	.4byte 0x6F6E6573
	.4byte 0x20646520
	.4byte 0x6C612063
	.4byte 0x6F6E736F
	.4byte 0x6C612057
	.4byte 0x69692070
	.4byte 0x6172610A
	.4byte 0x6F627465
	.4byte 0x6E657220
	.4byte 0x6DE17320
	.4byte 0x696E666F
	.4byte 0x726D6163
	.4byte 0x69F36E2E
	.4byte 0

glabel lbl_80191DA8
	.4byte 0x0A0A0A53
	.4byte 0x6920E820
	.asciz "verificato un errore.\nPremi il pulsante EJECT, estrai il disco\ndi gioco e spegni la console. Per maggiori\ninformazioni consulta il manuale di\nistruzioni della console Wii."
	.balign 8

glabel lbl_80191E60
	.asciz "\n\n\nEr is een fout opgetreden.\nDruk op de ejectknop, verwijder de\nspeldisk en zet het systeem uit. Lees\nde Wii-handleiding voor meer informatie."

glabel lbl_80191EF0
	# ROM: 0x18DFF0
	.asciz "(doTransactionCallback) Error - context mangled!\n"
	.balign 4
	.asciz "(doCoverCallback) Error - context mangled!\n"
	.asciz "IPCCltInit returned error: %d\n"
	.balign 4
	.asciz "(ddrAllocAligned32) Not enough space to allocate %d bytes\n"
	.balign 4
	.asciz "Allocation of diCommand blocks failed\n"
	.balign 4
	.asciz "Allocation of pathBuf failed\n"
	.balign 4
	.asciz "(DVDLowInit) Error: IOS_Open failed - pathname '/dev/di' does not exist\n"
	.balign 4
	.asciz "(DVDLowInit) Error: IOS_Open failed - calling thread lacks permission\n"
	.balign 4
	.asciz "(DVDLowInit) Error: IOS_Open failed - connection limit has been reached\n"
	.balign 4
	.asciz "(DVDLowInit) IOS_Open failed, errorcode = %d\n"
	.balign 8
	.asciz "(newContext) ERROR: freeDvdContext.inUse (#%d) is true\n"
	.asciz "(newContext) Now spinning in infinite loop\n"
	.balign 8
	.asciz "(newContext) Something overwrote the context magic - spinning \n"
	.asciz "@@@@@@ WARNING - Calling DVDLowReadDiskId with NULL ptr\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDiskID) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "(DVDLowOpenPartition) eTicket memory is unaligned\n"
	.balign 8
	.asciz "(DVDLowOpenPartition) certificates memory is unaligned\n"
	.asciz "@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowClosePartition) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowUnencryptedRead) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowStopMotor) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowWaitForCoverClose) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowInquiry) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowRequestError) IOS_IoctlAsync returned error: %d\n"
	.asciz "(DVDLowSetSpinupFlag): Synch functions can't be called in callbacks\n"
	.balign 4
	.asciz "@@@ (DVDLowNotifyReset) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReset) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowAudioBufferConfig) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "(DVDLowGetCoverStatus): Synch functions can't be called in callbacks\n"
	.balign 4
	.asciz "@@@ (DVDLowGetCoverStatus) IOS_Ioctl returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDVD) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDVDConfig) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDvdCopyright) IOS_IoctlAsync returned error: %d\n"
	.asciz "@@@ (DVDLowReadDvdPhysical) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDvdDiscKey) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReportKey) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowOffset) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowStopLaser) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDiskBca) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowSerMeasControl) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowRequestDiscStatus) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowRequestRetryNumber) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowSetMaxRotation) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "(DVDLowRead): ERROR - destAddr buffer is not 32 byte aligned\n"
	.balign 4
	.asciz "@@@ (DVDLowRead) IOS_IoctlAsync returned error: %d\n"
	.asciz "@@@ (DVDLowSeek) IOS_IoctlAsync returned error: %d\n"
	.asciz "(DVDLowGetCoverReg): Synch functions can't be called in callbacks\n"
	.balign 4
	.asciz "@@@ (DVDLowGetCoverReg) IOS_Ioctl returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowPrepareCoverRegsiter) IOS_IoctlAsync returned error: %d\n"
	.asciz "@@@ (DVDLowClearCoverInterrupt) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowEnableDvdVideo) IOS_IoctlAsync returned error: %d\n"
	.balign 4

glabel lbl_80192AE8
	# ROM: 0x18EBE8
	.asciz "DEMOPuts.c"
	.balign 4
	.asciz "Ins. memory to load ROM font."
	.balign 4
	.asciz "ROM font is available in boot ROM ver 0.8 or later."
	.asciz "%08x%08x%08x%08x%08x%08x\n"
	.balign 4
	.asciz "\nwidth %d\n"
	.balign 4

glabel lbl_80192B70
	.asciz "<< RVL_SDK - AI \trelease build: Nov 30 2006 03:26:11 (0x4199_60831) >>"
	.balign 4

glabel lbl_80192BB8
	.asciz "<< RVL_SDK - AX \trelease build: Dec 18 2006 15:43:48 (0x4199_60831) >>"
	.balign 4

glabel lbl_80192C00
	# ROM: 0x18ED00
	.4byte 0x00000002
	.4byte 0x00000198
	.4byte 0x00000198
	.4byte 0x0000032A
	.4byte 0x0000057C
	.4byte 0x0000057C
	.4byte 0x0000057C
	.4byte 0x0000057C
	.4byte 0x00000198
	.4byte 0x00000330
	.4byte 0x00000330
	.4byte 0x000004C2
	.4byte 0x00000714
	.4byte 0x00000714
	.4byte 0x00000714
	.4byte 0x00000714
	.4byte 0x000002C3
	.4byte 0x0000045B
	.4byte 0x0000045B
	.4byte 0x000005ED
	.4byte 0x0000083F
	.4byte 0x0000083F
	.4byte 0x0000083F
	.4byte 0x0000083F
	.4byte 0x000002C3
	.4byte 0x0000045B
	.4byte 0x0000045B
	.4byte 0x000005ED
	.4byte 0x0000083F
	.4byte 0x0000083F
	.4byte 0x0000083F
	.4byte 0x0000083F

glabel lbl_80192C80
	# ROM: 0x18ED80
	.4byte 0x00000004
	.4byte 0x00000056
	.4byte 0x00000097
	.4byte 0x00000097
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80192CA0
	# ROM: 0x18EDA0
	.4byte 0x7F637EC7
	.4byte 0x7E2B7D91
	.4byte 0x7CF77C5E
	.4byte 0x7BC57B2E
	.4byte 0x7A977A01
	.4byte 0x796B78D6
	.4byte 0x784277AF
	.4byte 0x771C768B
	.4byte 0x75F97569
	.4byte 0x74D9744A
	.4byte 0x73BB732E
	.4byte 0x72A07214
	.4byte 0x718870FD
	.4byte 0x70736FE9
	.4byte 0x6F606ED7
	.4byte 0x6E506DC8
	.4byte 0x6D426CBC
	.4byte 0x6C376BB2
	.4byte 0x6B2E6AAB
	.4byte 0x6A2869A6
	.4byte 0x692568A4
	.4byte 0x682467A4
	.4byte 0x672566A7
	.4byte 0x662965AC
	.4byte 0x652F64B4
	.4byte 0x643863BD
	.4byte 0x634362CA
	.4byte 0x625161D8
	.4byte 0x616060E9
	.4byte 0x60725FFC
	.4byte 0x5F865F11
	.4byte 0x5E9D5E29
	.4byte 0x5DB65D43
	.4byte 0x5CD15C5F
	.4byte 0x5BEE5B7D
	.4byte 0x5B0D5A9D
	.4byte 0x5A2E59C0
	.4byte 0x595258E5
	.4byte 0x5878580B
	.4byte 0x579F5734
	.4byte 0x56C9565F
	.4byte 0x55F5558C
	.4byte 0x552354BB
	.4byte 0x545353EC
	.4byte 0x5385531E
	.4byte 0x52B95253
	.4byte 0x51EE518A
	.4byte 0x512650C3
	.4byte 0x79B67930
	.4byte 0x78AA7825
	.4byte 0x77A0771C
	.4byte 0x76997616
	.4byte 0x75947512
	.4byte 0x74917411
	.4byte 0x73917311
	.4byte 0x72927214
	.4byte 0x71967119
	.4byte 0x709C7020
	.4byte 0x6FA46F29
	.4byte 0x6EAF6E35
	.4byte 0x6DBB6D42
	.4byte 0x6CC96C52
	.4byte 0x6BDA6B63
	.4byte 0x6AED6A77
	.4byte 0x6A01698C
	.4byte 0x691868A4
	.4byte 0x683167BE
	.4byte 0x674B66D9
	.4byte 0x666865F7
	.4byte 0x65876517
	.4byte 0x64A76438
	.4byte 0x63CA635C
	.4byte 0x62EE6281
	.4byte 0x621461A8
	.4byte 0x613C60D1
	.4byte 0x60665FFC
	.4byte 0x5F925F29
	.4byte 0x5EC05E57
	.4byte 0x5DEF5D88
	.4byte 0x5D215CBA
	.4byte 0x5C545BEE
	.4byte 0x5B885B23
	.4byte 0x5ABF5A5B
	.4byte 0x59F75994
	.4byte 0x593158CF
	.4byte 0x586D580B
	.4byte 0x57AA574A
	.4byte 0x56E95689
	.4byte 0x562A55CB
	.4byte 0x556C550E
	.4byte 0x54B05453
	.4byte 0x53F65399
	.4byte 0x533D52E1
	.4byte 0x5286522B
	.4byte 0x51D05176
	.4byte 0x511C50C3
	.4byte 0x744A73D8
	.4byte 0x736672F5
	.4byte 0x72847214
	.4byte 0x71A47135
	.4byte 0x70C67057
	.4byte 0x6FE96F7B
	.4byte 0x6F0E6EA1
	.4byte 0x6E356DC8
	.4byte 0x6D5D6CF2
	.4byte 0x6C876C1C
	.4byte 0x6BB26B49
	.4byte 0x6AE06A77
	.4byte 0x6A0E69A6
	.4byte 0x693F68D8
	.4byte 0x6871680A
	.4byte 0x67A4673F
	.4byte 0x66D96675
	.4byte 0x661065AC
	.4byte 0x654864E5
	.4byte 0x64826420
	.4byte 0x63BD635C
	.4byte 0x62FA6299
	.4byte 0x623861D8
	.4byte 0x61786119
	.4byte 0x60B9605B
	.4byte 0x5FFC5F9E
	.4byte 0x5F405EE3
	.4byte 0x5E865E29
	.4byte 0x5DCD5D71
	.4byte 0x5D155CBA
	.4byte 0x5C5F5C04
	.4byte 0x5BAA5B50
	.4byte 0x5AF75A9D
	.4byte 0x5A4559EC
	.4byte 0x5994593C
	.4byte 0x58E5588D
	.4byte 0x583757E0
	.4byte 0x578A5734
	.4byte 0x56DF5689
	.4byte 0x563555E0
	.4byte 0x558C5538
	.4byte 0x54E45491
	.4byte 0x543E53EC
	.4byte 0x53995347
	.4byte 0x52F652A4
	.4byte 0x52535203
	.4byte 0x51B25162
	.4byte 0x511250C3
	.4byte 0x6F1C6EBC
	.4byte 0x6E5D6DFE
	.4byte 0x6DA06D42
	.4byte 0x6CE46C87
	.4byte 0x6C2A6BCD
	.4byte 0x6B706B14
	.4byte 0x6AB86A5D
	.4byte 0x6A0169A6
	.4byte 0x694C68F1
	.4byte 0x6897683D
	.4byte 0x67E4678B
	.4byte 0x673266D9
	.4byte 0x66816629
	.4byte 0x65D2657A
	.4byte 0x652364CC
	.4byte 0x64766420
	.4byte 0x63CA6374
	.4byte 0x631F62CA
	.4byte 0x62756220
	.4byte 0x61CC6178
	.4byte 0x612460D1
	.4byte 0x607E602B
	.4byte 0x5FD95F86
	.4byte 0x5F345EE3
	.4byte 0x5E915E40
	.4byte 0x5DEF5D9F
	.4byte 0x5D4E5CFE
	.4byte 0x5CAE5C5F
	.4byte 0x5C105BC1
	.4byte 0x5B725B23
	.4byte 0x5AD55A87
	.4byte 0x5A3A59EC
	.4byte 0x599F5952
	.4byte 0x590558B9
	.4byte 0x586D5821
	.4byte 0x57D5578A
	.4byte 0x573F56F4
	.4byte 0x56A9565F
	.4byte 0x561555CB
	.4byte 0x55815538
	.4byte 0x54EF54A6
	.4byte 0x545D5415
	.4byte 0x53CD5385
	.4byte 0x533D52F6
	.4byte 0x52AE5267
	.4byte 0x522151DA
	.4byte 0x5194514E
	.4byte 0x510850C3
	.4byte 0x6A2869DA
	.4byte 0x698C693F
	.4byte 0x68F168A4
	.4byte 0x6857680A
	.4byte 0x67BE6771
	.4byte 0x672566D9
	.4byte 0x668E6642
	.4byte 0x65F765AC
	.4byte 0x65616517
	.4byte 0x64CC6482
	.4byte 0x643863EE
	.4byte 0x63A5635C
	.4byte 0x631262CA
	.4byte 0x62816238
	.4byte 0x61F061A8
	.4byte 0x61606119
	.4byte 0x60D1608A
	.4byte 0x60435FFC
	.4byte 0x5FB55F6F
	.4byte 0x5F295EE3
	.4byte 0x5E9D5E57
	.4byte 0x5E125DCD
	.4byte 0x5D885D43
	.4byte 0x5CFE5CBA
	.4byte 0x5C765C32
	.4byte 0x5BEE5BAA
	.4byte 0x5B675B23
	.4byte 0x5AE05A9D
	.4byte 0x5A5B5A18
	.4byte 0x59D65994
	.4byte 0x59525910
	.4byte 0x58CF588D
	.4byte 0x584C580B
	.4byte 0x57CB578A
	.4byte 0x574A5709
	.4byte 0x56C95689
	.4byte 0x564A560A
	.4byte 0x55CB558C
	.4byte 0x554D550E
	.4byte 0x54D05491
	.4byte 0x54535415
	.4byte 0x53D75399
	.4byte 0x535C531E
	.4byte 0x52E152A4
	.4byte 0x5267522B
	.4byte 0x51EE51B2
	.4byte 0x5176513A
	.4byte 0x50FE50C3
	.4byte 0x656E652F
	.4byte 0x64F164B4
	.4byte 0x64766438
	.4byte 0x63FB63BD
	.4byte 0x63806343
	.4byte 0x630662CA
	.4byte 0x628D6251
	.4byte 0x621461D8
	.4byte 0x619C6160
	.4byte 0x612460E9
	.4byte 0x60AD6072
	.4byte 0x60375FFC
	.4byte 0x5FC15F86
	.4byte 0x5F4C5F11
	.4byte 0x5ED75E9D
	.4byte 0x5E635E29
	.4byte 0x5DEF5DB6
	.4byte 0x5D7C5D43
	.4byte 0x5D0A5CD1
	.4byte 0x5C985C5F
	.4byte 0x5C265BEE
	.4byte 0x5BB55B7D
	.4byte 0x5B455B0D
	.4byte 0x5AD55A9D
	.4byte 0x5A665A2E
	.4byte 0x59F759C0
	.4byte 0x59895952
	.4byte 0x591B58E5
	.4byte 0x58AE5878
	.4byte 0x5841580B
	.4byte 0x57D5579F
	.4byte 0x576A5734
	.4byte 0x56FF56C9
	.4byte 0x5694565F
	.4byte 0x562A55F5
	.4byte 0x55C0558C
	.4byte 0x55575523
	.4byte 0x54EF54BB
	.4byte 0x54875453
	.4byte 0x541F53EC
	.4byte 0x53B85385
	.4byte 0x5352531E
	.4byte 0x52EB52B9
	.4byte 0x52865253
	.4byte 0x522151EE
	.4byte 0x51BC518A
	.4byte 0x51585126
	.4byte 0x50F450C3
	.4byte 0x60E960B9
	.4byte 0x608A605B
	.4byte 0x602B5FFC
	.4byte 0x5FCD5F9E
	.4byte 0x5F6F5F40
	.4byte 0x5F115EE3
	.4byte 0x5EB45E86
	.4byte 0x5E575E29
	.4byte 0x5DFB5DCD
	.4byte 0x5D9F5D71
	.4byte 0x5D435D15
	.4byte 0x5CE75CBA
	.4byte 0x5C8C5C5F
	.4byte 0x5C325C04
	.4byte 0x5BD75BAA
	.4byte 0x5B7D5B50
	.4byte 0x5B235AF7
	.4byte 0x5ACA5A9D
	.4byte 0x5A715A45
	.4byte 0x5A1859EC
	.4byte 0x59C05994
	.4byte 0x5968593C
	.4byte 0x591058E5
	.4byte 0x58B9588D
	.4byte 0x58625837
	.4byte 0x580B57E0
	.4byte 0x57B5578A
	.4byte 0x575F5734
	.4byte 0x570956DF
	.4byte 0x56B45689
	.4byte 0x565F5635
	.4byte 0x560A55E0
	.4byte 0x55B6558C
	.4byte 0x55625538
	.4byte 0x550E54E4
	.4byte 0x54BB5491
	.4byte 0x5468543E
	.4byte 0x541553EC
	.4byte 0x53C25399
	.4byte 0x53705347
	.4byte 0x531E52F6
	.4byte 0x52CD52A4
	.4byte 0x527C5253
	.4byte 0x522B5203
	.4byte 0x51DA51B2
	.4byte 0x518A5162
	.4byte 0x513A5112
	.4byte 0x50EA50C3
	.4byte 0x5C985C76
	.4byte 0x5C545C32
	.4byte 0x5C105BEE
	.4byte 0x5BCC5BAA
	.4byte 0x5B885B67
	.4byte 0x5B455B23
	.4byte 0x5B025AE0
	.4byte 0x5ABF5A9D
	.4byte 0x5A7C5A5B
	.4byte 0x5A3A5A18
	.4byte 0x59F759D6
	.4byte 0x59B55994
	.4byte 0x59735952
	.4byte 0x59315910
	.4byte 0x58F058CF
	.4byte 0x58AE588D
	.4byte 0x586D584C
	.4byte 0x582C580B
	.4byte 0x57EB57CB
	.4byte 0x57AA578A
	.4byte 0x576A574A
	.4byte 0x57295709
	.4byte 0x56E956C9
	.4byte 0x56A95689
	.4byte 0x566A564A
	.4byte 0x562A560A
	.4byte 0x55EB55CB
	.4byte 0x55AB558C
	.4byte 0x556C554D
	.4byte 0x552D550E
	.4byte 0x54EF54D0
	.4byte 0x54B05491
	.4byte 0x54725453
	.4byte 0x54345415
	.4byte 0x53F653D7
	.4byte 0x53B85399
	.4byte 0x537B535C
	.4byte 0x533D531E
	.4byte 0x530052E1
	.4byte 0x52C352A4
	.4byte 0x52865267
	.4byte 0x5249522B
	.4byte 0x520D51EE
	.4byte 0x51D051B2
	.4byte 0x51945176
	.4byte 0x5158513A
	.4byte 0x511C50FE
	.4byte 0x50E050C3
	.4byte 0x58785862
	.4byte 0x584C5837
	.4byte 0x5821580B
	.4byte 0x57F657E0
	.4byte 0x57CB57B5
	.4byte 0x579F578A
	.4byte 0x5774575F
	.4byte 0x574A5734
	.4byte 0x571F5709
	.4byte 0x56F456DF
	.4byte 0x56C956B4
	.4byte 0x569F5689
	.4byte 0x5674565F
	.4byte 0x564A5635
	.4byte 0x561F560A
	.4byte 0x55F555E0
	.4byte 0x55CB55B6
	.4byte 0x55A1558C
	.4byte 0x55775562
	.4byte 0x554D5538
	.4byte 0x5523550E
	.4byte 0x54F954E4
	.4byte 0x54D054BB
	.4byte 0x54A65491
	.4byte 0x547C5468
	.4byte 0x5453543E
	.4byte 0x54295415
	.4byte 0x540053EC
	.4byte 0x53D753C2
	.4byte 0x53AE5399
	.4byte 0x53855370
	.4byte 0x535C5347
	.4byte 0x5333531E
	.4byte 0x530A52F6
	.4byte 0x52E152CD
	.4byte 0x52B952A4
	.4byte 0x5290527C
	.4byte 0x52675253
	.4byte 0x523F522B
	.4byte 0x52175203
	.4byte 0x51EE51DA
	.4byte 0x51C651B2
	.4byte 0x519E518A
	.4byte 0x51765162
	.4byte 0x514E513A
	.4byte 0x51265112
	.4byte 0x50FE50EA
	.4byte 0x50D750C3
	.4byte 0x5487547C
	.4byte 0x54725468
	.4byte 0x545D5453
	.4byte 0x5449543E
	.4byte 0x54345429
	.4byte 0x541F5415
	.4byte 0x540B5400
	.4byte 0x53F653EC
	.4byte 0x53E153D7
	.4byte 0x53CD53C2
	.4byte 0x53B853AE
	.4byte 0x53A45399
	.4byte 0x538F5385
	.4byte 0x537B5370
	.4byte 0x5366535C
	.4byte 0x53525347
	.4byte 0x533D5333
	.4byte 0x5329531E
	.4byte 0x5314530A
	.4byte 0x530052F6
	.4byte 0x52EB52E1
	.4byte 0x52D752CD
	.4byte 0x52C352B9
	.4byte 0x52AE52A4
	.4byte 0x529A5290
	.4byte 0x5286527C
	.4byte 0x52725267
	.4byte 0x525D5253
	.4byte 0x5249523F
	.4byte 0x5235522B
	.4byte 0x52215217
	.4byte 0x520D5203
	.4byte 0x51F851EE
	.4byte 0x51E451DA
	.4byte 0x51D051C6
	.4byte 0x51BC51B2
	.4byte 0x51A8519E
	.4byte 0x5194518A
	.4byte 0x51805176
	.4byte 0x516C5162
	.4byte 0x5158514E
	.4byte 0x5144513A
	.4byte 0x51305126
	.4byte 0x511C5112
	.4byte 0x510850FE
	.4byte 0x50F450EA
	.4byte 0x50E050D7
	.4byte 0x50CD50C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x7A4C7A5B
	.4byte 0x7A6A7A79
	.4byte 0x7A887A97
	.4byte 0x7AA67AB5
	.4byte 0x7AC47AD3
	.4byte 0x7AE27AF1
	.4byte 0x7B007B10
	.4byte 0x7B1F7B2E
	.4byte 0x7B3D7B4C
	.4byte 0x7B5B7B6A
	.4byte 0x7B797B89
	.4byte 0x7B987BA7
	.4byte 0x7BB67BC5
	.4byte 0x7BD57BE4
	.4byte 0x7BF37C02
	.4byte 0x7C117C21
	.4byte 0x7C307C3F
	.4byte 0x7C4E7C5E
	.4byte 0x7C6D7C7C
	.4byte 0x7C8C7C9B
	.4byte 0x7CAA7CBA
	.4byte 0x7CC97CD8
	.4byte 0x7CE77CF7
	.4byte 0x7D067D16
	.4byte 0x7D257D34
	.4byte 0x7D447D53
	.4byte 0x7D627D72
	.4byte 0x7D817D91
	.4byte 0x7DA07DB0
	.4byte 0x7DBF7DCE
	.4byte 0x7DDE7DED
	.4byte 0x7DFD7E0C
	.4byte 0x7E1C7E2B
	.4byte 0x7E3B7E4A
	.4byte 0x7E5A7E69
	.4byte 0x7E797E88
	.4byte 0x7E987EA7
	.4byte 0x7EB77EC7
	.4byte 0x7ED67EE6
	.4byte 0x7EF57F05
	.4byte 0x7F147F24
	.4byte 0x7F347F43
	.4byte 0x7F537F63
	.4byte 0x7F727F82
	.4byte 0x7F927FA1
	.4byte 0x7FB17FC1
	.4byte 0x7FD07FE0
	.4byte 0x7FF08000
	.4byte 0x74CB74D9
	.4byte 0x74E774F6
	.4byte 0x75047512
	.4byte 0x7521752F
	.4byte 0x753E754C
	.4byte 0x755A7569
	.4byte 0x75777586
	.4byte 0x759475A2
	.4byte 0x75B175BF
	.4byte 0x75CE75DC
	.4byte 0x75EB75F9
	.4byte 0x76087616
	.4byte 0x76257633
	.4byte 0x76427650
	.4byte 0x765F766D
	.4byte 0x767C768A
	.4byte 0x769976A8
	.4byte 0x76B676C5
	.4byte 0x76D376E2
	.4byte 0x76F176FF
	.4byte 0x770E771C
	.4byte 0x772B773A
	.4byte 0x77487757
	.4byte 0x77667774
	.4byte 0x77837792
	.4byte 0x77A077AF
	.4byte 0x77BE77CC
	.4byte 0x77DB77EA
	.4byte 0x77F97807
	.4byte 0x78167825
	.4byte 0x78347842
	.4byte 0x78517860
	.4byte 0x786F787E
	.4byte 0x788C789B
	.4byte 0x78AA78B9
	.4byte 0x78C878D6
	.4byte 0x78E578F4
	.4byte 0x79037912
	.4byte 0x79217930
	.4byte 0x793E794D
	.4byte 0x795C796B
	.4byte 0x797A7989
	.4byte 0x799879A7
	.4byte 0x79B679C5
	.4byte 0x79D479E3
	.4byte 0x79F27A01
	.4byte 0x7A107A1F
	.4byte 0x7A2E7A3D
	.4byte 0x6F896F97
	.4byte 0x6FA46FB2
	.4byte 0x6FC06FCD
	.4byte 0x6FDB6FE9
	.4byte 0x6FF77004
	.4byte 0x70127020
	.4byte 0x702E703B
	.4byte 0x70497057
	.4byte 0x70657073
	.4byte 0x7080708E
	.4byte 0x709C70AA
	.4byte 0x70B870C6
	.4byte 0x70D470E1
	.4byte 0x70EF70FD
	.4byte 0x710B7119
	.4byte 0x71277135
	.4byte 0x71437150
	.4byte 0x715E716C
	.4byte 0x717A7188
	.4byte 0x719671A4
	.4byte 0x71B271C0
	.4byte 0x71CE71DC
	.4byte 0x71EA71F8
	.4byte 0x72067214
	.4byte 0x72227230
	.4byte 0x723E724C
	.4byte 0x725A7268
	.4byte 0x72767284
	.4byte 0x729272A0
	.4byte 0x72AE72BD
	.4byte 0x72CB72D9
	.4byte 0x72E772F5
	.4byte 0x73037311
	.4byte 0x731F732D
	.4byte 0x733C734A
	.4byte 0x73587366
	.4byte 0x73747382
	.4byte 0x7391739F
	.4byte 0x73AD73BB
	.4byte 0x73C973D8
	.4byte 0x73E673F4
	.4byte 0x74027411
	.4byte 0x741F742D
	.4byte 0x743B744A
	.4byte 0x74587466
	.4byte 0x74757483
	.4byte 0x749174A0
	.4byte 0x74AE74BC
	.4byte 0x6A846A91
	.4byte 0x6A9E6AAB
	.4byte 0x6AB86AC5
	.4byte 0x6AD26ADF
	.4byte 0x6AED6AFA
	.4byte 0x6B076B14
	.4byte 0x6B216B2E
	.4byte 0x6B3B6B49
	.4byte 0x6B566B63
	.4byte 0x6B706B7D
	.4byte 0x6B8B6B98
	.4byte 0x6BA56BB2
	.4byte 0x6BBF6BCD
	.4byte 0x6BDA6BE7
	.4byte 0x6BF46C02
	.4byte 0x6C0F6C1C
	.4byte 0x6C2A6C37
	.4byte 0x6C446C51
	.4byte 0x6C5F6C6C
	.4byte 0x6C796C87
	.4byte 0x6C946CA1
	.4byte 0x6CAF6CBC
	.4byte 0x6CC96CD7
	.4byte 0x6CE46CF2
	.4byte 0x6CFF6D0C
	.4byte 0x6D1A6D27
	.4byte 0x6D346D42
	.4byte 0x6D4F6D5D
	.4byte 0x6D6A6D78
	.4byte 0x6D856D93
	.4byte 0x6DA06DAD
	.4byte 0x6DBB6DC8
	.4byte 0x6DD66DE3
	.4byte 0x6DF16DFE
	.4byte 0x6E0C6E19
	.4byte 0x6E276E34
	.4byte 0x6E426E50
	.4byte 0x6E5D6E6B
	.4byte 0x6E786E86
	.4byte 0x6E936EA1
	.4byte 0x6EAF6EBC
	.4byte 0x6ECA6ED7
	.4byte 0x6EE56EF3
	.4byte 0x6F006F0E
	.4byte 0x6F1B6F29
	.4byte 0x6F376F44
	.4byte 0x6F526F60
	.4byte 0x6F6D6F7B
	.4byte 0x65B865C5
	.4byte 0x65D165DE
	.4byte 0x65EA65F7
	.4byte 0x66046610
	.4byte 0x661D6629
	.4byte 0x66366642
	.4byte 0x664F665B
	.4byte 0x66686675
	.4byte 0x6681668E
	.4byte 0x669A66A7
	.4byte 0x66B366C0
	.4byte 0x66CD66D9
	.4byte 0x66E666F3
	.4byte 0x66FF670C
	.4byte 0x67196725
	.4byte 0x6732673F
	.4byte 0x674B6758
	.4byte 0x67656771
	.4byte 0x677E678B
	.4byte 0x679867A4
	.4byte 0x67B167BE
	.4byte 0x67CA67D7
	.4byte 0x67E467F1
	.4byte 0x67FD680A
	.4byte 0x68176824
	.4byte 0x6831683D
	.4byte 0x684A6857
	.4byte 0x68646871
	.4byte 0x687D688A
	.4byte 0x689768A4
	.4byte 0x68B168BE
	.4byte 0x68CB68D7
	.4byte 0x68E468F1
	.4byte 0x68FE690B
	.4byte 0x69186925
	.4byte 0x6932693F
	.4byte 0x694C6959
	.4byte 0x69656972
	.4byte 0x697F698C
	.4byte 0x699969A6
	.4byte 0x69B369C0
	.4byte 0x69CD69DA
	.4byte 0x69E769F4
	.4byte 0x6A016A0E
	.4byte 0x6A1B6A28
	.4byte 0x6A356A42
	.4byte 0x6A4F6A5D
	.4byte 0x6A6A6A77
	.4byte 0x61246130
	.4byte 0x613C6148
	.4byte 0x61546160
	.4byte 0x616C6178
	.4byte 0x61846190
	.4byte 0x619C61A8
	.4byte 0x61B461C0
	.4byte 0x61CC61D8
	.4byte 0x61E461F0
	.4byte 0x61FC6208
	.4byte 0x62146220
	.4byte 0x622C6238
	.4byte 0x62446250
	.4byte 0x625D6269
	.4byte 0x62756281
	.4byte 0x628D6299
	.4byte 0x62A562B1
	.4byte 0x62BD62C9
	.4byte 0x62D662E2
	.4byte 0x62EE62FA
	.4byte 0x63066312
	.4byte 0x631F632B
	.4byte 0x63376343
	.4byte 0x634F635B
	.4byte 0x63686374
	.4byte 0x6380638C
	.4byte 0x639963A5
	.4byte 0x63B163BD
	.4byte 0x63CA63D6
	.4byte 0x63E263EE
	.4byte 0x63FB6407
	.4byte 0x6413641F
	.4byte 0x642C6438
	.4byte 0x64446451
	.4byte 0x645D6469
	.4byte 0x64766482
	.4byte 0x648E649B
	.4byte 0x64A764B3
	.4byte 0x64C064CC
	.4byte 0x64D964E5
	.4byte 0x64F164FE
	.4byte 0x650A6517
	.4byte 0x6523652F
	.4byte 0x653C6548
	.4byte 0x65556561
	.4byte 0x656E657A
	.4byte 0x65876593
	.4byte 0x659F65AC
	.4byte 0x5CC55CD1
	.4byte 0x5CDC5CE7
	.4byte 0x5CF35CFE
	.4byte 0x5D0A5D15
	.4byte 0x5D205D2C
	.4byte 0x5D375D43
	.4byte 0x5D4E5D5A
	.4byte 0x5D655D71
	.4byte 0x5D7C5D88
	.4byte 0x5D935D9F
	.4byte 0x5DAA5DB6
	.4byte 0x5DC15DCD
	.4byte 0x5DD85DE4
	.4byte 0x5DEF5DFB
	.4byte 0x5E065E12
	.4byte 0x5E1D5E29
	.4byte 0x5E355E40
	.4byte 0x5E4C5E57
	.4byte 0x5E635E6E
	.4byte 0x5E7A5E86
	.4byte 0x5E915E9D
	.4byte 0x5EA95EB4
	.4byte 0x5EC05ECB
	.4byte 0x5ED75EE3
	.4byte 0x5EEE5EFA
	.4byte 0x5F065F11
	.4byte 0x5F1D5F29
	.4byte 0x5F345F40
	.4byte 0x5F4C5F57
	.4byte 0x5F635F6F
	.4byte 0x5F7B5F86
	.4byte 0x5F925F9E
	.4byte 0x5FAA5FB5
	.4byte 0x5FC15FCD
	.4byte 0x5FD95FE4
	.4byte 0x5FF05FFC
	.4byte 0x60086014
	.4byte 0x601F602B
	.4byte 0x60376043
	.4byte 0x604F605A
	.4byte 0x60666072
	.4byte 0x607E608A
	.4byte 0x609660A2
	.4byte 0x60AD60B9
	.4byte 0x60C560D1
	.4byte 0x60DD60E9
	.4byte 0x60F56101
	.4byte 0x610D6119
	.4byte 0x589858A3
	.4byte 0x58AE58B9
	.4byte 0x58C458CF
	.4byte 0x58DA58E5
	.4byte 0x58EF58FA
	.4byte 0x59055910
	.4byte 0x591B5926
	.4byte 0x5931593C
	.4byte 0x59475952
	.4byte 0x595D5968
	.4byte 0x5973597E
	.4byte 0x59895994
	.4byte 0x599F59AA
	.4byte 0x59B559C0
	.4byte 0x59CB59D6
	.4byte 0x59E159EC
	.4byte 0x59F75A02
	.4byte 0x5A0D5A18
	.4byte 0x5A235A2E
	.4byte 0x5A395A45
	.4byte 0x5A505A5B
	.4byte 0x5A665A71
	.4byte 0x5A7C5A87
	.4byte 0x5A925A9D
	.4byte 0x5AA95AB4
	.4byte 0x5ABF5ACA
	.4byte 0x5AD55AE0
	.4byte 0x5AEB5AF7
	.4byte 0x5B025B0D
	.4byte 0x5B185B23
	.4byte 0x5B2F5B3A
	.4byte 0x5B455B50
	.4byte 0x5B5B5B67
	.4byte 0x5B725B7D
	.4byte 0x5B885B94
	.4byte 0x5B9F5BAA
	.4byte 0x5BB55BC1
	.4byte 0x5BCC5BD7
	.4byte 0x5BE25BEE
	.4byte 0x5BF95C04
	.4byte 0x5C105C1B
	.4byte 0x5C265C32
	.4byte 0x5C3D5C48
	.4byte 0x5C545C5F
	.4byte 0x5C6A5C76
	.4byte 0x5C815C8C
	.4byte 0x5C985CA3
	.4byte 0x5CAE5CBA
	.4byte 0x549B54A6
	.4byte 0x54B054BB
	.4byte 0x54C554CF
	.4byte 0x54DA54E4
	.4byte 0x54EF54F9
	.4byte 0x5504550E
	.4byte 0x55195523
	.4byte 0x552D5538
	.4byte 0x5542554D
	.4byte 0x55575562
	.4byte 0x556C5577
	.4byte 0x5581558C
	.4byte 0x559655A1
	.4byte 0x55AB55B6
	.4byte 0x55C055CB
	.4byte 0x55D555E0
	.4byte 0x55EB55F5
	.4byte 0x5600560A
	.4byte 0x5615561F
	.4byte 0x562A5635
	.4byte 0x563F564A
	.4byte 0x5654565F
	.4byte 0x566A5674
	.4byte 0x567F5689
	.4byte 0x5694569F
	.4byte 0x56A956B4
	.4byte 0x56BF56C9
	.4byte 0x56D456DF
	.4byte 0x56E956F4
	.4byte 0x56FF5709
	.4byte 0x5714571F
	.4byte 0x57295734
	.4byte 0x573F5749
	.4byte 0x5754575F
	.4byte 0x576A5774
	.4byte 0x577F578A
	.4byte 0x5795579F
	.4byte 0x57AA57B5
	.4byte 0x57C057CA
	.4byte 0x57D557E0
	.4byte 0x57EB57F6
	.4byte 0x5800580B
	.4byte 0x58165821
	.4byte 0x582C5837
	.4byte 0x5841584C
	.4byte 0x58575862
	.4byte 0x586D5878
	.4byte 0x5883588D
	.4byte 0x50CD50D7
	.4byte 0x50E050EA
	.4byte 0x50F450FE
	.4byte 0x51085112
	.4byte 0x511C5126
	.4byte 0x5130513A
	.4byte 0x5144514E
	.4byte 0x51585162
	.4byte 0x516C5176
	.4byte 0x5180518A
	.4byte 0x5194519E
	.4byte 0x51A851B2
	.4byte 0x51BC51C6
	.4byte 0x51D051DA
	.4byte 0x51E451EE
	.4byte 0x51F85203
	.4byte 0x520D5217
	.4byte 0x5221522B
	.4byte 0x5235523F
	.4byte 0x52495253
	.4byte 0x525D5267
	.4byte 0x5272527C
	.4byte 0x52865290
	.4byte 0x529A52A4
	.4byte 0x52AE52B9
	.4byte 0x52C352CD
	.4byte 0x52D752E1
	.4byte 0x52EB52F6
	.4byte 0x5300530A
	.4byte 0x5314531E
	.4byte 0x53295333
	.4byte 0x533D5347
	.4byte 0x5352535C
	.4byte 0x53665370
	.4byte 0x537A5385
	.4byte 0x538F5399
	.4byte 0x53A453AE
	.4byte 0x53B853C2
	.4byte 0x53CD53D7
	.4byte 0x53E153EC
	.4byte 0x53F65400
	.4byte 0x540B5415
	.4byte 0x541F5429
	.4byte 0x5434543E
	.4byte 0x54495453
	.4byte 0x545D5468
	.4byte 0x5472547C
	.4byte 0x54875491

glabel lbl_80193C60
	# ROM: 0x18FD60
	.4byte 0
	.4byte 0x029F0F3C
	.4byte 0x029F0F48
	.4byte 0x029F0F4D
	.4byte 0x029F0F5C
	.4byte 0x029F0F61
	.4byte 0x029F0F8D
	.4byte 0x029F0F92
	.4byte 0x13021303
	.4byte 0x12041305
	.4byte 0x13068E00
	.4byte 0x8C008B00
	.4byte 0x009200FF
	.4byte 0x009E8000
	.4byte 0x00FE0CE5
	.4byte 0x009E8000
	.4byte 0x00FE0CE6
	.4byte 0x00FE0CE7
	.4byte 0x00FE0CE8
	.4byte 0x810000FE
	.4byte 0x0CE98900
	.4byte 0x16FCDCD1
	.4byte 0x16FD0000
	.4byte 0x16FB0001
	.4byte 0x26FC02A0
	.4byte 0x8000029C
	.4byte 0x0030029F
	.4byte 0x004C1302
	.4byte 0x13031204
	.4byte 0x13051306
	.4byte 0x8E008C00
	.4byte 0x8B000092
	.4byte 0x00FF16FC
	.4byte 0xDCD116FD
	.4byte 0x000116FB
	.4byte 0x000126FC
	.4byte 0x02A08000
	.4byte 0x029C0047
	.4byte 0x8E008100
	.4byte 0x8900009F
	.4byte 0xBABE26FE
	.4byte 0x02C08000
	.4byte 0x029C0051
	.4byte 0x82000294
	.4byte 0x005123FF
	.4byte 0x810026FE
	.4byte 0x02C08000
	.4byte 0x029C005B
	.4byte 0x27FF0240
	.4byte 0x7FFF2ECE
	.4byte 0x2FCF16CD
	.4byte 0x0C008100
	.4byte 0x2EC91FFB
	.4byte 0x2FCB02BF
	.4byte 0x00840080
	.4byte 0x0C008E00
	.4byte 0x81008970
	.4byte 0xB1000291
	.4byte 0x00800A0E
	.4byte 0xC1000292
	.4byte 0x0080009F
	.4byte 0x0D044C00
	.4byte 0x1C7E0213
	.4byte 0x1C7E176F
	.4byte 0x16FCBAAD
	.4byte 0x2EFD0021
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x008402DF
	.4byte 0x81008970
	.4byte 0x8E782ECE
	.4byte 0x2FCF16CD
	.4byte 0x0D0816C9
	.4byte 0x000016CB
	.4byte 0x00780081
	.4byte 0x0D080082
	.4byte 0x0000009B
	.4byte 0x005F009A
	.4byte 0x00C08100
	.4byte 0x89008F00
	.4byte 0x02BF0084
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x00AB005A
	.4byte 0x1B5E029F
	.4byte 0x00B39900
	.4byte 0x1B5E1B5C
	.4byte 0x007B00B2
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x00C0193E
	.4byte 0x193CB179
	.4byte 0x029400BE
	.4byte 0x005A1B5E
	.4byte 0x029F00C6
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x00C54C00
	.4byte 0x1B5E1B5C
	.4byte 0x00820180
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x00D1005A
	.4byte 0x1B5E029F
	.4byte 0x00D99900
	.4byte 0x1B5E1B5C
	.4byte 0x007B00D8
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0400193E
	.4byte 0x193CB179
	.4byte 0x029400E4
	.4byte 0x005A1B5E
	.4byte 0x029F00EC
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x00EB4C00
	.4byte 0x1B5E1B5C
	.4byte 0x008204C0
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x00F7005A
	.4byte 0x1B5E029F
	.4byte 0x00FF9900
	.4byte 0x1B5E1B5C
	.4byte 0x007B00FE
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0580193E
	.4byte 0x193CB179
	.4byte 0x0294010A
	.4byte 0x005A1B5E
	.4byte 0x029F0112
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01114C00
	.4byte 0x1B5E1B5C
	.4byte 0x00820640
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x011D005A
	.4byte 0x1B5E029F
	.4byte 0x01259900
	.4byte 0x1B5E1B5C
	.4byte 0x007B0124
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0700193E
	.4byte 0x193CB179
	.4byte 0x02940130
	.4byte 0x005A1B5E
	.4byte 0x029F0138
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01374C00
	.4byte 0x1B5E1B5C
	.4byte 0x008207C0
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x0143005A
	.4byte 0x1B5E029F
	.4byte 0x014B9900
	.4byte 0x1B5E1B5C
	.4byte 0x007B014A
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0880193E
	.4byte 0x193CB179
	.4byte 0x02940156
	.4byte 0x005A1B5E
	.4byte 0x029F015E
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x015D4C00
	.4byte 0x1B5E1B5C
	.4byte 0x00820940
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x0169005A
	.4byte 0x1B5E029F
	.4byte 0x01719900
	.4byte 0x1B5E1B5C
	.4byte 0x007B0170
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0A00193E
	.4byte 0x193CB179
	.4byte 0x0294017C
	.4byte 0x005A1B5E
	.4byte 0x029F0184
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01834C00
	.4byte 0x1B5E1B5C
	.4byte 0x009B0011
	.4byte 0x009A0024
	.4byte 0x00820240
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x0193005A
	.4byte 0x1B5E029F
	.4byte 0x019B9900
	.4byte 0x1B5E1B5C
	.4byte 0x007B019A
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0AC0193E
	.4byte 0x193CB179
	.4byte 0x029401A6
	.4byte 0x005A1B5E
	.4byte 0x029F01AE
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01AD4C00
	.4byte 0x1B5E1B5C
	.4byte 0x00820264
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x01B9005A
	.4byte 0x1B5E029F
	.4byte 0x01C19900
	.4byte 0x1B5E1B5C
	.4byte 0x007B01C0
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0AE4193E
	.4byte 0x193CB179
	.4byte 0x029401CC
	.4byte 0x005A1B5E
	.4byte 0x029F01D4
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01D34C00
	.4byte 0x1B5E1B5C
	.4byte 0x00820288
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x01DF005A
	.4byte 0x1B5E029F
	.4byte 0x01E79900
	.4byte 0x1B5E1B5C
	.4byte 0x007B01E6
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0B08193E
	.4byte 0x193CB179
	.4byte 0x029401F2
	.4byte 0x005A1B5E
	.4byte 0x029F01FA
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01F94C00
	.4byte 0x1B5E1B5C
	.4byte 0x008202AC
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x0205005A
	.4byte 0x1B5E029F
	.4byte 0x020D9900
	.4byte 0x1B5E1B5C
	.4byte 0x007B020C
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x0B2C193E
	.4byte 0x193CB179
	.4byte 0x02940218
	.4byte 0x005A1B5E
	.4byte 0x029F0220
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x021F4C00
	.4byte 0x1B5E1B5C
	.4byte 0x029F006F
	.4byte 0x81008970
	.4byte 0x8E602ECE
	.4byte 0x2CCF16CD
	.4byte 0x0D0816C9
	.4byte 0x000016CB
	.4byte 0x01801CC0
	.4byte 0x00800000
	.4byte 0x008300C0
	.4byte 0x00810D08
	.4byte 0x0084FFFF
	.4byte 0x1CE402BF
	.4byte 0x00848F00
	.4byte 0x80F180C9
	.4byte 0x68004A00
	.4byte 0x191B6994
	.4byte 0x4B23115F
	.4byte 0x024980F1
	.4byte 0x80C96838
	.4byte 0x4A28191B
	.4byte 0x69944B23
	.4byte 0x1B1F1B1D
	.4byte 0x1C06029F
	.4byte 0x006F8100
	.4byte 0x89708E60
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0D08
	.4byte 0x16C90000
	.4byte 0x16CB0180
	.4byte 0x1CC00080
	.4byte 0x00000083
	.4byte 0x00C00081
	.4byte 0x0D080084
	.4byte 0xFFFF1CE4
	.4byte 0x02BF0084
	.4byte 0x8F0080F1
	.4byte 0x80C96800
	.4byte 0x4A00191B
	.4byte 0x69947D00
	.4byte 0x4B23115F
	.4byte 0x027880F1
	.4byte 0x80C96838
	.4byte 0x4A28191B
	.4byte 0x69947D00
	.4byte 0x4B231B1F
	.4byte 0x1B1D1C06
	.4byte 0x029F006F
	.4byte 0x81008970
	.4byte 0x8E6000E0
	.4byte 0x0CD22ECE
	.4byte 0x2CCF16CD
	.4byte 0x02D016C9
	.4byte 0x000016CB
	.4byte 0x014002BF
	.4byte 0x00848100
	.4byte 0x890000DE
	.4byte 0x02D4009F
	.4byte 0x0DB74C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0CDF
	.4byte 0x00DE02D5
	.4byte 0x009F0DBA
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0CE0009A
	.4byte 0x001F00DE
	.4byte 0x02D7009F
	.4byte 0x0D133400
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0CD300DE
	.4byte 0x02D6009F
	.4byte 0x0D333400
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0CD400DE
	.4byte 0x02D6009F
	.4byte 0x0D5314FB
	.4byte 0x34004C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0CD5
	.4byte 0x00DE02D6
	.4byte 0x009F0D73
	.4byte 0x14F64C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0CD6
	.4byte 0x810000DE
	.4byte 0x033C009A
	.4byte 0x0003009B
	.4byte 0x0DB31FFE
	.4byte 0x35004700
	.4byte 0x1C7F0313
	.4byte 0x00FF0CD7
	.4byte 0x147E1FFE
	.4byte 0x35004700
	.4byte 0x1C7F0313
	.4byte 0x00FF0CD8
	.4byte 0x147E1FFE
	.4byte 0x35004700
	.4byte 0x1C7F0313
	.4byte 0x00FF0CD9
	.4byte 0x147E1FFE
	.4byte 0x35004700
	.4byte 0x1C7F0313
	.4byte 0x00FF0CDA
	.4byte 0x147E1FFE
	.4byte 0x35004700
	.4byte 0x1C7F0313
	.4byte 0x00FF0CDB
	.4byte 0x147E1FFE
	.4byte 0x35004700
	.4byte 0x1C7F0313
	.4byte 0x00FF0CDC
	.4byte 0x147E1FFE
	.4byte 0x35004700
	.4byte 0x1C7F0313
	.4byte 0x00FF0CDD
	.4byte 0x147E1FFE
	.4byte 0x35004700
	.4byte 0x1C7F0313
	.4byte 0x00FF0CDE
	.4byte 0x810000DE
	.4byte 0x02F2B100
	.4byte 0x02950339
	.4byte 0x890000DF
	.4byte 0x02F50300
	.4byte 0x0C4000FF
	.4byte 0x0CE200DF
	.4byte 0x02F60300
	.4byte 0x0C4000FF
	.4byte 0x0CE3009F
	.4byte 0x0C6000FF
	.4byte 0x0CE100DE
	.4byte 0x02F32ECE
	.4byte 0x00DE02F4
	.4byte 0x2ECF16CD
	.4byte 0x0C4016C9
	.4byte 0x000016CB
	.4byte 0x004002BF
	.4byte 0x0084029F
	.4byte 0x0341009F
	.4byte 0x0C6000FF
	.4byte 0x0CE200FF
	.4byte 0x0CE300FF
	.4byte 0x0CE18C00
	.4byte 0x8B008100
	.4byte 0x00DE02D8
	.4byte 0x06010294
	.4byte 0x046A00C3
	.4byte 0x0CDF177F
	.4byte 0x8A008100
	.4byte 0x890000DE
	.4byte 0x030600DF
	.4byte 0x03051F1F
	.4byte 0x4D001481
	.4byte 0x8D1E1FD8
	.4byte 0x00988000
	.4byte 0x00800D08
	.4byte 0xA830112F
	.4byte 0x0360AC38
	.4byte 0xAD30AC38
	.4byte 0x00FE0305
	.4byte 0x8F000080
	.4byte 0x0D0800C1
	.4byte 0x0CE11C61
	.4byte 0x193A1919
	.4byte 0xB0511919
	.4byte 0x115E0371
	.4byte 0xB6518090
	.4byte 0xB6006E33
	.4byte 0x1B7E00DE
	.4byte 0x032DB100
	.4byte 0x02950381
	.4byte 0x00C00CE1
	.4byte 0x1C200083
	.4byte 0x032E02BF
	.4byte 0x06AB00DE
	.4byte 0x0331B100
	.4byte 0x0295038D
	.4byte 0x00800332
	.4byte 0x00C10CE1
	.4byte 0x1C4102BF
	.4byte 0x06C30080
	.4byte 0x02F98100
	.4byte 0x100C1B1E
	.4byte 0x0080034D
	.4byte 0x10081B1E
	.4byte 0x00C30CD3
	.4byte 0x177F00C3
	.4byte 0x0CD4177F
	.4byte 0x00C30CD5
	.4byte 0x177F00C3
	.4byte 0x0CD6177F
	.4byte 0x00DE033B
	.4byte 0xB1000295
	.4byte 0x044700DE
	.4byte 0x035AB100
	.4byte 0x029503C4
	.4byte 0x0A02C100
	.4byte 0x029403BA
	.4byte 0x0080035B
	.4byte 0x00C10CE1
	.4byte 0x00820D0C
	.4byte 0x02BF06C3
	.4byte 0x029F03CC
	.4byte 0x00800D0C
	.4byte 0x00C10CE1
	.4byte 0x0083035B
	.4byte 0x02BF06AB
	.4byte 0x029F03CC
	.4byte 0x00800D0C
	.4byte 0x00C10CE1
	.4byte 0x116003CB
	.4byte 0x193F1B1F
	.4byte 0x00820355
	.4byte 0x8C008100
	.4byte 0x195C009B
	.4byte 0x00050099
	.4byte 0x55550080
	.4byte 0x0D081104
	.4byte 0x03DA195F
	.4byte 0x1B1F0081
	.4byte 0x0CC00084
	.4byte 0x0D080087
	.4byte 0x10001112
	.4byte 0x03F24A00
	.4byte 0x1C1E0010
	.4byte 0x89001FBC
	.4byte 0x15771512
	.4byte 0x1C7F001F
	.4byte 0x80C390C3
	.4byte 0x97C395C3
	.4byte 0x95004F00
	.4byte 0x1B3F0004
	.4byte 0x0006189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF1ADC
	.4byte 0x8D000081
	.4byte 0x033D0082
	.4byte 0x024000C3
	.4byte 0x0CD7177F
	.4byte 0x00F8034D
	.4byte 0x0081033F
	.4byte 0x00820AC0
	.4byte 0x00C30CD8
	.4byte 0x177F00F8
	.4byte 0x03510081
	.4byte 0x03410082
	.4byte 0x026400C3
	.4byte 0x0CD9177F
	.4byte 0x00F8034E
	.4byte 0x00810343
	.4byte 0x00820AE4
	.4byte 0x00C30CDA
	.4byte 0x177F00F8
	.4byte 0x03520081
	.4byte 0x03450082
	.4byte 0x028800C3
	.4byte 0x0CDB177F
	.4byte 0x00F8034F
	.4byte 0x00810347
	.4byte 0x00820B08
	.4byte 0x00C30CDC
	.4byte 0x177F00F8
	.4byte 0x03530081
	.4byte 0x03490082
	.4byte 0x02AC00C3
	.4byte 0x0CDD177F
	.4byte 0x00F80350
	.4byte 0x0081034B
	.4byte 0x00820B2C
	.4byte 0x00C30CDE
	.4byte 0x177F00F8
	.4byte 0x035400DE
	.4byte 0x02F2B100
	.4byte 0x0295046A
	.4byte 0x00DE02F5
	.4byte 0x00DF02F7
	.4byte 0x82000293
	.4byte 0x04567800
	.4byte 0x029F0459
	.4byte 0x02950459
	.4byte 0x740000FE
	.4byte 0x02F500DE
	.4byte 0x02F600DF
	.4byte 0x02F88200
	.4byte 0x02930465
	.4byte 0x7800029F
	.4byte 0x04680295
	.4byte 0x04687400
	.4byte 0x00FE02F6
	.4byte 0x8E008100
	.4byte 0x00DE02F2
	.4byte 0xB1000295
	.4byte 0x047F00DE
	.4byte 0x02F300DC
	.4byte 0x02F42ECE
	.4byte 0x2CCF16CD
	.4byte 0x0CA016C9
	.4byte 0x000116CB
	.4byte 0x004002BF
	.4byte 0x00848100
	.4byte 0x890000DE
	.4byte 0x02D200DF
	.4byte 0x02D32ECE
	.4byte 0x2FCF16CD
	.4byte 0x02D016C9
	.4byte 0x000116CB
	.4byte 0x014002BF
	.4byte 0x00848100
	.4byte 0x00DE02D0
	.4byte 0x00DC02D1
	.4byte 0xB1000294
	.4byte 0x028300C0
	.4byte 0x0CD2029F
	.4byte 0x006F8E00
	.4byte 0x00C40CE6
	.4byte 0x190500E5
	.4byte 0x0CE60086
	.4byte 0x04008100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x1FC62ECD
	.4byte 0x16C90001
	.4byte 0x16CB0480
	.4byte 0x02BF0084
	.4byte 0x02BF04E6
	.4byte 0x029F006F
	.4byte 0x8E0000C4
	.4byte 0x0CE71905
	.4byte 0x00E50CE7
	.4byte 0x00860640
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF1FC6
	.4byte 0x2ECD16C9
	.4byte 0x000116CB
	.4byte 0x048002BF
	.4byte 0x008402BF
	.4byte 0x04E6029F
	.4byte 0x006F8E00
	.4byte 0x00C40CE8
	.4byte 0x190500E5
	.4byte 0x0CE80086
	.4byte 0x08808100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x1FC62ECD
	.4byte 0x16C90001
	.4byte 0x16CB0480
	.4byte 0x02BF0084
	.4byte 0x02BF04E6
	.4byte 0x029F006F
	.4byte 0x8B008100
	.4byte 0x1FC41FE5
	.4byte 0x5D00009A
	.4byte 0x02AB009B
	.4byte 0x02AA0081
	.4byte 0x0D08D000
	.4byte 0xD400111F
	.4byte 0x04F7DC31
	.4byte 0xD431D431
	.4byte 0xDC314E31
	.4byte 0x1B258E00
	.4byte 0x191F191D
	.4byte 0x2FCE2DCF
	.4byte 0x89001FA6
	.4byte 0x2DCD16C9
	.4byte 0x000016CB
	.4byte 0x048002BF
	.4byte 0x008400E0
	.4byte 0x0CD28F00
	.4byte 0x8D008A00
	.4byte 0x00800D08
	.4byte 0x00810000
	.4byte 0x1C411C66
	.4byte 0x80F180C0
	.4byte 0xA000AE00
	.4byte 0x91414E00
	.4byte 0x4800112F
	.4byte 0x052A80F1
	.4byte 0x80C0A000
	.4byte 0xAF009941
	.4byte 0x4F324922
	.4byte 0x80F180C0
	.4byte 0xA000AE00
	.4byte 0x91414E3A
	.4byte 0x482A80F1
	.4byte 0x80C0A000
	.4byte 0xAF009941
	.4byte 0x4F324922
	.4byte 0x1B5F1B5D
	.4byte 0x00800D08
	.4byte 0x80F180C0
	.4byte 0xA000AE00
	.4byte 0x91414E00
	.4byte 0x4800112F
	.4byte 0x054C80F1
	.4byte 0x80C0A000
	.4byte 0xAF009941
	.4byte 0x4F324922
	.4byte 0x80F180C0
	.4byte 0xA000AE00
	.4byte 0x91414E3A
	.4byte 0x482A80F1
	.4byte 0x80C0A000
	.4byte 0xAF009941
	.4byte 0x4F324922
	.4byte 0x1B5F1B5D
	.4byte 0x00800D08
	.4byte 0x80F180C0
	.4byte 0xA000AE00
	.4byte 0x91414E00
	.4byte 0x4800112F
	.4byte 0x056E80F1
	.4byte 0x80C0A000
	.4byte 0xAF009941
	.4byte 0x4F324922
	.4byte 0x80F180C0
	.4byte 0xA000AE00
	.4byte 0x91414E3A
	.4byte 0x482A80F1
	.4byte 0x80C0A000
	.4byte 0xAF009941
	.4byte 0x4F324922
	.4byte 0x1B5F1B5D
	.4byte 0x00C00CD2
	.4byte 0x02DF8D00
	.4byte 0x8F008A00
	.4byte 0x89008168
	.4byte 0x00980000
	.4byte 0x00990001
	.4byte 0x00810000
	.4byte 0x193E193C
	.4byte 0x11600593
	.4byte 0xA1008271
	.4byte 0x02771F19
	.4byte 0x193CA100
	.4byte 0x82710277
	.4byte 0x1F19193C
	.4byte 0x1FD8B100
	.4byte 0x029405C0
	.4byte 0x00DE0CE4
	.4byte 0xB1000294
	.4byte 0x05A2191C
	.4byte 0x191C191C
	.4byte 0x029F006F
	.4byte 0x8B007A00
	.4byte 0x00FE0CE4
	.4byte 0x84000099
	.4byte 0x00C01F1E
	.4byte 0xA000191E
	.4byte 0x191E191C
	.4byte 0x00E00CD2
	.4byte 0x009A0000
	.4byte 0x00980840
	.4byte 0x4E004800
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0D08
	.4byte 0x16C90000
	.4byte 0x16CB00C0
	.4byte 0x029F05D6
	.4byte 0x8B0000D8
	.4byte 0x0CE40099
	.4byte 0x00C0A000
	.4byte 0x191E00FE
	.4byte 0x0CE4191E
	.4byte 0x191C00E0
	.4byte 0x0CD24E00
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0D08
	.4byte 0x16C90000
	.4byte 0x16CB00C0
	.4byte 0x02BF0084
	.4byte 0x8A480083
	.4byte 0x0D080080
	.4byte 0x00000081
	.4byte 0x00001979
	.4byte 0x193AB041
	.4byte 0xA64BF051
	.4byte 0xB4419100
	.4byte 0x113005EF
	.4byte 0xA792F151
	.4byte 0xB5209941
	.4byte 0xA693F051
	.4byte 0xB4289141
	.4byte 0x00830D08
	.4byte 0x008000C0
	.4byte 0x008100C0
	.4byte 0x1979193A
	.4byte 0xB041A64B
	.4byte 0xF051B441
	.4byte 0x91001130
	.4byte 0x0606A792
	.4byte 0xF151B520
	.4byte 0x9941A693
	.4byte 0xF051B428
	.4byte 0x914100C0
	.4byte 0x0CD2029F
	.4byte 0x006F8E48
	.4byte 0x8B708960
	.4byte 0x00E00CD2
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0180
	.4byte 0x16C90001
	.4byte 0x16CB0180
	.4byte 0x810000DE
	.4byte 0x0CE51FF9
	.4byte 0x5D0000F9
	.4byte 0x0CE5009A
	.4byte 0x02AB009B
	.4byte 0x02AA0081
	.4byte 0x0D08D000
	.4byte 0xD400111F
	.4byte 0x062BDC31
	.4byte 0xD431D431
	.4byte 0xDC314E31
	.4byte 0x1B3902BF
	.4byte 0x00848F00
	.4byte 0x8D008A00
	.4byte 0x00800D08
	.4byte 0x00810400
	.4byte 0x00830000
	.4byte 0x008200C0
	.4byte 0x1918195B
	.4byte 0x1959A000
	.4byte 0xAE009100
	.4byte 0x4E5BF04B
	.4byte 0x115F064F
	.4byte 0xA031AE00
	.4byte 0x91404E5A
	.4byte 0xF04AA031
	.4byte 0xAE009100
	.4byte 0x4E5BF04B
	.4byte 0xA031AE00
	.4byte 0x91004E00
	.4byte 0xF0001B3E
	.4byte 0x8E0000C0
	.4byte 0x0CD2191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x040016C9
	.4byte 0x000116CB
	.4byte 0x018002BF
	.4byte 0x008416FC
	.4byte 0xDCD116FD
	.4byte 0x000416FB
	.4byte 0x000126FC
	.4byte 0x02A08000
	.4byte 0x029C066B
	.4byte 0x029F006F
	.4byte 0x16FCDCD1
	.4byte 0x16FD0002
	.4byte 0x16FB0001
	.4byte 0x029F0F9B
	.4byte 0x029F004C
	.4byte 0x8C008A00
	.4byte 0x8F000081
	.4byte 0x0AC00082
	.4byte 0x02401FA1
	.4byte 0x11120689
	.4byte 0x195E195C
	.4byte 0xF0001B3E
	.4byte 0x191E191C
	.4byte 0x2ECE2CCF
	.4byte 0x2DCD1103
	.4byte 0x06A216C9
	.4byte 0x000116CB
	.4byte 0x00241FA1
	.4byte 0x1112069B
	.4byte 0x195E195C
	.4byte 0xF0001B3E
	.4byte 0x02BF0084
	.4byte 0x191E191C
	.4byte 0x2ECE2CCF
	.4byte 0x2DCD16C9
	.4byte 0x000116CB
	.4byte 0x002402BF
	.4byte 0x0084029F
	.4byte 0x006F0087
	.4byte 0xFFFF1C83
	.4byte 0x197E80E1
	.4byte 0xB04F1F5E
	.4byte 0xE2E1B64F
	.4byte 0x1F5EE2E1
	.4byte 0x112F06BD
	.4byte 0xB79A1F5F
	.4byte 0xE2E1B69B
	.4byte 0x1F5EE2E1
	.4byte 0x6F301B1F
	.4byte 0x1C641B7F
	.4byte 0x02DF8C00
	.4byte 0x8B001CA0
	.4byte 0x00830370
	.4byte 0x191A1918
	.4byte 0x1B7A1B78
	.4byte 0x1919191B
	.4byte 0x00830D03
	.4byte 0x110506D3
	.4byte 0x191A1B7A
	.4byte 0x00800D03
	.4byte 0x00880004
	.4byte 0x00830370
	.4byte 0x008B0001
	.4byte 0x00870000
	.4byte 0x193F191A
	.4byte 0xD0C3F2CB
	.4byte 0xF2A9E250
	.4byte 0xE3796E50
	.4byte 0x1482FC00
	.4byte 0x1F7E1B5E
	.4byte 0x112F06FF
	.4byte 0xD0C3F2CB
	.4byte 0xF2A9E350
	.4byte 0xE2796E50
	.4byte 0x1482FC00
	.4byte 0x1F3E1B5E
	.4byte 0xD0C3F2CB
	.4byte 0xF2A9E250
	.4byte 0xE3796E50
	.4byte 0x1482FC00
	.4byte 0x1F7E1B5E
	.4byte 0xD0C3F2CB
	.4byte 0xF2A9E350
	.4byte 0xE2006E00
	.4byte 0x1482FC00
	.4byte 0x1F3E1B5E
	.4byte 0x0088FFFF
	.4byte 0x008BFFFF
	.4byte 0x1C050083
	.4byte 0x0370197A
	.4byte 0x19781B1A
	.4byte 0x1B181B19
	.4byte 0x1B1B8D00
	.4byte 0x8A0002DF
	.4byte 0x02BF07E6
	.4byte 0x8C008A00
	.4byte 0x8F00195B
	.4byte 0x19598100
	.4byte 0x195C0080
	.4byte 0x0D080088
	.4byte 0x0003195F
	.4byte 0x1B1F195F
	.4byte 0x1B1F195F
	.4byte 0x1B1F195F
	.4byte 0x1B1F0081
	.4byte 0x0C600082
	.4byte 0xFFDD00C7
	.4byte 0x0CE04A00
	.4byte 0x1160074A
	.4byte 0x89121FBC
	.4byte 0x15771512
	.4byte 0x1C7F001F
	.4byte 0x00780743
	.4byte 0x185A1B1A
	.4byte 0x50001F1D
	.4byte 0x4AC390C3
	.4byte 0x97C395C3
	.4byte 0x95004F00
	.4byte 0x1B3F5A00
	.4byte 0x00040082
	.4byte 0x0329189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF0088
	.4byte 0xFFFF1ADC
	.4byte 0x00820322
	.4byte 0x27DC1ADF
	.4byte 0x27DB1ADF
	.4byte 0x27DA1ADF
	.4byte 0x0082030E
	.4byte 0x27D91ADF
	.4byte 0x27D81ADF
	.4byte 0x8E008B00
	.4byte 0x02DF02BF
	.4byte 0x07E68D00
	.4byte 0x8B008F00
	.4byte 0x195B1945
	.4byte 0x8100195C
	.4byte 0x00800D08
	.4byte 0x00880003
	.4byte 0x00840003
	.4byte 0x195F1B1F
	.4byte 0x195F1B1F
	.4byte 0x195F1B1F
	.4byte 0x195F1B1F
	.4byte 0x00810C60
	.4byte 0x0082FFDD
	.4byte 0x1F254A00
	.4byte 0x1160079F
	.4byte 0x89120078
	.4byte 0x0790185A
	.4byte 0x1B1A5000
	.4byte 0x1F1F7C00
	.4byte 0xB1140294
	.4byte 0x0799191F
	.4byte 0x0010029F
	.4byte 0x079E7C50
	.4byte 0xB014199A
	.4byte 0xB7004F00
	.4byte 0x1F254A39
	.4byte 0x5A000004
	.4byte 0x00820329
	.4byte 0x189F1ADF
	.4byte 0x189F1ADF
	.4byte 0x189F1ADF
	.4byte 0x189F1ADF
	.4byte 0x0088FFFF
	.4byte 0x1ADC0082
	.4byte 0x032227DC
	.4byte 0x1ADF27DB
	.4byte 0x1ADF27DA
	.4byte 0x1ADF0082
	.4byte 0x030E27D9
	.4byte 0x1ADF27D8
	.4byte 0x1ADF8E00
	.4byte 0x8C0002DF
	.4byte 0x02BF07E6
	.4byte 0x00800C60
	.4byte 0x0082FFDD
	.4byte 0x116007CB
	.4byte 0x18441B04
	.4byte 0
	.4byte 0x00040082
	.4byte 0x0329189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF0082
	.4byte 0x032227DC
	.4byte 0x1ADF27DB
	.4byte 0x1ADF27DA
	.4byte 0x1ADF0082
	.4byte 0x030E27D9
	.4byte 0x1ADF27D8
	.4byte 0x1ADF02DF
	.4byte 0x00820308
	.4byte 0x195E2ED1
	.4byte 0x195E2ED4
	.4byte 0x195E2ED5
	.4byte 0x195E2ED6
	.4byte 0x195E2ED7
	.4byte 0x195E2ED8
	.4byte 0x195E2ED9
	.4byte 0x195E2EA0
	.4byte 0x195E2EA1
	.4byte 0x195E2EA2
	.4byte 0x195E2EA3
	.4byte 0x195E2EA4
	.4byte 0x195E2EA5
	.4byte 0x195E2EA6
	.4byte 0x195E2EA7
	.4byte 0x195E2EA8
	.4byte 0x195E2EA9
	.4byte 0x195E2EAA
	.4byte 0x195E2EAB
	.4byte 0x195E2EAC
	.4byte 0x195E2EAD
	.4byte 0x195E2EAE
	.4byte 0x195E2EAF
	.4byte 0x195E2EDE
	.4byte 0x195E2EDA
	.4byte 0x195E2EDB
	.4byte 0x195E2EDC
	.4byte 0x02DF02DF
	.4byte 0x00C00CE2
	.4byte 0x008102DA
	.4byte 0x00820000
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x02F902DF
	.4byte 0x00C00CE3
	.4byte 0x008102DC
	.4byte 0x008200C0
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x02FD02DF
	.4byte 0x00C00CE2
	.4byte 0x008102DA
	.4byte 0x00820000
	.4byte 0x1C6200C4
	.4byte 0x0CE30085
	.4byte 0x00C002BF
	.4byte 0x0BEB00F8
	.4byte 0x02F900FB
	.4byte 0x02FD02DF
	.4byte 0x00C00CE2
	.4byte 0x008102DA
	.4byte 0x00820000
	.4byte 0x00830D08
	.4byte 0x00C40CE3
	.4byte 0x008500C0
	.4byte 0x02BF0C51
	.4byte 0x00F802F9
	.4byte 0x00FB02FD
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02EA0082
	.4byte 0x01801C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80301
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02EA0082
	.4byte 0x01801C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80301
	.4byte 0x029F0820
	.4byte 0x00C00CE1
	.4byte 0x008102EA
	.4byte 0x00820180
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0301029F
	.4byte 0x082C00C0
	.4byte 0x0CE10081
	.4byte 0x02EA0082
	.4byte 0x01801C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80301
	.4byte 0x029F0838
	.4byte 0x00C00CE1
	.4byte 0x008102EA
	.4byte 0x00820180
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0301029F
	.4byte 0x084A00C0
	.4byte 0x0CE10081
	.4byte 0x02EA0082
	.4byte 0x01800083
	.4byte 0x0D0802BF
	.4byte 0x0C2100F8
	.4byte 0x030102DF
	.4byte 0x00C00CE1
	.4byte 0x008102EA
	.4byte 0x00820180
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80301
	.4byte 0x029F0820
	.4byte 0x00C00CE1
	.4byte 0x008102EA
	.4byte 0x00820180
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80301
	.4byte 0x029F082C
	.4byte 0x00C00CE1
	.4byte 0x008102EA
	.4byte 0x00820180
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80301
	.4byte 0x029F0838
	.4byte 0x00C00CE1
	.4byte 0x008102EA
	.4byte 0x00820180
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80301
	.4byte 0x029F084A
	.4byte 0x00C00CE2
	.4byte 0x008102DE
	.4byte 0x00820400
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x02FA02DF
	.4byte 0x00C00CE3
	.4byte 0x008102E0
	.4byte 0x008204C0
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x02FE02DF
	.4byte 0x00C00CE2
	.4byte 0x008102DE
	.4byte 0x00820400
	.4byte 0x1C6200C4
	.4byte 0x0CE30085
	.4byte 0x04C002BF
	.4byte 0x0BEB00F8
	.4byte 0x02FA00FB
	.4byte 0x02FE02DF
	.4byte 0x00C00CE2
	.4byte 0x008102DE
	.4byte 0x00820400
	.4byte 0x00830D08
	.4byte 0x00C40CE3
	.4byte 0x008504C0
	.4byte 0x02BF0C51
	.4byte 0x00F802FA
	.4byte 0x00FB02FE
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02EC0082
	.4byte 0x05801C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80302
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02EC0082
	.4byte 0x05801C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80302
	.4byte 0x029F08E2
	.4byte 0x00C00CE1
	.4byte 0x008102EC
	.4byte 0x00820580
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0302029F
	.4byte 0x08EE00C0
	.4byte 0x0CE10081
	.4byte 0x02EC0082
	.4byte 0x05801C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80302
	.4byte 0x029F08FA
	.4byte 0x00C00CE1
	.4byte 0x008102EC
	.4byte 0x00820580
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0302029F
	.4byte 0x090C00C0
	.4byte 0x0CE10081
	.4byte 0x02EC0082
	.4byte 0x05800083
	.4byte 0x0D0802BF
	.4byte 0x0C2100F8
	.4byte 0x030202DF
	.4byte 0x00C00CE1
	.4byte 0x008102EC
	.4byte 0x00820580
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80302
	.4byte 0x029F08E2
	.4byte 0x00C00CE1
	.4byte 0x008102EC
	.4byte 0x00820580
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80302
	.4byte 0x029F08EE
	.4byte 0x00C00CE1
	.4byte 0x008102EC
	.4byte 0x00820580
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80302
	.4byte 0x029F08FA
	.4byte 0x00C00CE1
	.4byte 0x008102EC
	.4byte 0x00820580
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80302
	.4byte 0x029F090C
	.4byte 0x00C00CE2
	.4byte 0x008102E2
	.4byte 0x00820640
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x02FB02DF
	.4byte 0x00C00CE3
	.4byte 0x008102E4
	.4byte 0x00820700
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x02FF02DF
	.4byte 0x00C00CE2
	.4byte 0x008102E2
	.4byte 0x00820640
	.4byte 0x1C6200C4
	.4byte 0x0CE30085
	.4byte 0x070002BF
	.4byte 0x0BEB00F8
	.4byte 0x02FB00FB
	.4byte 0x02FF02DF
	.4byte 0x00C00CE2
	.4byte 0x008102E2
	.4byte 0x00820640
	.4byte 0x00830D08
	.4byte 0x00C40CE3
	.4byte 0x00850700
	.4byte 0x02BF0C51
	.4byte 0x00F802FB
	.4byte 0x00FB02FF
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02EE0082
	.4byte 0x07C01C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80303
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02EE0082
	.4byte 0x07C01C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80303
	.4byte 0x029F09A4
	.4byte 0x00C00CE1
	.4byte 0x008102EE
	.4byte 0x008207C0
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0303029F
	.4byte 0x09B000C0
	.4byte 0x0CE10081
	.4byte 0x02EE0082
	.4byte 0x07C01C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80303
	.4byte 0x029F09BC
	.4byte 0x00C00CE1
	.4byte 0x008102EE
	.4byte 0x008207C0
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0303029F
	.4byte 0x09CE00C0
	.4byte 0x0CE10081
	.4byte 0x02EE0082
	.4byte 0x07C00083
	.4byte 0x0D0802BF
	.4byte 0x0C2100F8
	.4byte 0x030302DF
	.4byte 0x00C00CE1
	.4byte 0x008102EE
	.4byte 0x008207C0
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80303
	.4byte 0x029F09A4
	.4byte 0x00C00CE1
	.4byte 0x008102EE
	.4byte 0x008207C0
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80303
	.4byte 0x029F09B0
	.4byte 0x00C00CE1
	.4byte 0x008102EE
	.4byte 0x008207C0
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80303
	.4byte 0x029F09BC
	.4byte 0x00C00CE1
	.4byte 0x008102EE
	.4byte 0x008207C0
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80303
	.4byte 0x029F09CE
	.4byte 0x00C00CE2
	.4byte 0x008102E6
	.4byte 0x00820880
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x02FC02DF
	.4byte 0x00C00CE3
	.4byte 0x008102E8
	.4byte 0x00820940
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x030002DF
	.4byte 0x00C00CE2
	.4byte 0x008102E6
	.4byte 0x00820880
	.4byte 0x1C6200C4
	.4byte 0x0CE30085
	.4byte 0x094002BF
	.4byte 0x0BEB00F8
	.4byte 0x02FC00FB
	.4byte 0x030002DF
	.4byte 0x00C00CE2
	.4byte 0x008102E6
	.4byte 0x00820880
	.4byte 0x00830D08
	.4byte 0x00C40CE3
	.4byte 0x00850940
	.4byte 0x02BF0C51
	.4byte 0x00F802FC
	.4byte 0x00FB0300
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A001C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80304
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A001C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80304
	.4byte 0x029F0A66
	.4byte 0x00C00CE1
	.4byte 0x008102F0
	.4byte 0x00820A00
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0304029F
	.4byte 0x0A7200C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A001C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80304
	.4byte 0x029F0A7E
	.4byte 0x00C00CE1
	.4byte 0x008102F0
	.4byte 0x00820A00
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0304029F
	.4byte 0x0A9000C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A000083
	.4byte 0x0D0802BF
	.4byte 0x0C2100F8
	.4byte 0x030402DF
	.4byte 0x00C00CE1
	.4byte 0x008102F0
	.4byte 0x00820A00
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80304
	.4byte 0x029F0A66
	.4byte 0x00C00CE1
	.4byte 0x008102F0
	.4byte 0x00820A00
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80304
	.4byte 0x029F0A72
	.4byte 0x00C00CE1
	.4byte 0x008102F0
	.4byte 0x00820A00
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80304
	.4byte 0x029F0A7E
	.4byte 0x00C00CE1
	.4byte 0x008102F0
	.4byte 0x00820A00
	.4byte 0x00830D08
	.4byte 0x02BF0C21
	.4byte 0x00F80304
	.4byte 0x029F0A90
	.4byte 0x00C00CE1
	.4byte 0x008102E6
	.4byte 0x00820880
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x02FC02DF
	.4byte 0x00C00CE1
	.4byte 0x008102E8
	.4byte 0x00820940
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x030002DF
	.4byte 0x00C00CE1
	.4byte 0x008102E6
	.4byte 0x00820880
	.4byte 0x1C6200C4
	.4byte 0x0CE10085
	.4byte 0x094002BF
	.4byte 0x0BEB00F8
	.4byte 0x02FC00FB
	.4byte 0x030002DF
	.4byte 0x00C00CE1
	.4byte 0x008102E6
	.4byte 0x00820880
	.4byte 0x00830D08
	.4byte 0x00C40CE1
	.4byte 0x00850940
	.4byte 0x02BF0C51
	.4byte 0x00F802FC
	.4byte 0x00FB0300
	.4byte 0x02DF00C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A001C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80304
	.4byte 0x029F0B28
	.4byte 0x00C00CE1
	.4byte 0x008102F0
	.4byte 0x00820A00
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0304029F
	.4byte 0x0B3400C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A001C62
	.4byte 0x02BF0BD1
	.4byte 0x00F80304
	.4byte 0x029F0B40
	.4byte 0x00C00CE1
	.4byte 0x008102F0
	.4byte 0x00820A00
	.4byte 0x1C6202BF
	.4byte 0x0BD100F8
	.4byte 0x0304029F
	.4byte 0x0B5200C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A000083
	.4byte 0x0D0802BF
	.4byte 0x0C2100F8
	.4byte 0x0304029F
	.4byte 0x0B2800C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A000083
	.4byte 0x0D0802BF
	.4byte 0x0C2100F8
	.4byte 0x0304029F
	.4byte 0x0B3400C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A000083
	.4byte 0x0D0802BF
	.4byte 0x0C2100F8
	.4byte 0x0304029F
	.4byte 0x0B4000C0
	.4byte 0x0CE10081
	.4byte 0x02F00082
	.4byte 0x0A000083
	.4byte 0x0D0802BF
	.4byte 0x0C2100F8
	.4byte 0x0304029F
	.4byte 0x0B52191A
	.4byte 0x1939B072
	.4byte 0x195CF07A
	.4byte 0x191AB46A
	.4byte 0x9100F1A0
	.4byte 0x112F0BE3
	.4byte 0xB5239972
	.4byte 0x195CF0A1
	.4byte 0xB42B917A
	.4byte 0x195DF1A0
	.4byte 0x1B7C6E00
	.4byte 0x4F129900
	.4byte 0x1B7F812B
	.4byte 0x02DF191A
	.4byte 0x1939B072
	.4byte 0x195CF07A
	.4byte 0x191AB46A
	.4byte 0x9100F1A0
	.4byte 0x112F0BFD
	.4byte 0xB5239972
	.4byte 0x195CF0A1
	.4byte 0xB42B917A
	.4byte 0x195DF1A0
	.4byte 0x1B7C6E00
	.4byte 0x4F129909
	.4byte 0x1B7F1B7D
	.4byte 0x1C041C45
	.4byte 0x1C62191A
	.4byte 0x1939B072
	.4byte 0x195CF07A
	.4byte 0x191AB46A
	.4byte 0x9100F1A0
	.4byte 0x112F0C19
	.4byte 0xB5239972
	.4byte 0x195CF0A1
	.4byte 0xB42B917A
	.4byte 0x195DF1A0
	.4byte 0x1B7C6E00
	.4byte 0x4F1E9900
	.4byte 0x1B7F1B7D
	.4byte 0x02DF1CE3
	.4byte 0x8E008100
	.4byte 0x897118BF
	.4byte 0x1B7E4C00
	.4byte 0x1B7E112F
	.4byte 0x0C2E4C00
	.4byte 0x1B7E4C00
	.4byte 0x1B7E4C00
	.4byte 0x1B3E1C27
	.4byte 0x1C628F50
	.4byte 0x1939B072
	.4byte 0x195CF07A
	.4byte 0x191A1939
	.4byte 0xB46A9100
	.4byte 0xF1A01939
	.4byte 0x112F0C49
	.4byte 0xB5239972
	.4byte 0x195CF0A1
	.4byte 0x1939B42B
	.4byte 0x917A195D
	.4byte 0xF1A01939
	.4byte 0x1B7C6E00
	.4byte 0x4F129900
	.4byte 0x1B7F1B7D
	.4byte 0x02DF1CE3
	.4byte 0x8E008100
	.4byte 0x897118BF
	.4byte 0x1B7E4C00
	.4byte 0x1B7E112F
	.4byte 0x0C5E4C00
	.4byte 0x1B7E4C00
	.4byte 0x1B7E4C00
	.4byte 0x1B3E0009
	.4byte 0x81008971
	.4byte 0x18BF1B7E
	.4byte 0x4C001B7E
	.4byte 0x112F0C6D
	.4byte 0x4C001B7E
	.4byte 0x4C001B7E
	.4byte 0x4C001B3E
	.4byte 0x1C271C62
	.4byte 0x8F501939
	.4byte 0xB072195C
	.4byte 0xF07A191A
	.4byte 0x1939B46A
	.4byte 0x9100F1A0
	.4byte 0x1939112F
	.4byte 0x0C88B523
	.4byte 0x9972195C
	.4byte 0xF0A11939
	.4byte 0xB42B917A
	.4byte 0x195DF1A0
	.4byte 0x19391B7C
	.4byte 0x6E004F12
	.4byte 0x99051B7F
	.4byte 0x1B7D1C04
	.4byte 0x1C451C62
	.4byte 0x191A1939
	.4byte 0xB072195C
	.4byte 0xF07A191A
	.4byte 0x1939B46A
	.4byte 0x9100F1A0
	.4byte 0x1939112F
	.4byte 0x0CA8B523
	.4byte 0x9972195C
	.4byte 0xF0A11939
	.4byte 0xB42B917A
	.4byte 0x195DF1A0
	.4byte 0x19391B7C
	.4byte 0x6E004F1E
	.4byte 0x99001B7F
	.4byte 0x1B7D02DF
	.4byte 0x00980000
	.4byte 0x02DF0080
	.4byte 0x0CC01C62
	.4byte 0x1939191A
	.4byte 0xB000195E
	.4byte 0x195CF050
	.4byte 0xB400917A
	.4byte 0x195DF1A0
	.4byte 0x11080CC9
	.4byte 0xB5239972
	.4byte 0x195CF0A1
	.4byte 0xB42B917A
	.4byte 0x195DF1A0
	.4byte 0x4F239900
	.4byte 0x1B7F6E2B
	.4byte 0x1F1E02DF
	.4byte 0x00800CC0
	.4byte 0x00830D08
	.4byte 0x1CE38E00
	.4byte 0x81008971
	.4byte 0x18BF1B7E
	.4byte 0x4C001B7E
	.4byte 0x11080CE1
	.4byte 0x4C001B7E
	.4byte 0x4C001B7E
	.4byte 0x4C001B3E
	.4byte 0x1C271C62
	.4byte 0x8F501939
	.4byte 0xB000195E
	.4byte 0x195CF050
	.4byte 0x1939B400
	.4byte 0x917A195D
	.4byte 0xF1A01939
	.4byte 0x11080CFD
	.4byte 0xB5239972
	.4byte 0x195CF0A1
	.4byte 0x1939B42B
	.4byte 0x917A195D
	.4byte 0xF1A01939
	.4byte 0x4F239900
	.4byte 0x1B7F6E2B
	.4byte 0x1F1E02DF
	.4byte 0x008A0222
	.4byte 0x024F0E83
	.4byte 0x027E049B
	.4byte 0x04B404CD
	.4byte 0x0DBD0DDF
	.4byte 0x057B060B
	.4byte 0x0EC6067C
	.4byte 0x0672081F
	.4byte 0x0820082C
	.4byte 0x0838084A
	.4byte 0x084A084A
	.4byte 0x084A085D
	.4byte 0x08690876
	.4byte 0x08830890
	.4byte 0x08900890
	.4byte 0x0890089D
	.4byte 0x08AA08B8
	.4byte 0x08C608D4
	.4byte 0x08D408D4
	.4byte 0x08D4089D
	.4byte 0x08AA08B8
	.4byte 0x08C608D4
	.4byte 0x08D408D4
	.4byte 0x08D4081F
	.4byte 0x08E208EE
	.4byte 0x08FA090C
	.4byte 0x090C090C
	.4byte 0x090C091F
	.4byte 0x092B0938
	.4byte 0x09450952
	.4byte 0x09520952
	.4byte 0x0952095F
	.4byte 0x096C097A
	.4byte 0x09880996
	.4byte 0x09960996
	.4byte 0x0996095F
	.4byte 0x096C097A
	.4byte 0x09880996
	.4byte 0x09960996
	.4byte 0x0996081F
	.4byte 0x09A409B0
	.4byte 0x09BC09CE
	.4byte 0x09CE09CE
	.4byte 0x09CE09E1
	.4byte 0x09ED09FA
	.4byte 0x0A070A14
	.4byte 0x0A140A14
	.4byte 0x0A140A21
	.4byte 0x0A2E0A3C
	.4byte 0x0A4A0A58
	.4byte 0x0A580A58
	.4byte 0x0A580A21
	.4byte 0x0A2E0A3C
	.4byte 0x0A4A0A58
	.4byte 0x0A580A58
	.4byte 0x0A58081F
	.4byte 0x0A660A72
	.4byte 0x0A7E0A90
	.4byte 0x0A900A90
	.4byte 0x0A900AA3
	.4byte 0x0AAF0ABC
	.4byte 0x0AC90AD6
	.4byte 0x0AD60AD6
	.4byte 0x0AD60AE3
	.4byte 0x0AF00AFE
	.4byte 0x0B0C0B1A
	.4byte 0x0B1A0B1A
	.4byte 0x0B1A0AE3
	.4byte 0x0AF00AFE
	.4byte 0x0B0C0B1A
	.4byte 0x0B1A0B1A
	.4byte 0x0B1A081F
	.4byte 0x0B280B34
	.4byte 0x0B400B52
	.4byte 0x0B520B52
	.4byte 0x0B520AA3
	.4byte 0x0B650B72
	.4byte 0x0B7F0B8C
	.4byte 0x0B8C0B8C
	.4byte 0x0B8C0AE3
	.4byte 0x0B990BA7
	.4byte 0x0BB50BC3
	.4byte 0x0BC30BC3
	.4byte 0x0BC30AE3
	.4byte 0x0B990BA7
	.4byte 0x0BB50BC3
	.4byte 0x0BC30BC3
	.4byte 0x0BC30CB0
	.4byte 0x0CB30CD0
	.4byte 0x0CD0071A
	.4byte 0x076B07C0
	.4byte 0x10001200
	.4byte 0x14008E00
	.4byte 0x00C40CE6
	.4byte 0x190500E5
	.4byte 0x0CE60086
	.4byte 0x0400191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x040016C9
	.4byte 0x000116CB
	.4byte 0x048002BF
	.4byte 0x0084191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x094016C9
	.4byte 0x000116CB
	.4byte 0x018002BF
	.4byte 0x0084029F
	.4byte 0x0E018E00
	.4byte 0x00C40CE7
	.4byte 0x190500E5
	.4byte 0x0CE70086
	.4byte 0x0640191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x064016C9
	.4byte 0x000116CB
	.4byte 0x048002BF
	.4byte 0x0084191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x0A0016C9
	.4byte 0x000116CB
	.4byte 0x018002BF
	.4byte 0x0084029F
	.4byte 0x0E018B00
	.4byte 0x81008900
	.4byte 0x1FC41FE5
	.4byte 0x5D00009A
	.4byte 0x02AB009B
	.4byte 0x02AA0081
	.4byte 0x0D08D000
	.4byte 0xD400111F
	.4byte 0x0E13DC31
	.4byte 0xD431D431
	.4byte 0xDC314E31
	.4byte 0x1B25191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF00E6
	.4byte 0xFFCD16C9
	.4byte 0x000016CB
	.4byte 0x01800081
	.4byte 0x00001C41
	.4byte 0x02BF0084
	.4byte 0x02BF0E57
	.4byte 0x191E191C
	.4byte 0x2ECE2CCF
	.4byte 0x00E6FFCD
	.4byte 0x16C90000
	.4byte 0x16CB0180
	.4byte 0x02BF0084
	.4byte 0x02BF0E57
	.4byte 0x191E191C
	.4byte 0x2ECE2CCF
	.4byte 0x00E6FFCD
	.4byte 0x16C90000
	.4byte 0x16CB0180
	.4byte 0x02BF0084
	.4byte 0x02BF0E57
	.4byte 0x191E191C
	.4byte 0x2ECE2CCF
	.4byte 0x00E6FFCD
	.4byte 0x16C90000
	.4byte 0x16CB0180
	.4byte 0x00810880
	.4byte 0x1C4102BF
	.4byte 0x008402BF
	.4byte 0x0E57029F
	.4byte 0x006F8F00
	.4byte 0x8D008A00
	.4byte 0x00E00CD2
	.4byte 0x00800D08
	.4byte 0x1C6680F1
	.4byte 0x80C0A000
	.4byte 0xAE009141
	.4byte 0x4E004800
	.4byte 0x112F0E75
	.4byte 0x80F180C0
	.4byte 0xA000AF00
	.4byte 0x99414F32
	.4byte 0x492280F1
	.4byte 0x80C0A000
	.4byte 0xAE009141
	.4byte 0x4E3A482A
	.4byte 0x80F180C0
	.4byte 0xA000AF00
	.4byte 0x99414F32
	.4byte 0x49221B5F
	.4byte 0x1B5D00C0
	.4byte 0x0CD28E00
	.4byte 0x02DF8E00
	.4byte 0x191F191D
	.4byte 0x2FCE2DCF
	.4byte 0x16CD0D08
	.4byte 0x16C90000
	.4byte 0x16CB0300
	.4byte 0x02BF0084
	.4byte 0x1C808F00
	.4byte 0x00800D08
	.4byte 0x00830000
	.4byte 0x1C4380F0
	.4byte 0x80C06A00
	.4byte 0x4800112F
	.4byte 0x0EA480F0
	.4byte 0x80C06B32
	.4byte 0x492280F0
	.4byte 0x80C06A3A
	.4byte 0x482A80F0
	.4byte 0x80C06B32
	.4byte 0x49221B5F
	.4byte 0x1B5D80F0
	.4byte 0x80C06800
	.4byte 0x7C004A00
	.4byte 0x112F0EBB
	.4byte 0x80F080C0
	.4byte 0x69327D00
	.4byte 0x4B2280F0
	.4byte 0x80C0683A
	.4byte 0x7C004A2A
	.4byte 0x80F080C0
	.4byte 0x69327D00
	.4byte 0x4B221B5F
	.4byte 0x1B5D1C04
	.4byte 0x029F006F
	.4byte 0x8E488B78
	.4byte 0x816800E0
	.4byte 0x0CD22FCE
	.4byte 0x2DCF16CD
	.4byte 0x018016C9
	.4byte 0x000116CB
	.4byte 0x018002BF
	.4byte 0x00848100
	.4byte 0x009C0180
	.4byte 0x4D002FCE
	.4byte 0x2DCF16CD
	.4byte 0x088016C9
	.4byte 0x000116CB
	.4byte 0x01808100
	.4byte 0x890000DE
	.4byte 0x0CE51FF9
	.4byte 0x5D0000F9
	.4byte 0x0CE5009A
	.4byte 0x02AB009B
	.4byte 0x02AA0081
	.4byte 0x0D08D000
	.4byte 0xD400111F
	.4byte 0x0EF5DC31
	.4byte 0xD431D431
	.4byte 0xDC314E31
	.4byte 0x1B3902BF
	.4byte 0x00848F00
	.4byte 0x8D008A00
	.4byte 0x00800D08
	.4byte 0x00810400
	.4byte 0x00830000
	.4byte 0x008200C0
	.4byte 0x1918195B
	.4byte 0x1959A000
	.4byte 0xAE009100
	.4byte 0x4E5BF04B
	.4byte 0x115F0F19
	.4byte 0xA031AE00
	.4byte 0x91404E5A
	.4byte 0xF04AA031
	.4byte 0xAE009100
	.4byte 0x4E5BF04B
	.4byte 0xA031AE00
	.4byte 0x91004E00
	.4byte 0xF0001B3E
	.4byte 0x8E0000C0
	.4byte 0x0CD2191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x040016C9
	.4byte 0x000116CB
	.4byte 0x018002BF
	.4byte 0x008416FC
	.4byte 0xDCD116FD
	.4byte 0x000416FB
	.4byte 0x000126FC
	.4byte 0x02A08000
	.4byte 0x029C0F35
	.4byte 0x029F006F
	.4byte 0x8E001FCC
	.4byte 0x1D9E16FC
	.4byte 0xECC02EFD
	.4byte 0x26FC02A0
	.4byte 0x8000029C
	.4byte 0x0F4202FF
	.4byte 0
	.4byte 0
	.4byte 0x02FF8E00
	.4byte 0x1DBC1DBE
	.4byte 0x810000DE
	.4byte 0x03070601
	.4byte 0x02950F59
	.4byte 0x0E0000FE
	.4byte 0x02D81FCD
	.4byte 0x1F8D02FF
	.4byte 0
	.4byte 0
	.4byte 0x02FF8E00
	.4byte 0x1DBC1DBE
	.4byte 0x810000DE
	.4byte 0x03070601
	.4byte 0x02950F72
	.4byte 0x0E0000FE
	.4byte 0x02D80082
	.4byte 0x0CE91FCD
	.4byte 0x1F8D02FF
	.4byte 0x00DE02D9
	.4byte 0x06010295
	.4byte 0x0F8300DE
	.4byte 0x032A2EDA
	.4byte 0x00DE032B
	.4byte 0x2EDB00DE
	.4byte 0x032C2EDC
	.4byte 0x1FCD1F8D
	.4byte 0x02FF00DE
	.4byte 0x032A2EDA
	.4byte 0x26DB2EDB
	.4byte 0x26DC2EDC
	.4byte 0x1FCD1F8D
	.4byte 0x02FF0000
	.4byte 0
	.4byte 0x000002FF
	.4byte 0
	.4byte 0
	.4byte 0x02FF0FA9
	.4byte 0x0FAC0FE4
	.4byte 0x0FE78E00
	.4byte 0x81008900
	.4byte 0x02BF0FEA
	.4byte 0x27FF009E
	.4byte 0x0F974C00
	.4byte 0x1C7E0313
	.4byte 0x1C7F176F
	.4byte 0x0021029F
	.4byte 0x00370021
	.4byte 0x81008900
	.4byte 0x02BF0FEA
	.4byte 0x24FF02BF
	.4byte 0x0FF025FF
	.4byte 0x02BF0FF0
	.4byte 0x27FF2ECE
	.4byte 0x2CCF16C9
	.4byte 0x00012FCD
	.4byte 0x2DCB8100
	.4byte 0x890002BF
	.4byte 0x0FEA24FF
	.4byte 0x1C9E1CBC
	.4byte 0x02BF0FF0
	.4byte 0x25FF02BF
	.4byte 0x0FF027FF
	.4byte 0x1CDF1CFD
	.4byte 0x810002BF
	.4byte 0x0FEA26FF
	.4byte 0x1C1E8900
	.4byte 0x02BF0FF0
	.4byte 0x20FF1F5F
	.4byte 0x02BF0FEA
	.4byte 0x21FF02BF
	.4byte 0x0FEA23FF
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x0FDC029F
	.4byte 0x80B50021
	.4byte 0x029F8000
	.4byte 0x0021029F
	.4byte 0x004C0021
	.4byte 0x26FE02C0
	.4byte 0x8000029C
	.4byte 0x0FEA02DF
	.4byte 0x27FE03C0
	.4byte 0x8000029C
	.4byte 0x0FF002DF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80195C60
	# ROM: 0x191D60
	.4byte 0x0000009D
	.4byte 0x000001DF
	.4byte 0x0000033D
	.4byte 0x0000013D
	.4byte 0x00000329
	.4byte 0x0000045D
	.4byte 0x000001DF
	.4byte 0x000003AD
	.4byte 0x000005CF
	.4byte 0x00000281
	.4byte 0x000004EB
	.4byte 0x0000079D
	.4byte 0x0000031D
	.4byte 0x00000683
	.4byte 0x00000A13
	.4byte 0x000003C7
	.4byte 0x0000076D
	.4byte 0x00000B57
	.4byte 0x00000463
	.4byte 0x00000883
	.4byte 0x00000D55
	.4byte 0x000004FF
	.4byte 0x000009AD
	.4byte 0x00000F31
	.4byte 0x3ECCCCCD
	.4byte 0xBF800000
	.4byte 0x3E99999A
	.4byte 0x3F000000
	.4byte 0xBF733333
	.4byte 0x3E99999A
	.4byte 0x3F19999A
	.4byte 0xBF666666
	.4byte 0x3E99999A
	.4byte 0x3F400000
	.4byte 0xBF59999A
	.4byte 0x3E99999A
	.4byte 0xBF666666
	.4byte 0x3F4CCCCD
	.4byte 0x3E99999A
	.4byte 0xBF800000
	.4byte 0x3F333333
	.4byte 0x3E99999A
	.4byte 0xBF800000
	.4byte 0x3F333333
	.4byte 0x3E99999A
	.4byte 0xBF800000
	.4byte 0x3F333333
	.4byte 0x3E99999A

glabel lbl_80195D20
	# ROM: 0x191E20
	.4byte 0x000006FD
	.4byte 0x000007CF
	.4byte 0x0000091D
	.4byte 0x000001B1
	.4byte 0x00000095
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043
	.4byte 0x00000095
	.4byte 0x00000125
	.4byte 0x000001C1
	.4byte 0x000000FB
	.4byte 0x00000067
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043
	.4byte 0x000003B3
	.4byte 0x00000551
	.4byte 0x000005FB
	.4byte 0x000001B1
	.4byte 0x00000089
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043
	.4byte 0x000004FF
	.4byte 0x000005FB
	.4byte 0x000007B5
	.4byte 0x000001FD
	.4byte 0x00000095
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043
	.4byte 0x000005FB
	.4byte 0x00000737
	.4byte 0x000008F9
	.4byte 0x00000233
	.4byte 0x000000B3
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043
	.4byte 0x0000071F
	.4byte 0x00000935
	.4byte 0x00000A85
	.4byte 0x0000023B
	.4byte 0x00000089
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043
	.4byte 0x0000071F
	.4byte 0x00000935
	.4byte 0x00000A85
	.4byte 0x0000023B
	.4byte 0x000000B3
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043

glabel lbl_80195E00
	# ROM: 0x191F00
	.4byte 0x00000001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x0009000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000E
	.4byte 0x000E000E
	.4byte 0x000E000E
	.4byte 0x000E000F
	.4byte 0x000F000F
	.4byte 0x000F000F
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00100011
	.4byte 0x00110011
	.4byte 0x00110011
	.4byte 0x00120012
	.4byte 0x00120012
	.4byte 0x00120013
	.4byte 0x00130013
	.4byte 0x00130013
	.4byte 0x00140014
	.4byte 0x00140014
	.4byte 0x00150015
	.4byte 0x00150015
	.4byte 0x00160016
	.4byte 0x00160016
	.4byte 0x00170017
	.4byte 0x00170018
	.4byte 0x00180018
	.4byte 0x00180019
	.4byte 0x00190019
	.4byte 0x001A001A
	.4byte 0x001A001A
	.4byte 0x001B001B
	.4byte 0x001B001C
	.4byte 0x001C001C
	.4byte 0x001D001D
	.4byte 0x001D001E
	.4byte 0x001E001E
	.4byte 0x001F001F
	.4byte 0x00200020
	.4byte 0x00200021
	.4byte 0x00210021
	.4byte 0x00220022
	.4byte 0x00230023
	.4byte 0x00230024
	.4byte 0x00240025
	.4byte 0x00250026
	.4byte 0x00260026
	.4byte 0x00270027
	.4byte 0x00280028
	.4byte 0x00290029
	.4byte 0x002A002A
	.4byte 0x002B002B
	.4byte 0x002C002C
	.4byte 0x002D002D
	.4byte 0x002E002E
	.4byte 0x002F002F
	.4byte 0x00300031
	.4byte 0x00310032
	.4byte 0x00320033
	.4byte 0x00330034
	.4byte 0x00350035
	.4byte 0x00360037
	.4byte 0x00370038
	.4byte 0x00380039
	.4byte 0x003A003A
	.4byte 0x003B003C
	.4byte 0x003D003D
	.4byte 0x003E003F
	.4byte 0x003F0040
	.4byte 0x00410042
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460046
	.4byte 0x00470048
	.4byte 0x0049004A
	.4byte 0x004B004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620064
	.4byte 0x00650066
	.4byte 0x00670068
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00740075
	.4byte 0x00760078
	.4byte 0x0079007B
	.4byte 0x007C007E
	.4byte 0x007F0080
	.4byte 0x00820083
	.4byte 0x00850087
	.4byte 0x0088008A
	.4byte 0x008B008D
	.4byte 0x008F0090
	.4byte 0x00920094
	.4byte 0x00950097
	.4byte 0x0099009B
	.4byte 0x009C009E
	.4byte 0x00A000A2
	.4byte 0x00A400A6
	.4byte 0x00A800AA
	.4byte 0x00AB00AD
	.4byte 0x00AF00B2
	.4byte 0x00B400B6
	.4byte 0x00B800BA
	.4byte 0x00BC00BE
	.4byte 0x00C000C3
	.4byte 0x00C500C7
	.4byte 0x00CA00CC
	.4byte 0x00CE00D1
	.4byte 0x00D300D6
	.4byte 0x00D800DB
	.4byte 0x00DD00E0
	.4byte 0x00E200E5
	.4byte 0x00E700EA
	.4byte 0x00ED00F0
	.4byte 0x00F200F5
	.4byte 0x00F800FB
	.4byte 0x00FE0101
	.4byte 0x01040107
	.4byte 0x010A010D
	.4byte 0x01100113
	.4byte 0x0116011A
	.4byte 0x011D0120
	.4byte 0x01240127
	.4byte 0x012A012E
	.4byte 0x01310135
	.4byte 0x0138013C
	.4byte 0x01400143
	.4byte 0x0147014B
	.4byte 0x014F0153
	.4byte 0x0157015B
	.4byte 0x015F0163
	.4byte 0x0167016B
	.4byte 0x016F0173
	.4byte 0x0178017C
	.4byte 0x01800185
	.4byte 0x0189018E
	.4byte 0x01930197
	.4byte 0x019C01A1
	.4byte 0x01A601AB
	.4byte 0x01AF01B4
	.4byte 0x01BA01BF
	.4byte 0x01C401C9
	.4byte 0x01CE01D4
	.4byte 0x01D901DF
	.4byte 0x01E401EA
	.4byte 0x01EF01F5
	.4byte 0x01FB0201
	.4byte 0x0207020D
	.4byte 0x02130219
	.4byte 0x021F0226
	.4byte 0x022C0232
	.4byte 0x02390240
	.4byte 0x0246024D
	.4byte 0x0254025B
	.4byte 0x02620269
	.4byte 0x02700277
	.4byte 0x027E0286
	.4byte 0x028D0295
	.4byte 0x029D02A4
	.4byte 0x02AC02B4
	.4byte 0x02BC02C4
	.4byte 0x02CC02D5
	.4byte 0x02DD02E6
	.4byte 0x02EE02F7
	.4byte 0x03000309
	.4byte 0x0312031B
	.4byte 0x0324032D
	.4byte 0x03370340
	.4byte 0x034A0354
	.4byte 0x035D0367
	.4byte 0x0371037C
	.4byte 0x03860390
	.4byte 0x039B03A6
	.4byte 0x03B103BB
	.4byte 0x03C703D2
	.4byte 0x03DD03E9
	.4byte 0x03F40400
	.4byte 0x040C0418
	.4byte 0x04240430
	.4byte 0x043D0449
	.4byte 0x04560463
	.4byte 0x0470047D
	.4byte 0x048A0498
	.4byte 0x04A504B3
	.4byte 0x04C104CF
	.4byte 0x04DD04EC
	.4byte 0x04FA0509
	.4byte 0x05180527
	.4byte 0x05360546
	.4byte 0x05550565
	.4byte 0x05750586
	.4byte 0x059605A6
	.4byte 0x05B705C8
	.4byte 0x05D905EB
	.4byte 0x05FC060E
	.4byte 0x06200632
	.4byte 0x06440657
	.4byte 0x066A067D
	.4byte 0x069006A4
	.4byte 0x06B706CB
	.4byte 0x06DF06F4
	.4byte 0x0708071D
	.4byte 0x07320748
	.4byte 0x075D0773
	.4byte 0x0789079F
	.4byte 0x07B607CD
	.4byte 0x07E407FB
	.4byte 0x0813082B
	.4byte 0x0843085C
	.4byte 0x0874088E
	.4byte 0x08A708C1
	.4byte 0x08DA08F5
	.4byte 0x090F092A
	.4byte 0x09450961
	.4byte 0x097D0999
	.4byte 0x09B509D2
	.4byte 0x09EF0A0D
	.4byte 0x0A2A0A48
	.4byte 0x0A670A86
	.4byte 0x0AA50AC5
	.4byte 0x0AE50B05
	.4byte 0x0B250B47
	.4byte 0x0B680B8A
	.4byte 0x0BAC0BCF
	.4byte 0x0BF20C15
	.4byte 0x0C390C5D
	.4byte 0x0C820CA7
	.4byte 0x0CCC0CF2
	.4byte 0x0D190D3F
	.4byte 0x0D670D8E
	.4byte 0x0DB70DDF
	.4byte 0x0E080E32
	.4byte 0x0E5C0E87
	.4byte 0x0EB20EDD
	.4byte 0x0F090F36
	.4byte 0x0F630F91
	.4byte 0x0FBF0FEE
	.4byte 0x101D104D
	.4byte 0x107D10AE
	.4byte 0x10DF1111
	.4byte 0x11441177
	.4byte 0x11AB11DF
	.4byte 0x1214124A
	.4byte 0x128012B7
	.4byte 0x12EE1326
	.4byte 0x135F1399
	.4byte 0x13D3140D
	.4byte 0x14491485
	.4byte 0x14C214FF
	.4byte 0x153E157D
	.4byte 0x15BC15FD
	.4byte 0x163E1680
	.4byte 0x16C31706
	.4byte 0x174A178F
	.4byte 0x17D5181C
	.4byte 0x186318AC
	.4byte 0x18F5193F
	.4byte 0x198A19D5
	.4byte 0x1A221A6F
	.4byte 0x1ABE1B0D
	.4byte 0x1B5D1BAE
	.4byte 0x1C001C53
	.4byte 0x1CA71CFC
	.4byte 0x1D521DA9
	.4byte 0x1E011E5A
	.4byte 0x1EB41F0F
	.4byte 0x1F6B1FC8
	.4byte 0x20262086
	.4byte 0x20E62148
	.4byte 0x21AA220E
	.4byte 0x227322D9
	.4byte 0x234123A9
	.4byte 0x2413247E
	.4byte 0x24EA2557
	.4byte 0x25C62636
	.4byte 0x26A7271A
	.4byte 0x278E2803
	.4byte 0x287A28F2
	.4byte 0x296B29E6
	.4byte 0x2A622AE0
	.4byte 0x2B5F2BDF
	.4byte 0x2C612CE5
	.4byte 0x2D6A2DF1
	.4byte 0x2E792F03
	.4byte 0x2F8E301B
	.4byte 0x30AA313A
	.4byte 0x31CC325F
	.4byte 0x32F5338C
	.4byte 0x342534BF
	.4byte 0x355B35FA
	.4byte 0x369A373C
	.4byte 0x37DF3885
	.4byte 0x392C39D6
	.4byte 0x3A813B2F
	.4byte 0x3BDE3C90
	.4byte 0x3D433DF9
	.4byte 0x3EB13F6A
	.4byte 0x402640E5
	.4byte 0x41A54268
	.4byte 0x432C43F4
	.4byte 0x44BD4589
	.4byte 0x46574727
	.4byte 0x47FA48D0
	.4byte 0x49A84A82
	.4byte 0x4B5F4C3E
	.4byte 0x4D204E05
	.4byte 0x4EEC4FD6
	.4byte 0x50C351B2
	.4byte 0x52A45399
	.4byte 0x5491558C
	.4byte 0x5689578A
	.4byte 0x588D5994
	.4byte 0x5A9D5BAA
	.4byte 0x5CBA5DCD
	.4byte 0x5EE35FFC
	.4byte 0x61196238
	.4byte 0x635C6482
	.4byte 0x65AC66D9
	.4byte 0x680A693F
	.4byte 0x6A776BB2
	.4byte 0x6CF26E35
	.4byte 0x6F7B70C6
	.4byte 0x72147366
	.4byte 0x74BC7616
	.4byte 0x777478D6
	.4byte 0x7A3D7BA7
	.4byte 0x7D167E88
	.4byte 0x7FFF817B
	.4byte 0x82FB847F
	.4byte 0x86088795
	.4byte 0x89278ABE
	.4byte 0x8C598DF9
	.4byte 0x8F9E9148
	.4byte 0x92F694AA
	.4byte 0x96639820
	.4byte 0x99E39BAB
	.4byte 0x9D799F4C
	.4byte 0xA124A302
	.4byte 0xA4E5A6CE
	.4byte 0xA8BCAAB0
	.4byte 0xACAAAEAA
	.4byte 0xB0B0B2BC
	.4byte 0xB4CEB6E5
	.4byte 0xB904BB28
	.4byte 0xBD53BF84
	.4byte 0xC1BCC3FA
	.4byte 0xC63FC88B
	.4byte 0xCADDCD37
	.4byte 0xCF97D1FE
	.4byte 0xD46DD6E3
	.4byte 0xD960DBE4
	.4byte 0xDE70E103
	.4byte 0xE39EE641
	.4byte 0xE8EBEB9E
	.4byte 0xEE58F11B
	.4byte 0xF3E6F6B9
	.4byte 0xF994FC78
	.4byte 0xFF640000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFED
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE8
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE5
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE3
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE1
	.4byte 0xFFFFFFE0
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDE
	.4byte 0xFFFFFFDD
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDB
	.4byte 0xFFFFFFDA
	.4byte 0xFFFFFFD9
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD7
	.4byte 0xFFFFFFD6
	.4byte 0xFFFFFFD5
	.4byte 0xFFFFFFD4
	.4byte 0xFFFFFFD3
	.4byte 0xFFFFFFD2
	.4byte 0xFFFFFFD1
	.4byte 0xFFFFFFD0
	.4byte 0xFFFFFFCF
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFCD
	.4byte 0xFFFFFFCC
	.4byte 0xFFFFFFCA
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFFC8
	.4byte 0xFFFFFFC7
	.4byte 0xFFFFFFC5
	.4byte 0xFFFFFFC4
	.4byte 0xFFFFFFC3
	.4byte 0xFFFFFFC1
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFBE
	.4byte 0xFFFFFFBD
	.4byte 0xFFFFFFBB
	.4byte 0xFFFFFFB9
	.4byte 0xFFFFFFB8
	.4byte 0xFFFFFFB6
	.4byte 0xFFFFFFB4
	.4byte 0xFFFFFFB2
	.4byte 0xFFFFFFB0
	.4byte 0xFFFFFFAD
	.4byte 0xFFFFFFAB
	.4byte 0xFFFFFFA9
	.4byte 0xFFFFFFA6
	.4byte 0xFFFFFFA3
	.4byte 0xFFFFFFA0
	.4byte 0xFFFFFF9D
	.4byte 0xFFFFFF9A
	.4byte 0xFFFFFF96
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFF88
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFF7B
	.4byte 0xFFFFFF74
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF5D
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFF2E
	.4byte 0xFFFFFC78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFFE
	.4byte 0xFFFDFFFD
	.4byte 0xFFFDFFFC
	.4byte 0xFFFCFFFC
	.4byte 0xFFFBFFFB
	.4byte 0xFFFAFFFA
	.4byte 0xFFFAFFF9
	.4byte 0xFFF9FFF8
	.4byte 0xFFF8FFF7
	.4byte 0xFFF7FFF6
	.4byte 0xFFF5FFF5
	.4byte 0xFFF4FFF4
	.4byte 0xFFF3FFF2
	.4byte 0xFFF2FFF1
	.4byte 0xFFF0FFEF
	.4byte 0xFFEFFFEE
	.4byte 0xFFEDFFEC
	.4byte 0xFFEBFFEB
	.4byte 0xFFEAFFE9
	.4byte 0xFFE8FFE7
	.4byte 0xFFE6FFE5
	.4byte 0xFFE4FFE3
	.4byte 0xFFE2FFE1
	.4byte 0xFFE0FFDE
	.4byte 0xFFDDFFDC
	.4byte 0xFFDBFFDA
	.4byte 0xFFD8FFD7
	.4byte 0xFFD6FFD4
	.4byte 0xFFD3FFD1
	.4byte 0xFFD0FFCE
	.4byte 0xFFCCFFCB
	.4byte 0xFFC9FFC7
	.4byte 0xFFC6FFC4
	.4byte 0xFFC2FFC0
	.4byte 0xFFBEFFBC
	.4byte 0xFFBAFFB7
	.4byte 0xFFB5FFB3
	.4byte 0xFFB0FFAE
	.4byte 0xFFABFFA8
	.4byte 0xFFA6FFA3
	.4byte 0xFFA0FF9C
	.4byte 0xFF99FF96
	.4byte 0xFF92FF8E
	.4byte 0xFF8AFF86
	.4byte 0xFF82FF7D
	.4byte 0xFF78FF73
	.4byte 0xFF6EFF68
	.4byte 0xFF61FF5A
	.4byte 0xFF53FF4B
	.4byte 0xFF42FF37
	.4byte 0xFF2CFF1F
	.4byte 0xFF0FFEFB
	.4byte 0xFEE2FEBF
	.4byte 0xFE83FC40
	.4byte 0xFFC3FFC3
	.4byte 0xFFC4FFC5
	.4byte 0xFFC5FFC6
	.4byte 0xFFC6FFC7
	.4byte 0xFFC8FFC8
	.4byte 0xFFC9FFC9
	.4byte 0xFFCAFFCB
	.4byte 0xFFCBFFCC
	.4byte 0xFFCCFFCD
	.4byte 0xFFCEFFCE
	.4byte 0xFFCFFFCF
	.4byte 0xFFD0FFD0
	.4byte 0xFFD1FFD1
	.4byte 0xFFD2FFD2
	.4byte 0xFFD3FFD3
	.4byte 0xFFD4FFD4
	.4byte 0xFFD5FFD5
	.4byte 0xFFD6FFD6
	.4byte 0xFFD7FFD7
	.4byte 0xFFD8FFD8
	.4byte 0xFFD9FFD9
	.4byte 0xFFDAFFDA
	.4byte 0xFFDAFFDB
	.4byte 0xFFDBFFDC
	.4byte 0xFFDCFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xFFDEFFDE
	.4byte 0xFFDFFFDF
	.4byte 0xFFE0FFE0
	.4byte 0xFFE0FFE1
	.4byte 0xFFE1FFE1
	.4byte 0xFFE2FFE2
	.4byte 0xFFE3FFE3
	.4byte 0xFFE3FFE4
	.4byte 0xFFE4FFE4
	.4byte 0xFFE5FFE5
	.4byte 0xFFE5FFE6
	.4byte 0xFFE6FFE6
	.4byte 0xFFE7FFE7
	.4byte 0xFFE7FFE8
	.4byte 0xFFE8FFE8
	.4byte 0xFFE9FFE9
	.4byte 0xFFE9FFEA
	.4byte 0xFFEAFFEA
	.4byte 0xFFEBFFEB
	.4byte 0xFFEBFFEC
	.4byte 0xFFECFFEC
	.4byte 0xFFECFFED
	.4byte 0xFFEDFFED
	.4byte 0xFFEEFFEE
	.4byte 0xFFEEFFEE
	.4byte 0xFFEFFFEF
	.4byte 0xFFEFFFEF
	.4byte 0xFFF0FFF0
	.4byte 0xFFF0FFF0
	.4byte 0xFFF1FFF1
	.4byte 0xFFF1FFF1
	.4byte 0xFFF2FFF2
	.4byte 0xFFF2FFF2
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF4
	.4byte 0xFFF4FFF4
	.4byte 0xFFF4FFF5

glabel lbl_80196990
	# ROM: 0x192A90
	.asciz "<< RVL_SDK - DSP \trelease build: Nov 30 2006 03:26:46 (0x4199_60831) >>"
	.asciz "DSPInit(): Build Date: %s %s\n"
	.balign 4
	.asciz "Nov 30 2006"
	.asciz "03:26:46"
	.balign 4

glabel lbl_80196A10
	# ROM: 0x192B10
	.asciz "DSP is booting task: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : Start Vector  : 0x%08X\n"
	.balign 4
	.asciz "__DSP_add_task() : Added task    : 0x%08X\n"
	.balign 8

glabel lbl_80196B50
	# ROM: 0x192C50
	.asciz "/tmp/sys"
	.balign 4

glabel lbl_80196B5C
	# ROM: 0x192C5C
	.asciz "%s/%08x/%s"
	.balign 4

glabel lbl_80196B68
	# ROM: 0x192C68
	.asciz "Illegal NANDFileInfo.\n"
	.balign 4

glabel lbl_80196B80
	# ROM: 0x192C80
	.asciz "<< RVL_SDK - NAND \trelease build: Nov 30 2006 03:32:57 (0x4199_60831) >>"
	.balign 8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80196BE0
	# ROM: 0x192CE0
	.4byte 0x2F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte nandOnShutdown
	.4byte 0x000000FF
	.4byte 0
	.4byte 0

glabel lbl_80196C30
	# ROM: 0x192D30
	.asciz "/shared2"
	.balign 4

glabel lbl_80196C3C
	# ROM: 0x192D3C
	.asciz "/shared2/"
	.balign 4

glabel lbl_80196C48
	# ROM: 0x192D48
	.asciz "CAUTION!  Unexpected error code [%d] was found.\n"
	.balign 4
	.asciz "Failed to set home directory.\n"
	.balign 8

glabel lbl_80196CA0
	.asciz "/title/00010000"

glabel lbl_80196CB0
	.asciz "/title/00010001"

glabel lbl_80196CC0
	.asciz "/title/00010003"

glabel lbl_80196CD0
	.asciz "/title/00010004"

glabel lbl_80196CE0
	.asciz "/title/00010005"

glabel lbl_80196CF0
	.asciz "/title/00010006"

glabel lbl_80196D00
	.asciz "/title/00010007"

glabel lbl_80196D10
	.asciz "/shared2/title"
	.balign 4

glabel lbl_80196D20
	# ROM: 0x192E20
	.4byte lbl_80246858
	.4byte lbl_80246860
	.4byte lbl_80196CA0
	.4byte lbl_80196CB0
	.4byte lbl_80196CC0
	.4byte lbl_80196CD0
	.4byte lbl_80196CE0
	.4byte lbl_80196CF0
	.4byte lbl_80196D00
	.4byte lbl_80196D10
	.4byte 0
	.4byte 0

glabel lbl_80196D50
	.asciz "<< RVL_SDK - SC \trelease build: Nov 30 2006 03:33:00 (0x4199_60831) >>"
	.balign 4

glabel lbl_80196D98
	.asciz "IPL.EULA"
	.balign 4

glabel lbl_80196DA4
	.asciz "IPL.SADR"
	.balign 4

glabel lbl_80196DB0
	.asciz "NET.CTPC"
	.balign 4

glabel lbl_80196DBC
	.asciz "NET.PROF"
	.balign 4

glabel lbl_80196DC8
	.asciz "NET.WCPC"
	.balign 4

glabel lbl_80196DD4
	.asciz "NET.WCFG"
	.balign 4

glabel lbl_80196DE0
	# ROM: 0x192EE0
	.4byte lbl_8024686C
	.4byte 0
	.4byte lbl_80246874
	.4byte 0x00000001
	.4byte lbl_80246880
	.4byte 0x00000002
	.4byte lbl_80246888
	.4byte 0x00000003
	.4byte lbl_80246890
	.4byte 0x00000004
	.4byte lbl_80246898
	.4byte 0x00000005
	.4byte lbl_802468A0
	.4byte 0x00000006
	.4byte lbl_80196D98
	.4byte 0x00000007
	.4byte lbl_802468A8
	.4byte 0x00000008
	.4byte lbl_802468B0
	.4byte 0x00000009
	.4byte lbl_802468B8
	.4byte 0x0000000A
	.4byte lbl_802468C0
	.4byte 0x0000000B
	.4byte lbl_802468C8
	.4byte 0x0000000C
	.4byte lbl_802468D0
	.4byte 0x0000000D
	.4byte lbl_802468D8
	.4byte 0x0000000E
	.4byte lbl_802468E0
	.4byte 0x0000000F
	.4byte lbl_80196DA4
	.4byte 0x00000010
	.4byte lbl_802468E8
	.4byte 0x00000011
	.4byte lbl_802468F0
	.4byte 0x00000012
	.4byte lbl_802468F8
	.4byte 0x00000013
	.4byte lbl_80196DB0
	.4byte 0x00000014
	.4byte lbl_80196DBC
	.4byte 0x00000015
	.4byte lbl_80196DC8
	.4byte 0x00000016
	.4byte lbl_80196DD4
	.4byte 0x00000017
	.4byte lbl_80246900
	.4byte 0x00000018
	.4byte lbl_80246908
	.4byte 0x00000019
	.4byte lbl_80246910
	.4byte 0x0000001A
	.4byte lbl_80246918
	.4byte 0x0000001B
	.4byte lbl_80246920
	.4byte 0x0000001C
	.4byte lbl_80246928
	.4byte 0x0000001D
	.4byte lbl_80246930
	.4byte 0x0000001E
	.4byte lbl_80246938
	.4byte 0x0000001F
	.4byte lbl_80246940
	.4byte 0x00000020
	.4byte lbl_80246948
	.4byte 0x00000021
	.4byte lbl_80246950
	.4byte 0x00000022

glabel lbl_80196EF8
	# ROM: 0x192FF8
	.4byte lbl_800BD874
	.4byte lbl_800BD8B8
	.4byte lbl_800BD8F8
	.4byte lbl_800BD928
	.4byte lbl_800BD970
	.4byte lbl_800BD9A4
	.4byte lbl_800BD9D8
	.4byte lbl_800BDA1C
	.4byte lbl_800BDA58
	.4byte lbl_800BDA60

glabel lbl_80196F20
	# ROM: 0x193020
	.4byte 0x004A504E
	.4byte 0x00015553
	.4byte 0x41000245
	.4byte 0x55520003
	.4byte 0x41555300
	.4byte 0x04425241
	.4byte 0x00055457
	.4byte 0x4E000552
	.4byte 0x4F430006
	.4byte 0x4B4F5200
	.4byte 0x07484B47
	.4byte 0x00084153
	.4byte 0x4900094C
	.4byte 0x544E000A
	.4byte 0x53414600
	.4byte 0xFF000000
	.4byte 0
	.4byte 0

glabel lbl_80196F68
	# ROM: 0x193068
	.asciz "ARCInitHandle: bad archive format"
	.balign 4

glabel lbl_80196F8C
	# ROM: 0x19308C
	.asciz "Warning: ARCOpen(): file '%s' was not found under %s in the archive.\n"
	.balign 8

glabel lbl_80196FD8
	# ROM: 0x1930D8
	.asciz "APP ERROR: Not enough IPC arena\n"
	.balign 8

glabel lbl_80197000
	.asciz "<< RVL_SDK - PAD \trelease build: Nov 30 2006 03:31:43 (0x4199_60831) >>"

glabel lbl_80197048
	# ROM: 0x193148
	.4byte lbl_800C3924
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

glabel lbl_80197058
	# ROM: 0x193158
	.asciz "<< RVL_SDK - WPAD \trelease build: May 17 2007 01:52:03 (0x4199_60831) >>"
	.balign 4

glabel lbl_801970A4
	# ROM: 0x1931A4
	.asciz "No Alloc: Nothing to do!!!\n"

glabel lbl_801970C0
	# ROM: 0x1931C0
	.asciz "No Free: Nothing to do!!!\n"
	.balign 4

glabel lbl_801970DC
	# ROM: 0x1931DC
	.asciz "Deregister allocators because of fatal error.\n"
	.balign 8

glabel lbl_80197110
	# ROM: 0x193210
	.4byte OnShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

glabel lbl_80197120
	# ROM: 0x193220
	.asciz "Check the update of WiFi using channel\n"

glabel lbl_80197148
	# ROM: 0x193248
	.asciz "WiFi uses channel = %d\n"

glabel lbl_80197160
	# ROM: 0x193260
	.asciz "WPADInit()\n"

glabel lbl_8019716C
	# ROM: 0x19326C
	.asciz " ==>this error means that the firmware is for NDEV %s\n"
	.balign 4

glabel lbl_801971A4
	# ROM: 0x1932A4
	.asciz "2.1 or later"
	.balign 4
	.asciz "connection is opened\n"
	.balign 4
	.asciz "connection is closed\n"
	.balign 8
	.asciz "clean up command queue\n"
	.asciz "WARNING: disconnection for device handle not assigned to channel.\n"
	.balign 8

glabel lbl_80197248
	# ROM: 0x193348
	.asciz "HID Parser reports: %d\n"

glabel lbl_80197260
	# ROM: 0x193360
	.asciz "WPADiRecvCallback(): Unknown channel %d\n"
	.balign 4

glabel lbl_8019728C
	# ROM: 0x19338C
	.asciz "WPADSetSamplingCallback()\n"
	.balign 4

glabel lbl_801972A8
	# ROM: 0x1933A8
	.asciz "WPADSetConnectCallback()\n"
	.balign 4

glabel lbl_801972C4
	# ROM: 0x1933C4
	.asciz "WPADSetExtensionCallback()\n"

glabel lbl_801972E0
	# ROM: 0x1933E0
	.asciz "WPADSetAutoSamplingBuf()\n"
	.balign 4

glabel lbl_801972FC
	# ROM: 0x1933FC
	.asciz "handle = %d, repid = %02x\n"
	.balign 4

glabel lbl_80197318
	# ROM: 0x193418
	.4byte lbl_800CA920
	.4byte lbl_800CA92C
	.4byte lbl_800CA938
	.4byte lbl_800CA944
	.4byte lbl_800CA950
	.4byte lbl_800CA95C
	.4byte lbl_800CA968
	.4byte lbl_800CA974
	.4byte lbl_800CA980
	.4byte lbl_800CA98C

glabel lbl_80197340
	# ROM: 0x193440
	.4byte lbl_800CC16C
	.4byte lbl_800CC57C
	.4byte __a1_22_ack
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_30_data_type
	.4byte __a1_31_data_type
	.4byte __a1_32_data_type
	.4byte __a1_33_data_type
	.4byte lbl_800CDC4C
	.4byte lbl_800CDC50
	.4byte __a1_34_data_type
	.4byte lbl_800CE6C8
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_3d_data_type
	.4byte __a1_3e_data_type
	.4byte __a1_3f_data_type

glabel lbl_801973C0
	# ROM: 0x1934C0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF000000
	.asciz "Dpd Setting is ok.\n"
	.balign 8
	.asciz "Dpd Setting is broken.\n"
	.asciz "Old Firmware uses default values because it has no Dpd Setting.\n"
	.balign 4
	.asciz "Acc is ok.\n"
	.asciz "Acc is broken.\n"
	.asciz "0G:  accX = %d,  accY = %d,  accZ = %d\n"
	.asciz "1G:  accX = %d,  accY = %d,  accZ = %d\n"
	.asciz "Volume: %d,   Motor: %d\n"
	.balign 4
	.asciz "check sum error.\n"
	.balign 4
	.asciz "0G:  fsaccX = %d,  fsaccY = %d,  fsaccZ = %d\n"
	.balign 4
	.asciz "1G:  fsaccX = %d,  fsaccY = %d,  fsaccZ = %d\n"
	.balign 4
	.asciz "FS:  X = %d,  X max = %d,  X min = %d\n"
	.balign 4
	.asciz "FS:  Y = %d,  Y max = %d,  Y min = %d\n"
	.balign 4
	.asciz "CL:  X = %d,  X max = %d,  X min = %d\n"
	.balign 4
	.asciz "CL:  Y = %d,  Y max = %d,  Y min = %d\n"
	.balign 4
	.asciz "CR:  X = %d,  X max = %d,  X min = %d\n"
	.balign 4
	.asciz "CR:  Y = %d,  Y max = %d,  Y min = %d\n"
	.balign 4
	.asciz "LR:  L = %d,  R = %d\n"
	.balign 4

glabel lbl_80197650
	# ROM: 0x193750
	.asciz "type : %d\n"
	.balign 4

glabel lbl_8019765C
	# ROM: 0x19375C
	.asciz "mode : %d\n"
	.balign 4
	.asciz "Received report 20\n"
	.asciz "initialize attachment\n"
	.balign 4
	.asciz "already initialized\n"
	.balign 4
	.asciz "already disconnected\n"
	.balign 4
	.asciz "read error happens!\n"
	.balign 4
	.asciz "base addr: %08x\n"
	.balign 4
	.asciz "length   : %d\n"
	.balign 4
	.asciz "received data is out of range!\n"
	.asciz "Received ack!\n"
	.balign 4
	.asciz "ack --> report ID = %02x, error code = %d\n"
	.balign 4
	.asciz "ack error --> report ID = %d, error code = %d\n"
	.balign 4
	.asciz "invalid ack!\n"
	.balign 8

glabel lbl_801977A0
	# ROM: 0x1938A0
	.4byte 0xA877A6E0
	.4byte 0xF7435A35
	.4byte 0x85E27297
	.4byte 0x8FB71A62
	.4byte 0x87380D67
	.4byte 0xC7BE4F3E
	.4byte 0x2076378F
	.4byte 0x68B7A926
	.4byte 0x3F2B10E3
	.4byte 0x307E900E
	.4byte 0x850A0000
	.4byte 0
	.4byte 0x70510386
	.4byte 0x400D4FEB
	.4byte 0x3ECCD187
	.4byte 0x35BDF50B
	.4byte 0x5ED0F8F2
	.4byte 0xD5E26C31
	.4byte 0x0CADFC21
	.4byte 0xC378C106
	.4byte 0xC24C55E6
	.4byte 0x4A344811
	.4byte 0x1EDAE71A
	.4byte 0x84A096A7
	.4byte 0xE37FAF63
	.4byte 0x9CFA235B
	.4byte 0x79C89EBA
	.4byte 0xB2C92212
	.4byte 0x4BB3A1B6
	.4byte 0x3249A2E1
	.4byte 0x89391066
	.4byte 0xC5078F54
	.4byte 0xEA91CA3F
	.4byte 0xF919F0D7
	.4byte 0x46BC281B
	.4byte 0x61E82F6A
	.4byte 0xAE9DF64E
	.4byte 0x0914774D
	.4byte 0xDB1F2E7B
	.4byte 0x7CF143A3
	.4byte 0x00B8138C
	.4byte 0x85B92975
	.4byte 0x88FDD256
	.4byte 0x1C509741
	.4byte 0xE53B60B5
	.4byte 0xC064EE98
	.4byte 0xD62D25A4
	.4byte 0xAACD7DA8
	.4byte 0x83C6ABBE
	.4byte 0x4499263C
	.4byte 0xCE9FBFD3
	.4byte 0xCB767A7E
	.4byte 0x82018A9A
	.4byte lbl_801D0EB0
	.4byte 0x5CD43862
	.4byte 0xF430E08E
	.4byte 0x53B70257
	.4byte 0xACA6520A
	.4byte 0x6D926517
	.4byte 0x24334572
	.4byte 0x74B1B4F7
	.4byte 0x5DED2CFF
	.4byte 0x47375A90
	.4byte 0xBBDF2A16
	.4byte 0x5995D9C4
	.4byte 0x276773C7
	.4byte 0x68FEA5DD
	.4byte 0x6B5F93D8
	.4byte 0xEC053A8D
	.4byte 0x6EFB3DA9
	.4byte 0x6936F394
	.4byte 0xDEEF156F
	.4byte 0x8B9B080F
	.4byte 0xDC811820
	.4byte 0x04E471CF
	.4byte 0xE92B4258
	.4byte 0x01A0A962
	.4byte 0xD63F85A7
	.4byte 0xB6D4FA15
	.4byte 0x661709BD
	.4byte 0x5D143426
	.4byte 0x59729154
	.4byte 0x064FF8B0
	.4byte 0x5B749399
	.4byte 0x8CF245CD
	.4byte 0xEA4EAD10
	.4byte 0x4AE5CAEE
	.4byte 0xDFC66F9F
	.4byte 0x888E02CC
	.4byte 0x08A87794
	.4byte 0x6D21B128
	.4byte 0xE4397996
	.4byte 0x60718116
	.4byte 0x2EE678B9
	.4byte 0xC4469A42
	.4byte 0xAEB77C43
	.4byte 0xB3221A86
	.4byte 0xC2323D2D
	.4byte 0x9CD229E9
	.4byte 0x639BD131
	.4byte 0x385E1E36
	.4byte 0x41BB0318
	.4byte 0x2B3EBF68
	.4byte 0x61FC52C0
	.4byte 0xDEE00A58
	.4byte 0x135A00BE
	.4byte 0x1C900E53
	.4byte 0x12FDE26E
	.4byte 0xBACE2427
	.4byte 0x447F87A3
	.4byte 0xA1D55040
	.4byte 0xE3F983F7
	.4byte 0xC7A235C8
	.4byte 0xDB19AB2F
	.4byte 0x1125ED33
	.4byte 0x9E55E148
	.4byte 0xAF7384DA
	.4byte 0x2AAA51EB
	.4byte 0x9D95B2CB
	.4byte 0xE77080FE
	.4byte 0x4C6504EF
	.4byte 0xC5F1C33A
	.4byte 0xB4F55F23
	.4byte 0x89DD30A5
	.4byte 0x8BD3F6DC
	.4byte 0x4D64D7F0
	.4byte 0x8FEC5637
	.4byte 0x5CA40D07
	.4byte 0x768A2C0B
	.4byte 0xB5D8C11F
	.4byte 0xE83BF44B
	.4byte 0x1B476C49
	.4byte 0x677B92CF
	.4byte 0x757E20D9
	.4byte 0x7D3C977A
	.4byte 0xD0056B0F
	.4byte 0x1DFB8298
	.4byte 0x578DF36A
	.4byte 0xBCACC9A6
	.4byte 0xFFB8690C
	.4byte 0x4C4D7207
	.4byte 0x5A49338D
	.4byte 0xA2AB463D
	.4byte 0x630DA097
	.4byte 0xFFF0F5FA
	.4byte 0xC0E9DB62
	.4byte 0xE4E17443
	.4byte 0xDC861829
	.4byte 0x37F406E2
	.4byte 0xED6F9048
	.4byte 0x1E2D1DEA
	.4byte 0x739454DF
	.4byte 0x25F64727
	.4byte 0xD91177C9
	.4byte 0x841C5B5C
	.4byte 0x5181A622
	.4byte 0x3E2496C8
	.4byte 0x8AEC827C
	.4byte 0x09B8454A
	.4byte 0x57BB2F50
	.4byte 0x758E6170
	.4byte 0x8C6CAFD0
	.4byte 0xFDB41BAE
	.4byte 0xDEFE3BB5
	.4byte 0x36BD5501
	.4byte 0x0E9C4156
	.4byte 0x5FB32603
	.4byte 0x83BA134B
	.4byte 0xCAC50AF8
	.4byte 0x60A5B9C7
	.4byte 0xC39832FB
	.4byte 0x12F9A792
	.4byte 0xAA68F378
	.4byte 0x7E052021
	.4byte 0x02E8BFF2
	.4byte 0xB0598FD2
	.4byte 0xCB876515
	.4byte 0xF11AB230
	.4byte 0xADEE58A3
	.4byte 0x8B661F2C
	.4byte 0xD75D1985
	.4byte 0xA8E6D36B
	.4byte 0xA10C9193
	.4byte 0x6A5E0B79
	.4byte 0xE3DD004F
	.4byte 0x3C896E71
	.4byte 0x69A9AC40
	.4byte 0xE59928C6
	.4byte 0x314E7ACD
	.4byte 0x089E7DEF
	.4byte 0x17FC88D8
	.4byte 0xA46D4495
	.4byte 0xD1B7D49B
	.4byte 0xBE2A3464
	.4byte 0x2BCF2EEB
	.4byte 0x38CE23E0
	.4byte 0x3A3FF77B
	.4byte 0x9F1053BC
	.4byte 0x526716E7
	.4byte 0x807604C4
	.4byte 0xB6C1C27F
	.4byte 0x9ADAD539
	.4byte 0x42149DB1
	.4byte 0x0F35D6CC
	.4byte 0xB9DA380C
	.4byte 0xA29C091F
	.4byte 0x06B1B6FD
	.4byte 0x1A692330
	.4byte 0xC4DE01D1
	.4byte 0xF4582937
	.4byte 0x1C7DD5BF
	.4byte 0xFFBDC8C9
	.4byte 0xCF65BE7B
	.4byte 0x78979867
	.4byte 0x08B32657
	.4byte 0xF7FA40AD
	.4byte 0x8E75A67C
	.4byte 0xDB918B51
	.4byte 0x99D4177A
	.4byte 0x908DCE63
	.4byte 0xCB4EA0AB
	.4byte 0x183A5B50
	.4byte 0x7F2174C1
	.4byte 0xBBB8B7BA
	.4byte 0x0B359531
	.4byte 0x599A4D04
	.4byte 0x071E5A76
	.4byte 0x13F37183
	.4byte 0xF08603A8
	.4byte 0x3942AA28
	.4byte 0xE6E4D85D
	.4byte 0xD3D06E6F
	.4byte 0x96FB5EBC
	.4byte 0x56C25F85
	.4byte 0x9BE7AFD2
	.4byte 0x3B846AA7
	.4byte 0x53C54449
	.4byte 0xA5F93672
	.4byte 0x3D2CD91B
	.4byte 0xA1F54F93
	.4byte 0x9D684741
	.4byte 0x16CA2A4C
	.4byte 0xA387D6E5
	.4byte 0x192E7715
	.4byte 0x6D70C0DF
	.4byte 0xB20046ED
	.4byte 0xC66C4360
	.4byte 0x922DA922
	.4byte 0x458F3455
	.4byte 0xAEA40A66
	.4byte 0x32E0DC02
	.4byte 0xACE8208C
	.4byte 0x89624AFE
	.4byte 0xEEC3E33C
	.4byte 0xF17905E9
	.4byte 0xF62733CC
	.4byte 0xF29E1181
	.4byte 0x7E80108A
	.4byte 0x829F480D
	.4byte 0xD7B4FC2F
	.4byte 0xB5C7DD88
	.4byte 0x146B2B54
	.4byte 0xEA1D945C
	.4byte 0xB0EF1224
	.4byte 0xCDEBE1E2
	.4byte 0x64733F0E
	.4byte 0x5261253E
	.4byte 0xF80F4BEC
	.4byte 0xC00030F6
	.4byte 0x02493D10
	.4byte 0x6E20C9A6
	.4byte 0x2FFE2C2B
	.4byte 0x752E4526
	.4byte 0xAB48A980
	.4byte 0xFC04CCD3
	.4byte 0xB5BAA338
	.4byte 0x317D01D9
	.4byte 0xA77B96B6
	.4byte 0x63694EF7
	.4byte 0xDEE078CA
	.4byte 0x50AA4191
	.4byte 0x6588E421
	.4byte 0x85DA3A27
	.4byte 0xBE1C3E42
	.4byte 0x5E17527F
	.4byte 0x1F89246F
	.4byte 0x8F5C6774
	.4byte 0x0E12878D
	.4byte 0xE934ED73
	.4byte 0xC4F8615B
	.4byte 0x05DF594C
	.4byte 0x97798318
	.4byte 0xA45595EB
	.4byte 0xBD53F5F1
	.4byte 0x5766469F
	.4byte 0xB2810951
	.4byte 0x862216DD
	.4byte 0x23937629
	.4byte 0xC2D71DD4
	.4byte 0xBF363FEA
	.4byte 0x4B1132B9
	.4byte 0x625460D6
	.4byte 0x6D439A0D
	.4byte 0x929CB0EF
	.4byte 0x586C9D77
	.4byte 0x2D70FAF3
	.4byte 0xB30BE240
	.4byte 0x7EF48AE5
	.4byte 0x8C3C5671
	.4byte 0xD164E182
	.4byte 0x0ACB1315
	.4byte 0x90EC0399
	.4byte 0xAF145D0F
	.4byte 0x334A94A5
	.4byte 0xA8351BE3
	.4byte 0x6AC628FF
	.4byte 0x4DE72584
	.4byte 0xAC08AEC5
	.4byte 0xA22AB837
	.4byte 0x0C7AA0C3
	.4byte 0xCEAD061A
	.4byte 0x9E8BFBD5
	.4byte 0xF0C11ED0
	.4byte 0xB49BB144
	.4byte 0xF247C768
	.4byte 0xCF72BB4F
	.4byte 0x5AF9DC6B
	.4byte 0xDBD2E87C
	.4byte 0xC8EE98A1
	.4byte 0xE6D83907
	.4byte 0x5FFD8E19
	.4byte 0xB73BBCCD
	.4byte 0x7CE38173
	.4byte 0xB211BF6F
	.4byte 0x2098FE75
	.4byte 0x96EF6CDA
	.4byte 0x50E10972
	.4byte 0x5445BA34
	.4byte 0x805BED3E
	.4byte 0x532C87A4
	.4byte 0x57F3333F
	.4byte 0x3CB767B4
	.4byte 0xA325604F
	.4byte 0x076B1B47
	.4byte 0x150FE40A
	.4byte 0xEAD13278
	.4byte 0x36498D4B
	.4byte 0xD2BCA5DC
	.4byte 0x1D0D4DCD
	.4byte 0x9A825FFC
	.4byte 0x9465BEE2
	.4byte 0xF4C91E44
	.4byte 0xCB9E0C64
	.4byte 0x712663B3
	.4byte 0x14E84070
	.4byte 0x8A0E1942
	.4byte 0x6DAC8810
	.4byte 0x5CDF41A9
	.4byte 0xADE5FB74
	.4byte 0xCCD5068E
	.4byte 0x5986CE1F
	.4byte 0x3D76E08F
	.4byte 0xB977277B
	.4byte 0xA6D829D3
	.4byte 0xECB813F7
	.4byte 0xFAC3516A
	.4byte 0xDE4A5AEB
	.4byte 0xC28B2348
	.4byte 0x92CF62A8
	.4byte 0x99F8D02E
	.4byte 0x856143C8
	.4byte 0xBDF00593
	.4byte 0xCA4EF17D
	.4byte 0x30FDC469
	.4byte 0x662F08B1
	.4byte 0x52F921E6
	.4byte 0x7A2BDD39
	.4byte 0x84FFC091
	.4byte 0xD637D47F
	.4byte 0x2D9B5DA1
	.4byte 0x3B6EB5C5
	.4byte 0x4604F590
	.4byte 0xEE7E831C
	.4byte 0x0356B6AA
	.4byte 0x00170135
	.4byte 0x55790B12
	.4byte 0xBB1A31E7
	.4byte 0x022816C1
	.4byte 0xF6A2DB18
	.4byte 0x9C896838
	.4byte 0x97ABC72A
	.4byte 0xD73AF2C6
	.4byte 0x244CB058
	.4byte 0xA0225E9D
	.4byte 0xD9A7E9AE
	.4byte 0xAF8C959F
	.4byte 0x28B720D7
	.4byte 0xB030C309
	.4byte 0x19C067D6
	.4byte 0x003C7EE7
	.4byte 0xE9F4085A
	.4byte 0xF8B82E05
	.4byte 0xA6259E5C
	.4byte 0xD8150DE1
	.4byte 0xF611546B
	.4byte 0xCD214666
	.4byte 0x5E84AD06
	.4byte 0x382944C5
	.4byte 0xA2CEF1AA
	.4byte 0xC1407186
	.4byte 0xB5EFFC36
	.4byte 0xA8CB0A48
	.4byte 0x274564A3
	.4byte 0xAF8CB2C6
	.4byte 0x9F0789DC
	.4byte 0x17D34979
	.4byte 0xFBFE1DD0
	.4byte 0xB9884352
	.4byte 0xBC01782B
	.4byte 0x7D94C70E
	.4byte 0xDEA5D59B
	.4byte 0xCCF7617A
	.4byte 0xC2748139
	.4byte 0x03AB96A0
	.4byte 0x37BD2D72
	.4byte 0x753FC9D4
	.4byte 0x8E6FF98D
	.4byte 0xED62DB1C
	.4byte 0xDF04AC1B
	.4byte 0x6C144B63
	.4byte 0xF0BFB482
	.4byte 0xEC7B1A59
	.4byte 0x92D21060
	.4byte 0xB63D5FE6
	.4byte 0x806E70C4
	.4byte 0xF235D97C
	.4byte 0xEEE541A4
	.4byte 0x5B50DDBB
	.4byte 0x4CF31F9D
	.4byte 0x5D575551
	.4byte 0x97E35842
	.4byte 0x4D9C73BA
	.4byte 0xC8773169
	.4byte 0x26AEEA8A
	.4byte 0xDA22B387
	.4byte 0x56FA930B
	.4byte 0x341633E8
	.4byte 0xE453BEA9
	.4byte 0xB13A3EF5
	.4byte 0x906ACF3B
	.4byte 0x12FD8F9A
	.4byte 0xA7479199
	.4byte 0xEB0F24FF
	.4byte 0x2318854E
	.4byte 0x7F0CE0A1
	.4byte 0xE2D12C2A
	.4byte 0x4A024F1E
	.4byte 0x95688B98
	.4byte 0x836D76CA
	.4byte 0x6532132F
	.4byte 0xC3829AA4
	.4byte 0xBA816037
	.4byte 0x3435FC80
	.4byte 0xA8516567
	.4byte 0xED305F10
	.4byte 0xD34A272F
	.4byte 0x13B92AD2
	.4byte 0xCCE1EFAE
	.4byte 0xEBBEF4BD
	.4byte 0xCF43B3C5
	.4byte 0x8884B7DD
	.4byte 0x3940CE48
	.4byte 0x6D9B7261
	.4byte 0x7EE7A14E
	.4byte 0x532E773B
	.4byte 0xE2C93622
	.4byte 0x1B6E73B1
	.4byte 0x03B24C87
	.4byte 0xA9D44D0F
	.4byte 0xD8156CAA
	.4byte 0x18F64957
	.4byte 0x5DFB7A14
	.4byte 0x9463A011
	.4byte 0xB09EDE05
	.4byte 0x46C8EE47
	.4byte 0xDBDC2489
	.4byte 0x9C919729
	.4byte 0xE97BC107
	.4byte 0x1EB8FDFE
	.4byte 0xACC66298
	.4byte 0x4FF179E0
	.4byte 0xE86B7856
	.4byte 0xB68D0450
	.4byte 0x86CA6F20
	.4byte 0xE6EAE576
	.4byte 0x171C747F
	.4byte 0xBC0D2C85
	.4byte 0xF76696E4
	.4byte 0x8B753F4B
	.4byte 0xD938AF7C
	.4byte 0xDA0B832D
	.4byte 0x3132A2F5
	.4byte 0x1D594145
	.4byte 0xBF3C1FF8
	.4byte 0xF98AD016
	.4byte 0x25691299
	.4byte 0x9D2195AB
	.4byte 0x01A6D7B5
	.4byte 0xC07DFF58
	.4byte 0x0E3A92D1
	.4byte 0x55E3089F
	.4byte 0xD63E528E
	.4byte 0xFAA3C702
	.4byte 0xCDDF8F64
	.4byte 0x198CF3A7
	.4byte 0x0C5E0A6A
	.4byte 0x09F0935B
	.4byte 0x42C20623
	.4byte 0xEC71ADB4
	.4byte 0xCBBB7028
	.4byte 0xD51A5C33
	.4byte 0x685A0044
	.4byte 0x90A5C426
	.4byte 0x3D2BF254
	.4byte 0x96ADDA1F
	.4byte 0xED33E181
	.4byte 0x69080D0A
	.4byte 0xDB35779A
	.4byte 0x64D1FC78
	.4byte 0xAA1BD067
	.4byte 0xA0DDFA6C
	.4byte 0x63710584
	.4byte 0x176A894F
	.4byte 0x667FC650
	.4byte 0x55926FBD
	.4byte 0xE7D24072
	.4byte 0x8DBBEC06
	.4byte 0x428AE488
	.4byte 0x9D7E7A82
	.4byte 0x2713411A
	.4byte 0xAFC8A476
	.4byte 0xB4C2FE6D
	.4byte 0x1CD96130
	.4byte 0xB37CEAF7
	.4byte 0x290FF23B
	.4byte 0x51C1DE5F
	.4byte 0xE52A2F99
	.4byte 0x0B5DA32B
	.4byte 0x4AAB95A5
	.4byte 0xD35856EE
	.4byte 0x283100CC
	.4byte 0x1546CAE6
	.4byte 0x86383C65
	.4byte 0xF5E39FD6
	.4byte 0x5B094983
	.4byte 0x702D53A9
	.4byte 0x7DE2C4AC
	.4byte 0x8E5EB825
	.4byte 0xF4B957F3
	.4byte 0xF16847B2
	.4byte 0xA25920CE
	.4byte 0x34795C90
	.4byte 0x0E1EBED5
	.4byte 0x2223B1C9
	.4byte 0x1862162E
	.4byte 0x913E078F
	.4byte 0xD83F933D
	.4byte 0xD49BDF85
	.4byte 0x21FB1174
	.4byte 0x97C7D7DC
	.4byte 0x4C194598
	.4byte 0xE943024B
	.4byte 0xBCC3049C
	.4byte 0x6BF07552
	.4byte 0xA726F6C5
	.4byte 0xBACFB0B7
	.4byte 0xAE5AA1BF
	.4byte 0x038B8012
	.4byte 0x6E0CEBF9
	.4byte 0xC04424EF
	.4byte 0x10F8A88C
	.4byte 0xE87BFF9E
	.4byte 0x2CCD6036
	.4byte 0x87B594A6
	.4byte 0x54733A14
	.4byte 0x4E011DB6
	.4byte 0xFD37484D
	.4byte 0x39CBE032
	.4byte 0x5429284E
	.4byte 0x0FFCA46C
	.4byte 0x8750493C
	.4byte 0xF2B4B1F9
	.4byte 0xC3582E83
	.4byte 0x5F718A9B
	.4byte 0x82CAC2BE
	.4byte 0xBA759160
	.4byte 0x78A82A4C
	.4byte 0x255B8BB0
	.4byte 0xDAAF0000
	.4byte 0
	.4byte 0xA4383369
	.4byte 0xD4F56AA8
	.4byte 0xD7EC74A6
	.4byte 0x7BC73C41
	.4byte 0xB721984A
	.4byte 0x8DC828F3
	.4byte 0xF83291AB
	.4byte 0xAD348630
	.4byte 0x4CBCFFCE
	.4byte 0x141E2EF9
	.4byte 0x31598587
	.4byte 0xFCC2FD3E
	.4byte 0xBB56888B
	.4byte 0xBF476192
	.4byte 0xB1947A51
	.4byte 0x9C8FB049
	.4byte 0x9BB90536
	.4byte 0x103BD5D3
	.4byte 0x0C96CB79
	.4byte 0x604EA2B5
	.4byte 0xD1EE17BA
	.4byte 0x1F097893
	.4byte 0xB4353A9D
	.4byte 0x1D39C93F
	.4byte 0x7C2FCA0B
	.4byte 0x37E61BD0
	.4byte 0x67D91884
	.4byte 0xE1425A7E
	.4byte 0xB897DF54
	.4byte 0x70036EDB
	.4byte 0x63AE555D
	.4byte 0xC44B89CC
	.4byte 0x13B390F6
	.4byte 0xE9B2A3BE
	.4byte 0x2D197323
	.4byte 0x207F4002
	.4byte 0x9EC36B1A
	.4byte 0x52DA2980
	.4byte 0x0D5FD68E
	.4byte 0x0E22E36D
	.4byte 0xDC5875E0
	.4byte 0x010A2650
	.4byte 0x08A9FE4D
	.4byte 0x15F76CCF
	.4byte 0x4FF0645E
	.4byte 0xC6688AAC
	.4byte 0xDEB64866
	.4byte 0xED6F7145
	.4byte 0x3DEB9F04
	.4byte 0x255CBD65
	.4byte 0xDD53CD24
	.4byte 0xEF72E89A
	.4byte 0xE716C100
	.4byte 0x772C7DA5
	.4byte 0x2A446227
	.4byte 0xF4C0071C
	.4byte 0x5B998257
	.4byte 0x06FAFB12
	.4byte 0xAFA7D2AA
	.4byte 0x2B8CF2D8
	.4byte 0x83A07611
	.4byte 0xC5438146
	.4byte 0xE5F1EA95
	.4byte 0xE2E40FA1
	.4byte 0x2BD2A58E
	.4byte 0x26090FF7
	.4byte 0x455B3CFD
	.4byte 0x8C7222BF
	.4byte 0xCADAE7AF
	.4byte 0x16B25E8A
	.4byte 0x6F94B7D6
	.4byte 0x1CB1294C
	.4byte 0xB543189C
	.4byte 0x31CEB684
	.4byte 0x71607F2A
	.4byte 0x6E35F8A6
	.4byte 0x54EA7488
	.4byte 0xAC03191B
	.4byte 0x3D79FCEE
	.4byte 0x429F93DB
	.4byte 0x80AD8B15
	.4byte 0x415D48CD
	.4byte 0x7CA32C32
	.4byte 0x1F63D1ED
	.4byte 0x4F04661E
	.4byte 0x469BBB38
	.4byte 0x067E95C8
	.4byte 0x5F4A516B
	.4byte 0x97BE2E98
	.4byte 0xBDEC0E05
	.4byte 0x0AA00152
	.4byte 0x85C0D83B
	.4byte 0xFE1264E1
	.4byte 0xF3244BF5
	.4byte 0x497AE44E
	.4byte 0x34250853
	.4byte 0x1AE3EF86
	.4byte 0xDFF191EB
	.4byte 0xC6D9D383
	.4byte 0x141DB0A7
	.4byte 0x0B104089
	.4byte 0xB4D43A02
	.4byte 0x0CDD2F5A
	.4byte 0x5628AE2D
	.4byte 0x55F6C1D5
	.4byte 0xA844CF58
	.4byte 0x9DB323C5
	.4byte 0xA43E7D30
	.4byte 0x136A61D0
	.4byte 0xF03F67CB
	.4byte 0x0DFF9268
	.4byte 0xE0816962
	.4byte 0xAB755911
	.4byte 0xF2C907E9
	.4byte 0xC7A1C278
	.4byte 0x33176CF9
	.4byte 0xC4B8B9DC
	.4byte 0x2790BCFB
	.4byte 0x70AAE896
	.4byte 0x7339F4C3
	.4byte 0x7787DE00
	.4byte 0xA29AE27B
	.4byte 0xFA36656D
	.4byte 0x20D7575C
	.4byte 0x378F4D9E
	.4byte 0x47A9E5CC
	.4byte 0x998D7650
	.4byte 0xBAE68221
	.4byte 0xB00DEB75
	.4byte 0x6D22CEE7
	.4byte 0x632CDEE2
	.4byte 0xF545BA44
	.4byte 0x951FE539
	.4byte 0xD7A5B58D
	.4byte 0x0793FDBC
	.4byte 0x627E89B3
	.4byte 0x48597FD3
	.4byte 0xBED0F236
	.4byte 0x539FE6B1
	.4byte 0x82C094B8
	.4byte 0x2F03243C
	.4byte 0x000A4265
	.4byte 0xE85C96D5
	.4byte 0xA990B985
	.4byte 0xE9EA0E16
	.4byte 0x7B84294E
	.4byte 0x5E879D35
	.4byte 0x0686E1E0
	.4byte 0xE3ECEFC8
	.4byte 0x525F64E4
	.4byte 0x46305ACD
	.4byte 0xEDD15181
	.4byte 0x0C3A66FE
	.4byte 0x04671ED6
	.4byte 0xF78CBD33
	.4byte 0xB291D4A8
	.4byte 0x4A140B79
	.4byte 0x5888B6C1
	.4byte 0x1956F827
	.4byte 0xAC2399B4
	.4byte 0xC312F320
	.4byte 0x783449DC
	.4byte 0xD805BB55
	.4byte 0x8A711121
	.4byte 0xC7DBF19B
	.4byte 0xF69E17F9
	.4byte 0xFAFBA760
	.4byte 0x8E6E8BCA
	.4byte 0x15ABDD3D
	.4byte 0xA6C680C2
	.4byte 0xDA4C1D4F
	.4byte 0x5D926998
	.4byte 0xA2329C2B
	.4byte 0x6A411A6C
	.4byte 0xA3C572AA
	.4byte 0xCC6B105B
	.4byte 0x4D572868
	.4byte 0xEE0940F0
	.4byte 0xAD262E2D
	.4byte 0x9AA07ACB
	.4byte 0x743E1B70
	.4byte 0xFC43C477
	.4byte 0x08B7CF1C
	.4byte 0x7D180F13
	.4byte 0x25BF6101
	.4byte 0x37AED22A
	.4byte 0x7C97AF3F
	.4byte 0x50DF6FA1
	.4byte 0xA4FF38C9
	.4byte 0x838F5473
	.4byte 0x0247D931
	.4byte 0x763B4BF4
	.4byte 0x9C49C7B6
	.4byte 0x14215F52
	.4byte 0xF3B7D5F2
	.4byte 0x95A02554
	.4byte 0xD9E7B0BF
	.4byte 0x691378F0
	.4byte 0x33E08C94
	.4byte 0xDBE6A7B5
	.4byte 0xECC263E3
	.4byte 0x18B94B74
	.4byte 0xE5018EB1
	.4byte 0x2735B43D
	.4byte 0x26481FFA
	.4byte 0xBB90D398
	.4byte 0xDFA43767
	.4byte 0x5D80D262
	.4byte 0xE16F962D
	.4byte 0xA86A9730
	.4byte 0x89EA3ABE
	.4byte 0x221941AC
	.4byte 0x79F185EE
	.4byte 0x70C00A1B
	.4byte 0x7FC1D0A6
	.4byte 0xF416FCBA
	.4byte 0x4E4AC912
	.4byte 0x8A1A9DC5
	.4byte 0x38D4DEAD
	.4byte 0xC44303B3
	.4byte 0xF7A9596D
	.4byte 0xA320364D
	.4byte 0x865BAE61
	.4byte 0x17A593DC
	.4byte 0x502CEF2A
	.4byte 0x68757A8B
	.4byte 0xD6FB009E
	.4byte 0x2E02CDED
	.4byte 0x47AB82BD
	.4byte 0x7111B266
	.4byte 0x5E3C7C08
	.4byte 0x6EF60945
	.4byte 0x3F5A0F84
	.4byte 0xCCDD730D
	.4byte 0xF892E80B
	.4byte 0xE9CF4F1C
	.4byte 0xDA100E9F
	.4byte 0xA258FF40
	.4byte 0x87772F60
	.4byte 0x4CC32888
	.4byte 0x15810656
	.4byte 0xD1558D9B
	.4byte 0x57836591
	.4byte 0x34CE5342
	.4byte 0x040C467D
	.4byte 0x0729FE24
	.4byte 0x2B6C0532
	.4byte 0xCB721E7E
	.4byte 0xAAE4996B
	.4byte 0xE2A1D81D
	.4byte 0x3EC6C85C
	.4byte 0x8FD76439
	.4byte 0xB8442331
	.4byte 0x7B51CA3B
	.4byte 0xF5F9FD76
	.4byte 0xEB9AAFBC
	.4byte 0x94C5263F
	.4byte 0xF6F8936E
	.4byte 0x738482E7
	.4byte 0x542C57AA
	.4byte 0x466D7A7E
	.4byte 0xF7E69A9F
	.4byte 0xD6EDE1F0
	.4byte 0xF567DEF4
	.4byte 0xD141FC4A
	.4byte 0x53C84D30
	.4byte 0x4E364031
	.4byte 0x8D980CA2
	.4byte 0xC0EA6C0A
	.4byte 0x18588FEE
	.4byte 0x006283E2
	.4byte 0x0D5B8BC7
	.4byte 0xD70490A1
	.4byte 0xE9CD1615
	.4byte 0x56789277
	.4byte 0xD512E3CE
	.4byte 0x19BE3450
	.4byte 0x514B32C1
	.4byte 0x06073735
	.4byte 0x60ACAD2B
	.4byte 0x27EB089B
	.4byte 0xDB7B4F03
	.4byte 0x791117D3
	.4byte 0xF1D9A666
	.4byte 0xF3CF7299
	.4byte 0x3ACA3D0B
	.4byte 0x894724DF
	.4byte 0x65143861
	.4byte 0xC26F13AF
	.4byte 0x913E2A33
	.4byte 0xDAE0A53B
	.4byte 0x1B1DA022
	.4byte 0x6AC495FA
	.4byte 0xB6B2699C
	.4byte 0xF2804421
	.4byte 0xEF9DA7CB
	.4byte 0xA9961E43
	.4byte 0x768A7F3C
	.4byte 0xD0A85920
	.4byte 0xDC81C9CC
	.4byte 0x97A4BCBD
	.4byte 0x7DABA3B4
	.4byte 0x52E4B08C
	.4byte 0xB92F9EB7
	.4byte 0x4CE84563
	.4byte 0x09645D88
	.4byte 0xD21C7487
	.4byte 0x485E556B
	.4byte 0xB3EC3905
	.4byte 0x2D2810B1
	.4byte 0xC6FE7029
	.4byte 0x5AFB4923
	.4byte 0xDD8601E5
	.4byte 0xD42542AE
	.4byte 0x8575FF68
	.4byte 0x2E5C1F02
	.4byte 0xBAB5BF7C
	.4byte 0xFD71F98E
	.4byte 0x5FB80E0F
	.4byte 0xC31ABBD8
	.4byte 0xAAF3C7A9
	.4byte 0x4320C6D0
	.4byte 0xF407009F
	.4byte 0x898EBAE0
	.4byte 0x5A241F2A
	.4byte 0xDDD4E30D
	.4byte 0xB0EDBEB2
	.4byte 0x2B752E66
	.4byte 0x176E7C52
	.4byte 0x76910159
	.4byte 0x613C862C
	.4byte 0xFD2DF60B
	.4byte 0xABE52241
	.4byte 0x6772C2AD
	.4byte 0xBDFE96FA
	.4byte 0x7B9E405F
	.4byte 0x71984C88
	.4byte 0xFBEB6BC9
	.4byte 0xCEBBC003
	.4byte 0x5B3AAE15
	.4byte 0x3E564DD8
	.4byte 0x3B503584
	.4byte 0x9734C454
	.4byte 0xCC4E5ECD
	.4byte 0xE6684FB3
	.4byte 0xB49D5DA5
	.4byte 0xA378E938
	.4byte 0x7E08606C
	.4byte 0xDB7FBF82
	.4byte 0x30E24819
	.4byte 0x6D1AA2DF
	.4byte 0x58956951
	.4byte 0x31DA0C4B
	.4byte 0xA40A4527
	.4byte 0xD71E6587
	.4byte 0x1BB7B542
	.4byte 0x8C266F25
	.4byte 0xEAFCEF8A
	.4byte 0xA710BCF5
	.4byte 0xA0214457
	.4byte 0x02D22F63
	.4byte 0x3DD5799C
	.4byte 0x05F2E4CF
	.4byte 0x29F1530E
	.4byte 0x7AB11412
	.4byte 0xF9F7118B
	.4byte 0x36A6B6D6
	.4byte 0xA11839EC
	.4byte 0x04C1E88D
	.4byte 0x28997390
	.4byte 0x70D31D8F
	.4byte 0xCBF8F0B9
	.4byte 0xDE779232
	.4byte 0xE7EE8533
	.4byte 0x13A89A3F
	.4byte 0xC8E1809B
	.4byte 0x06233709
	.4byte 0xD1FFAC81
	.4byte 0x9464AF4A
	.4byte 0x467D16C3
	.4byte 0x5547CAD9
	.4byte 0x0F1C6A74
	.4byte 0xDC4983C5
	.4byte 0xB85C9362
	.4byte 0xDC2FD4F0
	.4byte 0x8618B18C
	.4byte 0x4FB9D597
	.4byte 0x1B434C1D
	.4byte 0xEA5BC311
	.4byte 0x82FCA24A
	.4byte 0xA07F47AF
	.4byte 0xA30A59AD
	.4byte 0xE5062A4E
	.4byte 0x6EE340DB
	.4byte 0x538349B4
	.4byte 0xBA71959B
	.4byte 0x51B3ACD1
	.4byte 0xAEC4CF4B
	.4byte 0x4D6916EC
	.4byte 0x0BA59173
	.4byte 0x073B1984
	.4byte 0xC26D8DB2
	.4byte 0xBD254896
	.4byte 0xC5201AA1
	.4byte 0x8BC6E13F
	.4byte 0x28A7E712
	.4byte 0x76B01C8E
	.4byte 0xD04590CA
	.4byte 0x98D6A636
	.4byte 0x32728AA8
	.4byte 0x0D3A9F37
	.4byte 0x3C89DD67
	.4byte 0x2281E915
	.4byte 0x4142F52E
	.4byte 0x66D26180
	.4byte 0x0F5493AA
	.4byte 0xED5DE47D
	.4byte 0x30C93DE0
	.4byte 0xE226F208
	.4byte 0xA963242D
	.4byte 0x8F799CDA
	.4byte 0xBF55625C
	.4byte 0x00B6276A
	.4byte 0x0E9201D7
	.4byte 0xFFEB1F74
	.4byte 0x1499F744
	.4byte 0x87336C94
	.4byte 0x13507568
	.4byte 0x1017BB2C
	.4byte 0x6B04DFBC
	.4byte 0x356FB7F1
	.4byte 0x57C1E67C
	.4byte 0xB877653E
	.4byte 0x5FD364CB
	.4byte 0x021E38AB
	.4byte 0x88605E9D
	.4byte 0xBEC8A4D8
	.4byte 0x527B29F4
	.4byte 0x0570CE78
	.4byte 0x853923F3
	.4byte 0x34589EFB
	.4byte 0x31CC46EF
	.4byte 0x9A5AFE7A
	.4byte 0x56FDEEDE
	.4byte 0x0CF9CDC0
	.4byte 0x2BD9B509
	.4byte 0xF6C721FA
	.4byte 0xF803E87E
	.4byte 0x9FBD7991
	.4byte 0xCC787FD5
	.4byte 0x1BEEBBB7
	.4byte 0xDCED6D9B
	.4byte 0xEF58FB5D
	.4byte 0x67691F4E
	.4byte 0xAF624BB8
	.4byte 0xA8AE0860
	.4byte 0x8CAD24A1
	.4byte 0x482F8A00
	.4byte 0x90B15307
	.4byte 0x2612729D
	.4byte 0x561C5134
	.4byte 0x462E81CF
	.4byte 0xB3F337F1
	.4byte 0xFA3CBA06
	.4byte 0x54851459
	.4byte 0x365EA555
	.4byte 0x0C5289CB
	.4byte 0x97E23B11
	.4byte 0xBED91DFC
	.4byte 0x137DA005
	.4byte 0x41C3C5FD
	.4byte 0x763382CD
	.4byte 0x88161A29
	.4byte 0x871E406F
	.4byte 0xE8033A50
	.4byte 0xA6E4F44F
	.4byte 0xD6983971
	.4byte 0xD0F2F03E
	.4byte 0xEA8D2CA2
	.4byte 0xA9570B8B
	.4byte 0x0DAAE931
	.4byte 0xC2355CD1
	.4byte 0x38FF01A7
	.4byte 0xEC80F923
	.4byte 0xDF30EB2A
	.4byte 0xB017D219
	.4byte 0x6EDA259E
	.4byte 0xB64CC693
	.4byte 0xDB756B3F
	.4byte 0x1573FE3D
	.4byte 0x6566B57A
	.4byte 0x9A32CA68
	.4byte 0x8E22C044
	.4byte 0x43A30E21
	.4byte 0xB9024DC8
	.4byte 0xB40AF6D3
	.4byte 0x45965A84
	.4byte 0x7018D4BF
	.4byte 0xC4A49CC1
	.4byte 0xE047C7E5
	.4byte 0xE67E63DD
	.4byte 0x6ACE2894
	.4byte 0xE710BC5F
	.4byte 0x04642D8F
	.4byte 0x6CF72B92
	.4byte 0x83D899E3
	.4byte 0xDED75BAB
	.4byte 0x4A7477C9
	.4byte 0xF57B0F20
	.4byte 0xF8614286
	.4byte 0x7C4995AC
	.4byte 0x27E109B2
	.4byte 0x0BD36F0A
	.4byte 0x39772117
	.4byte 0x8FC7D5E5
	.4byte 0xB5B911A4
	.4byte 0xDCA3CDBB
	.4byte 0x1A818AB7
	.4byte 0xD95B4761
	.4byte 0x8E88B80C
	.4byte 0x3B3A9A54
	.4byte 0xFD2D53B4
	.4byte 0xC35F6960
	.4byte 0xB1AB2656
	.4byte 0x837EB33D
	.4byte 0x4A0D5A1D
	.4byte 0x1E59D635
	.4byte 0x8CF39B18
	.4byte 0x66BFE262
	.4byte 0x927BFF2E
	.4byte 0x5CCF25C4
	.4byte 0xAFD22963
	.4byte 0xA5B2F96A
	.4byte 0xC1FB1487
	.4byte 0x55732C44
	.4byte 0x3179F42A
	.4byte 0x41012480
	.4byte 0x19654D9D
	.4byte 0x9CE813A2
	.4byte 0xC0C5FE6B
	.4byte 0xCE50F804
	.4byte 0x48A80616
	.4byte 0xBE67BAEA
	.4byte 0xC60FD774
	.4byte 0x85B6D80E
	.4byte 0x4C9315BD
	.4byte 0xE6780305
	.4byte 0x32F734E4
	.4byte 0xAD3098A1
	.4byte 0x279EF643
	.4byte 0x643C49BC
	.4byte 0xF099DD12
	.4byte 0xD1C95D7C
	.4byte 0x22751F28
	.4byte 0x2F09C284
	.4byte 0x6DFA233F
	.4byte 0x7D918982
	.4byte 0x8658DF76
	.4byte 0xE9AADBAC
	.4byte 0x2BF59042
	.4byte 0x20E1A0ED
	.4byte 0xD45210EF
	.4byte 0x3EE31CDA
	.4byte 0x96B07238

glabel lbl_801989D0
	# ROM: 0x194AD0
	.4byte 0x9F7A1BDE
	.4byte 0x02A64E97
	.4byte 0x33366EE0
	.4byte 0xC84FFC37
	.4byte 0x71EC9400
	.4byte 0x95D0A7CB
	.4byte 0xF170A98B
	.4byte 0x40F24B46
	.4byte 0x45EE518D
	.4byte 0xCC6CCAEB
	.4byte 0x7F6807AE
	.4byte 0x5E5708E7
	.asciz "ans : %d %d %d %d %d %d\n"
	.balign 4
	.asciz "rand: %d %d %d %d %d %d %d %d %d %d\n"
	.balign 4
	.asciz "t0  : %d %d %d %d %d %d %d %d %d %d\n"
	.balign 4
	.asciz "key : %d %d %d %d %d %d \n"
	.balign 4
	.asciz "ft  : %d %d %d %d %d %d %d %d\n"
	.balign 4
	.asciz "sb  : %d %d %d %d %d %d %d %d\n"
	.balign 4

glabel lbl_80198AC8
	.asciz "<< RVL_SDK - KPAD \trelease build: May 17 2007 15:52:00 (0x4199_60831) >>"
	.balign 4

glabel lbl_80198B14
	# ROM: 0x194C14
	.4byte 0x00010302
	.4byte 0x00040105
	.4byte 0x00070108

glabel lbl_80198B20
	# ROM: 0x194C20
	.asciz "USB ERR: "
	.balign 4
	.asciz "Library is already initialized. Heap Id = %d\n"
	.balign 4
	.asciz "iusb size: %d lo: %x hi: %x\n"
	.balign 4
	.asciz "Not enough IPC arena\n"
	.balign 4
	.asciz "Not enough heaps\n"
	.balign 4
	.asciz "_intrBlkCtrlCb returned: %d\n"
	.balign 4
	.asciz "_intrBlkCtrlCb: nclean = %d\n"
	.balign 4
	.asciz "__intBlkCtrlCb: got invalid nclean\n"
	.balign 8
	.asciz "Freeing clean[%d] = %x\n"
	.asciz "iosFree(%d, 0x%x) failed: %d\n"
	.balign 4
	.asciz "cb = %x cbArg = %x\n"
	.asciz "iosAllocAligned(%d, %u) failed: %d\n"
	.asciz "OpenDeviceIds: Not enough memory\n"
	.balign 4
	.asciz "/dev/usb/%s/%x/%x"
	.balign 4
	.asciz "OpenDevice - %s\n"
	.balign 4
	.asciz "OpenDevice returned: %d\n"
	.balign 4
	.asciz "OpenDevice\n"
	.asciz "OpenDeviceIdsAsync: Not enough memory\n"
	.balign 4
	.asciz "CloseDevice\n"
	.balign 4
	.asciz "CloseDevice returned: %d\n"
	.balign 4
	.asciz "CloseDeviceAsync: Not enough memory\n"
	.balign 4
	.asciz "openDevice: Not enough memory\n"
	.balign 4
	.asciz "getDeviceList: Not enough memory\n"
	.balign 4
	.asciz "__IntrBlkMsgInt: Not enough memory\n"
	.asciz "intr/blk ioctl returned: %d\n"
	.balign 4
	.asciz "IntBlkMsgInt (async): Not enough memory\n"
	.balign 4
	.asciz "intrblkmsg: cb = 0x%x cbArg = 0x%x\n"
	.asciz "ctrlmsg: bad data buffer\n"
	.balign 4
	.asciz "Ctrl Msg: Not enough memory\n"
	.balign 4
	.asciz "CtrlMsgInt (async): Not enough memory\n"
	.balign 4
	.asciz "ctrlmsgint: cb = 0x%x cbArg = 0x%x\n"
	.asciz "Ctrl Msg async returned: %d\n"
	.balign 4
	.asciz "GetStrCb returned: %d\n"
	.balign 4
	.asciz "GetStrCb: buf = 0x%x buflen = %u\n"
	.balign 4
	.asciz "Failed to convert buffer from unicode 2 ascii\n"
	.balign 4
	.asciz "calling cb 0x%x with arg 0x%x\n"
	.balign 4
	.asciz "Failed __CtrlMsg: %d"
	.balign 4
	.asciz "Failed to convert unicode 2 ascii\n"
	.balign 4
	.asciz "GetStr - _GetStrCb\n"
	.asciz " GetAsciiStrAsync: Not enough memory\n"
	.balign 8
	.asciz "__CtrlMsgInt failed %d\n"
	.asciz "GetDescrCb returned: %d\n"
	.balign 4
	.asciz "GetDevDescr\n"
	.balign 8
	.asciz "GetDevDescr: Not enough memory\n"
	.asciz "GetDevDescr: %d\n"
	.balign 4
	.asciz "GetDevDescr - _GetDescrCb\n"
	.balign 4
	.asciz "GetDevDescrAsync: Not enough memory\n"
	.balign 4
	.asciz "DeviceRemovalNotifyAsync\n"
	.balign 4
	.asciz "Invalid parameters for ISO transfer request\n"
	.balign 4
	.asciz "IUSB_IsoMsgAsync: Not enough memory\n"
	.balign 4
	.asciz "Open(%s) failed\n"
	.balign 4

glabel lbl_80199140
	# ROM: 0x195240
	.4byte 0x05010905
	.4byte 0xA1018510
	.4byte 0x150026FF
	.4byte 0x00750895
	.4byte 0x010600FF
	.4byte 0x09019100
	.4byte 0x85119501
	.4byte 0x09019100
	.4byte 0x85129502
	.4byte 0x09019100
	.4byte 0x85139501
	.4byte 0x09019100
	.4byte 0x85149501
	.4byte 0x09019100
	.4byte 0x85159501
	.4byte 0x09019100
	.4byte 0x85169515
	.4byte 0x09019100
	.4byte 0x85179506
	.4byte 0x09019100
	.4byte 0x85189515
	.4byte 0x09019100
	.4byte 0x85199501
	.4byte 0x09019100
	.4byte 0x851A9501
	.4byte 0x09019100
	.4byte 0x85209506
	.4byte 0x09018100
	.4byte 0x85219515
	.4byte 0x09018100
	.4byte 0x85229504
	.4byte 0x09018100
	.4byte 0x85309502
	.4byte 0x09018100
	.4byte 0x85319505
	.4byte 0x09018100
	.4byte 0x8532950A
	.4byte 0x09018100
	.4byte 0x85339511
	.4byte 0x09018100
	.4byte 0x85349515
	.4byte 0x09018100
	.4byte 0x85359515
	.4byte 0x09018100
	.4byte 0x85369515
	.4byte 0x09018100
	.4byte 0x85379515
	.4byte 0x09018100
	.4byte 0x853D9515
	.4byte 0x09018100
	.4byte 0x853E9515
	.4byte 0x09018100
	.4byte 0x853F9515
	.4byte 0x09018100
	.4byte 0xC0000000

glabel lbl_8019921C
	# ROM: 0x19531C
	.asciz "App_MEMalloc\n"
	.balign 4

glabel lbl_8019922C
	# ROM: 0x19532C
	.asciz "App_MEMfree\n"
	.balign 4

glabel lbl_8019923C
	# ROM: 0x19533C
	.asciz "SyncFlushCallback() : %d, Sync: %d\n"

glabel lbl_80199260
	# ROM: 0x195360
	.asciz "DeleteFlushCallback() : %d, Delete: %d\n"

glabel lbl_80199288
	# ROM: 0x195388
	.asciz "ShutFlushCallback() : %d, Shutdown: %d\n"

glabel lbl_801992B0
	# ROM: 0x1953B0
	.asciz "%d devices is stored into SC.\n"
	.balign 4

glabel lbl_801992D0
	# ROM: 0x1953D0
	.asciz "Pairing Done\n"
	.balign 4
	.asciz "Nintendo RVL-CNT"
	.balign 4
	.asciz "write stored link key\n"
	.balign 4
	.asciz "addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 8
	.asciz "key  : %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.asciz "Cancel searching because 4 connections exist.\n"
	.balign 4
	.asciz "WARNING: Illigal status\n"
	.balign 4

glabel lbl_801993DC
	# ROM: 0x1954DC
	.4byte lbl_800D5F00
	.4byte lbl_800D5E34
	.4byte lbl_800D5E4C
	.4byte lbl_800D5E58
	.4byte lbl_800D5F00
	.4byte lbl_800D5E64
	.4byte lbl_800D5F00
	.4byte lbl_800D5F00
	.4byte lbl_800D5EAC
	.asciz "hci_version   : %02x\n"
	.balign 4
	.asciz "hci_revision  : %04x\n"
	.balign 4
	.asciz "lmp_version   : %02x\n"
	.balign 4
	.asciz "lmp_subversion: %04x\n"
	.balign 4
	.asciz "manufacturer  : %04x\n"
	.balign 4
	.asciz " ==> 2045 firmware ver.002.003.014.%d\n"
	.balign 4
	.asciz "WUDiAppendRuntimePatch()\n"
	.balign 4
	.asciz "Nintendo RVL-CNT-01"
	.asciz "name : %s\n"
	.balign 4

glabel lbl_801994DC
	# ROM: 0x1955DC
	.asciz "InitCore\n"
	.balign 4

glabel lbl_801994E8
	# ROM: 0x1955E8
	.asciz "BTA_Init() is started\n"
	.balign 4

glabel lbl_80199500
	# ROM: 0x195600
	.asciz "BTA_Init() is done\n"

glabel lbl_80199514
	# ROM: 0x195614
	.asciz "WUDShutdown()\n"
	.balign 4

glabel lbl_80199524
	# ROM: 0x195624
	.asciz "WUDSetSyncDeviceCallback\n"
	.balign 4
	.asciz "WUDSetClearDeviceCallback\n"
	.balign 4
	.asciz "WUDStartSyncDevice()\n"
	.balign 4

glabel lbl_80199574
	# ROM: 0x195674
	.asciz "WUDStartSyncSimple()\n"
	.balign 4
	.asciz "WUDCancelSyncDevice()\n"
	.balign 4

glabel lbl_801995A4
	# ROM: 0x1956A4
	.asciz "WUDStopSyncSimple()\n"
	.balign 4
	.asciz "WUDStartClearDevice()\n"
	.balign 8

glabel lbl_801995D8
	# ROM: 0x1956D8
	.asciz "WUDSetDisableChannel()\n"

glabel lbl_801995F0
	# ROM: 0x1956F0
	.asciz "BTM_SetAfhChannels() : %d\n"
	.balign 4

glabel lbl_8019960C
	# ROM: 0x19570C
	.asciz "WUDSetHidRecvCallback()\n"
	.balign 4

glabel lbl_80199628
	# ROM: 0x195728
	.asciz "WUDSetHidConnCallback()\n"
	.balign 4

glabel lbl_80199644
	# ROM: 0x195744
	.4byte 0x70990800
	.4byte 0xB4000000
	.4byte 0x8843D107
	.4byte 0x090C0843
	.4byte 0xA0621923
	.4byte 0xDB013380
	.4byte 0x7CF788F8
	.4byte 0x287680F7
	.4byte 0x17FF4378
	.4byte 0xEB701923
	.4byte 0xDB013387
	.4byte 0x7CF7BCFB
	.4byte 0x0B60A37B
	.4byte 0x01490B60
	.4byte 0x90F796FB
	.4byte 0xD81D0800
	.4byte 0x00F004F8
	.4byte 0x002379F7
	.4byte 0xE3FA0000
	.4byte 0x00B50023
	.4byte 0x11490B60
	.4byte 0x1D21C903
	.4byte 0x0B607D20
	.4byte lbl_80010138
	.4byte 0xFDD10E4B
	.4byte 0x0E4A1360
	.4byte 0x47200021
	.4byte 0x96F796FF
	.4byte 0x46200021
	.4byte 0x96F792FF
	.4byte 0x0A4A1368
	.4byte 0x0A480340
	.4byte 0x13600A4A
	.4byte 0x13680A48
	.4byte 0x03401360
	.4byte 0x094A1368
	.4byte 0x09480340
	.4byte 0x136000BD
	.4byte 0x24800E00
	.4byte 0x81030FFE
	.4byte 0x5C000F00
	.4byte 0x60FC0E00
	.4byte 0xFEFF0000
	.4byte 0xFCFC0E00
	.4byte 0xFF9F0000
	.4byte 0x30FC0E00
	.4byte 0x7FFF0000

glabel lbl_80199700
	# ROM: 0x195800
	.4byte 0x0720BC65
	.4byte 0x01008442
	.4byte 0x09D28442
	.4byte 0x09D12184
	.4byte 0x5A000083
	.4byte 0xF074FF09
	.4byte 0x0C084322
	.4byte 0x00610000
	.4byte 0x83F040FC
	.4byte 0
	.4byte 0x23CC9F01
	.4byte 0x006FF0E4
	.4byte 0xFC03287D
	.4byte 0xD1243C62
	.4byte 0x01002820
	.4byte 0x00E0608D
	.4byte 0x23682504
	.4byte 0x12010020
	.4byte 0x1C201C24
	.4byte 0xE0B02126
	.4byte 0x742F0000
	.4byte 0x86F018FD
	.4byte 0x214F3B60

glabel lbl_8019975C
	# ROM: 0x19585C
	.asciz "start WUDiInitSub()\n"
	.balign 8
	.asciz "WUDiAutoSync()\n"
	.asciz "WUDiCancelSync()\n"
	.balign 4
	.asciz "WUDiDeleteAllLinkKeys()\n"
	.balign 4
	.asciz "BTA_DmAddDevice(): %d\n"
	.balign 4
	.asciz "BTA_HhAddDev()\n"
	.asciz "WUDiRemoveDevice : \n"
	.balign 4
	.asciz " handle : %d,  addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "remove device info from database.\n"
	.balign 4
	.asciz "BTA_HhRemoveDev()\n"
	.balign 4
	.asciz " handle : %d\n"
	.balign 4
	.asciz "BTA_DmRemoveDevice(): %d\n"
	.balign 4

glabel lbl_80199894
	# ROM: 0x195994
	.asciz "new entry index is %d\n"
	.balign 4

glabel lbl_801998AC
	# ROM: 0x1959AC
	.asciz "WARNING: USB_CLOSE_FAILURE!\n"
	.balign 4
	.asciz "WUDSecurityCallback: "
	.balign 8
	.asciz "BTA_ENABLE_EVT\n"
	.asciz "host : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "BTA_DISABLE_EVT\n"
	.balign 4
	.asciz "BTA_DM_PIN_REQ_EVT\n"
	.asciz "BTA_DM_AUTH_CMPL_EVT\n"
	.balign 4
	.asciz "  addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.asciz "  key  : %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "  result = %d\n"
	.balign 4
	.asciz "BTA_DM_AUTHORIZE_EVT\n"
	.balign 4
	.asciz "BTA_DM_LINK_UP_EVT\n"
	.asciz "   addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "%s --> %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "not paired"
	.balign 4
	.asciz "4 links exist"
	.balign 4
	.asciz "BTA_DM_LINK_DOWN_EVT\n"
	.balign 4
	.asciz "result: %d\n"
	.asciz "this device in not paired\n"
	.balign 4
	.asciz "WARNING: link num count is reset.\n"
	.balign 4
	.asciz "BTA_DM_SIG_STRENGTH_EVT\n"
	.balign 4
	.asciz "BTA_DM_BUSY_LEVEL_EVT\n"
	.balign 4

glabel lbl_80199B28
	# ROM: 0x195C28
	.4byte lbl_800D8278
	.4byte lbl_800D8324
	.4byte lbl_800D8340
	.4byte lbl_800D83E0
	.4byte lbl_800D84EC
	.4byte lbl_800D84FC
	.4byte lbl_800D85E8
	.4byte lbl_800D873C
	.4byte lbl_800D874C
	.asciz "INQUIRY RESULT: %02x:%02x:%02x:%02x:%02x:%02x   %02x%02x%02x   %d\n"
	.balign 4
	.asciz "INQUIRY_COMPLETED\n"
	.balign 4
	.asciz "DISCOVER RESULT:  %02x:%02x:%02x:%02x:%02x:%02x   %s (%04x)\n"
	.balign 4
	.asciz "DISCOVER COMPLETED\n"
	.asciz "SEARCH CANCEL\n\n"
	.asciz "Warning: Search Callback returns invalid event\n"
	.asciz "VSE:- INITIATE_PAIRING\n"
	.asciz "VSE:- DELETE_ALL_KEYS\n"
	.balign 4
	.asciz "VSE:- SI_PORT_STATUS  status = %d\n"
	.balign 4
	.asciz "VSE:- WATCH_DOG_RESET  HW error = %d\n"
	.balign 4
	.asciz "MODULE FATAL ERROR\n"

glabel lbl_80199CC8
	# ROM: 0x195DC8
	.asciz "WUDDeviceStatusCallback\n"
	.balign 4

glabel lbl_80199CE4
	# ROM: 0x195DE4
	.asciz "---- WARNING: USB FATAL ERROR! ----\n"
	.balign 4
	.asciz "BTM_CB_EVT_RETURN_LINK_KEYS\n"
	.balign 4
	.asciz "BD_ADDR:  %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "LINKKEY: %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "this device is not stored in NAND\n"
	.balign 4
	.asciz "   LAST: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.asciz "BTM_CB_EVT_READ_STORED_LINK_KEYS\n"
	.balign 4
	.asciz "  status: %d  max_keys: %d  num_keys: %d\n"
	.balign 4
	.asciz "BTM_CB_EVT_WRITE_STORED_LINK_KEYS\n"
	.balign 4
	.asciz "  status: %d  num_keys: %d\n"
	.asciz "BTM_CB_EVT_DELETE_STORED_LINK_KEYS\n"
	.asciz "WARNING: no entry is deleted\n"
	.balign 4
	.asciz "Unknown event\n"
	.balign 4
	.asciz "WUDPowerManagerCallback\n"
	.balign 4
	.asciz "hci_status = %d"
	.asciz " addr = %02x:%02x:%02x:%02x:%02x:%02x,  status = %d\n"
	.balign 4
	.asciz "_WUDEnableTestMode\n"
	.asciz "_WUDStartSyncDevice()\n"
	.balign 4
	.asciz "_WUDDeleteStoreDevice()\n"
	.balign 4
	.asciz "dev number = %d\n"
	.balign 8

glabel lbl_80199FA8
	# ROM: 0x1960A8
	.asciz "BTA_HH_ENABLE_EVT\n"
	.balign 4
	.asciz "BTA_HH_DISABLE_EVT\n"
	.asciz "BTA_HH_OPEN_EVT\n"
	.balign 4
	.asciz "handle: %d, addr: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "error code: %d\n"
	.asciz "BTA_HH_CLOSE_EVT\n"
	.balign 4
	.asciz "device handle : %d   status = %d\n"
	.balign 4
	.asciz "BTA_HH_SET_RPT_EVT\n"
	.asciz "BTA_HH_GET_RPT_EVT\n"
	.asciz "BTA_HH_SET_PROTO_EVT\n"
	.balign 4
	.asciz "BTA_HH_GET_PROTO_EVT\n"
	.balign 4
	.asciz "BTA_HH_SET_IDLE_EVT\n"
	.balign 4
	.asciz "BTA_HH_GET_IDLE_EVT\n"
	.balign 4
	.asciz "BTA_HH_GET_DCSP_EVT\n"
	.balign 4
	.asciz "BTA_HH_ADD_DEV_EVT\n"
	.asciz "result: %d, handle: %d, addr: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "BTA_HH_RMV_DEV_EVT\n"
	.asciz "BTA_HH_VS_UNPLUG_EVT\n"
	.balign 4
	.asciz "WARNING: link num count is modified.\n"
	.balign 4

glabel lbl_8019A1A8
	# ROM: 0x1962A8
	.4byte lbl_800D9258
	.4byte lbl_800D9274
	.4byte lbl_800D9284
	.4byte lbl_800D9470
	.4byte lbl_800D954C
	.4byte lbl_800D953C
	.4byte lbl_800D956C
	.4byte lbl_800D955C
	.4byte lbl_800D958C
	.4byte lbl_800D957C
	.4byte lbl_800D959C
	.4byte lbl_800D95AC
	.4byte lbl_800D95FC
	.4byte lbl_800D963C
	.4byte lbl_800D96D8
	.4byte lbl_800D964C

glabel lbl_8019A1E8
	# ROM: 0x1962E8
	.asciz "Invalid app_id [%d]\n"
	.balign 4

glabel lbl_8019A200
	# ROM: 0x196300
	.asciz "bta_hh_co_open()\n"
	.balign 4

glabel lbl_8019A214
	# ROM: 0x196314
	.asciz "bta_hh_co_close()\n"
	.balign 4

glabel lbl_8019A228
	# ROM: 0x196328
	.asciz "getbuf: Size is zero"
	.balign 4

glabel lbl_8019A240
	# ROM: 0x196340
	.asciz "getbuf: Size is too big"
	.asciz "Free - Buf Corrupted"
	.balign 4
	.asciz "Freeing Linked Buf"
	.balign 4
	.asciz "Bad Buf QId"
	.asciz "Sending to unknown dest"
	.asciz "Send - Buffer corrupted"
	.asciz "Send - buffer linked"
	.balign 4

glabel lbl_8019A2D8
	# ROM: 0x1963D8
	.asciz "Enqueue - Buffer corrupted"
	.balign 4

glabel lbl_8019A2F4
	# ROM: 0x1963F4
	.asciz "Eneueue - buf already linked"
	.balign 4

glabel lbl_8019A314
	# ROM: 0x196414
	.asciz "Eneueue head - buf already linked"
	.balign 4
	.asciz "GKI_get_buf_start:: bad addr"
	.balign 4

glabel lbl_8019A358
	# ROM: 0x196458
	.asciz "Deleting bad pool"
	.balign 8
	.asciz "HCIS: Unable to allocate buffer for incoming HCI message."
	.balign 4

glabel lbl_8019A3AC
	# ROM: 0x1964AC
	.asciz "HCIS: Invalid length for incoming HCI message."
	.balign 8

glabel lbl_8019A3E0
	# ROM: 0x1964E0
	.asciz "HCISU_LOG: uusb_ReadIntrDataCB called\n"
	.balign 4
	.asciz "HCISU_ERR: uusb_ReadIntrDataCB: usb_state != UUSB_PPC_OPENED_ST\n"
	.balign 4
	.asciz "HCISU_ERR: ************\n* uusb_ReadIntrDataCB(): usb_state != UUSB_PPC_OPENED_ST - stop reading\n************\n"
	.balign 4
	.asciz "HCISU_ERR: uusb_ReadIntrDataCB(): Got Error code %d\n"
	.balign 4
	.asciz "HCISU_LOG: uusb_ReadIntrDataCB: len(%d) offset (%d) cp_len(%d) data = "
	.balign 4
	.asciz "HCISU_ERR: uusb_readBulkDataCB: usb_state != UUSB_PPC_OPENED_ST\n"
	.balign 4
	.asciz "HCISU_ERR: ****\n* uusb_readBulkDataCB(): usb_state != UUSB_PPC_OPENED_ST - stop reading\n****\n"
	.balign 4
	.asciz "HCISU_ERR: uusb_ReadBulkDataCB(): Got Error code %d\n"
	.balign 4
	.asciz "HCISU_LOG: uusb_ReadBulkDataCB: len(%d) offset(%d) cp_len(%d) data = "
	.balign 4
	.asciz "HCISU_ERR: ****\n* uusb_issue_bulk_read(): unable to get buffer - try again\n****\n"
	.balign 4
	.asciz "HCISU_ERR: uusb_issue_bulk_read: IUSB_ReadBlkMsgAsync failed with err = %d\n"
	.asciz "HCISU_ERR: ****\n* uusb_issue_bulk_read: IUSB_ReadBlkMsgAsync failed with err = %d\n****\n"
	.asciz "HCISU_ERR: ****\n* uusb_issue_intr_read(): unable to get buffer - try again\n****\n"
	.balign 4
	.asciz "HCISU_ERR: IUSB_ReadIntrMsgAsync failed with err = %d\n"
	.balign 4
	.asciz "HCISU_ERR: ****\n* uusb_issue_intr_read(): IUSB_ReadIntrMsgAsync failed with err = %d\n****\n"
	.balign 4
	.asciz "HCISU_LOG: uusb_WriteCtrlDataCB called with err = %d\n"
	.balign 4
	.asciz "HCISU_ERR: uusb_WriteCtrlDataCB(): Got error (%d)\n"
	.balign 8
	.asciz "HCISU_ERR: uusb_WriteCtrlDataCB(): error - unable to write data packet\n"
	.asciz "HCISU_LOG: uusb_WriteBulkDataCB called with err = %d\n"
	.balign 4
	.asciz "HCISU_ERR: uusb_WriteBulkDataCB(): Got error (%d)\n"
	.balign 8
	.asciz "HCISU_ERR: uusb_WriteBulkDataCB(): error - unable to write data packet\n"

glabel lbl_8019A9B0
	# ROM: 0x196AB0
	.asciz "HCISU_ERR: ERROR from IUSB_OpenDeviceIds (%d) : Device (vendor 0x%x product 0x%x) not found\n"
	.balign 4

glabel lbl_8019AA10
	# ROM: 0x196B10
	.asciz "HCISU_ERR: No suitable Bluetooth Device was found. Exiting...\n"
	.balign 4
	.asciz "HCISU_ERR: UUSB_Register: ERROR - failed IPCCltInit\n"
	.balign 4
	.asciz "HCISU_ERR: UUSB_Register: ERROR - failed IUSB_OpenLib\n"
	.balign 4
	.asciz "HCISU_ERR: UUSB_Register: Error returned from get_devId()\n"
	.balign 8
	.asciz "HCISU_LOG: UUSB_Register: uusb_get_dev_id returned with usb.devId = %d\n"
	.asciz "HCISU_LOG: UUSB_Register: Unable to create memory pools\n"
	.balign 4
	.asciz "HCISU_LOG: UUSB_Register: hci_cmd_usb_pool_id (%d) hci_acl_usb_pool_id(%d)\n"
	.asciz "HCISU_LOG: UUSB_Open: USB is not in registered state, unable to open\n"
	.balign 4
	.asciz "HCISU_LOG: UUSB_Open: USB Buffer Pool's Invalid\n"
	.balign 8
	.asciz "HCISU_LOG: UUSB_Open: hci_cmd_usb_pool_id = %d\n"
	.asciz "HCISU_LOG: UUSB_Open: hci_acl_usb_pool_id = %d\n"
	.asciz "HCISU_ERR: UUSB_Write: usb_state != UUSB_PPC_OPENED_ST\n"
	.asciz "HCISU_LOG: buffer size = %d\n"
	.balign 4
	.asciz "HCISU_LOG: UUSB_Write: ep(%d) len(%d) data = "
	.balign 4
	.asciz "HCISU_ERR: UUSB_Write: Unable to get buffer from hci_cmd_usb_pool\n"
	.balign 4
	.asciz "HCISU_ERR: UUSB_WRITE(): Ctrl Queue count =  %d\n"
	.balign 4
	.asciz "HCISU_ERR: *************************************************************************************\n"
	.balign 4
	.asciz "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error...  (%d), writes outstanding (%d)\n"
	.balign 4
	.asciz "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error... IOS_ERROR_FAIL_ALLOC  (%d), writes outstanding (%d)\n"
	.asciz "HCISU_ERR: * UUSB_Write(): IUSB_WriteCtrlMsgAsync error... IOS_ERROR_QFULL  (%d), writes outstanding (%d)\n"
	.balign 4
	.asciz "HCISU_ERR: UUSB_Write: Unable to get buffer from hci_acl_usb_pool\n"
	.balign 4
	.asciz "HCISU_ERR: UUSB_Write - writing mem data\n"
	.balign 4
	.asciz "HCISU_ERR: UUSB_WRITE(): Bulk Queue count =  %d\n"
	.balign 4
	.asciz "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error...  (%d), writes outstanding (%d)\n"
	.balign 4
	.asciz "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error... IOS_ERROR_FAIL_ALLOC  (%d), writes outstanding (%d)\n"
	.balign 4
	.asciz "HCISU_ERR: * UUSB_Write(): IUSB_WriteBlkMsgAsync error... IOS_ERROR_QFULL  (%d), writes outstanding (%d)\n"
	.balign 4

glabel lbl_8019B128
	# ROM: 0x197228
	.asciz "BTA got event 0x%x"
	.balign 4

glabel lbl_8019B13C
	# ROM: 0x19723C
	.asciz "BTA got unregistered event id %d"
	.balign 4

glabel lbl_8019B160
	# ROM: 0x197260
	.asciz " bta_dm_disable_timer_cback  "
	.balign 4

glabel lbl_8019B180
	# ROM: 0x197280
	.asciz " bta_dm_search_timer_cback  "
	.balign 4

glabel lbl_8019B1A0
	# ROM: 0x1972A0
	.asciz " bta_dm_pin_cback() -> Failed to start Remote Name Request  "
	.balign 4

glabel lbl_8019B1E0
	# ROM: 0x1972E0
	.asciz " timer stopped  "
	.balign 4

glabel lbl_8019B1F4
	# ROM: 0x1972F4
	.asciz "bta_dm_l2cap_server_compress_cback, BTA ID %d"
	.balign 4

glabel lbl_8019B224
	# ROM: 0x197324
	.asciz "bta_dm_compress_cback open app_id %d, BTA id %d, state %d"
	.balign 4

glabel lbl_8019B260
	# ROM: 0x197360
	.asciz "bta_dm_compress_cback close app_id %d, BTA id %d, state %d"
	.balign 8

glabel lbl_8019B2A0
	# ROM: 0x1973A0
	.asciz "bta_dm_act no more connected service cbs"
	.balign 4

glabel lbl_8019B2CC
	# ROM: 0x1973CC
	.asciz "bta_dm_act no more pm timers"
	.balign 8

glabel lbl_8019B2F0
	# ROM: 0x1973F0
	.asciz "bta_hh_sdp_cback: p_cb: %d result 0x%02x,                             attr_mask 0x%02x"
	.balign 4

glabel lbl_8019B348
	# ROM: 0x197448
	.asciz "bta_hh_start_sdp:: skip SDP for known devices"
	.balign 4

glabel lbl_8019B378
	# ROM: 0x197478
	.asciz "bta_hh_start_sdp:  HID_HostGetSDPRecord failed:                 Status 0x%2X"
	.balign 4

glabel lbl_8019B3C8
	# ROM: 0x1974C8
	.asciz "bta_hh_sdp_cmpl:  status 0x%2X"
	.balign 4

glabel lbl_8019B3E8
	# ROM: 0x1974E8
	.asciz "bta_hh_sdp_cmpl:  HID_HostOpenDev failed:                     Status 0x%2X"
	.balign 4

glabel lbl_8019B434
	# ROM: 0x197534
	.asciz "bta_hh_open_act:  Device[%d] connected"
	.balign 4
	.asciz "BTA_HH_GET_RPT_EVT"
	.balign 4
	.asciz "BTA_HH_SET_RPT_EVT"
	.balign 4
	.asciz "BTA_HH_GET_PROTO_EVT"
	.balign 4
	.asciz "BTA_HH_SET_PROTO_EVT"
	.balign 4
	.asciz "BTA_HH_GET_IDLE_EVT"
	.asciz "BTA_HH_SET_IDLE_EVT"
	.balign 8
	.asciz "BTA_HH_OPEN_EVT"
	.asciz "Unknown event"
	.balign 4
	.asciz "HANDSHAKE received for: event = %s data= %d"
	.asciz "unknown transaction type"
	.balign 4

glabel lbl_8019B548
	# ROM: 0x197648
	.4byte lbl_800E1E00
	.4byte lbl_800E1E00
	.4byte lbl_800E1D94
	.4byte lbl_800E1E00
	.4byte lbl_800E1CA4
	.4byte lbl_800E1D24
	.4byte lbl_800E1CA4
	.4byte lbl_800E1D24
	.4byte lbl_800E1CA4
	.4byte lbl_800E1D24

glabel lbl_8019B570
	# ROM: 0x197670
	.4byte lbl_800E1C6C
	.4byte lbl_800E1C6C
	.4byte lbl_800E1C64
	.4byte lbl_800E1C6C
	.4byte lbl_800E1C34
	.4byte lbl_800E1C3C
	.4byte lbl_800E1C44
	.4byte lbl_800E1C4C
	.4byte lbl_800E1C54
	.4byte lbl_800E1C5C
	.asciz "Ctrl DATA received w4: event[%s]"
	.balign 4
	.asciz "invalid  transaction type for DATA payload: 4_evt[%s]"
	.balign 4

glabel lbl_8019B5F4
	# ROM: 0x1976F4
	.4byte lbl_800E1FC4
	.4byte lbl_800E1FC4
	.4byte lbl_800E1FBC
	.4byte lbl_800E1FC4
	.4byte lbl_800E1F8C
	.4byte lbl_800E1F94
	.4byte lbl_800E1F9C
	.4byte lbl_800E1FA4
	.4byte lbl_800E1FAC
	.4byte lbl_800E1FB4

glabel lbl_8019B61C
	# ROM: 0x19771C
	.4byte lbl_800E1EE0
	.4byte lbl_800E1EE0
	.4byte lbl_800E1ED8
	.4byte lbl_800E1EE0
	.4byte lbl_800E1EA8
	.4byte lbl_800E1EB0
	.4byte lbl_800E1EB8
	.4byte lbl_800E1EC0
	.4byte lbl_800E1EC8
	.4byte lbl_800E1ED0
	.4byte 0

glabel lbl_8019B648
	# ROM: 0x197748
	.asciz "invalid command"

glabel lbl_8019B658
	# ROM: 0x197758
	.asciz "HID_HostWriteDev Error %d"
	.balign 4

glabel lbl_8019B674
	# ROM: 0x197774
	.asciz "bta_hh_write_dev_act:: cmd type = %d"
	.balign 4
	.asciz "HID_HDEV_EVT_OPEN"
	.balign 4
	.asciz "HID_HDEV_EVT_CLOSE"
	.balign 4
	.asciz "HID_HDEV_EVT_RETRYING"
	.balign 4
	.asciz "HID_HDEV_EVT_INTR_DATA"
	.balign 4
	.asciz "HID_HDEV_EVT_INTR_DATC"
	.balign 4
	.asciz "HID_HDEV_EVT_CTRL_DATA"
	.balign 4
	.asciz "HID_HDEV_EVT_CTRL_DATC"
	.balign 4
	.asciz "HID_HDEV_EVT_HANDSHAKE"
	.balign 4
	.asciz "HID_HDEV_EVT_VC_UNPLUG"
	.balign 4
	.asciz "Unknown HID event"
	.balign 4
	.asciz "bta_hh_cback::HID_event [%s]"
	.balign 4

glabel lbl_8019B7A0
	# ROM: 0x1978A0
	.4byte lbl_800E277C
	.4byte lbl_800E2784
	.4byte lbl_800E28E8
	.4byte lbl_800E278C
	.4byte lbl_800E27A4
	.4byte lbl_800E279C
	.4byte lbl_800E27A4
	.4byte lbl_800E2794
	.4byte lbl_800E27B0

glabel lbl_8019B7C4
	# ROM: 0x1978C4
	.4byte lbl_800E2704
	.4byte lbl_800E270C
	.4byte lbl_800E2714
	.4byte lbl_800E271C
	.4byte lbl_800E2724
	.4byte lbl_800E272C
	.4byte lbl_800E2734
	.4byte lbl_800E273C
	.4byte lbl_800E2744

glabel lbl_8019B7E8
	# ROM: 0x1978E8
	.asciz "No resource to send HID host Connect request."
	.balign 4

glabel lbl_8019B818
	# ROM: 0x197918
	.asciz "wrong device handle: [%d]"
	.balign 4
	.asciz "BTA_HH_NULL_ST"
	.balign 4
	.asciz "BTA_HH_IDLE_ST"
	.balign 4
	.asciz "BTA_HH_W4_CONN_ST"
	.balign 4
	.asciz "BTA_HH_CONN_ST"
	.balign 4
	.asciz "unknown HID Host state"
	.balign 4
	.asciz "bta_hh_sm_execute: State 0x%02x [%s], Event [%s]"
	.balign 4
	.asciz "HH State Change: [%s] -> [%s] after Event [%s]"
	.balign 4

glabel lbl_8019B8F4
	# ROM: 0x1979F4
	.asciz "bta_hh_hdl_event:: handle = %d dev_cb[%d] "
	.balign 4
	.asciz "BTA_HH_API_DISABLE_EVT"
	.balign 4
	.asciz "BTA_HH_API_ENABLE_EVT"
	.balign 4
	.asciz "BTA_HH_API_OPEN_EVT"
	.asciz "BTA_HH_API_CLOSE_EVT"
	.balign 4
	.asciz "BTA_HH_INT_OPEN_EVT"
	.asciz "BTA_HH_INT_CLOSE_EVT"
	.balign 4
	.asciz "BTA_HH_INT_HANDSK_EVT"
	.balign 4
	.asciz "BTA_HH_INT_DATA_EVT"
	.asciz "BTA_HH_INT_CTRL_DATA"
	.balign 4
	.asciz "BTA_HH_API_WRITE_DEV_EVT"
	.balign 4
	.asciz "BTA_HH_SDP_CMPL_EVT"
	.asciz "BTA_HH_DISC_CMPL_EVT"
	.balign 4
	.asciz "BTA_HH_API_MAINT_DEV_EVT"
	.balign 4
	.asciz "BTA_HH_API_GET_DSCP_EVT"
	.asciz "BTA_HH_OPEN_CMPL_EVT"
	.balign 4
	.asciz "BTA_HH_API_GET_ACL_Q_EVT"
	.balign 4
	.asciz "unknown HID Host event code"

glabel lbl_8019BAB8
	# ROM: 0x197BB8
	.4byte lbl_800E31E4
	.4byte lbl_800E31EC
	.4byte lbl_800E31F4
	.4byte lbl_800E31FC
	.4byte lbl_800E320C
	.4byte lbl_800E3214
	.4byte lbl_800E3204
	.4byte lbl_800E3224
	.4byte lbl_800E321C
	.4byte lbl_800E323C
	.4byte lbl_800E3234
	.4byte lbl_800E3244
	.4byte lbl_800E31DC
	.4byte lbl_800E31D4
	.4byte lbl_800E324C
	.4byte lbl_800E322C

glabel lbl_8019BAF8
	# ROM: 0x197BF8
	.asciz "found kdev_cb[%d] hid_handle = %d "
	.balign 4
	.asciz "in_use ? [%d] kdev[%d].hid_handle = %d state = [%d]"
	.asciz "bta_hh_find_cb:: index = %d while max = %d"
	.balign 4

glabel lbl_8019BB7C
	# ROM: 0x197C7C
	.asciz "subclass = 0x%2x"
	.balign 4
	.asciz "bta_hh_parse_keybd_rpt:  (report=%p, report_len=%d) called"
	.balign 8
	.asciz "Alt key pressed"
	.asciz "Alt key not pressed"
	.asciz "this_char = %02x"
	.balign 4
	.asciz "BTA_HhParseKeybdRpt:  Cannot interpret scan code                 0x%02x"
	.asciz "bta_hh_parse_mice_rpt:  bta_keybd_rpt_rcvd(report=%p,                 report_len=%d) called"
	.asciz "mice button: 0x%2x"
	.balign 4
	.asciz "mice move: x = %d y = %d"
	.balign 4
	.asciz "bta_hh_trace_dev_db:: Device DB list********************"
	.balign 4
	.asciz "kdev[%d] in_use[%d]  handle[%d] "
	.balign 4
	.asciz "\t\t\t attr_mask[%04x] state [%d] sub_class[%02x] index = %d"
	.balign 4
	.asciz "*********************************************************"
	.balign 8

glabel lbl_8019BDB8
	# ROM: 0x197EB8
	.asciz "Duplicate btm_acl_created: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4

glabel lbl_8019BDF8
	# ROM: 0x197EF8
	.asciz "SetPacketType Mask -> 0x%04x"
	.balign 4

glabel lbl_8019BE18
	# ROM: 0x197F18
	.asciz "Role change request declined since the previous request for this device is not completed "
	.balign 4
	.asciz "BTM_SetLinkPolicy switch not supported (settings: 0x%04x)"
	.balign 4
	.asciz "BTM_SetLinkPolicy hold not supported (settings: 0x%04x)"
	.asciz "BTM_SetLinkPolicy sniff not supported (settings: 0x%04x)"
	.balign 8
	.asciz "BTM_SetLinkPolicy park not supported (settings: 0x%04x)"
	.asciz "BTM_ReadLinkPolicy: RemBdAddr: %02x%02x%02x%02x%02x%02x"

glabel lbl_8019BF98
	# ROM: 0x198098
	.asciz "BTM_ReadClockOffset: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4

glabel lbl_8019BFD4
	# ROM: 0x1980D4
	.asciz "Role Switch Event: new_role 0x%02x, HCI Status 0x%02x"
	.balign 4
	.asciz "BTM_SetQoS: BdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4

glabel lbl_8019C03C
	# ROM: 0x19813C
	.asciz "BTM: p_flow->delay_variation: 0x%02x"
	.balign 4

glabel lbl_8019C064
	# ROM: 0x198164
	.asciz "BTM_ReadRSSI: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4

glabel lbl_8019C098
	# ROM: 0x198198
	.asciz "BTM_ReadLinkQuality: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4

glabel lbl_8019C0D4
	# ROM: 0x1981D4
	.asciz "BTM RSSI Complete: rssi %d, hci status 0x%02x"
	.balign 4

glabel lbl_8019C104
	# ROM: 0x198204
	.asciz "BTM Link Quality Complete: Link Quality %d, hci status 0x%02x"
	.balign 4
	.asciz "btm BEFORE SCO setting to 1 slot; hci hdl 0x%x"
	.balign 4
	.asciz "btm last SCO removed; unsniffing hci hdl 0x%x"
	.balign 4
	.asciz "btm last SCO removed; hci hdl 0x%x, types 0x%02x"
	.balign 4

glabel lbl_8019C1D8
	# ROM: 0x1982D8
	.asciz "BTM_SetAfhChannels first: %d (%d) last: %d (%d)"

glabel lbl_8019C208
	# ROM: 0x198308
	.asciz "btm_reset_complete"
	.balign 4
	.asciz "Local supported ACL packet types: 0x%04x"
	.balign 4
	.asciz "Local supported SCO packet types: 0x%04x"
	.balign 4

glabel lbl_8019C274
	# ROM: 0x198374
	.asciz "BTM: BTM_VendorSpecificCommand: Opcode: 0x%04X, ParamLen: %i."
	.balign 4

glabel lbl_8019C2B4
	# ROM: 0x1983B4
	.asciz "BTM: Unable to send vendor specific command (controller is busy)."
	.balign 4

glabel lbl_8019C2F8
	# ROM: 0x1983F8
	.asciz "BTM Event: Received a vendor specific event from controller"
	.balign 8

glabel lbl_8019C338
	# ROM: 0x198438
	.asciz "BTM: BTM_WritePageTimeout: Timeout: %d."
	.asciz "BTM: BTM_WriteVoiceSettings: Settings: 0x%04x."
	.balign 4
	.asciz "BTM: BTM_EnableTestMode"

glabel lbl_8019C3A8
	# ROM: 0x1984A8
	.asciz "BTM: BTM_ReadStoredLinkKey: Read_All: %s"
	.balign 4

glabel lbl_8019C3D4
	# ROM: 0x1984D4
	.asciz "BTM: BTM_WriteStoredLinkKey: num_keys: %d"
	.balign 4

glabel lbl_8019C400
	# ROM: 0x198500
	.asciz "BTM: BTM_DeleteStoredLinkKey: delete_all_flag: %s"
	.balign 8

glabel lbl_8019C438
	# ROM: 0x198538
	.asciz "BTM_SetDiscoverability: mode %d [NonDisc-0, Lim-1, Gen-2], window 0x%04x, interval 0x%04x"
	.balign 4

glabel lbl_8019C494
	# ROM: 0x198594
	.asciz "BTM_SetConnectability: mode %d [NonConn-0, Conn-1], window 0x%04x, interval 0x%04x"
	.balign 4

glabel lbl_8019C4E8
	# ROM: 0x1985E8
	.asciz "BTM_CancelInquiry called"
	.balign 4

glabel lbl_8019C504
	# ROM: 0x198604
	.asciz "BTM_StartInquiry: mode: %d, dur: %d, rsps: %d, flt: %d"
	.balign 4

glabel lbl_8019C53C
	# ROM: 0x19863C
	.asciz "BTM_ReadRemoteDeviceName: bd addr [%02x%02x%02x%02x%02x%02x]"
	.balign 4

glabel lbl_8019C57C
	# ROM: 0x19867C
	.asciz "BTM_CancelRemoteDeviceName()"
	.balign 4

glabel lbl_8019C59C
	# ROM: 0x19869C
	.asciz "BTM_InqDbRead: bd addr [%02x%02x%02x%02x%02x%02x]"
	.balign 4

glabel lbl_8019C5D0
	# ROM: 0x1986D0
	.asciz "BTM Warning: Set Event Filter Failed (HCI returned 0x%x)"
	.balign 4

glabel lbl_8019C60C
	# ROM: 0x19870C
	.asciz "BTM Inq Compl Callback: status 0x%02x, num results %d"
	.balign 8

glabel lbl_8019C648
	# ROM: 0x198748
	.asciz "btm mode change AFTER unsniffing; hci hdl 0x%x, types 0x%02x"
	.balign 4

glabel lbl_8019C688
	# ROM: 0x198788
	.asciz "btm_esco_conn_rsp -> No Resources"
	.balign 4
	.asciz "TCS accept SCO: Packet Types 0x%04x"
	.asciz "BTM_CreateSco -> (e)SCO Link for ACL handle 0x%04x, Desired Type %d"
	.asciz "      txbw 0x%x, rxbw 0x%x, lat 0x%x, voice 0x%x, retrans 0x%02x, pkt 0x%04x"
	.balign 4
	.asciz "btm_sco_chk_pend_unpark -> (e)SCO Link for ACL handle 0x%04x, Desired Type %d"
	.balign 4

glabel lbl_8019C7B4
	# ROM: 0x1988B4
	.asciz "btm_sco_conn_req: No one wants this SCO connection; rejecting it"
	.balign 4
	.asciz "BTM_SetEScoMode -> mode %d"
	.balign 4
	.asciz "BTM_SetEScoMode -> mode SCO (eSCO not supported)"
	.balign 4
	.asciz "    txbw 0x%08x, rxbw 0x%08x, max_lat 0x%04x, voice 0x%04x, pkt 0x%04x, rtx effort 0x%02x"
	.balign 8
	.asciz "BTM_ReadEScoLinkParms -> sco_inx 0x%04x"
	.asciz "BTM_ChangeEScoLinkParms -> SCO Link for handle 0x%04x, pkt 0x%04x"
	.balign 4
	.asciz "BTM_ChangeEScoLinkParms -> eSCO Link for handle 0x%04x"
	.balign 4

glabel lbl_8019C94C
	# ROM: 0x198A4C
	.asciz "btm_esco_proc_conn_chg -> handle 0x%04x, status 0x%02x"
	.balign 8

glabel lbl_8019C988
	# ROM: 0x198A88
	.asciz "BTM_Sec: application registered"
	.asciz "BTM_SetSecurityMode: mode:%d"
	.balign 4
	.asciz "BTM_SetSecurityMode: Authen Enable -> FALSE"
	.asciz "BTM_SetSecurityMode: Authen Enable -> TRUE"
	.balign 4

glabel lbl_8019CA20
	# ROM: 0x198B20
	.asciz "BTM_SetPinType: pin type %d [variable-0, fixed-1], code %s, length %d"
	.balign 4
	.asciz "BTM_SEC_REG[%d]: id %d, is_orig %d, psm 0x%04x, proto_id %d, chan_id %d"
	.asciz "               : sec: 0x%x, service name [%s] (up to %d chars saved)"
	.balign 4
	.asciz "BTM_SEC_REG: Out of Service Records (%d)"
	.balign 8

glabel lbl_8019CB28
	# ROM: 0x198C28
	.asciz "Security Manager: Attempting Authorization of Unknown Device Address [%02x%02x%02x%02x%02x%02x]"

glabel lbl_8019CB88
	# ROM: 0x198C88
	.asciz "Security Manager: authorized status:%d State:%d"
	.asciz "BTM_SecBond BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.balign 4
	.asciz "BTM_SecBond: Illegal Pin len:%d"
	.asciz "BTM_SecBond: no device block"
	.balign 4
	.asciz "BTM_SecBond -> Already Paired"
	.balign 4
	.asciz "BTM_SecBond: Authen Enable -> TRUE"
	.balign 4
	.asciz "BTM_SecBond: no buffer"
	.balign 4

glabel lbl_8019CC84
	# ROM: 0x198D84
	.asciz "btm_restore_mode: Authen Enable -> %d"
	.balign 4
	.asciz "Security Manager: BTM_SetEncryption not connected"
	.balign 4
	.asciz "Security Manager: BTM_SetEncryption already encrypted"
	.balign 4
	.asciz "Security Manager: BTM_SetEncryption busy"
	.balign 8
	.asciz "Security Manager: BTM_SetEncryption Handle:%d State:%d Flags:0x%x Required:0x%x"
	.asciz "Security Manager: l2cap_access_req PSM:%d no resources"
	.balign 4
	.asciz "Security Manager: l2cap_access_req PSM:%d no application registerd"
	.balign 4
	.asciz "Security Manager: l2cap_access_req PSM:%d postponed for multiplexer"
	.asciz "Security Manager: l2cap_access_req PSM:%d Handle:%d State:%d Flags:0x%x Required:0x%x"
	.balign 4
	.asciz "Security Manager: trusted:0x%04x%04x Flags:0x%x"

glabel lbl_8019CEE0
	# ROM: 0x198FE0
	.asciz "Security Manager: MX service not found PSM:%d Proto:%d SCN:%d"
	.balign 4

glabel lbl_8019CF20
	# ROM: 0x199020
	.asciz "Security Manager: connect request from not paired device"
	.balign 4

glabel lbl_8019CF5C
	# ROM: 0x19905C
	.asciz "Security Manager: rmt_name_complete status:%d State:%d"
	.balign 4

glabel lbl_8019CF94
	# ROM: 0x199094
	.asciz "Security Manager: auth_complete status:%d State:%d"
	.balign 4

glabel lbl_8019CFC8
	# ROM: 0x1990C8
	.asciz "Security Manager: mkey comp status:%d State:%d"
	.balign 4

glabel lbl_8019CFF8
	# ROM: 0x1990F8
	.asciz "Security Manager: encrypt_change status:%d State:%d"

glabel lbl_8019D02C
	# ROM: 0x19912C
	.asciz "Security Manager: btm_sec_connected handle:%d status:%d enc_mode:%d"

glabel lbl_8019D070
	# ROM: 0x199170
	.asciz "btm_sec_link_key_notification()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"

glabel lbl_8019D0B4
	# ROM: 0x1991B4
	.asciz "                                TYPE: %d"
	.balign 4

glabel lbl_8019D0E0
	# ROM: 0x1991E0
	.asciz "btm_sec_link_key_request()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.balign 4

glabel lbl_8019D120
	# ROM: 0x199220
	.asciz "btm_sec_pin_code_request_timeout()"
	.balign 4
	.asciz "btm_sec_pin_code_request()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.balign 4
	.asciz "btm_sec_pin_code_request bonding sending reply"
	.balign 4
	.asciz "btm_sec_pin_code_request: Authen Enable -> %d"
	.balign 4
	.asciz "btm_sec_pin_code_request(): Pairing disabled:%d; PIN callback:%x, Dev Rec:%x!"
	.balign 4
	.asciz "btm_sec_execute_procedure: Required:0x%x Flags:0x%x State:%d"
	.balign 4
	.asciz "L2CAP - no LCB for L2CA_conn_req"
	.balign 4
	.asciz "Security Manager: Start get name"
	.balign 4
	.asciz "Security Manager: Start authentication"
	.balign 4
	.asciz "Security Manager: Start encryption"
	.balign 4
	.asciz "Security Manager: Start authorization"
	.balign 4
	.asciz "Security Manager: trusted:0x%04x%04x"
	.balign 4
	.asciz "Security Manager: access granted"
	.balign 4

glabel lbl_8019D37C
	# ROM: 0x19947C
	.asciz "btm_sec_collision_timeout()"

glabel lbl_8019D398
	# ROM: 0x199498
	.asciz "Ctlr H/w error event"
	.balign 4

glabel lbl_8019D3B0
	# ROM: 0x1994B0
	.asciz "Event mismatch opcode=%X cmd opcode=%X"
	.balign 4

glabel lbl_8019D3D8
	# ROM: 0x1994D8
	.asciz "Cmd timeout; no cmd in queue"
	.balign 4

glabel lbl_8019D3F8
	# ROM: 0x1994F8
	.asciz "BTU HCI command timeout - cmd opcode = 0x%02x"
	.balign 4

glabel lbl_8019D428
	# ROM: 0x199528
	.asciz "WARNING: GAP Conn Indication for Unexpected Bd Addr...Disconnecting"

glabel lbl_8019D46C
	# ROM: 0x19956C
	.asciz "GAP_CONN - Rcvd L2CAP conn ind, CID: 0x%x"
	.balign 4

glabel lbl_8019D498
	# ROM: 0x199598
	.asciz "GAP_CONN - Rcvd L2CAP disc, CID: 0x%x"
	.balign 4

glabel lbl_8019D4C0
	# ROM: 0x1995C0
	.asciz "GAP_CONN - Rcvd L2CAP Is Congested (%d), CID: 0x%x"
	.balign 8

glabel lbl_8019D4F8
	# ROM: 0x1995F8
	.asciz "   GAP Inquiry Complete Event (Status 0x%04x, Result(s) %d)"
	.asciz "   GAP Discovery Complete Event(SDP Result: 0x%04x)"
	.asciz "   GAP Discovery Successfully Completed"
	.asciz "   GAP Remote Name Complete Event (status 0x%04x)"
	.balign 4

glabel lbl_8019D5C4
	# ROM: 0x1996C4
	.4byte lbl_800EFAD4
	.4byte lbl_800EFADC
	.4byte lbl_800EFAE4
	.4byte lbl_800EFB0C
	.4byte lbl_800EFAEC
	.4byte lbl_800EFAEC
	.4byte lbl_800EFAF4
	.4byte lbl_800EFAFC
	.4byte lbl_800EFB04
	.asciz "GAP Inquiry Results Callback (bdaddr [%02x%02x%02x%02x%02x%02x])"
	.balign 4
	.asciz "                             (COD [%02x%02x%02x], clkoff 0x%04x)"
	.balign 4

glabel lbl_8019D670
	# ROM: 0x199770
	.asciz "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x, Name [%s])"

glabel lbl_8019D6B4
	# ROM: 0x1997B4
	.asciz "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x)"
	.balign 4

glabel lbl_8019D6F0
	# ROM: 0x1997F0
	.4byte lbl_800EFD2C
	.4byte lbl_800EFD34
	.4byte lbl_800EFD3C
	.4byte lbl_800EFD64
	.4byte lbl_800EFD44
	.4byte lbl_800EFD44
	.4byte lbl_800EFD4C
	.4byte lbl_800EFD54
	.4byte lbl_800EFD5C

glabel lbl_8019D714
	# ROM: 0x199814
	.4byte lbl_800EFC94
	.4byte lbl_800EFC9C
	.4byte lbl_800EFCA4
	.4byte lbl_800EFCCC
	.4byte lbl_800EFCAC
	.4byte lbl_800EFCAC
	.4byte lbl_800EFCB4
	.4byte lbl_800EFCBC
	.4byte lbl_800EFCC4

glabel lbl_8019D738
	# ROM: 0x199838
	.asciz "   GAP: FindAddrByName Inq Cmpl Evt (Status 0x%04x, Result(s) %d)"
	.balign 4

glabel lbl_8019D77C
	# ROM: 0x19987C
	.4byte lbl_800EFEE0
	.4byte lbl_800EFEE8
	.4byte lbl_800EFEF0
	.4byte lbl_800EFF18
	.4byte lbl_800EFEF8
	.4byte lbl_800EFEF8
	.4byte lbl_800EFF00
	.4byte lbl_800EFF08
	.4byte lbl_800EFF10

glabel lbl_8019D7A0
	# ROM: 0x1998A0
	.4byte lbl_800EFE70
	.4byte lbl_800EFE78
	.4byte lbl_800EFE80
	.4byte lbl_800EFEA8
	.4byte lbl_800EFE88
	.4byte lbl_800EFE88
	.4byte lbl_800EFE90
	.4byte lbl_800EFE98
	.4byte lbl_800EFEA0

glabel lbl_8019D7C4
	# ROM: 0x1998C4
	.4byte lbl_800EFF84
	.4byte lbl_800EFF8C
	.4byte lbl_800EFF94
	.4byte lbl_800EFFBC
	.4byte lbl_800EFF9C
	.4byte lbl_800EFF9C
	.4byte lbl_800EFFA4
	.4byte lbl_800EFFAC
	.4byte lbl_800EFFB4

glabel lbl_8019D7E8
	# ROM: 0x1998E8
	.asciz "HID - Originate started"

glabel lbl_8019D800
	# ROM: 0x199900
	.asciz "HID - Originate failed"
	.balign 4

glabel lbl_8019D818
	# ROM: 0x199918
	.asciz "hidd_proc_repage_timeout"
	.balign 8

glabel lbl_8019D838
	# ROM: 0x199938
	.asciz "HID_ERR_NOT_REGISTERED"
	.balign 4
	.asciz "HID_ERR_INVALID_PARAM"
	.balign 4
	.asciz "HID_ERR_NO_CONNECTION dev_handle %d"
	.asciz "Security Registration 1 failed"
	.balign 4
	.asciz "Security Registration 2 failed"
	.balign 4
	.asciz "Security Registration 3 failed"
	.balign 4
	.asciz "Security Registration 4 failed"
	.balign 4
	.asciz "Security Registration 5 failed"
	.balign 4
	.asciz "Security Registration 6 failed"
	.balign 8

glabel lbl_8019D950
	# ROM: 0x199A50
	.asciz "HID Control Registration failed"

glabel lbl_8019D970
	# ROM: 0x199A70
	.asciz "HID Interrupt Registration failed"
	.balign 4

glabel lbl_8019D994
	# ROM: 0x199A94
	.asciz "HID - disconnect"
	.balign 4
	.asciz "HID - Rcvd L2CAP conn ind, PSM: 0x%04x  CID 0x%x"
	.balign 4
	.asciz "HID - Rcvd INTR L2CAP conn ind, but no CTL channel"
	.balign 4
	.asciz "HID - Rcvd INTR L2CAP conn ind, wrong state: %d"
	.asciz "HID - Rcvd CTL L2CAP conn ind, wrong state: %d"
	.balign 4
	.asciz "HID - Rcvd L2CAP conn ind, sent config req, PSM: 0x%04x  CID 0x%x"
	.balign 4

glabel lbl_8019DAB4
	# ROM: 0x199BB4
	.asciz "HID - Originate failed"
	.balign 8
	.asciz "HID - Originator security pass."
	.asciz "HID - INTR Originate failed"
	.asciz "HID - Rcvd unexpected conn cnf, CID 0x%x "
	.balign 4
	.asciz "HID - got CTRL conn cnf, sent cfg req, CID: 0x%x"
	.balign 4

glabel lbl_8019DB6C
	# ROM: 0x199C6C
	.asciz "HID - Rcvd L2CAP cfg ind, unknown CID: 0x%x"

glabel lbl_8019DB98
	# ROM: 0x199C98
	.asciz "HID - Rcvd cfg ind, sent cfg cfm, CID: 0x%x"
	.asciz "HID - Rcvd cfg cfm, CID: 0x%x  Result: %d"
	.balign 4

glabel lbl_8019DBF0
	# ROM: 0x199CF0
	.asciz "HID - Rcvd L2CAP disc, unknown CID: 0x%x"
	.balign 4

glabel lbl_8019DC1C
	# ROM: 0x199D1C
	.asciz "HID - Rcvd L2CAP disc, CID: 0x%x"
	.balign 4

glabel lbl_8019DC40
	# ROM: 0x199D40
	.asciz "HID - Rcvd L2CAP disc cfm, unknown CID: 0x%x"
	.balign 4

glabel lbl_8019DC70
	# ROM: 0x199D70
	.asciz "HID - Rcvd L2CAP disc cfm, CID: 0x%x"
	.balign 4

glabel lbl_8019DC98
	# ROM: 0x199D98
	.asciz "HID - Rcvd L2CAP congestion status, unknown CID: 0x%x"
	.balign 4

glabel lbl_8019DCD0
	# ROM: 0x199DD0
	.asciz "HID - Rcvd L2CAP congestion status, CID: 0x%x  Cong: %d"

glabel lbl_8019DD08
	# ROM: 0x199E08
	.asciz "HID - Rcvd L2CAP data, unknown CID: 0x%x"
	.balign 8

glabel lbl_8019DD38
	# ROM: 0x199E38
	.asciz "L2CAP - L2CA_Register() called for PSM: 0x%04x"
	.balign 4
	.asciz "L2CAP - no cb registering PSM: 0x%04x"
	.balign 4
	.asciz "L2CAP - invalid PSM value, PSM: 0x%04x"
	.balign 4
	.asciz "L2CAP - no RCB available, PSM: 0x%04x"
	.balign 4

glabel lbl_8019DDE0
	# ROM: 0x199EE0
	.asciz "L2CAP - L2CA_Deregister() called for PSM: 0x%04x"
	.balign 4

glabel lbl_8019DE14
	# ROM: 0x199F14
	.asciz "L2CAP - PSM: 0x%04x not found for deregistration"
	.balign 4
	.asciz "L2CA_ConnectReq()  PSM: 0x%04x"
	.balign 4
	.asciz "L2CA_ConnectReq()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.balign 4
	.asciz "L2CAP connect req - BTU not ready"
	.balign 4
	.asciz "L2CAP - no RCB for L2CA_conn_req, PSM: 0x%04x"
	.balign 4
	.asciz "L2CAP - no LCB for L2CA_conn_req"
	.balign 4
	.asciz "L2CAP API - L2CA_conn_req rejected - link disconnecting"
	.asciz "L2CAP - no CCB for L2CA_conn_req"
	.balign 4
	.asciz "L2CAP - L2CA_conn_req() returned CID: 0x%04x"
	.balign 4
	.asciz "L2CA_ConnectRsp()  CID: 0x%04x  Result: %d  Status: %d"
	.balign 4
	.asciz "L2CA_ConnectRsp()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.balign 4
	.asciz "L2CAP - no LCB for L2CA_conn_rsp"
	.balign 4
	.asciz "L2CAP - no CCB for L2CA_conn_rsp"
	.balign 4
	.asciz "L2CAP - bad id in L2CA_conn_rsp. Exp: %d  Got: %d"
	.balign 4

glabel lbl_8019E090
	# ROM: 0x19A190
	.asciz "L2CA_ConfigReq()  CID: 0x%04x"
	.balign 4

glabel lbl_8019E0B0
	# ROM: 0x19A1B0
	.asciz "L2CAP - no CCB for L2CA_cfg_req, CID: %d"
	.balign 4

glabel lbl_8019E0DC
	# ROM: 0x19A1DC
	.asciz "L2CA_ConfigRsp()  CID: 0x%04x  Result: %d"
	.balign 4

glabel lbl_8019E108
	# ROM: 0x19A208
	.asciz "L2CAP - no CCB for L2CA_cfg_rsp, CID: %d"
	.balign 4

glabel lbl_8019E134
	# ROM: 0x19A234
	.asciz "L2CA_DisconnectReq()  CID: 0x%04x"
	.balign 4

glabel lbl_8019E158
	# ROM: 0x19A258
	.asciz "L2CAP - no CCB for L2CA_disc_req, CID: %d"
	.balign 4

glabel lbl_8019E184
	# ROM: 0x19A284
	.asciz "L2CA_DisconnectRsp()  CID: 0x%04x"
	.balign 4

glabel lbl_8019E1A8
	# ROM: 0x19A2A8
	.asciz "L2CAP - no CCB for L2CA_disc_rsp, CID: %d"
	.balign 4
	.asciz "L2CA_DataWrite()  CID: 0x%04x  Len: %d"
	.balign 4
	.asciz "L2CAP - no CCB for L2CA_DataWrite, CID: %d"
	.balign 4
	.asciz "L2CAP - cannot send message bigger than peer's mtu size"
	.asciz "L2CA_Ping()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.asciz "L2CAP - no LCB for L2CA_ping"
	.balign 4
	.asciz "L2CAP - rejected second L2CA_ping"
	.balign 8
	.asciz "L2CAP - L2CA_ping rejected - link disconnecting"

glabel lbl_8019E308
	# ROM: 0x19A408
	.asciz "L2CAP - no CCB for L2CA_SetIdleTimeout, CID: %d"
	.asciz "L2CA_SetAclPriority()  bdaddr: %02x%02x%02x%02x%02x%02x"
	.asciz "L2CAP - no LCB for L2CA_SetAclPriority"
	.balign 4
	.asciz "L2CA_SetCompression() local cid %d, direction %d, pe_type %d, mem_level %d, wbits %d, enable %d"
	.asciz "L2CAP - no CCB for L2CA_Flush, CID: %d"
	.balign 4
	.asciz "L2CA_Flush()  CID: 0x%04x flushed %d buffers"
	.balign 4
	.asciz "L2CA_GetNumQueuedBufs()  CID: 0x%04x  abmormally returning 0"
	.balign 4
	.asciz "L2CA_GetNumQueuedBufs()  CID: 0x%04x  returning %d"
	.balign 8

glabel lbl_8019E4C8
	# ROM: 0x19A5C8
	.4byte lbl_800F65FC
	.4byte lbl_800F6600
	.4byte lbl_800F6604
	.4byte lbl_800F6608
	.4byte lbl_800F660C
	.4byte lbl_800F6610
	.4byte lbl_800F6614
	.4byte lbl_800F6618
	.4byte lbl_800F661C
	.asciz "L2CAP - st: CLOSED evt: %d"
	.balign 4

glabel lbl_8019E508
	# ROM: 0x19A608
	.asciz "L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed"
	.balign 4
	.asciz "L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d"
	.balign 4

glabel lbl_8019E588
	# ROM: 0x19A688
	.4byte lbl_800F66E4
	.4byte lbl_800F6714
	.4byte lbl_800F68A0
	.4byte lbl_800F66A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F6798
	.4byte lbl_800F67BC
	.4byte lbl_800F68A0
	.4byte lbl_800F6808
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F688C
	.4byte lbl_800F675C
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F6898
	.4byte lbl_800F68A0
	.4byte lbl_800F68A0
	.4byte lbl_800F688C
	.4byte lbl_800F6838
	.asciz "L2CAP - st: ORIG_W4_SEC_COMP evt: %d"
	.balign 4

glabel lbl_8019E62C
	# ROM: 0x19A72C
	.4byte lbl_800F6938
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F697C
	.4byte lbl_800F69A8
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F69F0
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F69FC
	.4byte lbl_800F6A10
	.4byte lbl_800F6A10
	.4byte lbl_800F69F0

glabel lbl_8019E698
	# ROM: 0x19A798
	.asciz "L2CAP - st: TERM_W4_SEC_COMP evt: %d"
	.balign 4

glabel lbl_8019E6C0
	# ROM: 0x19A7C0
	.asciz "L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x"
	.balign 4

glabel lbl_8019E6F0
	# ROM: 0x19A7F0
	.4byte lbl_800F6A98
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6AB0
	.4byte lbl_800F6B18
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B4C
	.4byte lbl_800F6B74
	.4byte lbl_800F6B34
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B40
	.4byte lbl_800F6B74
	.4byte lbl_800F6B74
	.4byte lbl_800F6B34
	.asciz "L2CAP - st: W4_L2CAP_CON_RSP evt: %d"
	.balign 4
	.asciz "L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Success"
	.balign 4
	.asciz "L2CAP - Calling Connect_Pnd_Cb()"
	.balign 4
	.asciz "L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Failure Code: %d"
	.asciz "L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Timeout"
	.balign 4

glabel lbl_8019E858
	# ROM: 0x19A958
	.4byte lbl_800F6C10
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6C5C
	.4byte lbl_800F6CBC
	.4byte lbl_800F6D14
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DB4
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DA8
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DBC
	.4byte lbl_800F6DB4
	.4byte lbl_800F6D5C

glabel lbl_8019E8C8
	# ROM: 0x19A9C8
	.asciz "L2CAP - st: W4_L2CA_CON_RSP evt: %d"

glabel lbl_8019E8EC
	# ROM: 0x19A9EC
	.4byte lbl_800F6E4C
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F68
	.4byte lbl_800F6F94
	.4byte lbl_800F6E94
	.4byte lbl_800F6EF4
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F74
	.4byte lbl_800F6F94
	.4byte lbl_800F6F94
	.4byte lbl_800F6F68
	.4byte lbl_800F6F10
	.asciz "L2CAP - st: CONFIG evt: %d"
	.balign 4
	.asciz "L2CAP - Calling Config_Req_Cb(), CID: 0x%04x"
	.balign 4
	.asciz "L2CAP - Calling Config_Rsp_Cb(), CID: 0x%04x"
	.balign 4
	.asciz "L2CAP - Calling Config_Rsp_Cb(), CID: 0x%04x, Failure: %d"
	.balign 4
	.asciz "L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  Conf Needed"
	.balign 4
	.asciz "L2CAP - Calling DataInd_Cb(), CID: 0x%04x"
	.balign 4

glabel lbl_8019EA80
	# ROM: 0x19AB80
	.4byte lbl_800F7028
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F706C
	.4byte lbl_800F70D0
	.4byte lbl_800F714C
	.4byte lbl_800F7198
	.4byte lbl_800F735C
	.4byte lbl_800F72AC
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F71F0
	.4byte lbl_800F721C
	.4byte lbl_800F7268
	.4byte lbl_800F7288
	.4byte lbl_800F735C
	.4byte lbl_800F735C
	.4byte lbl_800F72EC
	.4byte lbl_800F7314
	.asciz "L2CAP - st: OPEN evt: %d"
	.balign 4

glabel lbl_8019EB0C
	# ROM: 0x19AC0C
	.4byte lbl_800F73F0
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F7434
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F7458
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F74D0
	.4byte lbl_800F75B8
	.4byte lbl_800F7528
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F7580
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F7544
	.4byte lbl_800F75B8
	.4byte lbl_800F75B8
	.4byte lbl_800F7568
	.asciz "L2CAP - st: W4_L2CAP_DISC_RSP evt: %d"
	.balign 4
	.asciz "L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x"

glabel lbl_8019EBD0
	# ROM: 0x19ACD0
	.4byte lbl_800F7650
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F76E0
	.4byte lbl_800F7694
	.4byte lbl_800F7794
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F779C
	.4byte lbl_800F7794
	.4byte lbl_800F7740

glabel lbl_8019EC40
	# ROM: 0x19AD40
	.asciz "L2CAP - st: W4_L2CA_DISC_RSP evt: %d"
	.balign 4

glabel lbl_8019EC68
	# ROM: 0x19AD68
	.4byte lbl_800F782C
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F0
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78F8
	.4byte lbl_800F78D0
	.4byte lbl_800F78F8
	.4byte lbl_800F78F0
	.4byte lbl_800F7874
	.asciz "L2CAP - cannot send buffer, offset: %d"
	.balign 4

glabel lbl_8019ED00
	# ROM: 0x19AE00
	.asciz "L2CAP failed to allocate LCB"
	.balign 4

glabel lbl_8019ED20
	# ROM: 0x19AE20
	.asciz "L2CAP got conn_req while connected"
	.balign 8

glabel lbl_8019ED48
	# ROM: 0x19AE48
	.asciz "L2CAP got conn_comp for unknown BD_ADDR"

glabel lbl_8019ED70
	# ROM: 0x19AE70
	.asciz "L2CAP got conn_comp in bad state: %d  status: 0x%d"
	.balign 4

glabel lbl_8019EDA4
	# ROM: 0x19AEA4
	.asciz "L2CAP got sec_comp for unknown BD_ADDR"
	.balign 4

glabel lbl_8019EDCC
	# ROM: 0x19AECC
	.asciz "L2CAP - ping timeout"
	.balign 4
	.asciz "L2CAP - Congested(), CID: 0x%04x, Congested"
	.asciz "L2CAP - Calling CongestionStatus_Cb(), CID: 0x%04x, Congested"
	.balign 4
	.asciz "!!! L2CAP - buffer dropped"
	.balign 8
	.asciz "L2CAP - Calling CongestionStatus_Cb(), CID: 0x%04x, Uncongested"
	.asciz "LCB %d Priority:%d XmitWindow:%d Congestion Start:%d End:%d Discard:%d"
	.balign 4

glabel lbl_8019EEF8
	# ROM: 0x19AFF8
	.asciz "L2CAP - dropping incomplete pkt"

glabel lbl_8019EF18
	# ROM: 0x19B018
	.asciz "L2CAP - dropping too long pkt"
	.balign 4

glabel lbl_8019EF38
	# ROM: 0x19B038
	.asciz "L2CAP - rcvd segment complete, unknown handle: %d"
	.balign 8

glabel lbl_8019EF70
	# ROM: 0x19B070
	.asciz "L2CAP - expected pkt start, got: %d"
	.asciz "L2CAP - holding ACL for unknown handle:%d ls:%d cid:%d opcode:%d cur count:%d"
	.balign 8
	.asciz "L2CAP - unknown CID: %d"
	.asciz "L2CAP - got incorrect hci header"
	.balign 4
	.asciz "L2CAP - bad length in pkt. Exp: %d  Act: %d"
	.asciz "GOT CONNECTIONLESS DATA PSM:%d"
	.balign 4
	.asciz "Command len bad  pkt_len: %d  cmd_len: %d  code: %d"
	.asciz "L2CAP - MTU rej Handle: %d MTU: %d"
	.balign 4
	.asciz "L2CAP - rej with CID invalid, LCID: %d RCID: %d"
	.asciz "L2CAP - rcvd conn req for unknown PSM: %d"
	.balign 4
	.asciz "L2CAP - unable to allocate CCB"
	.balign 4
	.asciz "L2CAP - no CCB for conn rsp, LCID: %d RCID: %d"
	.balign 4
	.asciz "L2CAP - con rsp - bad ID. Exp: %d Got: %d"
	.balign 4
	.asciz "L2CAP - cfg rsp - bad ID. Exp: %d Got: %d"
	.balign 4
	.asciz "L2CAP - rcvd cfg rsp for unknown CID: %d"
	.balign 4
	.asciz "L2CAP - bad cmd code: %d"
	.balign 4
	.4byte lbl_800F9AA0
	.4byte lbl_800F9150
	.4byte lbl_800F9224
	.4byte lbl_800F92F0
	.4byte lbl_800F93E8
	.4byte lbl_800F9698
	.4byte lbl_800F9948
	.4byte lbl_800F99BC
	.4byte lbl_800F9A1C
	.4byte lbl_800F9A5C
	.4byte lbl_800F9A7C
	.4byte lbl_800F90D0

glabel lbl_8019F244
	# ROM: 0x19B344
	.asciz "L2CAP HOLD CONTINUE"

glabel lbl_8019F258
	# ROM: 0x19B358
	.asciz "L2CAP HOLD TIMEOUT"
	.balign 8

glabel lbl_8019F270
	# ROM: 0x19B370
	.asciz "L2CAP - no buffer cmd_rej"
	.balign 4

glabel lbl_8019F28C
	# ROM: 0x19B38C
	.asciz "L2CAP - no buffer for conn_req"
	.balign 4

glabel lbl_8019F2AC
	# ROM: 0x19B3AC
	.asciz "L2CAP - no buffer for cfg_rej"
	.balign 4

glabel lbl_8019F2CC
	# ROM: 0x19B3CC
	.asciz "L2CAP - no buffer for echo_req"
	.balign 4
	.asciz "l2cu_create_conn - btm_is_sco_active_by_bdaddr() is_sco_active = %s"

glabel lbl_8019F330
	# ROM: 0x19B430
	.asciz "L2CAP - no buffer for l2cu_create_conn"
	.balign 4

glabel lbl_8019F358
	# ROM: 0x19B458
	.asciz "port_open_continue"
	.balign 4
	.asciz "port_open_continue no mx channel"
	.balign 4

glabel lbl_8019F390
	# ROM: 0x19B490
	.asciz "PORT_StartCnf result:%d"
	.asciz "PORT_StartCnf failed result:%d"
	.balign 4

glabel lbl_8019F3C8
	# ROM: 0x19B4C8
	.asciz "PORT_StartInd"
	.balign 4

glabel lbl_8019F3D8
	# ROM: 0x19B4D8
	.asciz "PORT_ParNegInd dlci:%d mtu:%d"
	.balign 4

glabel lbl_8019F3F8
	# ROM: 0x19B4F8
	.asciz "PORT_ParNegInd: port not found"
	.balign 4

glabel lbl_8019F418
	# ROM: 0x19B518
	.asciz "PORT_ParNegCnf dlci:%d mtu:%d cl: %d k: %d"
	.balign 4

glabel lbl_8019F444
	# ROM: 0x19B544
	.asciz "PORT_DlcEstablishInd dlci:%d mtu:%d"

glabel lbl_8019F468
	# ROM: 0x19B568
	.asciz "PORT_DlcEstablishCnf dlci:%d mtu:%d result:%d"
	.balign 4

glabel lbl_8019F498
	# ROM: 0x19B598
	.asciz "PORT_PortNegInd"
	.asciz "PORT_PortNegCnf"
	.asciz "PORT_PortNegCnf no port"
	.asciz "PORT_PortNegCnf Control Already sent"
	.balign 4

glabel lbl_8019F4F8
	# ROM: 0x19B5F8
	.asciz "PORT_ControlInd"

glabel lbl_8019F508
	# ROM: 0x19B608
	.asciz "PORT_ControlInd DTR_DSR : %d, RTS_CTS : %d, RI : %d, DCD : %d"
	.balign 4

glabel lbl_8019F548
	# ROM: 0x19B648
	.asciz "PORT_ControlCnf"

glabel lbl_8019F558
	# ROM: 0x19B658
	.asciz "PORT_LineStatusInd"
	.balign 4

glabel lbl_8019F56C
	# ROM: 0x19B66C
	.asciz "PORT_DlcReleaseInd"
	.balign 4

glabel lbl_8019F580
	# ROM: 0x19B680
	.asciz "PORT_CloseInd"
	.balign 4

glabel lbl_8019F590
	# ROM: 0x19B690
	.asciz "Port_TimeOutCloseMux"
	.balign 4

glabel lbl_8019F5A8
	# ROM: 0x19B6A8
	.asciz "PORT_DataInd with data length %d"
	.balign 4

glabel lbl_8019F5CC
	# ROM: 0x19B6CC
	.asciz "PORT_DataInd. Buffer over run. Dropping the buffer"
	.balign 4

glabel lbl_8019F600
	# ROM: 0x19B700
	.asciz "PORT_FlowInd fc:%d"
	.balign 4
	.asciz "Sending RFCOMM_DataReq"
	.balign 4

glabel lbl_8019F62C
	# ROM: 0x19B72C
	.asciz "port_rfc_closed in OPENING state ignored"
	.balign 4

glabel lbl_8019F658
	# ROM: 0x19B758
	.asciz "port_rfc_closed state:%d sending events:%x"
	.balign 8

glabel lbl_8019F688
	# ROM: 0x19B788
	.asciz "port_select_mtu bad packet size"
	.asciz "port_select_mtu selected %d based on connection speed"
	.balign 4
	.asciz "port_select_mtu selected %d based on l2cap PDU size"
	.balign 8
	.asciz "port_select_mtu application selected %d"
	.asciz "port_select_mtu credit_rx_max %d, credit_rx_low %d, rx_buf_critical %d"
	.balign 4

glabel lbl_8019F788
	# ROM: 0x19B888
	.asciz "rfc_port_closed DONE"
	.balign 4

glabel lbl_8019F7A0
	# ROM: 0x19B8A0
	.asciz "PORT_DataInd Data reached HW. Sending FC set."
	.balign 4

glabel lbl_8019F7D0
	# ROM: 0x19B8D0
	.asciz "rfc_find_lcid_mcb LCID:0x%x"
	.asciz "rfc_find_lcid_mcb LCID reused LCID:0x%x current:0x%x"
	.balign 4
	.asciz "RFCOMM_ConnectCnf LCID:0x%x"
	.asciz "RFCOMM_ConfigInd LCID:0x%x"
	.balign 4
	.asciz "RFCOMM_ConfigCnf LCID:0x%x"
	.balign 4
	.asciz "RFCOMM_DisconnectInd LCID:0x%x"
	.balign 4
	.asciz "RFCOMM_BufDataInd LCID:0x%x"
	.asciz "RFCOMM_CongestionStatusInd dropped LCID:0x%x"
	.balign 4
	.asciz "RFCOMM_CongestionStatusInd LCID:0x%x"
	.balign 8

glabel lbl_8019F910
	# ROM: 0x19BA10
	.4byte lbl_800FDEB0
	.4byte lbl_800FDEB4
	.4byte lbl_800FDEB8
	.4byte lbl_800FDEBC
	.4byte lbl_800FDEC0
	.4byte lbl_800FDEC4
	.4byte lbl_800FDEC8
	.asciz "rfc_mx_sm_state_idle - evt:%d"
	.balign 4
	.asciz "Mx error state %d event %d"
	.balign 4
	.asciz "rfc_mx_send_config_req"
	.balign 4

glabel lbl_8019F980
	# ROM: 0x19BA80
	.asciz "RFCOMM MX ignored - evt:%d in state:%d"
	.balign 4

glabel lbl_8019F9A8
	# ROM: 0x19BAA8
	.4byte lbl_800FE098
	.4byte lbl_800FE06C
	.4byte lbl_800FE06C
	.4byte lbl_800FE070
	.4byte lbl_800FE084
	.4byte lbl_800FE098
	.4byte lbl_800FDF48
	.4byte lbl_800FDF8C
	.4byte lbl_800FE098
	.4byte lbl_800FDF8C
	.4byte lbl_800FDFB8
	.4byte lbl_800FDF8C
	.4byte lbl_800FDF8C
	.asciz "rfc_mx_sm_state_wait_conn_cnf - evt:%d"
	.balign 4
	.asciz "rfc_mx_sm_state_configure - evt:%d"
	.balign 4

glabel lbl_8019FA28
	# ROM: 0x19BB28
	.4byte lbl_800FE31C
	.4byte lbl_800FE37C
	.4byte lbl_800FE37C
	.4byte lbl_800FE31C
	.4byte lbl_800FE37C
	.4byte lbl_800FE358
	.4byte lbl_800FE348
	.4byte lbl_800FE37C
	.4byte lbl_800FE368
	.asciz "rfc_mx_sm_sabme_wait_ua - evt:%d"
	.balign 4

glabel lbl_8019FA70
	# ROM: 0x19BB70
	.4byte lbl_800FE4F0
	.4byte lbl_800FE4A0
	.4byte lbl_800FE4C8
	.4byte lbl_800FE4F0
	.4byte lbl_800FE4F0
	.4byte lbl_800FE4D0
	.4byte lbl_800FE440
	.4byte lbl_800FE4F0
	.4byte lbl_800FE4F0
	.4byte lbl_800FE440
	.4byte lbl_800FE4F0
	.4byte lbl_800FE47C
	.4byte lbl_800FE46C
	.4byte lbl_800FE4F0
	.4byte lbl_800FE48C

glabel lbl_8019FAAC
	# ROM: 0x19BBAC
	.asciz "rfc_mx_sm_state_wait_sabme - evt:%d"

glabel lbl_8019FAD0
	# ROM: 0x19BBD0
	.asciz "rfc_mx_sm_state_connected - evt:%d"
	.balign 4

glabel lbl_8019FAF4
	# ROM: 0x19BBF4
	.4byte lbl_800FE700
	.4byte lbl_800FE72C
	.4byte lbl_800FE6C8
	.4byte lbl_800FE72C
	.4byte lbl_800FE72C
	.4byte lbl_800FE6C8
	.4byte lbl_800FE72C
	.4byte lbl_800FE72C
	.4byte lbl_800FE72C
	.4byte lbl_800FE72C
	.4byte lbl_800FE72C
	.4byte lbl_800FE6EC

glabel lbl_8019FB24
	# ROM: 0x19BC24
	.asciz "rfc_mx_sm_state_disc_wait_ua - evt:%d"
	.balign 4

glabel lbl_8019FB4C
	# ROM: 0x19BC4C
	.4byte lbl_800FE8A0
	.4byte lbl_800FE7E4
	.4byte lbl_800FE7E4
	.4byte lbl_800FE850
	.4byte lbl_800FE860
	.4byte lbl_800FE7E4
	.4byte lbl_800FE87C
	.4byte lbl_800FE8A0
	.4byte lbl_800FE89C
	.4byte lbl_800FE8A0
	.4byte lbl_800FE8A0
	.4byte lbl_800FE8A0
	.4byte lbl_800FE8A0
	.4byte lbl_800FE8A0
	.4byte lbl_800FE888

glabel lbl_8019FB88
	# ROM: 0x19BC88
	.asciz "rfc_mx_conf_cnf p_cfg:%08x res:%d "
	.balign 4

glabel lbl_8019FBAC
	# ROM: 0x19BCAC
	.asciz "rfc_mx_conf_ind p_cfg:%0x"
	.balign 4

glabel lbl_8019FBC8
	# ROM: 0x19BCC8
	.asciz "NULL port event %d"
	.balign 4

glabel lbl_8019FBDC
	# ROM: 0x19BCDC
	.asciz "Port error state %d event %d"
	.balign 4

glabel lbl_8019FBFC
	# ROM: 0x19BCFC
	.asciz "Port state closed Event ignored %d"
	.balign 4

glabel lbl_8019FC20
	# ROM: 0x19BD20
	.4byte lbl_800FEBE4
	.4byte lbl_800FEC1C
	.4byte lbl_800FEC20
	.4byte lbl_800FEC44
	.4byte lbl_800FEC28
	.4byte lbl_800FEC58
	.4byte lbl_800FEC90
	.4byte lbl_800FEC90
	.4byte lbl_800FEC90
	.4byte lbl_800FEB9C
	.4byte lbl_800FEC90
	.4byte lbl_800FEC90
	.4byte lbl_800FEC90
	.4byte lbl_800FEBD4
	.4byte lbl_800FEBD8

glabel lbl_8019FC5C
	# ROM: 0x19BD5C
	.asciz "Port state sabme_wait_ua Event ignored %d"
	.balign 4

glabel lbl_8019FC88
	# ROM: 0x19BD88
	.4byte lbl_800FEDEC
	.4byte lbl_800FED7C
	.4byte lbl_800FEDA0
	.4byte lbl_800FEDC0
	.4byte lbl_800FEDFC
	.4byte lbl_800FEE08
	.4byte lbl_800FEE2C
	.4byte lbl_800FEE2C
	.4byte lbl_800FEE2C
	.4byte lbl_800FED10
	.4byte lbl_800FEE2C
	.4byte lbl_800FED10
	.4byte lbl_800FED40
	.4byte lbl_800FED68
	.4byte lbl_800FED70
	.asciz "Port error state Term Wait Sec event Data"
	.balign 4
	.asciz "Port state term_wait_sec_check Event ignored %d"

glabel lbl_8019FD20
	# ROM: 0x19BE20
	.4byte lbl_800FEF6C
	.4byte lbl_800FEFEC
	.4byte lbl_800FEFEC
	.4byte lbl_800FEF70
	.4byte lbl_800FEFA0
	.4byte lbl_800FEFEC
	.4byte lbl_800FEFEC
	.4byte lbl_800FEFEC
	.4byte lbl_800FEFEC
	.4byte lbl_800FEEFC
	.4byte lbl_800FEFEC
	.4byte lbl_800FEFAC
	.4byte lbl_800FEEFC
	.4byte lbl_800FEF28
	.4byte lbl_800FEF40
	.4byte lbl_800FEEB4
	.asciz "Port error state Orig Wait Sec event Data"
	.balign 8
	.asciz "Port state orig_wait_sec_check Event ignored %d"

glabel lbl_8019FDC0
	# ROM: 0x19BEC0
	.4byte lbl_800FF0C0
	.4byte lbl_800FF13C
	.4byte lbl_800FF13C
	.4byte lbl_800FF13C
	.4byte lbl_800FF130
	.4byte lbl_800FF13C
	.4byte lbl_800FF13C
	.4byte lbl_800FF13C
	.4byte lbl_800FF13C
	.4byte lbl_800FF0C0
	.4byte lbl_800FF13C
	.4byte lbl_800FF13C
	.4byte lbl_800FF0EC
	.4byte lbl_800FF13C
	.4byte lbl_800FF104
	.4byte lbl_800FF070

glabel lbl_8019FE00
	# ROM: 0x19BF00
	.asciz "Port state opened Event ignored %d"
	.balign 4

glabel lbl_8019FE24
	# ROM: 0x19BF24
	.4byte lbl_800FF290
	.4byte lbl_800FF28C
	.4byte lbl_800FF2A0
	.4byte lbl_800FF2B8
	.4byte lbl_800FF2DC
	.4byte lbl_800FF2EC
	.4byte lbl_800FF324
	.4byte lbl_800FF324
	.4byte lbl_800FF324
	.4byte lbl_800FF1B8
	.4byte lbl_800FF324
	.4byte lbl_800FF324
	.4byte lbl_800FF1E8
	.4byte lbl_800FF210
	.4byte lbl_800FF218

glabel lbl_8019FE60
	# ROM: 0x19BF60
	.asciz "Port state disc_wait_ua Event ignored %d"
	.balign 4

glabel lbl_8019FE8C
	# ROM: 0x19BF8C
	.4byte lbl_800FF3F8
	.4byte lbl_800FF3E0
	.4byte lbl_800FF3EC
	.4byte lbl_800FF40C
	.4byte lbl_800FF420
	.4byte lbl_800FF43C
	.4byte lbl_800FF444
	.4byte lbl_800FF444
	.4byte lbl_800FF444
	.4byte lbl_800FF3A0
	.4byte lbl_800FF444
	.4byte lbl_800FF3A0
	.4byte lbl_800FF444
	.4byte lbl_800FF3CC
	.4byte lbl_800FF3D4

glabel lbl_8019FEC8
	# ROM: 0x19BFC8
	.asciz "***** MX PN while disconnecting *****"
	.balign 4

glabel lbl_8019FEF0
	# ROM: 0x19BFF0
	.asciz "Bad Length1: %d"
	.asciz "Bad Length2 %d %d"
	.balign 4
	.asciz "Bad SABME"
	.balign 4
	.asciz "Bad DISC"
	.balign 4
	.asciz "Bad UIH - invalid DLCI"
	.balign 4
	.asciz "Bad UIH - FCS"
	.balign 4
	.asciz "Bad UIH - response"
	.balign 4
	.asciz "Illegal MX Frame ea:%d len:%d"
	.balign 4
	.asciz "Bad MX frame"
	.balign 4
	.asciz "Bad PN frame"
	.balign 4
	.asciz "Bad MSC frame"
	.balign 4
	.asciz "Bad RPN frame"
	.balign 4

glabel lbl_8019FFC8
	# ROM: 0x19C0C8
	.asciz "rfc_timer_stop"
	.balign 4

glabel lbl_8019FFD8
	# ROM: 0x19C0D8
	.asciz "rfc_timer_start - timeout:%d"
	.balign 4

glabel lbl_8019FFF8
	# ROM: 0x19C0F8
	.asciz "rfc_port_timer_start - timeout:%d"
	.balign 4

glabel lbl_801A001C
	# ROM: 0x19C11C
	.asciz "rfc_port_timer_stop"
	.asciz "rfc_port_closed"

glabel lbl_801A0040
	# ROM: 0x19C140
	.asciz "rfc_inc_credit:%d"
	.balign 8

glabel lbl_801A0058
	# ROM: 0x19C158
	.asciz "SDP_InitDiscoveryDb Illegal param: p_db 0x%x, len %d, num_uuid %d, num_attr %d"
	.balign 4

glabel lbl_801A00A8
	# ROM: 0x19C1A8
	.asciz "SDP_AddAttribute: attr_len:%d too long. truncate to (%d)"
	.balign 4

glabel lbl_801A00E4
	# ROM: 0x19C1E4
	.asciz "SDP_AddUuidSequence - too long, add %d uuids of %d"
	.balign 4
	.asciz "Deleting attr_id 0x%04x for handle 0x%x"

glabel lbl_801A0140
	# ROM: 0x19C240
	.asciz "SDP - Unexp. PDU: %d in state: %d"
	.balign 8

glabel lbl_801A0168
	# ROM: 0x19C268
	.asciz "SDP - Rcvd ServiceSearchRsp, no matches"

glabel lbl_801A0190
	# ROM: 0x19C290
	.asciz "SDP - Wrong type: 0x%02x in attr_rsp"
	.balign 4
	.asciz "SDP - Bad len in attr_rsp %d"
	.balign 4
	.asciz "SDP - DB full"
	.balign 4
	.asciz "SDP - Bad type: 0x%02x or len: %d in attr_rsp"
	.balign 4
	.asciz "SDP - attr nesting too deep"
	.asciz "SDP - bad len in UUID attr: %d"
	.balign 4
	.asciz "SDP - bad len in boolean attr: %d"
	.balign 4

glabel lbl_801A0278
	# ROM: 0x19C378
	.4byte lbl_80104CD8
	.4byte lbl_801048A4
	.4byte lbl_80104954
	.4byte lbl_80104A10
	.4byte lbl_80104C58
	.4byte lbl_80104C88
	.4byte lbl_80104BA4
	.4byte lbl_80104BA4
	.4byte lbl_80104C58
	.4byte 0

glabel lbl_801A02A0
	# ROM: 0x19C3A0
	.asciz "Service Discovery"
	.balign 4
	.asciz "Security Registration Server failed"
	.asciz "Security Registration for Client failed"
	.asciz "SDP Registration failed"

glabel lbl_801A0318
	# ROM: 0x19C418
	.asciz "SDP - Rcvd L2CAP conn ind, sent config req, CID 0x%x"
	.balign 4
	.asciz "SDP - Rcvd conn cnf for unknown CID 0x%x"
	.balign 4
	.asciz "SDP - got conn cnf, sent cfg req, CID: 0x%x"
	.asciz "SDP - Rcvd conn cnf with error: 0x%x  CID 0x%x"
	.balign 4

glabel lbl_801A03D8
	# ROM: 0x19C4D8
	.asciz "SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x"

glabel lbl_801A0404
	# ROM: 0x19C504
	.asciz "SDP - Rcvd cfg ind, sent cfg cfm, CID: 0x%x"
	.asciz "SDP - Rcvd cfg cfm, CID: 0x%x  Result: %d"
	.balign 4

glabel lbl_801A045C
	# ROM: 0x19C55C
	.asciz "SDP - disconnect  CID: 0x%x"

glabel lbl_801A0478
	# ROM: 0x19C578
	.asciz "SDP - Rcvd L2CAP disc, unknown CID: 0x%x"
	.balign 4

glabel lbl_801A04A4
	# ROM: 0x19C5A4
	.asciz "SDP - Rcvd L2CAP disc, CID: 0x%x"
	.balign 4

glabel lbl_801A04C8
	# ROM: 0x19C5C8
	.asciz "SDP - Ignored L2CAP data while in state: %d, CID: 0x%x"
	.balign 4

glabel lbl_801A0500
	# ROM: 0x19C600
	.asciz "SDP - Rcvd L2CAP data, unknown CID: 0x%x"
	.balign 4
	.asciz "SDP - no spare CCB for orig"
	.asciz "SDP - Originate started"
	.asciz "SDP - Originate failed"
	.balign 4

glabel lbl_801A0578
	# ROM: 0x19C678
	.asciz "SDP - Rcvd L2CAP disc cfm, unknown CID: 0x%x"
	.balign 4

glabel lbl_801A05A8
	# ROM: 0x19C6A8
	.asciz "SDP - Rcvd L2CAP disc cfm, CID: 0x%x"
	.balign 4

glabel lbl_801A05D0
	# ROM: 0x19C6D0
	.asciz "SDP - CCB timeout in state: %d  CID: 0x%x"
	.balign 8

glabel lbl_801A0600
	# ROM: 0x19C700
	.asciz "SDP - server got unknown PDU: 0x%x"
	.balign 4

glabel lbl_801A0624
	# ROM: 0x19C724
	.asciz "SDP - no buf for search rsp"

glabel lbl_801A0640
	# ROM: 0x19C740
	.4byte lbl_80106A04
	.4byte lbl_801069A4
	.4byte lbl_801069B4
	.4byte lbl_80106A04
	.4byte lbl_801069C8
	.4byte lbl_80106A04
	.4byte lbl_80106A04
	.4byte lbl_80106A04
	.4byte lbl_801069DC
	.4byte lbl_80106A04
	.4byte lbl_80106A04
	.4byte lbl_80106A04
	.4byte lbl_80106A04
	.4byte lbl_80106A04
	.4byte lbl_80106A04
	.4byte lbl_80106A04
	.4byte lbl_801069F0

glabel lbl_801A0684
	# ROM: 0x19C784
	.asciz "SDP - sdpu_build_n_send_error  code: 0x%x  CID: 0x%x"
	.balign 4

glabel lbl_801A06BC
	# ROM: 0x19C7BC
	.asciz "SDP - no buf for err msg"
	.balign 4
	.4byte lbl_80106D14
	.4byte lbl_80106CA4
	.4byte lbl_80106CAC
	.4byte lbl_80106D14
	.4byte lbl_80106CB4
	.4byte lbl_80106CBC
	.4byte lbl_80106CC8
	.4byte lbl_80106CE4

glabel lbl_801A06F8
	# ROM: 0x19C7F8
	.4byte lbl_80106C40
	.4byte lbl_80106BD0
	.4byte lbl_80106BD8
	.4byte lbl_80106C40
	.4byte lbl_80106BE0
	.4byte lbl_80106BE8
	.4byte lbl_80106BF4
	.4byte lbl_80106C10

glabel lbl_801A0718
	# ROM: 0x19C818
	.4byte lbl_80107150
	.4byte lbl_8010715C
	.4byte lbl_80107168
	.4byte lbl_80107174
	.4byte lbl_80107180
	.4byte lbl_8010718C
	.4byte lbl_8010719C
	.4byte lbl_801071BC

glabel lbl_801A0738
	# ROM: 0x19C838
	.asciz "CAUTION!  Unexpected error code [%d] was found.\n"
	.balign 8

glabel lbl_801A0770
	# ROM: 0x19C870
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFC17
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC16
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC15
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC14
	.4byte 0xFFFFEC76
	.4byte 0xFFFFFC13
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC12
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC11
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC10
	.4byte 0xFFFFEC76
	.4byte 0xFFFFFC0F
	.4byte 0xFFFFEC75
	.4byte 0xFFFFFC0E
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC0D
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC0C
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC0B
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC0A
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC09
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC08
	.4byte 0xFFFFEC78
	.4byte 0xFFFFFC07
	.4byte 0xFFFFEC6F
	.4byte 0xFFFFFC06
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC05
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC04
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC03
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC02
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC01
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFC00
	.4byte 0xFFFFEC70
	.4byte 0xFFFFFBFF
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBFE
	.4byte 0xFFFFEC6E
	.4byte 0xFFFFFBFD
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBFC
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBFB
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBFA
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBF9
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBF8
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBF7
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBF6
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBF5
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBF4
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBF3
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFBF2
	.4byte 0xFFFFEC39
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFF9A
	.4byte 0xFFFFEC6E
	.4byte 0xFFFFFF99
	.4byte 0xFFFFEC6D
	.4byte 0xFFFFFF8E
	.4byte 0xFFFFEC6C
	.4byte 0xFFFFFF97
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFF8C
	.4byte 0xFFFFEC6B
	.4byte 0xFFFFFF9B
	.4byte 0xFFFFEC6F
	.4byte 0xFFFFFF94
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFF93
	.4byte 0xFFFFEC78
	.4byte 0xFFFFFF95
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFF96
	.4byte 0xFFFFEC6F
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFF98
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFF91
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFF8B
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFF8A
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFF89
	.4byte 0xFFFFEBF9
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFEC6E
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFEC6F
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFEC6F
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFEC6C
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFED
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFEC39
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFEC77
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFEC39

glabel lbl_801A09E8
	# ROM: 0x19CAE8
	.asciz "Warrning! .ctors section[%d]! size=%x\n"
	.balign 4
	.asciz "Warrning! .dtors section[%d]! size=%x\n"
	.balign 4
	.asciz "Warrning! unknown section[%d]! size=%x\n"
	.4byte lbl_80108450
	.4byte lbl_801083B0
	.4byte lbl_801083B8
	.4byte lbl_801083C0
	.4byte lbl_801083E4
	.4byte lbl_80108408
	.4byte lbl_80108410
	.4byte lbl_80108418
	.4byte lbl_80108420
	.4byte lbl_80108430
	.4byte lbl_80108440
	.4byte lbl_80108428
	.4byte lbl_80108438
	.4byte lbl_80108448

glabel lbl_801A0A98
	# ROM: 0x19CB98
	.asciz "OSLink: unknown relocation type %3d\n"
	.balign 4
	.asciz "_SDA_BASE_"
	.balign 4
	.asciz "_SDA2_BASE_"
	.asciz "ERROR: incorrect R_PPC_EMB_SDA21 data.\n"

glabel lbl_801A0B00
	# ROM: 0x19CC00
	.asciz "invalid version number for texture palette"
	.balign 8

glabel lbl_801A0B30
	# ROM: 0x19CC30
	.asciz "<< RVL_SDK - HBM \trelease build: Mar 23 2007 20:10:24 (0x4199_60831) >>"

glabel lbl_801A0B78
	# ROM: 0x19CC78
	.4byte lbl_801A0B30

glabel lbl_801A0B7C
	# ROM: 0x19CC7C
	.4byte lbl_80228858
	.asciz "HBMBase.cpp"
	.asciz "NW4HBM:Failed assertion mpMemorySoundArchive"
	.balign 8
	.asciz "Cannot setup MemorySoundArchive"

glabel lbl_801A0BE0
	.asciz "P1_Def.brlyt"
	.balign 4

glabel lbl_801A0BF0
	.asciz "P2_Def.brlyt"
	.balign 4

glabel lbl_801A0C00
	.asciz "P3_Def.brlyt"
	.balign 4

glabel lbl_801A0C10
	.asciz "P4_Def.brlyt"
	.balign 4
	.4byte lbl_801A0BE0
	.4byte lbl_801A0BF0
	.4byte lbl_801A0C00
	.4byte lbl_801A0C10

glabel lbl_801A0C30
	.asciz "N_Trans"
	.4byte lbl_801A0C30

glabel lbl_801A0C3C
	.asciz "N_Rot"
	.balign 4
	.4byte lbl_801A0C3C

glabel lbl_801A0C48
	.asciz "N_SRot"
	.balign 4
	.4byte lbl_801A0C48

glabel lbl_801A0C54
	.asciz "B_btnL_00"
	.balign 4

glabel lbl_801A0C60
	.asciz "B_btnL_01"
	.balign 4

glabel lbl_801A0C6C
	.asciz "B_btnL_10"
	.balign 4

glabel lbl_801A0C78
	.asciz "B_btnL_11"
	.balign 8

glabel lbl_801A0C88
	# ROM: 0x19CD88
	.4byte lbl_801A0C54
	.4byte lbl_801A0C60
	.4byte lbl_801A0C6C
	.4byte lbl_801A0C78

glabel lbl_801A0C98
	.asciz "T_btnL_00"
	.balign 4

glabel lbl_801A0CA4
	.asciz "T_btnL_01"
	.balign 4

glabel lbl_801A0CB0
	.asciz "T_btnL_10"
	.balign 4

glabel lbl_801A0CBC
	.asciz "T_btnL_11"
	.balign 4
	.4byte lbl_801A0C98
	.4byte lbl_801A0CA4
	.4byte lbl_801A0CB0
	.4byte lbl_801A0CBC

glabel lbl_801A0CD8
	.asciz "btnL_00_inOut"
	.balign 4

glabel lbl_801A0CE8
	.asciz "btnL_01_inOut"
	.balign 4

glabel lbl_801A0CF8
	.asciz "btnL_10_inOut"
	.balign 4

glabel lbl_801A0D08
	.asciz "btnL_11_inOut"
	.balign 4

glabel lbl_801A0D18
	.asciz "btnL_00_psh"

glabel lbl_801A0D24
	.asciz "btnL_01_psh"

glabel lbl_801A0D30
	.asciz "btnL_10_psh"

glabel lbl_801A0D3C
	.asciz "btnL_11_psh"
	.4byte lbl_801A0CD8
	.4byte lbl_801A0CE8
	.4byte lbl_801A0CF8
	.4byte lbl_801A0D08
	.4byte lbl_801A0D18
	.4byte lbl_801A0D24
	.4byte lbl_801A0D30
	.4byte lbl_801A0D3C

glabel lbl_801A0D68
	.asciz "_cntBtn_in.brlan"
	.balign 4

glabel lbl_801A0D7C
	.asciz "_cntBtn_psh.brlan"
	.balign 4

glabel lbl_801A0D90
	.asciz "_cntBtn_out.brlan"
	.balign 4
	.4byte lbl_801A0D68
	.4byte lbl_801A0D7C
	.4byte lbl_801A0D90

glabel lbl_801A0DB0
	.asciz "_ltrIcn_on.brlan"
	.balign 4

glabel lbl_801A0DC4
	.asciz "_optn_bar_psh.brlan"

glabel lbl_801A0DD8
	.asciz "_close_bar_psh.brlan"
	.balign 4

glabel lbl_801A0DF0
	.asciz "_hmMenu_bar_in.brlan"
	.balign 4

glabel lbl_801A0E08
	.asciz "_hmMenu_bar_psh.brlan"
	.balign 4

glabel lbl_801A0E20
	.asciz "_link_msg_in.brlan"
	.balign 4

glabel lbl_801A0E34
	.asciz "_link_msg_out.brlan"

glabel lbl_801A0E48
	.asciz "_cmn_msg_in.brlan"
	.balign 4

glabel lbl_801A0E5C
	.asciz "_cmn_msg_out.brlan"
	.balign 4

glabel lbl_801A0E70
	.asciz "_cntrl_up.brlan"

glabel lbl_801A0E80
	.asciz "_cntrl_wndw_opn.brlan"
	.balign 4

glabel lbl_801A0E98
	.asciz "_cntrl_dwn.brlan"
	.balign 4

glabel lbl_801A0EAC
	.asciz "_hmMenu_bar_out.brlan"
	.balign 4

glabel lbl_801A0EC4
	.asciz "_cmn_msg_rtrn.brlan"

glabel lbl_801A0ED8
	.asciz "_12btn_on.brlan"
	.4byte lbl_801A0DB0
	.4byte lbl_801A0DC4
	.4byte lbl_801A0DD8
	.4byte lbl_801A0DF0
	.4byte lbl_801A0E08
	.4byte lbl_801A0E20
	.4byte lbl_801A0E34
	.4byte lbl_801A0E48
	.4byte lbl_801A0E5C
	.4byte lbl_801A0E70
	.4byte lbl_801A0E80
	.4byte lbl_801A0E98
	.4byte lbl_801A0EAC
	.4byte lbl_801A0EC4
	.4byte lbl_801A0ED8

glabel lbl_801A0F24
	.asciz "ltrIcn_on"
	.balign 4

glabel lbl_801A0F30
	.asciz "optn_bar_psh"
	.balign 4

glabel lbl_801A0F40
	.asciz "close_bar_psh"
	.balign 4

glabel lbl_801A0F50
	.asciz "hmMenu_bar_in"
	.balign 4

glabel lbl_801A0F60
	.asciz "hmMenu_bar_psh"
	.balign 4

glabel lbl_801A0F70
	.asciz "link_msg_in"

glabel lbl_801A0F7C
	.asciz "link_msg_out"
	.balign 4

glabel lbl_801A0F8C
	.asciz "cmn_msg_in"
	.balign 4

glabel lbl_801A0F98
	.asciz "cmn_msg_out"

glabel lbl_801A0FA4
	.asciz "cntrl_up"
	.balign 4

glabel lbl_801A0FB0
	.asciz "cntrl_wndw_opn"
	.balign 4

glabel lbl_801A0FC0
	.asciz "cntrl_dwn"
	.balign 4

glabel lbl_801A0FCC
	.asciz "hmMenu_bar_out"
	.balign 4

glabel lbl_801A0FDC
	.asciz "cmn_msg_rtrn"
	.balign 4

glabel lbl_801A0FEC
	.asciz "12btn_on"
	.balign 4
	.4byte lbl_801A0F24
	.4byte lbl_801A0F30
	.4byte lbl_801A0F40
	.4byte lbl_801A0F50
	.4byte lbl_801A0F60
	.4byte lbl_801A0F70
	.4byte lbl_801A0F7C
	.4byte lbl_801A0F8C
	.4byte lbl_801A0F98
	.4byte lbl_801A0FA4
	.4byte lbl_801A0FB0
	.4byte lbl_801A0FC0
	.4byte lbl_801A0FCC
	.4byte lbl_801A0FDC
	.4byte lbl_801A0FEC

glabel lbl_801A1034
	.asciz "_hmMenu_strt.brlan"
	.balign 4

glabel lbl_801A1048
	.asciz "_hmMenu_fnsh.brlan"
	.balign 4

glabel lbl_801A105C
	.asciz "_optn_bar_in.brlan"
	.balign 4

glabel lbl_801A1070
	.asciz "_optn_bar_out.brlan"

glabel lbl_801A1084
	.asciz "_optn_btn_in.brlan"
	.balign 4

glabel lbl_801A1098
	.asciz "_optn_btn_psh.brlan"

glabel lbl_801A10AC
	.asciz "_vb_btn_wht_psh.brlan"
	.balign 4

glabel lbl_801A10C4
	.asciz "_optn_btn_out.brlan"

glabel lbl_801A10D8
	.asciz "_vb_btn_ylw_psh.brlan"
	.balign 4

glabel lbl_801A10F0
	.asciz "_sound_gry.brlan"
	.balign 4

glabel lbl_801A1104
	.asciz "_sound_ylw.brlan"
	.balign 4

glabel lbl_801A1118
	.asciz "_cmn_msg_btn_in.brlan"
	.balign 4

glabel lbl_801A1130
	.asciz "_cmn_msg_btn_out.brlan"
	.balign 4

glabel lbl_801A1148
	.asciz "_cmn_msg_btn_psh.brlan"
	.balign 4

glabel lbl_801A1160
	.asciz "_vb_btn_ylw_ylw.brlan"
	.balign 4

glabel lbl_801A1178
	.asciz "_btry_wink.brlan"
	.balign 8

glabel lbl_801A1190
	.asciz "_btry_gry.brlan"

glabel lbl_801A11A0
	.asciz "_btry_wht.brlan"

glabel lbl_801A11B0
	.asciz "_btry_wink_gry.brlan"
	.balign 4

glabel lbl_801A11C8
	.asciz "_close_bar_in.brlan"

glabel lbl_801A11DC
	.asciz "_close_bar_out.brlan"
	.balign 8

glabel lbl_801A11F8
	.asciz "_btry_red.brlan"
	.4byte lbl_801A1034
	.4byte lbl_801A1048
	.4byte lbl_801A105C
	.4byte lbl_801A1070
	.4byte lbl_801A1084
	.4byte lbl_801A1098
	.4byte lbl_801A10AC
	.4byte lbl_801A10C4
	.4byte lbl_801A10D8
	.4byte lbl_801A10F0
	.4byte lbl_801A1104
	.4byte lbl_801A1118
	.4byte lbl_801A1130
	.4byte lbl_801A1148
	.4byte lbl_801A1160
	.4byte lbl_801A1178
	.4byte lbl_801A1190
	.4byte lbl_801A11A0
	.4byte lbl_801A11B0
	.4byte lbl_801A11C8
	.4byte lbl_801A11DC
	.4byte lbl_801A11F8

glabel lbl_801A1260
	.asciz "hmMenu_strt"

glabel lbl_801A126C
	.asciz "hmMenu_fnsh"

glabel lbl_801A1278
	.asciz "hmMenuBck_strt"
	.balign 4

glabel lbl_801A1288
	.asciz "hmMenuBck_fnsh"
	.balign 4

glabel lbl_801A1298
	.asciz "optn_bar_in"

glabel lbl_801A12A4
	.asciz "optn_bar_out"
	.balign 4

glabel lbl_801A12B4
	.asciz "optnBtn_00_inOut"
	.balign 4

glabel lbl_801A12C8
	.asciz "optnBtn_01_inOut"
	.balign 4

glabel lbl_801A12DC
	.asciz "optnBtn_10_inOut"
	.balign 4

glabel lbl_801A12F0
	.asciz "optnBtn_11_inOut"
	.balign 4

glabel lbl_801A1304
	.asciz "optnBtn_20_inOut"
	.balign 4

glabel lbl_801A1318
	.asciz "optnBtn_00_psh"
	.balign 4

glabel lbl_801A1328
	.asciz "optnBtn_01_psh"
	.balign 4

glabel lbl_801A1338
	.asciz "optnBtn_10_psh"
	.balign 4

glabel lbl_801A1348
	.asciz "optnBtn_11_psh"
	.balign 4

glabel lbl_801A1358
	.asciz "optnBtn_20_psh"
	.balign 4

glabel lbl_801A1368
	.asciz "optnBtn_10_cntrl"
	.balign 8

glabel lbl_801A1380
	.asciz "msgBtn_00_inOut"

glabel lbl_801A1390
	.asciz "msgBtn_01_inOut"

glabel lbl_801A13A0
	.asciz "msgBtn_00_psh"
	.balign 4

glabel lbl_801A13B0
	.asciz "msgBtn_01_psh"
	.balign 4

glabel lbl_801A13C0
	.asciz "vol_00"
	.balign 4

glabel lbl_801A13C8
	.asciz "vol_01"
	.balign 4

glabel lbl_801A13D0
	.asciz "vol_02"
	.balign 4

glabel lbl_801A13D8
	.asciz "vol_03"
	.balign 4

glabel lbl_801A13E0
	.asciz "vol_04"
	.balign 4

glabel lbl_801A13E8
	.asciz "vol_05"
	.balign 4

glabel lbl_801A13F0
	.asciz "vol_06"
	.balign 4

glabel lbl_801A13F8
	.asciz "vol_07"
	.balign 4

glabel lbl_801A1400
	.asciz "vol_08"
	.balign 4

glabel lbl_801A1408
	.asciz "vol_09"
	.balign 4

glabel lbl_801A1410
	.asciz "plyr_00"

glabel lbl_801A1418
	.asciz "plyr_01"

glabel lbl_801A1420
	.asciz "plyr_02"

glabel lbl_801A1428
	.asciz "plyr_03"
	.4byte lbl_801A1260
	.4byte lbl_801A126C
	.4byte lbl_801A1278
	.4byte lbl_801A1288
	.4byte lbl_801A1298
	.4byte lbl_801A12A4
	.4byte lbl_801A12B4
	.4byte lbl_801A12C8
	.4byte lbl_801A12DC
	.4byte lbl_801A12F0
	.4byte lbl_801A1304
	.4byte lbl_801A1318
	.4byte lbl_801A1328
	.4byte lbl_801A1338
	.4byte lbl_801A1348
	.4byte lbl_801A1358
	.4byte lbl_801A1368
	.4byte lbl_801A1380
	.4byte lbl_801A1390
	.4byte lbl_801A13A0
	.4byte lbl_801A13B0
	.4byte lbl_801A13C0
	.4byte lbl_801A13C8
	.4byte lbl_801A13D0
	.4byte lbl_801A13D8
	.4byte lbl_801A13E0
	.4byte lbl_801A13E8
	.4byte lbl_801A13F0
	.4byte lbl_801A13F8
	.4byte lbl_801A1400
	.4byte lbl_801A1408
	.4byte lbl_801A1410
	.4byte lbl_801A1418
	.4byte lbl_801A1420
	.4byte lbl_801A1428

glabel lbl_801A14BC
	.asciz "let_icn_00"
	.balign 4

glabel lbl_801A14C8
	.asciz "N_plyr_00"
	.balign 4

glabel lbl_801A14D4
	.asciz "N_plyr_01"
	.balign 4

glabel lbl_801A14E0
	.asciz "N_plyr_02"
	.balign 4

glabel lbl_801A14EC
	.asciz "N_plyr_03"
	.balign 4
	.4byte lbl_801A14BC
	.4byte lbl_801A14C8
	.4byte lbl_801A14D4
	.4byte lbl_801A14E0
	.4byte lbl_801A14EC

glabel lbl_801A150C
	.asciz "B_btn_00"
	.balign 4

glabel lbl_801A1518
	.asciz "B_bar_10"
	.balign 4

glabel lbl_801A1524
	.asciz "B_optnBtn_00"
	.balign 4

glabel lbl_801A1534
	.asciz "B_optnBtn_01"
	.balign 4

glabel lbl_801A1544
	.asciz "B_optnBtn_10"
	.balign 4

glabel lbl_801A1554
	.asciz "B_optnBtn_11"
	.balign 4

glabel lbl_801A1564
	.asciz "B_optnBtn_20"
	.balign 4

glabel lbl_801A1574
	.asciz "B_BtnA"
	.balign 4

glabel lbl_801A157C
	.asciz "B_BtnB"
	.balign 4

glabel lbl_801A1584
	.asciz "cntrl_00"
	.balign 4

glabel lbl_801A1590
	# ROM: 0x19D690
	.4byte lbl_801A150C
	.4byte lbl_801A1518
	.4byte lbl_801A1524
	.4byte lbl_801A1534
	.4byte lbl_801A1544
	.4byte lbl_801A1554
	.4byte lbl_801A1564
	.4byte lbl_801A1574
	.4byte lbl_801A157C
	.4byte lbl_801A1584

glabel lbl_801A15B8
	.asciz "T_msg_00"
	.balign 4

glabel lbl_801A15C4
	.asciz "T_msg_01"
	.balign 4

glabel lbl_801A15D0
	.asciz "T_Dialog"
	.balign 4

glabel lbl_801A15DC
	# ROM: 0x19D6DC
	.4byte lbl_801A15B8
	.4byte lbl_801A15C4
	.4byte lbl_801A15D0

glabel lbl_801A15E8
	.asciz "btryPwr_00_0"
	.balign 4

glabel lbl_801A15F8
	.asciz "btryPwr_00_1"
	.balign 4

glabel lbl_801A1608
	.asciz "btryPwr_00_2"
	.balign 4

glabel lbl_801A1618
	.asciz "btryPwr_00_3"
	.balign 4

glabel lbl_801A1628
	.asciz "btryPwr_01_0"
	.balign 4

glabel lbl_801A1638
	.asciz "btryPwr_01_1"
	.balign 4

glabel lbl_801A1648
	.asciz "btryPwr_01_2"
	.balign 4

glabel lbl_801A1658
	.asciz "btryPwr_01_3"
	.balign 4

glabel lbl_801A1668
	.asciz "btryPwr_02_0"
	.balign 4

glabel lbl_801A1678
	.asciz "btryPwr_02_1"
	.balign 4

glabel lbl_801A1688
	.asciz "btryPwr_02_2"
	.balign 4

glabel lbl_801A1698
	.asciz "btryPwr_02_3"
	.balign 4

glabel lbl_801A16A8
	.asciz "btryPwr_03_0"
	.balign 4

glabel lbl_801A16B8
	.asciz "btryPwr_03_1"
	.balign 4

glabel lbl_801A16C8
	.asciz "btryPwr_03_2"
	.balign 4

glabel lbl_801A16D8
	.asciz "btryPwr_03_3"
	.balign 4

glabel lbl_801A16E8
	# ROM: 0x19D7E8
	.4byte lbl_801A15E8
	.4byte lbl_801A15F8
	.4byte lbl_801A1608
	.4byte lbl_801A1618
	.4byte lbl_801A1628
	.4byte lbl_801A1638
	.4byte lbl_801A1648
	.4byte lbl_801A1658
	.4byte lbl_801A1668
	.4byte lbl_801A1678
	.4byte lbl_801A1688
	.4byte lbl_801A1698
	.4byte lbl_801A16A8
	.4byte lbl_801A16B8
	.4byte lbl_801A16C8
	.4byte lbl_801A16D8
	.asciz "NW4HBM:Failed assertion mpResAccessor"
	.balign 4
	.4byte 0x61726300
	.asciz "NW4HBM:Failed assertion mpCursorLayout[i]"
	.balign 4
	.asciz "back_01"
	.asciz "NW4HBM:Pointer must not be NULL (lpaRes)"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpAnmController[i]"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpGroupAnmController[i]"
	.asciz "NW4HBM:Failed assertion mpPairGroupAnmController[i]"
	.asciz "NW4HBM:Failed assertion mpHomeButtonEventHandler"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpPaneManager"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpLayoutName"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpAnmName"
	.balign 8
	.asciz "back_00"
	.asciz "back_02"

glabel lbl_801A1900
	# ROM: 0x19DA00
	.4byte lbl_8010B3F4
	.4byte lbl_8010B5BC
	.4byte lbl_8010B874
	.4byte lbl_8010B928
	.4byte lbl_8010BA20
	.4byte lbl_8010BB3C
	.4byte lbl_8010BB3C
	.4byte lbl_8010BD2C
	.4byte lbl_8010BE40
	.4byte lbl_8010BFF8
	.4byte lbl_8010C04C
	.4byte lbl_8010C198
	.4byte lbl_8010C1DC
	.4byte lbl_8010C214
	.4byte lbl_8010C314
	.4byte lbl_8010C4A0
	.4byte lbl_8010C52C
	.4byte lbl_8010C660
	.4byte lbl_8010C7A4
	.4byte lbl_8010C7B0

glabel lbl_801A1950
	# ROM: 0x19DA50
	.4byte lbl_8010ECE8
	.4byte lbl_8010EDF8
	.4byte lbl_8010F430
	.4byte lbl_8010F550
	.4byte lbl_8010F670
	.4byte lbl_8010F790
	.4byte lbl_8010F8B0
	.4byte lbl_8010F9D0
	.4byte lbl_8010FAF0
	.4byte lbl_8010EDF8

glabel lbl_801A1978
	# ROM: 0x19DA78
	.4byte lbl_8010FE38
	.4byte lbl_8010FEAC
	.4byte lbl_801103D4
	.4byte lbl_8011045C
	.4byte lbl_801104E4
	.4byte lbl_8011056C
	.4byte lbl_801105F4
	.4byte lbl_8011067C
	.4byte lbl_80110704
	.4byte lbl_8010FEAC

glabel lbl_801A19A0
	# ROM: 0x19DAA0
	.4byte lbl_80110ADC
	.4byte lbl_80110BC0
	.4byte lbl_80110DB8
	.4byte lbl_8011117C
	.4byte lbl_80111540
	.4byte lbl_80111810
	.4byte lbl_80111A38
	.4byte lbl_80111C98
	.4byte lbl_80111E48
	.4byte lbl_80110BC0
	.asciz "NW4HBM:Failed assertion mpSoundArchivePlayer"
	.balign 4
	.asciz "NW4HBM:Failed assertion result"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpSoundHandle"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpSoundHeap"
	.asciz "NW4HBM:Failed assertion mpSoundHeap->IsValid()"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpDvdSoundArchive"
	.balign 4
	.asciz "Cannot open \"%s\""
	.balign 4
	.asciz "NW4HBM:Failed assertion mpNandSoundArchive"
	.balign 4

glabel lbl_801A1B00
	# ROM: 0x19DC00
	.4byte 0
	.4byte 0
	.4byte onEvent__Q210homebutton22HomeButtonEventHandlerFUlUlPv
	.4byte lbl_8010A6B8
	.4byte 0
	.4byte 0
	.4byte onEvent__Q310homebutton3gui12EventHandlerFUlUlPv
	.4byte lbl_8010A6B8
	.4byte 0
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui9InterfaceFv
	.4byte calc__Q310homebutton3gui9InterfaceFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui9InterfaceFv
	.4byte lbl_8010A678
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A1B70
	# ROM: 0x19DC70
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A1B94
	# ROM: 0x19DC94
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A1BA0
	# ROM: 0x19DCA0
	.4byte 0
	.4byte 0
	.4byte __dt__Q210homebutton18GroupAnmControllerFv
	.4byte calc__Q210homebutton15FrameControllerFv

glabel lbl_801A1BB0
	# ROM: 0x19DCB0
	.4byte 0
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui9ComponentFv
	.4byte calc__Q310homebutton3gui9InterfaceFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui13PaneComponentFv
	.4byte __dt__Q310homebutton3gui13PaneComponentFv
	.4byte getID__Q310homebutton3gui9ComponentFv
	.4byte isPointed__Q310homebutton3gui9ComponentFi
	.4byte setPointed__Q310homebutton3gui9ComponentFib
	.4byte onPoint__Q310homebutton3gui9ComponentFv
	.4byte offPoint__Q310homebutton3gui9ComponentFv
	.4byte onDrag__Q310homebutton3gui9ComponentFff
	.4byte onMove__Q310homebutton3gui9ComponentFff
	.4byte onTrig__Q310homebutton3gui9ComponentFUlR3Vec
	.4byte setDraggingButton__Q310homebutton3gui9ComponentFUl
	.4byte update__Q310homebutton3gui9ComponentFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui9ComponentFiffUlUlUlPv
	.4byte isTriggerTarger__Q310homebutton3gui9ComponentFv
	.4byte lbl_8010A6C0
	.4byte setManager__Q310homebutton3gui9ComponentFPQ310homebutton3gui7Manager
	.4byte isVisible__Q310homebutton3gui13PaneComponentFv
	.4byte contain__Q310homebutton3gui13PaneComponentFff
	.4byte setPane__Q310homebutton3gui13PaneComponentFPQ36nw4hbm3lyt4Pane
	.4byte getPane__Q310homebutton3gui13PaneComponentFv

glabel lbl_801A1C18
	# ROM: 0x19DD18
	.4byte 0
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui7ManagerFv
	.4byte calc__Q310homebutton3gui7ManagerFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui7ManagerFv
	.4byte __dt__Q310homebutton3gui11PaneManagerFv
	.4byte addComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component
	.4byte getComponent__Q310homebutton3gui7ManagerFUl
	.4byte update__Q310homebutton3gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q310homebutton3gui7ManagerFUlUlPv
	.4byte setAllComponentTriggerTarget__Q310homebutton3gui7ManagerFb
	.4byte setEventHandler__Q310homebutton3gui7ManagerFPQ310homebutton3gui12EventHandler
	.4byte createLayoutScene__Q310homebutton3gui11PaneManagerFRCQ36nw4hbm3lyt6Layout
	.4byte getPaneComponentByPane__Q310homebutton3gui11PaneManagerFPQ36nw4hbm3lyt4Pane
	.4byte getDrawInfo__Q310homebutton3gui11PaneManagerFv
	.4byte lbl_8010A6C8
	.4byte setAllBoundingBoxComponentTriggerTarget__Q310homebutton3gui11PaneManagerFb
	.4byte walkInChildren__Q310homebutton3gui11PaneManagerFRQ36nw4hbm2ut30LinkList

glabel lbl_801A1C6C
	# ROM: 0x19DD6C
	.4byte 0
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui7ManagerFv
	.4byte calc__Q310homebutton3gui7ManagerFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui7ManagerFv
	.4byte __dt__Q310homebutton3gui7ManagerFv
	.4byte addComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component
	.4byte getComponent__Q310homebutton3gui7ManagerFUl
	.4byte update__Q310homebutton3gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q310homebutton3gui7ManagerFUlUlPv
	.4byte setAllComponentTriggerTarget__Q310homebutton3gui7ManagerFb
	.4byte setEventHandler__Q310homebutton3gui7ManagerFPQ310homebutton3gui12EventHandler

glabel lbl_801A1CA8
	# ROM: 0x19DDA8
	.4byte 0
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui9ComponentFv
	.4byte calc__Q310homebutton3gui9InterfaceFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui9InterfaceFv
	.4byte __dt__Q310homebutton3gui9ComponentFv
	.4byte getID__Q310homebutton3gui9ComponentFv
	.4byte isPointed__Q310homebutton3gui9ComponentFi
	.4byte setPointed__Q310homebutton3gui9ComponentFib
	.4byte onPoint__Q310homebutton3gui9ComponentFv
	.4byte offPoint__Q310homebutton3gui9ComponentFv
	.4byte onDrag__Q310homebutton3gui9ComponentFff
	.4byte onMove__Q310homebutton3gui9ComponentFff
	.4byte onTrig__Q310homebutton3gui9ComponentFUlR3Vec
	.4byte setDraggingButton__Q310homebutton3gui9ComponentFUl
	.4byte update__Q310homebutton3gui9ComponentFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui9ComponentFiffUlUlUlPv
	.4byte isTriggerTarger__Q310homebutton3gui9ComponentFv
	.4byte lbl_8010A6C0
	.4byte setManager__Q310homebutton3gui9ComponentFPQ310homebutton3gui7Manager
	.4byte isVisible__Q310homebutton3gui9ComponentFv
	.4byte 0
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (list)"
	.balign 4
	.asciz "list.h"
	.balign 4

glabel lbl_801A1D68
	# ROM: 0x19DE68
	.4byte 0
	.4byte 0
	.4byte __dt__Q210homebutton9RemoteSpkFv
	.4byte 0

glabel lbl_801A1D78
	# ROM: 0x19DE78
	.asciz "-------------------------------- TRACE\n"
	.asciz "Address:   BackChain   LR save\n"
	.asciz "%08X:  %08X    %08X "
	.balign 4
	.asciz "%s\n"
	.asciz "\n"
	.balign 4
	.asciz "%s:%d Panic:"
	.balign 4

glabel lbl_801A1DF0
	# ROM: 0x19DEF0
	.asciz "console.h"
	.balign 4

glabel lbl_801A1DFC
	# ROM: 0x19DEFC
	.asciz "Pointer must not be NULL (console)"
	.balign 4
	.asciz "%s:%d Warning:"
	.balign 4

glabel lbl_801A1E30
	# ROM: 0x19DF30
	.asciz "db_console.cpp"
	.balign 4

glabel lbl_801A1E40
	# ROM: 0x19DF40
	.asciz "NW4HBM:Pointer must not be NULL (console)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (pConsole)"
	.balign 4
	.asciz "illegal console handle"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nbuffer must be aligned to 4 bytes boundary."
	.balign 4
	.asciz "%s\n"
	.asciz "NW4HBM:Pointer must not be NULL (str)"
	.balign 4
	.asciz "%s"
	.balign 4

glabel lbl_801A1F58
	# ROM: 0x19E058
	.asciz "db_directPrint.cpp"
	.balign 4

glabel lbl_801A1F6C
	# ROM: 0x19E06C
	.asciz "NW4HBM:Failed assertion sFrameBufferInfo.frameMemory != NULL"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (str)"
	.balign 4
	.asciz "NW4HBM:Failed assertion width > 0"
	.balign 4

glabel lbl_801A1FF8
	# ROM: 0x19E0F8
	.4byte 0
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x0000000F

glabel lbl_801A2008
	# ROM: 0x19E108
	.4byte 0xFFFFFFFF

glabel lbl_801A200C
	# ROM: 0x19E10C
	.asciz "db_mapFile.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (mapDataBuf)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (pMapFile)"
	.balign 4
	.asciz "NW4HBM:Failed assertion sMapFileList->moduleInfo != NULL"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (filePath)"
	.balign 4
	.asciz "NW4HBM:Failed assertion pMapFile->fileEntry >= 0"
	.balign 4

glabel lbl_801A2140
	# ROM: 0x19E240
	.asciz "NW4HBM:Pointer must not be NULL (GetCharPtr_)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (str)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (buf)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (strBuf)"
	.balign 4
	.asciz "NW4HBM:Failed assertion strBufSize > 0"
	.balign 8

glabel lbl_801A2218
	# ROM: 0x19E318
	.asciz "lyt_animation.cpp"
	.balign 4
	.asciz "NW4HBM:Failed assertion mpFileResAry == 0"
	.balign 4
	.asciz "NW4HBM:Failed assertion mAnimLinkAry == 0"
	.balign 4
	.asciz "NW4HBM:Failed assertion pAnimTarget->target < ANIMTARGET_PANE_MAX"
	.balign 4
	.asciz "NW4HBM:Failed assertion pAnimTarget->curveType == ANIMCURVE_HERMITE"
	.asciz "NW4HBM:Failed assertion pAnimTarget->curveType == ANIMCURVE_STEP"
	.balign 4
	.asciz "NW4HBM:Failed assertion pAnimTarget->target < ANIMTARGET_PANE_COLOR_MAX"
	.asciz "NW4HBM:Failed assertion pAnimTarget->target < ANIMTARGET_MATCOLOR_MAX"
	.balign 4
	.asciz "NW4HBM:Failed assertion pAnimTarget->id < TexMtxMax"
	.asciz "NW4HBM:Failed assertion pAnimTarget->target < ANIMTARGET_TEXSRT_MAX"
	.asciz "NW4HBM:Failed assertion pAnimTarget->id < GX_MAX_TEXMAP"
	.asciz "NW4HBM:Failed assertion pAnimTarget->id < IndTexMtxMax"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (pAnimList)"
	.asciz "NW4HBM:Pointer must not be NULL (pAnimTrans)"
	.balign 8

glabel lbl_801A2528
	# ROM: 0x19E628
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt18AnimTransformBasicFv
	.4byte SetResource__Q36nw4hbm3lyt18AnimTransformBasicFPCQ46nw4hbm3lyt3res14AnimationBlockPQ36nw4hbm3lyt16ResourceAccessor
	.4byte Bind__Q36nw4hbm3lyt18AnimTransformBasicFPQ36nw4hbm3lyt4Paneb
	.4byte Bind__Q36nw4hbm3lyt18AnimTransformBasicFPQ36nw4hbm3lyt8Material
	.4byte Animate__Q36nw4hbm3lyt18AnimTransformBasicFUlPQ36nw4hbm3lyt4Pane
	.4byte Animate__Q36nw4hbm3lyt18AnimTransformBasicFUlPQ36nw4hbm3lyt8Material
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt13AnimTransformFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801A2568
	# ROM: 0x19E668
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A258C
	# ROM: 0x19E68C
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A2598
	# ROM: 0x19E698
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A25BC
	# ROM: 0x19E6BC
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion idx < ANIMTARGET_PANE_MAX"
	.balign 4
	.asciz "pane.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion texSRTIdx < mGXMemNum.texSRT"
	.balign 4
	.asciz "material.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion texSRTIdx < mGXMemNum.indSRT"
	.balign 4
	.asciz "material.h"
	.balign 8

glabel lbl_801A2690
	# ROM: 0x19E790
	.asciz "."
	.balign 4
	.asciz "lyt_arcResourceAccessor.cpp"
	.asciz "NW4HBM:Failed assertion bSuccess"
	.balign 4
	.asciz ".."
	.balign 4
	.asciz "NW4HBM:Failed assertion std::strlen(name) < FONTNAMEBUF_MAX"
	.asciz "NW4HBM:Failed assertion ! IsAttached()"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (archiveStart)"
	.balign 8
	.asciz "NW4HBM:Pointer must not be NULL (resourceRootDirectory)"
	.asciz "NW4HBM:Failed assertion IsAttached()"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (pLink)"

glabel lbl_801A27F8
	# ROM: 0x19E8F8
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt24MultiArcResourceAccessorFv
	.4byte GetResource__Q36nw4hbm3lyt24MultiArcResourceAccessorFUlPCcPUl
	.4byte GetFont__Q36nw4hbm3lyt24MultiArcResourceAccessorFPCc

glabel lbl_801A280C
	# ROM: 0x19E90C
	.4byte 0
	.4byte 0
	.4byte lbl_80109B14
	.4byte GetResource__Q36nw4hbm3lyt19ArcResourceAccessorFUlPCcPUl
	.4byte GetFont__Q36nw4hbm3lyt19ArcResourceAccessorFPCc
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A28E0
	# ROM: 0x19E9E0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A2904
	# ROM: 0x19EA04
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A2910
	# ROM: 0x19EA10
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt8BoundingFv
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt8BoundingCFv
	.4byte CalculateMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Draw__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte DrawSelf__Q36nw4hbm3lyt8BoundingFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Animate__Q36nw4hbm3lyt4PaneFUl
	.4byte AnimateSelf__Q36nw4hbm3lyt4PaneFUl
	.4byte GetVtxColor__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetVtxColor__Q36nw4hbm3lyt4PaneFUlQ36nw4hbm2ut5Color
	.4byte GetColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetVtxColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte FindPaneByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte BindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte FindAnimationLink__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformbb
	.4byte GetMaterial__Q36nw4hbm3lyt4PaneCFv
	.4byte LoadMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte 0

glabel lbl_801A2978
	# ROM: 0x19EA78
	.asciz "lyt_common.cpp"
	.balign 4

glabel lbl_801A2988
	# ROM: 0x19EA88
	.asciz "NW4HBM:Failed assertion num <= GX_MAX_TEXMAP"
	.balign 4

glabel lbl_801A29B8
	# ROM: 0x19EAB8
	.asciz "NW4HBM:Failed assertion texCoordNum <= mCap"
	.balign 8

glabel lbl_801A29E8
	# ROM: 0x19EAE8
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt8DrawInfoFv
	.4byte 0

glabel lbl_801A29F8
	# ROM: 0x19EAF8
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt5GroupFv

glabel lbl_801A2A04
	# ROM: 0x19EB04
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A2A28
	# ROM: 0x19EB28
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A2A34
	# ROM: 0x19EB34
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A2A58
	# ROM: 0x19EB58
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A2A64
	# ROM: 0x19EB64
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A2A88
	# ROM: 0x19EB88
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 8

glabel lbl_801A2AF8
	# ROM: 0x19EBF8
	.asciz "lyt_layout.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (mspAllocator)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (lytResBuf)"
	.asciz "Version check faild ('%d.%d' must be '%d.%d')."
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (pLastPane)"
	.asciz "can't alloc memory."
	.asciz "NW4HBM:Pointer must not be NULL (anmResBuf)"
	.asciz "NW4HBM:Failed assertion ret == 0"
	.balign 4

glabel lbl_801A2C24
	# ROM: 0x19ED24
	.asciz "unknown data type"
	.balign 4

glabel lbl_801A2C38
	# ROM: 0x19ED38
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt6LayoutFv
	.4byte Build__Q36nw4hbm3lyt6LayoutFPCvPQ36nw4hbm3lyt16ResourceAccessor
	.4byte CreateAnimTransform__Q36nw4hbm3lyt6LayoutFPCvPQ36nw4hbm3lyt16ResourceAccessor
	.4byte lbl_8011B2B8
	.4byte lbl_8011B2DC
	.4byte lbl_8011B300
	.4byte lbl_8011B314
	.4byte lbl_8011B338
	.4byte lbl_8011B358
	.4byte lbl_8011B378
	.4byte SetTagProcessor__Q36nw4hbm3lyt6LayoutFPQ36nw4hbm2ut19TagProcessorBase
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 8

glabel lbl_801A2D60
	# ROM: 0x19EE60
	.asciz "lyt_material.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (resBlockSet.pTextureList)"
	.balign 4
	.asciz "NW4HBM:Failed assertion pResTexMap[i].texIdx < resBlockSet.pTextureList->texNum"
	.asciz "NW4HBM:Failed assertion texSRTNum <= mGXMemNum.texSRT"
	.balign 4
	.asciz "NW4HBM:Failed assertion IsChanCtrlCap()"
	.asciz "NW4HBM:Failed assertion IsMatColorCap()"
	.asciz "NW4HBM:Failed assertion IsTevSwapCap()"
	.balign 4
	.asciz "NW4HBM:Failed assertion indTexSRTNum <= mGXMemNum.indSRT"
	.balign 4
	.asciz "NW4HBM:Failed assertion IsAlphaCompareCap()"
	.asciz "NW4HBM:Failed assertion IsBlendModeCap()"
	.balign 4
	.asciz "NW4HBM:Failed assertion texMapNum <= GX_MAX_TEXMAP"
	.balign 4
	.asciz "NW4HBM:Failed assertion texSRTNum <= TexMtxMax"
	.balign 4
	.asciz "NW4HBM:Failed assertion texCoordGenNum <= GX_MAX_TEXCOORD"
	.balign 4
	.asciz "NW4HBM:Failed assertion tevStageNum <= GX_MAX_TEVSTAGE"
	.balign 4
	.asciz "NW4HBM:Failed assertion indStageNum <= GX_MAX_INDTEXSTAGE"
	.balign 4
	.asciz "NW4HBM:Failed assertion indSRTNum <= IndTexMtxMax"
	.balign 8
	.asciz "NW4HBM:Failed assertion num <= mGXMemCap.texMap"
	.asciz "NW4HBM:Pointer must not be NULL (mpGXMem)"
	.balign 4
	.asciz "NW4HBM:Failed assertion num <= mGXMemCap.texCoordGen"
	.balign 4
	.asciz "NW4HBM:Failed assertion num <= mGXMemCap.tevStage"
	.balign 4
	.asciz "NW4HBM:Failed assertion num <= mGXMemCap.indStage"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (pTexObj)"
	.balign 4

glabel lbl_801A31B8
	# ROM: 0x19F2B8
	.asciz "NW4HBM:Failed assertion texMapIdx < mGXMemNum.texMap"
	.balign 4
	.4byte 0x0000001F
	.4byte 0x0000001B
	.4byte 0x00000017
	.4byte 0x00000013
	.4byte 0x0000001E
	.4byte 0x0000001A
	.4byte 0x00000016
	.4byte 0x00000012
	.4byte 0x0000001F
	.4byte 0x0000001B
	.4byte 0x00000017
	.4byte 0x00000013
	.4byte 0x0000001E
	.4byte 0x0000001A
	.4byte 0x00000016
	.4byte 0x00000012
	.asciz "NW4HBM:Failed assertion texCoordGens[i].GetTexGenType() != GX_TG_MTX3x4"
	.asciz "NW4HBM:Failed assertion texMtx == GX_IDENTITY || GetTexMtxIdx(texMtx) < mGXMemNum.texSRT"
	.balign 8

glabel lbl_801A32D8
	# ROM: 0x19F3D8
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt8MaterialFv
	.4byte SetupGX__Q36nw4hbm3lyt8MaterialFbUc
	.4byte BindAnimation__Q36nw4hbm3lyt8MaterialFPQ36nw4hbm3lyt13AnimTransform
	.4byte UnbindAnimation__Q36nw4hbm3lyt8MaterialFPQ36nw4hbm3lyt13AnimTransform
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt8MaterialFv
	.4byte Animate__Q36nw4hbm3lyt8MaterialFv
	.4byte FindAnimationLink__Q36nw4hbm3lyt8MaterialFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt8MaterialFPQ36nw4hbm3lyt13AnimTransformb

glabel lbl_801A3300
	# ROM: 0x19F400
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A3324
	# ROM: 0x19F424
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A3360
	# ROM: 0x19F460
	.asciz "lyt_pane.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (pChild)"
	.balign 4
	.asciz "NW4HBM:Failed assertion pChild->mpParent == 0"
	.balign 8
	.asciz "NW4HBM:Pointer must not be NULL (pNext)"
	.asciz "NW4HBM:Failed assertion pNext->mpParent == this"
	.asciz "NW4HBM:Failed assertion pChild->mpParent == this"
	.balign 8

glabel lbl_801A3460
	# ROM: 0x19F560
	.asciz "NW4HBM:Failed assertion idx < ANIMTARGET_PANE_COLOR_MAX"

glabel lbl_801A3498
	# ROM: 0x19F598
	.asciz "NW4HBM:Pointer must not be NULL (pAnimTrans)"
	.balign 4

glabel lbl_801A34C8
	# ROM: 0x19F5C8
	.asciz "NW4HBM:Pointer must not be NULL (pAnimationLink)"
	.balign 4

glabel lbl_801A34FC
	# ROM: 0x19F5FC
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt4PaneFv
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt4PaneCFv
	.4byte CalculateMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Draw__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte DrawSelf__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Animate__Q36nw4hbm3lyt4PaneFUl
	.4byte AnimateSelf__Q36nw4hbm3lyt4PaneFUl
	.4byte GetVtxColor__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetVtxColor__Q36nw4hbm3lyt4PaneFUlQ36nw4hbm2ut5Color
	.4byte GetColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetVtxColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte FindPaneByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte BindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte FindAnimationLink__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformbb
	.4byte GetMaterial__Q36nw4hbm3lyt4PaneCFv
	.4byte LoadMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3lyt6detail8PaneBaseFv
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A35FC
	# ROM: 0x19F6FC
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A3620
	# ROM: 0x19F720
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 8

glabel lbl_801A36F0
	# ROM: 0x19F7F0
	.asciz "lyt_picture.cpp"

glabel lbl_801A3700
	# ROM: 0x19F800
	.asciz "NW4HBM:Pointer must not be NULL (resBlockSet.pMaterialList)"

glabel lbl_801A373C
	# ROM: 0x19F83C
	.asciz "mpMaterial->GetTextureNum(%d) is large. mpMaterial->GetTextureCap(%d), mpMaterial->GetTexCoordGenCap(%d)\n"
	.balign 4

glabel lbl_801A37A8
	# ROM: 0x19F8A8
	.asciz "NW4HBM:Failed assertion idx < VERTEXCOLOR_MAX"
	.balign 4

glabel lbl_801A37D8
	# ROM: 0x19F8D8
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt7PictureFv
	.4byte lbl_80120AE0
	.4byte CalculateMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Draw__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte DrawSelf__Q36nw4hbm3lyt7PictureFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Animate__Q36nw4hbm3lyt4PaneFUl
	.4byte AnimateSelf__Q36nw4hbm3lyt4PaneFUl
	.4byte GetVtxColor__Q36nw4hbm3lyt7PictureCFUl
	.4byte SetVtxColor__Q36nw4hbm3lyt7PictureFUlQ36nw4hbm2ut5Color
	.4byte GetColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q36nw4hbm3lyt7PictureCFUl
	.4byte SetVtxColorElement__Q36nw4hbm3lyt7PictureFUlUc
	.4byte FindPaneByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte BindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte FindAnimationLink__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformbb
	.4byte GetMaterial__Q36nw4hbm3lyt4PaneCFv
	.4byte LoadMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Append__Q36nw4hbm3lyt7PictureFP10TPLPalette
	.4byte Append__Q36nw4hbm3lyt7PictureFRC9_GXTexObj

glabel lbl_801A3844
	# ROM: 0x19F944
	.asciz "NW4HBM:Failed assertion idx < ANIMTARGET_VERTEXCOLOR_MAX"
	.balign 4

glabel lbl_801A3880
	# ROM: 0x19F980
	.asciz "common.h"
	.balign 4

glabel lbl_801A388C
	# ROM: 0x19F98C
	.asciz "NW4HBM:Failed assertion idx < ANIMTARGET_VERTEXCOLOR_MAX"
	.balign 4

glabel lbl_801A38C8
	# ROM: 0x19F9C8
	.asciz "common.h"
	.balign 4

glabel lbl_801A38D4
	# ROM: 0x19F9D4
	.asciz "NW4HBM:Failed assertion idx < mGXMemNum.texCoordGen"

glabel lbl_801A3908
	# ROM: 0x19FA08
	.asciz "material.h"
	.balign 8

glabel lbl_801A3918
	# ROM: 0x19FA18
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt16ResourceAccessorFv
	.4byte 0
	.4byte lbl_80120B50
	.4byte 0

glabel lbl_801A3930
	# ROM: 0x19FA30
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF16__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0

glabel lbl_801A3940
	# ROM: 0x19FA40
	.asciz "lyt_textBox.cpp"

glabel lbl_801A3950
	# ROM: 0x19FA50
	.asciz "NW4HBM:Pointer must not be NULL (mpFont)"
	.balign 8
	.asciz "NW4HBM:Pointer must not be NULL (resBlockSet.pFontList)"
	.asciz "NW4HBM:Failed assertion pBlock->fontIdx < resBlockSet.pFontList->fontNum"
	.balign 4
	.asciz "Fail to load ResFont."
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (resBlockSet.pMaterialList)"

glabel lbl_801A3A58
	# ROM: 0x19FB58
	.asciz "NW4HBM:Failed assertion idx < VERTEXCOLOR_MAX"
	.balign 4

glabel lbl_801A3A88
	# ROM: 0x19FB88
	.asciz "NW4HBM:Failed assertion idx < ANIMTARGET_VERTEXCOLOR_MAX"
	.balign 4
	.asciz "NW4HBM:Pointer Error\npTextWriter(=%p) is not valid pointer."
	.asciz "NW4HBM:Pointer Error\nstr(=%p) is not valid pointer."
	.balign 8
	.asciz "length is out of bounds(%d)\n%d <= length not satisfied."
	.balign 4
	.byte 0
	.asciz "\n"
	.balign 4
	.asciz "NW4HBM:Pointer Error\npRect(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nfont(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\ncontext.str(=%p) is not valid pointer."
	.asciz "NW4HBM:Failed assertion mTextBufBytes >= sizeof(wchar_t)"
	.balign 4
	.asciz "mTextBuf is NULL.\n"
	.balign 4
	.asciz "dstIdx is out of range.\n"
	.balign 4
	.asciz "%d character(s) droped.\n"
	.balign 4

glabel lbl_801A3CA8
	# ROM: 0x19FDA8
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt7TextBoxFv
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt7TextBoxCFv
	.4byte CalculateMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Draw__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte DrawSelf__Q36nw4hbm3lyt7TextBoxFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Animate__Q36nw4hbm3lyt4PaneFUl
	.4byte AnimateSelf__Q36nw4hbm3lyt4PaneFUl
	.4byte GetVtxColor__Q36nw4hbm3lyt7TextBoxCFUl
	.4byte SetVtxColor__Q36nw4hbm3lyt7TextBoxFUlQ36nw4hbm2ut5Color
	.4byte GetColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q36nw4hbm3lyt7TextBoxCFUl
	.4byte SetVtxColorElement__Q36nw4hbm3lyt7TextBoxFUlUc
	.4byte FindPaneByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte BindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte FindAnimationLink__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformbb
	.4byte GetMaterial__Q36nw4hbm3lyt4PaneCFv
	.4byte LoadMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte AllocStringBuffer__Q36nw4hbm3lyt7TextBoxFUs
	.4byte FreeStringBuffer__Q36nw4hbm3lyt7TextBoxFv
	.4byte SetString__Q36nw4hbm3lyt7TextBoxFPCwUs
	.4byte SetString__Q36nw4hbm3lyt7TextBoxFPCwUsUs

glabel lbl_801A3D1C
	# ROM: 0x19FE1C
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4

glabel lbl_801A3D54
	# ROM: 0x19FE54
	.asciz "Font.h"
	.balign 4

glabel lbl_801A3D5C
	# ROM: 0x19FE5C
	.asciz "NW4HBM:Failed assertion mReadFunc == ReadNextCharUTF16"
	.balign 4

glabel lbl_801A3D94
	# ROM: 0x19FE94
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801A3DA8
	# ROM: 0x19FEA8
	.asciz "NW4HBM:Pointer Error\nstream(=%p) is not valid pointer."
	.balign 4

glabel lbl_801A3DE0
	# ROM: 0x19FEE0
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801A3DF4
	# ROM: 0x19FEF4
	.asciz "NW4HBM:Alignment Error(0x%x)\nstream must be aligned to 2 bytes boundary."
	.balign 4

glabel lbl_801A3E40
	# ROM: 0x19FF40
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801A3E54
	# ROM: 0x19FF54
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4

glabel lbl_801A3E8C
	# ROM: 0x19FF8C
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801A3EA0
	# ROM: 0x19FFA0
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4

glabel lbl_801A3ED8
	# ROM: 0x19FFD8
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801A3EEC
	# ROM: 0x19FFEC
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4

glabel lbl_801A3F24
	# ROM: 0x1A0024
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801A3F38
	# ROM: 0x1A0038
	.asciz "NW4HBM:Failed assertion type < TEXTCOLOR_MAX"
	.balign 4

glabel lbl_801A3F68
	# ROM: 0x1A0068
	.asciz "textBox.h"
	.balign 4

glabel lbl_801A3F74
	# ROM: 0x1A0074
	.asciz "NW4HBM:Failed assertion type < TEXTCOLOR_MAX"
	.balign 4

glabel lbl_801A3FA4
	# ROM: 0x1A00A4
	.asciz "textBox.h"
	.balign 4

glabel lbl_801A3FB0
	# ROM: 0x1A00B0
	.4byte 0x00000100
	.4byte 0x00010101
	.4byte 0x00010100
	.4byte 0x00000101
	.4byte 0x00010001
	.4byte 0x00010101
	.4byte 0x00000100
	.4byte 0x00010001
	.4byte 0x00000101
	.4byte 0x01000100
	.4byte 0x01010001
	.4byte 0x01000000
	.4byte 0x00010100
	.4byte 0x01010000
	.4byte 0x00010100

glabel lbl_801A3FEC
	# ROM: 0x1A00EC
	.asciz "lyt_window.cpp"
	.balign 4

glabel lbl_801A3FFC
	# ROM: 0x1A00FC
	.asciz "NW4HBM:Pointer must not be NULL (resBlockSet.pMaterialList)"

glabel lbl_801A4038
	# ROM: 0x1A0138
	.asciz "NW4HBM:Failed assertion idx < VERTEXCOLOR_MAX"
	.balign 4
	.asciz "NW4HBM:Failed assertion textureFlip < TEXTUREFLIP_MAX"
	.balign 4

glabel lbl_801A40A0
	# ROM: 0x1A01A0
	.asciz "NW4HBM:Failed assertion frameIdx < WINDOWFRAME_MAX"
	.balign 4

glabel lbl_801A40D4
	# ROM: 0x1A01D4
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt6WindowFv
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt6WindowCFv
	.4byte CalculateMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Draw__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte DrawSelf__Q36nw4hbm3lyt6WindowFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Animate__Q36nw4hbm3lyt4PaneFUl
	.4byte AnimateSelf__Q36nw4hbm3lyt6WindowFUl
	.4byte GetVtxColor__Q36nw4hbm3lyt6WindowCFUl
	.4byte SetVtxColor__Q36nw4hbm3lyt6WindowFUlQ36nw4hbm2ut5Color
	.4byte GetColorElement__Q36nw4hbm3lyt4PaneCFUl
	.4byte SetColorElement__Q36nw4hbm3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q36nw4hbm3lyt6WindowCFUl
	.4byte SetVtxColorElement__Q36nw4hbm3lyt6WindowFUlUc
	.4byte FindPaneByName__Q36nw4hbm3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q36nw4hbm3lyt6WindowFPCcb
	.4byte BindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAnimation__Q36nw4hbm3lyt4PaneFPQ36nw4hbm3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q36nw4hbm3lyt6WindowFPQ36nw4hbm3lyt13AnimTransform
	.4byte FindAnimationLink__Q36nw4hbm3lyt6WindowFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt6WindowFPQ36nw4hbm3lyt13AnimTransformbb
	.4byte GetMaterial__Q36nw4hbm3lyt4PaneCFv
	.4byte LoadMtx__Q36nw4hbm3lyt4PaneFRCQ36nw4hbm3lyt8DrawInfo
	.4byte GetContentMaterial__Q36nw4hbm3lyt6WindowCFv
	.4byte GetFrameMaterial__Q36nw4hbm3lyt6WindowCFUl
	.4byte DrawContent__Q36nw4hbm3lyt6WindowFRCQ36nw4hbm4math4VEC2RCQ36nw4hbm3lyt15WindowFrameSizeUc
	.4byte DrawFrame__Q36nw4hbm3lyt6WindowFRCQ36nw4hbm4math4VEC2RCQ46nw4hbm3lyt6Window5FrameRCQ36nw4hbm3lyt15WindowFrameSizeUc
	.4byte DrawFrame4__Q36nw4hbm3lyt6WindowFRCQ36nw4hbm4math4VEC2PCQ46nw4hbm3lyt6Window5FrameRCQ36nw4hbm3lyt15WindowFrameSizeUc
	.4byte DrawFrame8__Q36nw4hbm3lyt6WindowFRCQ36nw4hbm4math4VEC2PCQ46nw4hbm3lyt6Window5FrameRCQ36nw4hbm3lyt15WindowFrameSizeUc
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion idx < ANIMTARGET_VERTEXCOLOR_MAX"
	.balign 4
	.asciz "common.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion idx < ANIMTARGET_VERTEXCOLOR_MAX"
	.balign 4
	.asciz "common.h"
	.balign 4

glabel lbl_801A4210
	# ROM: 0x1A0310
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3CC90A35
	.4byte 0xB99DCF89
	.4byte 0x3CC90A35
	.4byte 0x3F7FEC46
	.4byte 0x3CC8EAC0
	.4byte 0xBA6CB74E
	.4byte 0x3D48FB87
	.4byte 0x3F7FB107
	.4byte 0x3CC8ADEF
	.4byte 0xBAC5436C
	.4byte 0x3D96A93F
	.4byte 0x3F7F4E66
	.4byte 0x3CC851A8
	.4byte 0xBB0A04D1
	.4byte 0x3DC8BD23
	.4byte 0x3F7EC472
	.4byte 0x3CC7D5ED
	.4byte 0xBB31465F
	.4byte 0x3DFAB29E
	.4byte 0x3F7E132B
	.4byte 0x3CC73ABD
	.4byte 0xBB587725
	.4byte 0x3E164064
	.4byte 0x3F7D3AB4
	.4byte 0x3CC68017
	.4byte 0xBB7F865D
	.4byte 0x3E2F10AA
	.4byte 0x3F7C3B2E
	.4byte 0x3CC5A815
	.4byte 0xBB9331A1
	.4byte 0x3E47C5AC
	.4byte 0x3F7B14BA
	.4byte 0x3CC4B2B7
	.4byte 0xBBA68F4B
	.4byte 0x3E605C03
	.4byte 0x3F79C79B
	.4byte 0x3CC39DE5
	.4byte 0xBBB9D3CC
	.4byte 0x3E78CFC0
	.4byte 0x3F7853F4
	.4byte 0x3CC26BB5
	.4byte 0xBBCCF6BE
	.4byte 0x3E888E9B
	.4byte 0x3F76BA06
	.4byte 0x3CC11A11
	.4byte 0xBBE00086
	.4byte 0x3E94A03C
	.4byte 0x3F74FA05
	.4byte 0x3CBFAB11
	.4byte 0xBBF2E05D
	.4byte 0x3EA09AED
	.4byte 0x3F731444
	.4byte 0x3CBE1EB4
	.4byte 0xBC02CF53
	.4byte 0x3EAC7CD9
	.4byte 0x3F710907
	.4byte 0x3CBC74FB
	.4byte 0xBC0C197E
	.4byte 0x3EB84428
	.4byte 0x3F6ED8A1
	.4byte 0x3CBAADE6
	.4byte 0xBC154EB1
	.4byte 0x3EC3EF07
	.4byte 0x3F6C8366
	.4byte 0x3CB8CB8E
	.4byte 0xBC1E6EEB
	.4byte 0x3ECF7BC0
	.4byte 0x3F6A09AB
	.4byte 0x3CB6CBDA
	.4byte 0xBC2771C9
	.4byte 0x3EDAE87D
	.4byte 0x3F676BD3
	.4byte 0x3CB4AEC9
	.4byte 0xBC305FAF
	.4byte 0x3EE6336A
	.4byte 0x3F64AA54
	.4byte 0x3CB27675
	.4byte 0xBC393038
	.4byte 0x3EF15AF3
	.4byte 0x3F61C593
	.4byte 0x3CB022DD
	.4byte 0xBC41E365
	.4byte 0x3EFC5D20
	.4byte 0x3F5EBE06
	.4byte 0x3CADB61C
	.4byte 0xBC4A7935
	.4byte 0x3F039C41
	.4byte 0x3F5B9421
	.4byte 0x3CAB2BFE
	.4byte 0xBC52F1AA
	.4byte 0x3F08F5A1
	.4byte 0x3F58485A
	.4byte 0x3CA888B5
	.4byte 0xBC5B4891
	.4byte 0x3F0E39D6
	.4byte 0x3F54DB38
	.4byte 0x3CA5CA2A
	.4byte 0xBC637DE9
	.4byte 0x3F136827
	.4byte 0x3F514D40
	.4byte 0x3CA2F273
	.4byte 0xBC6B8D82
	.4byte 0x3F187FBB
	.4byte 0x3F4D9F0A
	.4byte 0x3CA00193
	.4byte 0xBC737B8D
	.4byte 0x3F1D7FD8
	.4byte 0x3F49D10B
	.4byte 0x3C9CF9A0
	.4byte 0xBC7B43D9
	.4byte 0x3F226794
	.4byte 0x3F45E3FC
	.4byte 0x3C99D884
	.4byte 0xBC817332
	.4byte 0x3F273659
	.4byte 0x3F41D873
	.4byte 0x3C969E3D
	.4byte 0xBC852F7F
	.4byte 0x3F2BEB4A
	.4byte 0x3F3DAEF7
	.4byte 0x3C934EFD
	.4byte 0xBC88D6D4
	.4byte 0x3F3085C2
	.4byte 0x3F396840
	.4byte 0x3C8FE692
	.4byte 0xBC8C692F
	.4byte 0x3F3504F7
	.4byte 0x3F3504F7
	.4byte 0x3C8C692F
	.4byte 0xBC8FE692
	.4byte 0x3F396840
	.4byte 0x3F3085C2
	.4byte 0x3C88D6D4
	.4byte 0xBC934EFD
	.4byte 0x3F3DAEF7
	.4byte 0x3F2BEB4A
	.4byte 0x3C852F7F
	.4byte 0xBC969E3D
	.4byte 0x3F41D873
	.4byte 0x3F273659
	.4byte 0x3C817332
	.4byte 0xBC99D884
	.4byte 0x3F45E3FC
	.4byte 0x3F226794
	.4byte 0x3C7B43D9
	.4byte 0xBC9CF9A0
	.4byte 0x3F49D10B
	.4byte 0x3F1D7FD8
	.4byte 0x3C737B8D
	.4byte 0xBCA00193
	.4byte 0x3F4D9F0A
	.4byte 0x3F187FBB
	.4byte 0x3C6B8D82
	.4byte 0xBCA2F273
	.4byte 0x3F514D40
	.4byte 0x3F136827
	.4byte 0x3C637DE9
	.4byte 0xBCA5CA2A
	.4byte 0x3F54DB38
	.4byte 0x3F0E39D6
	.4byte 0x3C5B4891
	.4byte 0xBCA888B5
	.4byte 0x3F58485A
	.4byte 0x3F08F5A1
	.4byte 0x3C52F1AA
	.4byte 0xBCAB2BFE
	.4byte 0x3F5B9421
	.4byte 0x3F039C41
	.4byte 0x3C4A7935
	.4byte 0xBCADB61C
	.4byte 0x3F5EBE06
	.4byte 0x3EFC5D20
	.4byte 0x3C41E365
	.4byte 0xBCB022DD
	.4byte 0x3F61C593
	.4byte 0x3EF15AF3
	.4byte 0x3C393038
	.4byte 0xBCB27675
	.4byte 0x3F64AA54
	.4byte 0x3EE6336A
	.4byte 0x3C305FAF
	.4byte 0xBCB4AEC9
	.4byte 0x3F676BD3
	.4byte 0x3EDAE87D
	.4byte 0x3C2771C9
	.4byte 0xBCB6CBDA
	.4byte 0x3F6A09AB
	.4byte 0x3ECF7BC0
	.4byte 0x3C1E6EEB
	.4byte 0xBCB8CB8E
	.4byte 0x3F6C8366
	.4byte 0x3EC3EF07
	.4byte 0x3C154EB1
	.4byte 0xBCBAADE6
	.4byte 0x3F6ED8A1
	.4byte 0x3EB84428
	.4byte 0x3C0C197E
	.4byte 0xBCBC74FB
	.4byte 0x3F710907
	.4byte 0x3EAC7CD9
	.4byte 0x3C02CF53
	.4byte 0xBCBE1EB4
	.4byte 0x3F731444
	.4byte 0x3EA09AED
	.4byte 0x3BF2E05D
	.4byte 0xBCBFAB11
	.4byte 0x3F74FA05
	.4byte 0x3E94A03C
	.4byte 0x3BE00086
	.4byte 0xBCC11A11
	.4byte 0x3F76BA06
	.4byte 0x3E888E9B
	.4byte 0x3BCCF6BE
	.4byte 0xBCC26BB5
	.4byte 0x3F7853F4
	.4byte 0x3E78CFC0
	.4byte 0x3BB9D3CC
	.4byte 0xBCC39DE5
	.4byte 0x3F79C79B
	.4byte 0x3E605C03
	.4byte 0x3BA68F4B
	.4byte 0xBCC4B2B7
	.4byte 0x3F7B14BA
	.4byte 0x3E47C5AC
	.4byte 0x3B9331A1
	.4byte 0xBCC5A815
	.4byte 0x3F7C3B2E
	.4byte 0x3E2F10AA
	.4byte 0x3B7F865D
	.4byte 0xBCC68017
	.4byte 0x3F7D3AB4
	.4byte 0x3E164064
	.4byte 0x3B587725
	.4byte 0xBCC73ABD
	.4byte 0x3F7E132B
	.4byte 0x3DFAB29E
	.4byte 0x3B31465F
	.4byte 0xBCC7D5ED
	.4byte 0x3F7EC472
	.4byte 0x3DC8BD23
	.4byte 0x3B0A04D1
	.4byte 0xBCC851A8
	.4byte 0x3F7F4E66
	.4byte 0x3D96A93F
	.4byte 0x3AC5436C
	.4byte 0xBCC8ADEF
	.4byte 0x3F7FB107
	.4byte 0x3D48FB87
	.4byte 0x3A6CB74E
	.4byte 0xBCC8EAC0
	.4byte 0x3F7FEC46
	.4byte 0x3CC90A35
	.4byte 0x399DCF89
	.4byte 0xBCC90A35
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xB99DCF89
	.4byte 0xBCC90A35
	.4byte 0x3F7FEC46
	.4byte 0xBCC90A35
	.4byte 0xBA6CB74E
	.4byte 0xBCC8EAC0
	.4byte 0x3F7FB107
	.4byte 0xBD48FB87
	.4byte 0xBAC5436C
	.4byte 0xBCC8ADEF
	.4byte 0x3F7F4E66
	.4byte 0xBD96A93F
	.4byte 0xBB0A04D1
	.4byte 0xBCC851A8
	.4byte 0x3F7EC472
	.4byte 0xBDC8BD23
	.4byte 0xBB31465F
	.4byte 0xBCC7D5ED
	.4byte 0x3F7E132B
	.4byte 0xBDFAB29E
	.4byte 0xBB587725
	.4byte 0xBCC73ABD
	.4byte 0x3F7D3AB4
	.4byte 0xBE164064
	.4byte 0xBB7F865D
	.4byte 0xBCC68017
	.4byte 0x3F7C3B2E
	.4byte 0xBE2F10AA
	.4byte 0xBB9331A1
	.4byte 0xBCC5A815
	.4byte 0x3F7B14BA
	.4byte 0xBE47C5AC
	.4byte 0xBBA68F4B
	.4byte 0xBCC4B2B7
	.4byte 0x3F79C79B
	.4byte 0xBE605C03
	.4byte 0xBBB9D3CC
	.4byte 0xBCC39DE5
	.4byte 0x3F7853F4
	.4byte 0xBE78CFC0
	.4byte 0xBBCCF6BE
	.4byte 0xBCC26BB5
	.4byte 0x3F76BA06
	.4byte 0xBE888E9B
	.4byte 0xBBE00086
	.4byte 0xBCC11A11
	.4byte 0x3F74FA05
	.4byte 0xBE94A03C
	.4byte 0xBBF2E05D
	.4byte 0xBCBFAB11
	.4byte 0x3F731444
	.4byte 0xBEA09AED
	.4byte 0xBC02CF53
	.4byte 0xBCBE1EB4
	.4byte 0x3F710907
	.4byte 0xBEAC7CD9
	.4byte 0xBC0C197E
	.4byte 0xBCBC74FB
	.4byte 0x3F6ED8A1
	.4byte 0xBEB84428
	.4byte 0xBC154EB1
	.4byte 0xBCBAADE6
	.4byte 0x3F6C8366
	.4byte 0xBEC3EF07
	.4byte 0xBC1E6EEB
	.4byte 0xBCB8CB8E
	.4byte 0x3F6A09AB
	.4byte 0xBECF7BC0
	.4byte 0xBC2771C9
	.4byte 0xBCB6CBDA
	.4byte 0x3F676BD3
	.4byte 0xBEDAE87D
	.4byte 0xBC305FAF
	.4byte 0xBCB4AEC9
	.4byte 0x3F64AA54
	.4byte 0xBEE6336A
	.4byte 0xBC393038
	.4byte 0xBCB27675
	.4byte 0x3F61C593
	.4byte 0xBEF15AF3
	.4byte 0xBC41E365
	.4byte 0xBCB022DD
	.4byte 0x3F5EBE06
	.4byte 0xBEFC5D20
	.4byte 0xBC4A7935
	.4byte 0xBCADB61C
	.4byte 0x3F5B9421
	.4byte 0xBF039C41
	.4byte 0xBC52F1AA
	.4byte 0xBCAB2BFE
	.4byte 0x3F58485A
	.4byte 0xBF08F5A1
	.4byte 0xBC5B4891
	.4byte 0xBCA888B5
	.4byte 0x3F54DB38
	.4byte 0xBF0E39D6
	.4byte 0xBC637DE9
	.4byte 0xBCA5CA2A
	.4byte 0x3F514D40
	.4byte 0xBF136827
	.4byte 0xBC6B8D82
	.4byte 0xBCA2F273
	.4byte 0x3F4D9F0A
	.4byte 0xBF187FBB
	.4byte 0xBC737B8D
	.4byte 0xBCA00193
	.4byte 0x3F49D10B
	.4byte 0xBF1D7FD8
	.4byte 0xBC7B43D9
	.4byte 0xBC9CF9A0
	.4byte 0x3F45E3FC
	.4byte 0xBF226794
	.4byte 0xBC817332
	.4byte 0xBC99D884
	.4byte 0x3F41D873
	.4byte 0xBF273659
	.4byte 0xBC852F7F
	.4byte 0xBC969E3D
	.4byte 0x3F3DAEF7
	.4byte 0xBF2BEB4A
	.4byte 0xBC88D6D4
	.4byte 0xBC934EFD
	.4byte 0x3F396840
	.4byte 0xBF3085C2
	.4byte 0xBC8C692F
	.4byte 0xBC8FE692
	.4byte 0x3F3504F7
	.4byte 0xBF3504F7
	.4byte 0xBC8FE692
	.4byte 0xBC8C692F
	.4byte 0x3F3085C2
	.4byte 0xBF396840
	.4byte 0xBC934EFD
	.4byte 0xBC88D6D4
	.4byte 0x3F2BEB4A
	.4byte 0xBF3DAEF7
	.4byte 0xBC969E3D
	.4byte 0xBC852F7F
	.4byte 0x3F273659
	.4byte 0xBF41D873
	.4byte 0xBC99D884
	.4byte 0xBC817332
	.4byte 0x3F226794
	.4byte 0xBF45E3FC
	.4byte 0xBC9CF9A0
	.4byte 0xBC7B43D9
	.4byte 0x3F1D7FD8
	.4byte 0xBF49D10B
	.4byte 0xBCA00193
	.4byte 0xBC737B8D
	.4byte 0x3F187FBB
	.4byte 0xBF4D9F0A
	.4byte 0xBCA2F273
	.4byte 0xBC6B8D82
	.4byte 0x3F136827
	.4byte 0xBF514D40
	.4byte 0xBCA5CA2A
	.4byte 0xBC637DE9
	.4byte 0x3F0E39D6
	.4byte 0xBF54DB38
	.4byte 0xBCA888B5
	.4byte 0xBC5B4891
	.4byte 0x3F08F5A1
	.4byte 0xBF58485A
	.4byte 0xBCAB2BFE
	.4byte 0xBC52F1AA
	.4byte 0x3F039C41
	.4byte 0xBF5B9421
	.4byte 0xBCADB61C
	.4byte 0xBC4A7935
	.4byte 0x3EFC5D20
	.4byte 0xBF5EBE06
	.4byte 0xBCB022DD
	.4byte 0xBC41E365
	.4byte 0x3EF15AF3
	.4byte 0xBF61C593
	.4byte 0xBCB27675
	.4byte 0xBC393038
	.4byte 0x3EE6336A
	.4byte 0xBF64AA54
	.4byte 0xBCB4AEC9
	.4byte 0xBC305FAF
	.4byte 0x3EDAE87D
	.4byte 0xBF676BD3
	.4byte 0xBCB6CBDA
	.4byte 0xBC2771C9
	.4byte 0x3ECF7BC0
	.4byte 0xBF6A09AB
	.4byte 0xBCB8CB8E
	.4byte 0xBC1E6EEB
	.4byte 0x3EC3EF07
	.4byte 0xBF6C8366
	.4byte 0xBCBAADE6
	.4byte 0xBC154EB1
	.4byte 0x3EB84428
	.4byte 0xBF6ED8A1
	.4byte 0xBCBC74FB
	.4byte 0xBC0C197E
	.4byte 0x3EAC7CD9
	.4byte 0xBF710907
	.4byte 0xBCBE1EB4
	.4byte 0xBC02CF53
	.4byte 0x3EA09AED
	.4byte 0xBF731444
	.4byte 0xBCBFAB11
	.4byte 0xBBF2E05D
	.4byte 0x3E94A03C
	.4byte 0xBF74FA05
	.4byte 0xBCC11A11
	.4byte 0xBBE00086
	.4byte 0x3E888E9B
	.4byte 0xBF76BA06
	.4byte 0xBCC26BB5
	.4byte 0xBBCCF6BE
	.4byte 0x3E78CFC0
	.4byte 0xBF7853F4
	.4byte 0xBCC39DE5
	.4byte 0xBBB9D3CC
	.4byte 0x3E605C03
	.4byte 0xBF79C79B
	.4byte 0xBCC4B2B7
	.4byte 0xBBA68F4B
	.4byte 0x3E47C5AC
	.4byte 0xBF7B14BA
	.4byte 0xBCC5A815
	.4byte 0xBB9331A1
	.4byte 0x3E2F10AA
	.4byte 0xBF7C3B2E
	.4byte 0xBCC68017
	.4byte 0xBB7F865D
	.4byte 0x3E164064
	.4byte 0xBF7D3AB4
	.4byte 0xBCC73ABD
	.4byte 0xBB587725
	.4byte 0x3DFAB29E
	.4byte 0xBF7E132B
	.4byte 0xBCC7D5ED
	.4byte 0xBB31465F
	.4byte 0x3DC8BD23
	.4byte 0xBF7EC472
	.4byte 0xBCC851A8
	.4byte 0xBB0A04D1
	.4byte 0x3D96A93F
	.4byte 0xBF7F4E66
	.4byte 0xBCC8ADEF
	.4byte 0xBAC5436C
	.4byte 0x3D48FB87
	.4byte 0xBF7FB107
	.4byte 0xBCC8EAC0
	.4byte 0xBA6CB74E
	.4byte 0x3CC90A35
	.4byte 0xBF7FEC46
	.4byte 0xBCC90A35
	.4byte 0xB99DCF89
	.4byte 0
	.4byte 0xBF800000
	.4byte 0xBCC90A35
	.4byte 0x399DCF89
	.4byte 0xBCC90A35
	.4byte 0xBF7FEC46
	.4byte 0xBCC8EAC0
	.4byte 0x3A6CB74E
	.4byte 0xBD48FB87
	.4byte 0xBF7FB107
	.4byte 0xBCC8ADEF
	.4byte 0x3AC5436C
	.4byte 0xBD96A93F
	.4byte 0xBF7F4E66
	.4byte 0xBCC851A8
	.4byte 0x3B0A04D1
	.4byte 0xBDC8BD23
	.4byte 0xBF7EC472
	.4byte 0xBCC7D5ED
	.4byte 0x3B31465F
	.4byte 0xBDFAB29E
	.4byte 0xBF7E132B
	.4byte 0xBCC73ABD
	.4byte 0x3B587725
	.4byte 0xBE164064
	.4byte 0xBF7D3AB4
	.4byte 0xBCC68017
	.4byte 0x3B7F865D
	.4byte 0xBE2F10AA
	.4byte 0xBF7C3B2E
	.4byte 0xBCC5A815
	.4byte 0x3B9331A1
	.4byte 0xBE47C5AC
	.4byte 0xBF7B14BA
	.4byte 0xBCC4B2B7
	.4byte 0x3BA68F4B
	.4byte 0xBE605C03
	.4byte 0xBF79C79B
	.4byte 0xBCC39DE5
	.4byte 0x3BB9D3CC
	.4byte 0xBE78CFC0
	.4byte 0xBF7853F4
	.4byte 0xBCC26BB5
	.4byte 0x3BCCF6BE
	.4byte 0xBE888E9B
	.4byte 0xBF76BA06
	.4byte 0xBCC11A11
	.4byte 0x3BE00086
	.4byte 0xBE94A03C
	.4byte 0xBF74FA05
	.4byte 0xBCBFAB11
	.4byte 0x3BF2E05D
	.4byte 0xBEA09AED
	.4byte 0xBF731444
	.4byte 0xBCBE1EB4
	.4byte 0x3C02CF53
	.4byte 0xBEAC7CD9
	.4byte 0xBF710907
	.4byte 0xBCBC74FB
	.4byte 0x3C0C197E
	.4byte 0xBEB84428
	.4byte 0xBF6ED8A1
	.4byte 0xBCBAADE6
	.4byte 0x3C154EB1
	.4byte 0xBEC3EF07
	.4byte 0xBF6C8366
	.4byte 0xBCB8CB8E
	.4byte 0x3C1E6EEB
	.4byte 0xBECF7BC0
	.4byte 0xBF6A09AB
	.4byte 0xBCB6CBDA
	.4byte 0x3C2771C9
	.4byte 0xBEDAE87D
	.4byte 0xBF676BD3
	.4byte 0xBCB4AEC9
	.4byte 0x3C305FAF
	.4byte 0xBEE6336A
	.4byte 0xBF64AA54
	.4byte 0xBCB27675
	.4byte 0x3C393038
	.4byte 0xBEF15AF3
	.4byte 0xBF61C593
	.4byte 0xBCB022DD
	.4byte 0x3C41E365
	.4byte 0xBEFC5D20
	.4byte 0xBF5EBE06
	.4byte 0xBCADB61C
	.4byte 0x3C4A7935
	.4byte 0xBF039C41
	.4byte 0xBF5B9421
	.4byte 0xBCAB2BFE
	.4byte 0x3C52F1AA
	.4byte 0xBF08F5A1
	.4byte 0xBF58485A
	.4byte 0xBCA888B5
	.4byte 0x3C5B4891
	.4byte 0xBF0E39D6
	.4byte 0xBF54DB38
	.4byte 0xBCA5CA2A
	.4byte 0x3C637DE9
	.4byte 0xBF136827
	.4byte 0xBF514D40
	.4byte 0xBCA2F273
	.4byte 0x3C6B8D82
	.4byte 0xBF187FBB
	.4byte 0xBF4D9F0A
	.4byte 0xBCA00193
	.4byte 0x3C737B8D
	.4byte 0xBF1D7FD8
	.4byte 0xBF49D10B
	.4byte 0xBC9CF9A0
	.4byte 0x3C7B43D9
	.4byte 0xBF226794
	.4byte 0xBF45E3FC
	.4byte 0xBC99D884
	.4byte 0x3C817332
	.4byte 0xBF273659
	.4byte 0xBF41D873
	.4byte 0xBC969E3D
	.4byte 0x3C852F7F
	.4byte 0xBF2BEB4A
	.4byte 0xBF3DAEF7
	.4byte 0xBC934EFD
	.4byte 0x3C88D6D4
	.4byte 0xBF3085C2
	.4byte 0xBF396840
	.4byte 0xBC8FE692
	.4byte 0x3C8C692F
	.4byte 0xBF3504F7
	.4byte 0xBF3504F7
	.4byte 0xBC8C692F
	.4byte 0x3C8FE692
	.4byte 0xBF396840
	.4byte 0xBF3085C2
	.4byte 0xBC88D6D4
	.4byte 0x3C934EFD
	.4byte 0xBF3DAEF7
	.4byte 0xBF2BEB4A
	.4byte 0xBC852F7F
	.4byte 0x3C969E3D
	.4byte 0xBF41D873
	.4byte 0xBF273659
	.4byte 0xBC817332
	.4byte 0x3C99D884
	.4byte 0xBF45E3FC
	.4byte 0xBF226794
	.4byte 0xBC7B43D9
	.4byte 0x3C9CF9A0
	.4byte 0xBF49D10B
	.4byte 0xBF1D7FD8
	.4byte 0xBC737B8D
	.4byte 0x3CA00193
	.4byte 0xBF4D9F0A
	.4byte 0xBF187FBB
	.4byte 0xBC6B8D82
	.4byte 0x3CA2F273
	.4byte 0xBF514D40
	.4byte 0xBF136827
	.4byte 0xBC637DE9
	.4byte 0x3CA5CA2A
	.4byte 0xBF54DB38
	.4byte 0xBF0E39D6
	.4byte 0xBC5B4891
	.4byte 0x3CA888B5
	.4byte 0xBF58485A
	.4byte 0xBF08F5A1
	.4byte 0xBC52F1AA
	.4byte 0x3CAB2BFE
	.4byte 0xBF5B9421
	.4byte 0xBF039C41
	.4byte 0xBC4A7935
	.4byte 0x3CADB61C
	.4byte 0xBF5EBE06
	.4byte 0xBEFC5D20
	.4byte 0xBC41E365
	.4byte 0x3CB022DD
	.4byte 0xBF61C593
	.4byte 0xBEF15AF3
	.4byte 0xBC393038
	.4byte 0x3CB27675
	.4byte 0xBF64AA54
	.4byte 0xBEE6336A
	.4byte 0xBC305FAF
	.4byte 0x3CB4AEC9
	.4byte 0xBF676BD3
	.4byte 0xBEDAE87D
	.4byte 0xBC2771C9
	.4byte 0x3CB6CBDA
	.4byte 0xBF6A09AB
	.4byte 0xBECF7BC0
	.4byte 0xBC1E6EEB
	.4byte 0x3CB8CB8E
	.4byte 0xBF6C8366
	.4byte 0xBEC3EF07
	.4byte 0xBC154EB1
	.4byte 0x3CBAADE6
	.4byte 0xBF6ED8A1
	.4byte 0xBEB84428
	.4byte 0xBC0C197E
	.4byte 0x3CBC74FB
	.4byte 0xBF710907
	.4byte 0xBEAC7CD9
	.4byte 0xBC02CF53
	.4byte 0x3CBE1EB4
	.4byte 0xBF731444
	.4byte 0xBEA09AED
	.4byte 0xBBF2E05D
	.4byte 0x3CBFAB11
	.4byte 0xBF74FA05
	.4byte 0xBE94A03C
	.4byte 0xBBE00086
	.4byte 0x3CC11A11
	.4byte 0xBF76BA06
	.4byte 0xBE888E9B
	.4byte 0xBBCCF6BE
	.4byte 0x3CC26BB5
	.4byte 0xBF7853F4
	.4byte 0xBE78CFC0
	.4byte 0xBBB9D3CC
	.4byte 0x3CC39DE5
	.4byte 0xBF79C79B
	.4byte 0xBE605C03
	.4byte 0xBBA68F4B
	.4byte 0x3CC4B2B7
	.4byte 0xBF7B14BA
	.4byte 0xBE47C5AC
	.4byte 0xBB9331A1
	.4byte 0x3CC5A815
	.4byte 0xBF7C3B2E
	.4byte 0xBE2F10AA
	.4byte 0xBB7F865D
	.4byte 0x3CC68017
	.4byte 0xBF7D3AB4
	.4byte 0xBE164064
	.4byte 0xBB587725
	.4byte 0x3CC73ABD
	.4byte 0xBF7E132B
	.4byte 0xBDFAB29E
	.4byte 0xBB31465F
	.4byte 0x3CC7D5ED
	.4byte 0xBF7EC472
	.4byte 0xBDC8BD23
	.4byte 0xBB0A04D1
	.4byte 0x3CC851A8
	.4byte 0xBF7F4E66
	.4byte 0xBD96A93F
	.4byte 0xBAC5436C
	.4byte 0x3CC8ADEF
	.4byte 0xBF7FB107
	.4byte 0xBD48FB87
	.4byte 0xBA6CB74E
	.4byte 0x3CC8EAC0
	.4byte 0xBF7FEC46
	.4byte 0xBCC90A35
	.4byte 0xB99DCF89
	.4byte 0x3CC90A35
	.4byte 0xBF800000
	.4byte 0x80000000
	.4byte 0x399DCF89
	.4byte 0x3CC90A35
	.4byte 0xBF7FEC46
	.4byte 0x3CC90A35
	.4byte 0x3A6CB74E
	.4byte 0x3CC8EAC0
	.4byte 0xBF7FB107
	.4byte 0x3D48FB87
	.4byte 0x3AC5436C
	.4byte 0x3CC8ADEF
	.4byte 0xBF7F4E66
	.4byte 0x3D96A93F
	.4byte 0x3B0A04D1
	.4byte 0x3CC851A8
	.4byte 0xBF7EC472
	.4byte 0x3DC8BD23
	.4byte 0x3B31465F
	.4byte 0x3CC7D5ED
	.4byte 0xBF7E132B
	.4byte 0x3DFAB29E
	.4byte 0x3B587725
	.4byte 0x3CC73ABD
	.4byte 0xBF7D3AB4
	.4byte 0x3E164064
	.4byte 0x3B7F865D
	.4byte 0x3CC68017
	.4byte 0xBF7C3B2E
	.4byte 0x3E2F10AA
	.4byte 0x3B9331A1
	.4byte 0x3CC5A815
	.4byte 0xBF7B14BA
	.4byte 0x3E47C5AC
	.4byte 0x3BA68F4B
	.4byte 0x3CC4B2B7
	.4byte 0xBF79C79B
	.4byte 0x3E605C03
	.4byte 0x3BB9D3CC
	.4byte 0x3CC39DE5
	.4byte 0xBF7853F4
	.4byte 0x3E78CFC0
	.4byte 0x3BCCF6BE
	.4byte 0x3CC26BB5
	.4byte 0xBF76BA06
	.4byte 0x3E888E9B
	.4byte 0x3BE00086
	.4byte 0x3CC11A11
	.4byte 0xBF74FA05
	.4byte 0x3E94A03C
	.4byte 0x3BF2E05D
	.4byte 0x3CBFAB11
	.4byte 0xBF731444
	.4byte 0x3EA09AED
	.4byte 0x3C02CF53
	.4byte 0x3CBE1EB4
	.4byte 0xBF710907
	.4byte 0x3EAC7CD9
	.4byte 0x3C0C197E
	.4byte 0x3CBC74FB
	.4byte 0xBF6ED8A1
	.4byte 0x3EB84428
	.4byte 0x3C154EB1
	.4byte 0x3CBAADE6
	.4byte 0xBF6C8366
	.4byte 0x3EC3EF07
	.4byte 0x3C1E6EEB
	.4byte 0x3CB8CB8E
	.4byte 0xBF6A09AB
	.4byte 0x3ECF7BC0
	.4byte 0x3C2771C9
	.4byte 0x3CB6CBDA
	.4byte 0xBF676BD3
	.4byte 0x3EDAE87D
	.4byte 0x3C305FAF
	.4byte 0x3CB4AEC9
	.4byte 0xBF64AA54
	.4byte 0x3EE6336A
	.4byte 0x3C393038
	.4byte 0x3CB27675
	.4byte 0xBF61C593
	.4byte 0x3EF15AF3
	.4byte 0x3C41E365
	.4byte 0x3CB022DD
	.4byte 0xBF5EBE06
	.4byte 0x3EFC5D20
	.4byte 0x3C4A7935
	.4byte 0x3CADB61C
	.4byte 0xBF5B9421
	.4byte 0x3F039C41
	.4byte 0x3C52F1AA
	.4byte 0x3CAB2BFE
	.4byte 0xBF58485A
	.4byte 0x3F08F5A1
	.4byte 0x3C5B4891
	.4byte 0x3CA888B5
	.4byte 0xBF54DB38
	.4byte 0x3F0E39D6
	.4byte 0x3C637DE9
	.4byte 0x3CA5CA2A
	.4byte 0xBF514D40
	.4byte 0x3F136827
	.4byte 0x3C6B8D82
	.4byte 0x3CA2F273
	.4byte 0xBF4D9F0A
	.4byte 0x3F187FBB
	.4byte 0x3C737B8D
	.4byte 0x3CA00193
	.4byte 0xBF49D10B
	.4byte 0x3F1D7FD8
	.4byte 0x3C7B43D9
	.4byte 0x3C9CF9A0
	.4byte 0xBF45E3FC
	.4byte 0x3F226794
	.4byte 0x3C817332
	.4byte 0x3C99D884
	.4byte 0xBF41D873
	.4byte 0x3F273659
	.4byte 0x3C852F7F
	.4byte 0x3C969E3D
	.4byte 0xBF3DAEF7
	.4byte 0x3F2BEB4A
	.4byte 0x3C88D6D4
	.4byte 0x3C934EFD
	.4byte 0xBF396840
	.4byte 0x3F3085C2
	.4byte 0x3C8C692F
	.4byte 0x3C8FE692
	.4byte 0xBF3504F7
	.4byte 0x3F3504F7
	.4byte 0x3C8FE692
	.4byte 0x3C8C692F
	.4byte 0xBF3085C2
	.4byte 0x3F396840
	.4byte 0x3C934EFD
	.4byte 0x3C88D6D4
	.4byte 0xBF2BEB4A
	.4byte 0x3F3DAEF7
	.4byte 0x3C969E3D
	.4byte 0x3C852F7F
	.4byte 0xBF273659
	.4byte 0x3F41D873
	.4byte 0x3C99D884
	.4byte 0x3C817332
	.4byte 0xBF226794
	.4byte 0x3F45E3FC
	.4byte 0x3C9CF9A0
	.4byte 0x3C7B43D9
	.4byte 0xBF1D7FD8
	.4byte 0x3F49D10B
	.4byte 0x3CA00193
	.4byte 0x3C737B8D
	.4byte 0xBF187FBB
	.4byte 0x3F4D9F0A
	.4byte 0x3CA2F273
	.4byte 0x3C6B8D82
	.4byte 0xBF136827
	.4byte 0x3F514D40
	.4byte 0x3CA5CA2A
	.4byte 0x3C637DE9
	.4byte 0xBF0E39D6
	.4byte 0x3F54DB38
	.4byte 0x3CA888B5
	.4byte 0x3C5B4891
	.4byte 0xBF08F5A1
	.4byte 0x3F58485A
	.4byte 0x3CAB2BFE
	.4byte 0x3C52F1AA
	.4byte 0xBF039C41
	.4byte 0x3F5B9421
	.4byte 0x3CADB61C
	.4byte 0x3C4A7935
	.4byte 0xBEFC5D20
	.4byte 0x3F5EBE06
	.4byte 0x3CB022DD
	.4byte 0x3C41E365
	.4byte 0xBEF15AF3
	.4byte 0x3F61C593
	.4byte 0x3CB27675
	.4byte 0x3C393038
	.4byte 0xBEE6336A
	.4byte 0x3F64AA54
	.4byte 0x3CB4AEC9
	.4byte 0x3C305FAF
	.4byte 0xBEDAE87D
	.4byte 0x3F676BD3
	.4byte 0x3CB6CBDA
	.4byte 0x3C2771C9
	.4byte 0xBECF7BC0
	.4byte 0x3F6A09AB
	.4byte 0x3CB8CB8E
	.4byte 0x3C1E6EEB
	.4byte 0xBEC3EF07
	.4byte 0x3F6C8366
	.4byte 0x3CBAADE6
	.4byte 0x3C154EB1
	.4byte 0xBEB84428
	.4byte 0x3F6ED8A1
	.4byte 0x3CBC74FB
	.4byte 0x3C0C197E
	.4byte 0xBEAC7CD9
	.4byte 0x3F710907
	.4byte 0x3CBE1EB4
	.4byte 0x3C02CF53
	.4byte 0xBEA09AED
	.4byte 0x3F731444
	.4byte 0x3CBFAB11
	.4byte 0x3BF2E05D
	.4byte 0xBE94A03C
	.4byte 0x3F74FA05
	.4byte 0x3CC11A11
	.4byte 0x3BE00086
	.4byte 0xBE888E9B
	.4byte 0x3F76BA06
	.4byte 0x3CC26BB5
	.4byte 0x3BCCF6BE
	.4byte 0xBE78CFC0
	.4byte 0x3F7853F4
	.4byte 0x3CC39DE5
	.4byte 0x3BB9D3CC
	.4byte 0xBE605C03
	.4byte 0x3F79C79B
	.4byte 0x3CC4B2B7
	.4byte 0x3BA68F4B
	.4byte 0xBE47C5AC
	.4byte 0x3F7B14BA
	.4byte 0x3CC5A815
	.4byte 0x3B9331A1
	.4byte 0xBE2F10AA
	.4byte 0x3F7C3B2E
	.4byte 0x3CC68017
	.4byte 0x3B7F865D
	.4byte 0xBE164064
	.4byte 0x3F7D3AB4
	.4byte 0x3CC73ABD
	.4byte 0x3B587725
	.4byte 0xBDFAB29E
	.4byte 0x3F7E132B
	.4byte 0x3CC7D5ED
	.4byte 0x3B31465F
	.4byte 0xBDC8BD23
	.4byte 0x3F7EC472
	.4byte 0x3CC851A8
	.4byte 0x3B0A04D1
	.4byte 0xBD96A93F
	.4byte 0x3F7F4E66
	.4byte 0x3CC8ADEF
	.4byte 0x3AC5436C
	.4byte 0xBD48FB87
	.4byte 0x3F7FB107
	.4byte 0x3CC8EAC0
	.4byte 0x3A6CB74E
	.4byte 0xBCC90A35
	.4byte 0x3F7FEC46
	.4byte 0x3CC90A35
	.4byte 0x399DCF89
	.4byte 0x80000000
	.4byte 0x3F800000
	.4byte 0x3CC90A35
	.4byte 0xB99DCF89

glabel lbl_801A5220
	# ROM: 0x1A1320
	.4byte 0
	.4byte 0x3FA2EBF1
	.4byte 0x3FA2EBF1
	.4byte 0x3FA29AB1
	.4byte 0x4022C351
	.4byte 0x3FA1F923
	.4byte 0x4073BFE2
	.4byte 0x3FA10925
	.4byte 0x40A2223B
	.4byte 0x3F9FCD71
	.4byte 0x40CA1597
	.4byte 0x3F9E498C
	.4byte 0x40F1A7FA
	.4byte 0x3F9C81AB
	.4byte 0x410C6432
	.4byte 0x3F9A7A9B
	.4byte 0x411FB386
	.4byte 0x3F98399D
	.4byte 0x4132BAB9
	.4byte 0x3F95C44B
	.4byte 0x41457343
	.4byte 0x3F932075
	.4byte 0x4157D751
	.4byte 0x3F905408
	.4byte 0x4169E1D2
	.4byte 0x3F8D64EB
	.4byte 0x417B8E70
	.4byte 0x3F8A58EC
	.4byte 0x41866CC7
	.4byte 0x3F8735A9
	.4byte 0x418EE021
	.4byte 0x3F84007D
	.4byte 0x41972029
	.4byte 0x3F80BE73
	.4byte 0x419F2C10
	.4byte 0x3F7AE877
	.4byte 0x41A70354
	.4byte 0x3F744C4A
	.4byte 0x41AEA5B6
	.4byte 0x3F6DB032
	.4byte 0x41B61338
	.4byte 0x3F671B36
	.4byte 0x41BD4C11
	.4byte 0x3F60938F
	.4byte 0x41C450AE
	.4byte 0x3F5A1EB2
	.4byte 0x41CB21A3
	.4byte 0x3F53C157
	.4byte 0x41D1BFAE
	.4byte 0x3F4D7F84
	.4byte 0x41D82BAA
	.4byte 0x3F475C97
	.4byte 0x41DE668F
	.4byte 0x3F415B59
	.4byte 0x41E4716A
	.4byte 0x3F3B7E02
	.4byte 0x41EA4D5A
	.4byte 0x3F35C652
	.4byte 0x41EFFB8C
	.4byte 0x3F303593
	.4byte 0x41F57D39
	.4byte 0x3F2ACCAE
	.4byte 0x41FAD39E
	.4byte 0x3F258C33
	.4byte 0x42000000
	.4byte 0x3F207467

glabel lbl_801A5328
	# ROM: 0x1A1428
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A5354
	# ROM: 0x1A1454
	.asciz "Util.h"
	.balign 8

glabel lbl_801A5360
	# ROM: 0x1A1460
	.asciz "snd_AxManager.cpp"
	.balign 4

glabel lbl_801A5374
	# ROM: 0x1A1474
	.asciz "not initialized AI \n"
	.balign 4

glabel lbl_801A538C
	# ROM: 0x1A148C
	.asciz "Zero buffer is not created."

glabel lbl_801A53A8
	# ROM: 0x1A14A8
	.asciz "Voice Acquisition failed!\n"
	.balign 8

glabel lbl_801A53C8
	# ROM: 0x1A14C8
	.asciz "NW4HBM:Pointer must not be NULL (voice)"
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5450
	# ROM: 0x1A1550
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A5474
	# ROM: 0x1A1574
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5480
	# ROM: 0x1A1580
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A54A4
	# ROM: 0x1A15A4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A54B0
	# ROM: 0x1A15B0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A54D4
	# ROM: 0x1A15D4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A54E0
	# ROM: 0x1A15E0
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801A5504
	# ROM: 0x1A1604
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5510
	# ROM: 0x1A1610
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A5534
	# ROM: 0x1A1634
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5540
	# ROM: 0x1A1640
	.asciz "bus is out of bounds(%d)\n%d <= bus < %d not satisfied."
	.balign 4

glabel lbl_801A5578
	# ROM: 0x1A1678
	.asciz "AxManager.h"
	.balign 8

glabel lbl_801A5588
	# ROM: 0x1A1688
	.asciz "snd_AxVoice.cpp"
	.asciz "channelCount is out of bounds(%d)\n%d <= channelCount <= %d not satisfied."
	.balign 4
	.asciz "voiceOutCount is out of bounds(%d)\n%d <= voiceOutCount <= %d not satisfied."
	.asciz "NW4HBM:Failed assertion ! mActiveFlag"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (vpb)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (waveParam.channelParam[channelIndex].dataAddr)"

glabel lbl_801A56D0
	# ROM: 0x1A17D0
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4

glabel lbl_801A5718
	# ROM: 0x1A1818
	.asciz "bus is out of bounds(%d)\n%d <= bus < %d not satisfied."
	.balign 4
	.asciz "voiceOutIndex is out of bounds(%d)\n%d <= voiceOutIndex <= %d not satisfied."

glabel lbl_801A579C
	# ROM: 0x1A189C
	.asciz "priority is out of bounds(%d)\n%d <= priority <= %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Failed assertion channelIndex < CHANNEL_MAX"
	.balign 8

glabel lbl_801A5818
	# ROM: 0x1A1918
	.asciz "Invalid format\n"
	.asciz "NW4HBM:Pointer must not be NULL (param)"

glabel lbl_801A5850
	# ROM: 0x1A1950
	.asciz "NW4HBM:Pointer must not be NULL (voice)"

glabel lbl_801A5878
	# ROM: 0x1A1978
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail7AxVoiceFv
	.4byte InvalidateData__Q46nw4hbm3snd6detail7AxVoiceFPCvPCv
	.4byte InvalidateWaveData__Q46nw4hbm3snd6detail7AxVoiceFPCvPCv
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail15DisposeCallbackFv
	.4byte 0
	.4byte 0
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A58D0
	# ROM: 0x1A19D0
	.asciz "snd_BankFile.cpp"
	.balign 4
	.asciz "NW4HBM:Failed assertion fileHeader->signature == BankFile::SIGNATURE_FILE"
	.balign 4
	.asciz "bank file is not supported version.\n  please reconvert file using new version tools.\n"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (bankData)"
	.balign 4
	.asciz "NW4HBM:Failed assertion mDataBlock->blockHeader.kind == BankFile::SIGNATURE_DATA_BLOCK"
	.balign 4
	.asciz "NW4HBM:Failed assertion mWaveBlock->blockHeader.kind == BankFile::SIGNATURE_WAVE_BLOCK"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (instInfo)"
	.balign 4

glabel lbl_801A5A90
	# ROM: 0x1A1B90
	.asciz "NW4HBM:Pointer must not be NULL (mHeader)"
	.balign 4

glabel lbl_801A5ABC
	# ROM: 0x1A1BBC
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A5AE8
	# ROM: 0x1A1BE8
	.asciz "Util.h"
	.balign 4

glabel lbl_801A5AF0
	# ROM: 0x1A1BF0
	.asciz "NW4HBM:Failed assertion ref.dataType == 2"
	.balign 4

glabel lbl_801A5B1C
	# ROM: 0x1A1C1C
	.asciz "Util.h"
	.balign 4

glabel lbl_801A5B24
	# ROM: 0x1A1C24
	.asciz "NW4HBM:Failed assertion ref.dataType == 3"
	.balign 4

glabel lbl_801A5B50
	# ROM: 0x1A1C50
	.asciz "Util.h"
	.balign 4

glabel lbl_801A5B58
	# ROM: 0x1A1C58
	.asciz "NW4HBM:Failed assertion ref.dataType == 1"
	.balign 4

glabel lbl_801A5B84
	# ROM: 0x1A1C84
	.asciz "Util.h"
	.balign 8

glabel lbl_801A5B90
	# ROM: 0x1A1C90
	.asciz "snd_BasicSound.cpp"
	.balign 4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4

glabel lbl_801A5BEC
	# ROM: 0x1A1CEC
	.asciz "priority is out of bounds(%d)\n%d <= priority <= %d not satisfied."
	.balign 4

glabel lbl_801A5C30
	# ROM: 0x1A1D30
	.asciz "NW4HBM:Failed assertion volume >= 0.0f"
	.balign 4

glabel lbl_801A5C58
	# ROM: 0x1A1D58
	.asciz "NW4HBM:Failed assertion pitch >= 0.0f"
	.balign 4

glabel lbl_801A5C80
	# ROM: 0x1A1D80
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q46nw4hbm3snd6detail10BasicSoundCFv
	.4byte __dt__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte Update__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte StartPrepared__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte Stop__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte Pause__Q46nw4hbm3snd6detail10BasicSoundFbi
	.4byte SetAutoStopCounter__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte lbl_8012CF88
	.4byte Shutdown__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte FadeIn__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte IsPause__Q46nw4hbm3snd6detail10BasicSoundCFv
	.4byte SetInitialVolume__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetVolume__Q46nw4hbm3snd6detail10BasicSoundFfi
	.4byte SetPitch__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetPan__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetSurroundPan__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetLpfFreq__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetPlayerPriority__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte 0
	.4byte 0
	.4byte InitParam__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801A5CE8
	# ROM: 0x1A1DE8
	.asciz "snd_Channel.cpp"

glabel lbl_801A5CF8
	# ROM: 0x1A1DF8
	.asciz "NW4HBM:Failed assertion mSweepLength != 0"
	.balign 4

glabel lbl_801A5D24
	# ROM: 0x1A1E24
	.asciz "NW4HBM:Pointer must not be NULL (arg)"
	.balign 4
	.asciz "priority is out of bounds(%d)\n%d <= priority <= %d not satisfied."
	.balign 4
	.asciz "Channel Allocation failed!"
	.balign 4

glabel lbl_801A5DAC
	# ROM: 0x1A1EAC
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A5DD0
	# ROM: 0x1A1ED0
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5DDC
	# ROM: 0x1A1EDC
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A5E00
	# ROM: 0x1A1F00
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5E0C
	# ROM: 0x1A1F0C
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801A5E30
	# ROM: 0x1A1F30
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5E3C
	# ROM: 0x1A1F3C
	.asciz "NW4HBM:Pointer must not be NULL (obj)"
	.balign 4

glabel lbl_801A5E64
	# ROM: 0x1A1F64
	.asciz "InstanceManager.h"
	.balign 4

glabel lbl_801A5E78
	# ROM: 0x1A1F78
	.asciz "NW4HBM:Pointer must not be NULL (obj)"
	.balign 4

glabel lbl_801A5EA0
	# ROM: 0x1A1FA0
	.asciz "InstanceManager.h"
	.balign 4

glabel lbl_801A5EB4
	# ROM: 0x1A1FB4
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A5ED8
	# ROM: 0x1A1FD8
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5EE4
	# ROM: 0x1A1FE4
	.asciz "NW4HBM:Pointer must not be NULL (obj)"
	.balign 4

glabel lbl_801A5F0C
	# ROM: 0x1A200C
	.asciz "InstanceManager.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5F50
	# ROM: 0x1A2050
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A5F74
	# ROM: 0x1A2074
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A5F80
	# ROM: 0x1A2080
	.asciz "snd_EnvGenerator.cpp"
	.balign 4

glabel lbl_801A5F98
	# ROM: 0x1A2098
	.asciz "scale is out of bounds(%d)\n%d <= scale <= %d not satisfied."

glabel lbl_801A5FD4
	# ROM: 0x1A20D4
	.asciz "attack is out of bounds(%d)\n%d <= attack <= %d not satisfied."
	.balign 4
	.asciz "decay is out of bounds(%d)\n%d <= decay <= %d not satisfied."

glabel lbl_801A6050
	# ROM: 0x1A2150
	.asciz "release is out of bounds(%d)\n%d <= release <= %d not satisfied."

glabel lbl_801A6090
	# ROM: 0x1A2190
	.asciz "sustain is out of bounds(%d)\n%d <= sustain <= %d not satisfied."
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A6100
	# ROM: 0x1A2200
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A6124
	# ROM: 0x1A2224
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A6160
	# ROM: 0x1A2260
	.asciz "snd_FrameHeap.cpp"
	.balign 4

glabel lbl_801A6174
	# ROM: 0x1A2274
	.asciz "NW4HBM:Pointer must not be NULL (startAddress)"
	.balign 4

glabel lbl_801A61A4
	# ROM: 0x1A22A4
	.asciz "NW4HBM:Failed assertion IsValid()"
	.balign 4
	.asciz "FrameHeap::Clear(): NewSection is Failed"
	.balign 4
	.asciz "FrameHeap::Alloc: Internal Error"
	.balign 4
	.asciz "FrameHeap::SaveState(): MEMFreeByStateToFrmHeap is Failed"
	.balign 4
	.asciz "level is out of bounds(%d)\n%d <= level < %d not satisfied."
	.balign 4
	.asciz "FrameHeap::LoadState(): MEMFreeByStateToFrmHeap is Failed"
	.balign 4
	.asciz "FrameHeap::LoadState(): MEMRecordStateForFrmHeap is Failed"
	.balign 4
	.asciz "FrameHeap::LoadState(): NewSection is Failed"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A6368
	# ROM: 0x1A2468
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A638C
	# ROM: 0x1A248C
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A6398
	# ROM: 0x1A2498
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A63BC
	# ROM: 0x1A24BC
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A63C8
	# ROM: 0x1A24C8
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A63EC
	# ROM: 0x1A24EC
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A63F8
	# ROM: 0x1A24F8
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801A641C
	# ROM: 0x1A251C
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A6428
	# ROM: 0x1A2528
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A644C
	# ROM: 0x1A254C
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A6458
	# ROM: 0x1A2558
	.asciz "snd_InstancePool.cpp"
	.balign 4

glabel lbl_801A6470
	# ROM: 0x1A2570
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 8

glabel lbl_801A64A0
	# ROM: 0x1A25A0
	.asciz "snd_Lfo.cpp"

glabel lbl_801A64AC
	# ROM: 0x1A25AC
	.asciz "index is out of bounds(%d)\n%d <= index < %d not satisfied."
	.balign 4

glabel lbl_801A64E8
	# ROM: 0x1A25E8
	.4byte 0
	.4byte 0
	.4byte lbl_80130D2C
	.4byte 0

glabel lbl_801A64F8
	# ROM: 0x1A25F8
	.asciz "snd_MmlParser.cpp"
	.balign 8
	.asciz "NW4HBM:Pointer must not be NULL (track)"
	.asciz "NW4HBM:Pointer must not be NULL (player)"
	.balign 4
	.asciz "seq: must use alloctrack in startup code"
	.balign 4
	.asciz "nw4hbm::snd::MmlParser: too large prg No. %d"
	.balign 4
	.asciz "varNo is out of bounds(%d)\n%d <= varNo <= %d not satisfied."
	.asciz "T"
	.balign 4
	.asciz "G"
	.balign 8
	.asciz "#%08x[%d]: printvar %sVAR_%d(%d) = %d\n"
	.balign 4
	.asciz "nw4hbm::snd::MmlParser: opentrack for not allocated track"
	.balign 4
	.asciz "nw4hbm::snd::MmlParser: opentrack for self track"
	.balign 4
	.asciz "nw4hbm::snd::MmlParser: cannot 'call' because already too deep"
	.balign 4
	.asciz "nw4hbm::snd::MmlParser: unmatched sequence command 'ret'"
	.balign 4
	.asciz "nw4hbm::snd::MmlParser: cannot 'loop_start' because already too deep"
	.balign 4
	.asciz "nw4hbm::snd::MmlParser: unmatched sequence command 'loop_end'"
	.balign 4
	.asciz "NW4HBM:Failed assertion cmd == MML_EX_COMMAND"
	.balign 4

glabel lbl_801A67D4
	# ROM: 0x1A28D4
	.4byte lbl_80131494
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131794
	.4byte lbl_801317FC
	.4byte lbl_8013180C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131508
	.4byte lbl_801314D8
	.4byte lbl_801314E8
	.4byte lbl_801314F0
	.4byte lbl_801314F8
	.4byte lbl_80131500
	.4byte lbl_8013154C
	.4byte lbl_80131554
	.4byte lbl_80131634
	.4byte lbl_8013165C
	.4byte lbl_80131570
	.4byte lbl_8013159C
	.4byte lbl_801315C8
	.4byte lbl_801315D0
	.4byte lbl_80131674
	.4byte lbl_80131568
	.4byte lbl_80131614
	.4byte lbl_8013161C
	.4byte lbl_80131624
	.4byte lbl_8013162C
	.4byte lbl_8013189C
	.4byte lbl_801314E0
	.4byte lbl_801316B0
	.4byte lbl_80131538
	.4byte lbl_80131688
	.4byte lbl_80131690
	.4byte lbl_80131698
	.4byte lbl_801316A8
	.4byte lbl_80131520
	.4byte lbl_801314C8
	.4byte lbl_801316A0
	.4byte lbl_80131C8C
	.4byte lbl_801315D8
	.4byte lbl_8013148C
	.4byte lbl_80131C8C
	.4byte lbl_801315E8
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_80131C8C
	.4byte lbl_801318EC
	.4byte lbl_8013185C
	.asciz "NW4HBM:Failed assertion i < 4"
	.balign 4

glabel lbl_801A69E8
	# ROM: 0x1A2AE8
	.4byte 0
	.4byte 0
	.4byte CommandProc__Q46nw4hbm3snd6detail9MmlParserCFPQ46nw4hbm3snd6detail11MmlSeqTrackUlll
	.4byte NoteOnCommandProc__Q46nw4hbm3snd6detail9MmlParserCFPQ46nw4hbm3snd6detail11MmlSeqTrackiilb

glabel lbl_801A69F8
	# ROM: 0x1A2AF8
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail11MmlSeqTrackFv
	.4byte Parse__Q46nw4hbm3snd6detail11MmlSeqTrackFb

glabel lbl_801A6A08
	# ROM: 0x1A2B08
	.asciz "snd_MmlSeqTrackAllocator.cpp"
	.balign 4

glabel lbl_801A6A28
	# ROM: 0x1A2B28
	.asciz "NW4HBM:Pointer must not be NULL (track)"

glabel lbl_801A6A50
	# ROM: 0x1A2B50
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail20MmlSeqTrackAllocatorFv
	.4byte AllocTrack__Q46nw4hbm3snd6detail20MmlSeqTrackAllocatorFPQ46nw4hbm3snd6detail9SeqPlayer
	.4byte FreeTrack__Q46nw4hbm3snd6detail20MmlSeqTrackAllocatorFPQ46nw4hbm3snd6detail8SeqTrack
	.4byte 0

glabel lbl_801A6A68
	# ROM: 0x1A2B68
	.asciz "snd_NandSoundArchive.cpp"
	.balign 4

glabel lbl_801A6A84
	# ROM: 0x1A2B84
	.asciz "Failed close mcs file. ErrID=%d\n"
	.balign 4
	.asciz "Cannot find file %s\n"
	.balign 4
	.asciz "Cannot load header\n"
	.asciz "NW4HBM:Failed assertion nandLen+1 < FILE_PATH_MAX"
	.balign 4
	.asciz "NW4HBM:Failed assertion i < FILE_PATH_MAX"
	.balign 4
	.asciz "NW4HBM:Failed assertion mOpen"
	.balign 8
	.asciz "NandSoundArchive::LoadHeader cannot seek file.\n"
	.asciz "NandSoundArchive::LoadHeader cannot read file.\n"
	.asciz "SoundArchive::LoadHeader buffer size is too small.\n"
	.asciz "SoundArchive::LoadLabelStringData buffer size is too small."
	.asciz "NandSoundArchive::LoadLabelStringData cannot seek file.\n"
	.balign 4
	.asciz "NandSoundArchive::LoadLabelStringData cannot read file.\n"
	.balign 4

glabel lbl_801A6CA0
	# ROM: 0x1A2DA0
	.asciz "NW4HBM:Pointer must not be NULL (buf)"
	.balign 4

glabel lbl_801A6CC8
	# ROM: 0x1A2DC8
	.asciz "Unsupported Seek origin"

glabel lbl_801A6CE0
	# ROM: 0x1A2DE0
	.4byte 0
	.4byte 0
	.4byte lbl_801329D4
	.4byte lbl_801325B4
	.4byte lbl_8014D2D8
	.4byte lbl_80132840
	.4byte lbl_8014D430
	.4byte lbl_8014D59C
	.4byte lbl_8014D678
	.4byte lbl_801329CC
	.4byte lbl_801329C4
	.4byte lbl_801329B4
	.4byte lbl_801329AC
	.4byte lbl_8013299C
	.4byte lbl_80132994
	.4byte lbl_8013298C
	.4byte lbl_801329E0
	.4byte lbl_801328F0
	.4byte Cancel__Q36nw4hbm2ut10FileStreamFv
	.4byte CancelAsync__Q36nw4hbm2ut10FileStreamFPFlPQ36nw4hbm2ut8IOStreamPv_vPv
	.4byte lbl_801329BC
	.4byte lbl_801329A4
	.4byte lbl_801329E8
	.4byte 0

glabel lbl_801A6D40
	# ROM: 0x1A2E40
	.4byte 0
	.4byte 0
	.4byte lbl_8013210C
	.4byte lbl_80132A00
	.4byte lbl_801329F8
	.4byte lbl_8013260C
	.4byte lbl_80132400
	.4byte lbl_801324C8

glabel lbl_801A6D60
	# ROM: 0x1A2E60
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A6D84
	# ROM: 0x1A2E84
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A6D90
	# ROM: 0x1A2E90
	.asciz "snd_RemoteSpeaker.cpp"
	.balign 4
	.asciz "RemoteSpeaker::Setup is busy."
	.balign 4
	.asciz "NW4HBM:Failed assertion IsAvailable()"
	.balign 4
	.asciz "WPADSendStreamData failed. %d"
	.balign 4

glabel lbl_801A6E10
	# ROM: 0x1A2F10
	.asciz "Playing time of remote speaker(%d) is over 8 minutes."
	.balign 4

glabel lbl_801A6E48
	# ROM: 0x1A2F48
	.asciz "snd_RemoteSpeakerManager.cpp"
	.balign 4
	.asciz "channelIndex is out of bounds(%d)\n%d <= channelIndex < %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Failed assertion &manager.mRemoteSpeakerAlarm == alarm"
	.balign 4
	.asciz "wrong remote sample size"
	.balign 4

glabel lbl_801A6F10
	# ROM: 0x1A3010
	.asciz "snd_SeqFile.cpp"
	.asciz "NW4HBM:Failed assertion fileHeader->signature == SeqFile::SIGNATURE_FILE"
	.balign 4
	.asciz "seq file is not supported version.\n  please reconvert file using new version tools.\n"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (seqData)"
	.balign 4
	.asciz "NW4HBM:Failed assertion mDataBlock->blockHeader.kind == SeqFile::SIGNATURE_DATA_BLOCK"
	.balign 4

glabel lbl_801A7048
	# ROM: 0x1A3148
	.asciz "NW4HBM:Pointer must not be NULL (mHeader)"
	.balign 8

glabel lbl_801A7078
	# ROM: 0x1A3178
	.asciz "snd_SeqPlayer.cpp"
	.balign 4
	.asciz "trackNo is out of bounds(%d)\n%d <= trackNo < %d not satisfied."
	.balign 4
	.asciz "Not enough SeqTrack."
	.balign 4

glabel lbl_801A70E4
	# ROM: 0x1A31E4
	.asciz "NW4HBM:Pointer must not be NULL (seqTrack)"
	.balign 4
	.asciz "NW4HBM:Failed assertion tempoRatio >= 0.0f"
	.balign 4

glabel lbl_801A713C
	# ROM: 0x1A323C
	.asciz "NW4HBM:Failed assertion volume >= 0.0f"
	.balign 4

glabel lbl_801A7164
	# ROM: 0x1A3264
	.asciz "NW4HBM:Failed assertion pitch >= 0.0f"
	.balign 4

glabel lbl_801A718C
	# ROM: 0x1A328C
	.asciz "bus is out of bounds(%d)\n%d <= bus < %d not satisfied."
	.balign 4

glabel lbl_801A71C4
	# ROM: 0x1A32C4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4

glabel lbl_801A720C
	# ROM: 0x1A330C
	.asciz "prio is out of bounds(%d)\n%d <= prio <= %d not satisfied."
	.balign 4
	.asciz "varNo is out of bounds(%d)\n%d <= varNo < %d not satisfied."
	.balign 8
	.4byte 0xFFFFFFFF
	.4byte SetMute__Q46nw4hbm3snd6detail8SeqTrackFQ36nw4hbm3snd7SeqMute
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetSilence__Q46nw4hbm3snd6detail8SeqTrackFbi
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetVolume__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetPitch__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetPan__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetSurroundPan__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetLpfFreq__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetPanRange__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetModDepth__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetModSpeed__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetMainSend__Q46nw4hbm3snd6detail8SeqTrackFf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetFxSend__Q46nw4hbm3snd6detail8SeqTrackFQ36nw4hbm3snd6AuxBusf
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetRemoteSend__Q46nw4hbm3snd6detail8SeqTrackFif
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte SetRemoteFxSend__Q46nw4hbm3snd6detail8SeqTrackFif

glabel lbl_801A732C
	# ROM: 0x1A342C
	.asciz "varNo is out of bounds(%d)\n%d <= varNo <= %d not satisfied."
	.asciz "NW4HBM:Failed assertion mActiveFlag"
	.asciz "NW4HBM:Failed assertion mStartedFlag"
	.balign 4

glabel lbl_801A73B4
	# ROM: 0x1A34B4
	.asciz "NW4HBM:Failed assertion sPlayerList.IsEmpty()"
	.balign 8

glabel lbl_801A73E8
	# ROM: 0x1A34E8
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail9SeqPlayerFv
	.4byte Start__Q46nw4hbm3snd6detail9SeqPlayerFv
	.4byte Stop__Q46nw4hbm3snd6detail9SeqPlayerFv
	.4byte Pause__Q46nw4hbm3snd6detail9SeqPlayerFb
	.4byte lbl_80130D08
	.4byte lbl_80130CF4
	.4byte lbl_80130CE0
	.4byte lbl_80130CCC
	.4byte SetVolume__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte SetPitch__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte SetPan__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte SetSurroundPan__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte SetPan2__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte SetSurroundPan2__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte SetLpfFreq__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte lbl_80130CC4
	.4byte lbl_80130CBC
	.4byte lbl_80130CB4
	.4byte lbl_80130CAC
	.4byte lbl_80130CA4
	.4byte lbl_80130C9C
	.4byte lbl_80130C94
	.4byte SetOutputLine__Q46nw4hbm3snd6detail9SeqPlayerFi
	.4byte SetMainOutVolume__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte SetMainSend__Q46nw4hbm3snd6detail9SeqPlayerFf
	.4byte SetFxSend__Q46nw4hbm3snd6detail9SeqPlayerFQ36nw4hbm3snd6AuxBusf
	.4byte SetRemoteOutVolume__Q46nw4hbm3snd6detail9SeqPlayerFif
	.4byte SetRemoteSend__Q46nw4hbm3snd6detail9SeqPlayerFif
	.4byte SetRemoteFxSend__Q46nw4hbm3snd6detail9SeqPlayerFif
	.4byte GetOutputLine__Q46nw4hbm3snd6detail9SeqPlayerCFv
	.4byte GetMainOutVolume__Q46nw4hbm3snd6detail9SeqPlayerCFv
	.4byte GetMainSend__Q46nw4hbm3snd6detail9SeqPlayerCFv
	.4byte GetFxSend__Q46nw4hbm3snd6detail9SeqPlayerCFQ36nw4hbm3snd6AuxBus
	.4byte GetRemoteOutVolume__Q46nw4hbm3snd6detail9SeqPlayerCFi
	.4byte GetRemoteSend__Q46nw4hbm3snd6detail9SeqPlayerCFi
	.4byte GetRemoteFxSend__Q46nw4hbm3snd6detail9SeqPlayerCFi
	.4byte 0
	.4byte 0
	.4byte _8___dt__Q46nw4hbm3snd6detail9SeqPlayerFv
	.4byte lbl_80130D24
	.4byte lbl_80130D1C
	.4byte InvalidateData__Q46nw4hbm3snd6detail9SeqPlayerFPCvPCv
	.4byte lbl_80130C90
	.4byte ChannelCallback__Q46nw4hbm3snd6detail9SeqPlayerFPQ46nw4hbm3snd6detail7Channel
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail11BasicPlayerFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A7580
	# ROM: 0x1A3680
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A75A4
	# ROM: 0x1A36A4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A75B0
	# ROM: 0x1A36B0
	.asciz "snd_SeqSound.cpp"
	.balign 4

glabel lbl_801A75C4
	# ROM: 0x1A36C4
	.asciz "NW4HBM:Pointer must not be NULL (callback)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (GetSoundPlayer())"
	.balign 4

glabel lbl_801A7624
	# ROM: 0x1A3724
	.asciz "NW4HBM:Pointer must not be NULL (seqBase)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (sound)"
	.asciz "NW4HBM:Failed assertion tempoRatio >= 0.0f"
	.balign 4

glabel lbl_801A76A4
	# ROM: 0x1A37A4
	.asciz "priority is out of bounds(%d)\n%d <= priority <= %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Failed assertion volume >= 0.0f"
	.balign 4
	.asciz "NW4HBM:Failed assertion pitch >= 0.0f"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (var)"
	.balign 4
	.asciz "varNo is out of bounds(%d)\n%d <= varNo < %d not satisfied."
	.balign 4
	.asciz "trackNo is out of bounds(%d)\n%d <= trackNo < %d not satisfied."
	.balign 4

glabel lbl_801A77DC
	# ROM: 0x1A38DC
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q46nw4hbm3snd6detail8SeqSoundCFv
	.4byte __dt__Q46nw4hbm3snd6detail8SeqSoundFv
	.4byte Update__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte StartPrepared__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte Stop__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte Pause__Q46nw4hbm3snd6detail10BasicSoundFbi
	.4byte SetAutoStopCounter__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte lbl_8012CF88
	.4byte Shutdown__Q46nw4hbm3snd6detail8SeqSoundFv
	.4byte FadeIn__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte IsPause__Q46nw4hbm3snd6detail10BasicSoundCFv
	.4byte SetInitialVolume__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetVolume__Q46nw4hbm3snd6detail10BasicSoundFfi
	.4byte SetPitch__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetPan__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetSurroundPan__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetLpfFreq__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetPlayerPriority__Q46nw4hbm3snd6detail8SeqSoundFi
	.4byte IsAttachedTempSpecialHandle__Q46nw4hbm3snd6detail8SeqSoundFv
	.4byte DetachTempSpecialHandle__Q46nw4hbm3snd6detail8SeqSoundFv
	.4byte InitParam__Q46nw4hbm3snd6detail8SeqSoundFv
	.4byte GetBasicPlayer__Q46nw4hbm3snd6detail8SeqSoundFv
	.4byte GetBasicPlayer__Q46nw4hbm3snd6detail8SeqSoundCFv

glabel lbl_801A7840
	# ROM: 0x1A3940
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A7864
	# ROM: 0x1A3964
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A7870
	# ROM: 0x1A3970
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A7894
	# ROM: 0x1A3994
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A78A0
	# ROM: 0x1A39A0
	.asciz "NW4HBM:Pointer must not be NULL (sound)"

glabel lbl_801A78C8
	# ROM: 0x1A39C8
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A78E0
	# ROM: 0x1A39E0
	.asciz "snd_SeqTrack.cpp"
	.balign 4

glabel lbl_801A78F4
	# ROM: 0x1A39F4
	.asciz "playerTrackNo is out of bounds(%d)\n%d <= playerTrackNo <= %d not satisfied."
	.asciz "release is out of bounds(%d)\n%d <= release <= %d not satisfied."
	.asciz "NW4HBM:Pointer must not be NULL (dropChannel)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (track)"
	.asciz "NW4HBM:Pointer must not be NULL (channel)"
	.balign 4
	.asciz "NW4HBM:Failed assertion false"
	.balign 4

glabel lbl_801A7A24
	# ROM: 0x1A3B24
	.asciz "NW4HBM:Failed assertion pitch >= 0.0f"
	.balign 4

glabel lbl_801A7A4C
	# ROM: 0x1A3B4C
	.asciz "bus is out of bounds(%d)\n%d <= bus < %d not satisfied."
	.balign 4

glabel lbl_801A7A84
	# ROM: 0x1A3B84
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "varNo is out of bounds(%d)\n%d <= varNo < %d not satisfied."
	.balign 4

glabel lbl_801A7B08
	# ROM: 0x1A3C08
	.asciz "varNo is out of bounds(%d)\n%d <= varNo <= %d not satisfied."
	.balign 8
	.asciz "key is out of bounds(%d)\n%d <= key <= %d not satisfied."
	.asciz "velocity is out of bounds(%d)\n%d <= velocity <= %d not satisfied."
	.balign 4
	.asciz "portatime zero is invalid."
	.balign 4
	.asciz "fadeTimes is out of bounds(%d)\n%d <= fadeTimes <= %d not satisfied."
	.asciz "Channel.h"
	.balign 4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "Channel.h"
	.balign 4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "Channel.h"
	.balign 4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "Channel.h"
	.balign 8

glabel lbl_801A7D30
	# ROM: 0x1A3E30
	.asciz "snd_SoundArchive.cpp"
	.balign 4

glabel lbl_801A7D48
	# ROM: 0x1A3E48
	.asciz "NW4HBM:Pointer must not be NULL (fileReader)"
	.balign 4

glabel lbl_801A7D78
	# ROM: 0x1A3E78
	.asciz "Too long file path \"%s/%s\""
	.balign 8

glabel lbl_801A7D98
	# ROM: 0x1A3E98
	.asciz "NW4HBM:Failed assertion nullPos < FILE_PATH_MAX"

glabel lbl_801A7DC8
	# ROM: 0x1A3EC8
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3snd12SoundArchiveFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801A7DE8
	# ROM: 0x1A3EE8
	.asciz "snd_SoundArchiveFile.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (soundArchiveData)"
	.balign 4
	.asciz "NW4HBM:Failed assertion fileHeader->signature == SoundArchiveFile::SIGNATURE_FILE"
	.balign 4
	.asciz "sound archive file is not supported version.\n  please reconvert file using new version tools.\n"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (stringChunk)"
	.balign 8
	.asciz "NW4HBM:Failed assertion symbolBlock->blockHeader.kind == SoundArchiveFile::SIGNATURE_SYMB_BLOCK"
	.asciz "NW4HBM:Pointer must not be NULL (infoChunk)"
	.asciz "NW4HBM:Failed assertion infoBlock->blockHeader.kind == SoundArchiveFile::SIGNATURE_INFO_BLOCK"
	.balign 4

glabel lbl_801A800C
	# ROM: 0x1A410C
	.asciz "NW4HBM:Failed assertion id < mStringTable->offsetTable.count"
	.balign 4

glabel lbl_801A804C
	# ROM: 0x1A414C
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A8078
	# ROM: 0x1A4178
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8080
	# ROM: 0x1A4180
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A80AC
	# ROM: 0x1A41AC
	.asciz "Util.h"
	.balign 4

glabel lbl_801A80B4
	# ROM: 0x1A41B4
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A80E0
	# ROM: 0x1A41E0
	.asciz "Util.h"
	.balign 4

glabel lbl_801A80E8
	# ROM: 0x1A41E8
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A8114
	# ROM: 0x1A4214
	.asciz "Util.h"
	.balign 4

glabel lbl_801A811C
	# ROM: 0x1A421C
	.asciz "NW4HBM:Failed assertion ref.dataType == 3"
	.balign 4

glabel lbl_801A8148
	# ROM: 0x1A4248
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8150
	# ROM: 0x1A4250
	.asciz "NW4HBM:Failed assertion ref.dataType == 2"
	.balign 4

glabel lbl_801A817C
	# ROM: 0x1A427C
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8184
	# ROM: 0x1A4284
	.asciz "NW4HBM:Failed assertion ref.dataType == 1"
	.balign 4

glabel lbl_801A81B0
	# ROM: 0x1A42B0
	.asciz "Util.h"
	.balign 4

glabel lbl_801A81B8
	# ROM: 0x1A42B8
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A81E4
	# ROM: 0x1A42E4
	.asciz "Util.h"
	.balign 4

glabel lbl_801A81EC
	# ROM: 0x1A42EC
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A8218
	# ROM: 0x1A4318
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8220
	# ROM: 0x1A4320
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A824C
	# ROM: 0x1A434C
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8254
	# ROM: 0x1A4354
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A8280
	# ROM: 0x1A4380
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8288
	# ROM: 0x1A4388
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A82B4
	# ROM: 0x1A43B4
	.asciz "Util.h"
	.balign 4

glabel lbl_801A82BC
	# ROM: 0x1A43BC
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A82E8
	# ROM: 0x1A43E8
	.asciz "Util.h"
	.balign 4

glabel lbl_801A82F0
	# ROM: 0x1A43F0
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A831C
	# ROM: 0x1A441C
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8324
	# ROM: 0x1A4424
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A8350
	# ROM: 0x1A4450
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8358
	# ROM: 0x1A4458
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A8384
	# ROM: 0x1A4484
	.asciz "Util.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4
	.asciz "Util.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4
	.asciz "Util.h"
	.balign 4

glabel lbl_801A83F4
	# ROM: 0x1A44F4
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A8420
	# ROM: 0x1A4520
	.asciz "Util.h"
	.balign 4

glabel lbl_801A8428
	# ROM: 0x1A4528
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A8454
	# ROM: 0x1A4554
	.asciz "Util.h"
	.balign 8

glabel lbl_801A8460
	# ROM: 0x1A4560
	.asciz "snd_SoundArchiveLoader.cpp"
	.balign 4

glabel lbl_801A847C
	# ROM: 0x1A457C
	.asciz "NW4HBM:Pointer must not be NULL (allocater)"

glabel lbl_801A84A8
	# ROM: 0x1A45A8
	.asciz "snd_SoundArchivePlayer.cpp"
	.balign 4

glabel lbl_801A84C4
	# ROM: 0x1A45C4
	.asciz "NW4HBM:Pointer must not be NULL (arc)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (strmBuffer)"
	.balign 4
	.asciz "NW4HBM:Failed assertion strmBufferSize >= GetRequiredStrmBufferSize( arc )"
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nbuffer must be aligned to 4 bytes boundary."
	.balign 4
	.asciz "NW4HBM:Failed assertion size >= GetRequiredMemSize( arc )"
	.balign 4
	.asciz "NW4HBM:Failed assertion createNum == numSounds"
	.balign 4
	.asciz "NW4HBM:Failed assertion createNum == numTracks"
	.balign 4
	.asciz "NW4HBM:Failed assertion static_cast<char*>(buf) - static_cast<char*>(buffer) == GetRequiredMemSize( arc )"
	.balign 4

glabel lbl_801A86E8
	# ROM: 0x1A47E8
	.asciz "playerId is out of bounds(%d)\n%d <= playerId < %d not satisfied."
	.balign 8

glabel lbl_801A8730
	# ROM: 0x1A4830
	.asciz "Setup is not completed."
	.asciz "NW4HBM:Pointer must not be NULL (mSoundArchive)"
	.asciz "Failed to SoundArchivePlayer::GetGroupAddress because group table is not allocated.\n"
	.balign 4
	.asciz "Failed to SoundArchivePlayer::GetGroupWaveDataAddress because group table is not allocated.\n"
	.balign 4
	.asciz "Failed to SoundArchivePlayer::SetGroupAddress because group table is not allocated.\n"
	.balign 4
	.asciz "groupId is out of bounds(%d)\n%d <= groupId < %d not satisfied."
	.balign 4
	.asciz "Failed to SoundArchivePlayer::SetGroupWaveDataAddress because group table is not allocated.\n"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (handle)"
	.balign 4

glabel lbl_801A8954
	# ROM: 0x1A4A54
	.asciz "NW4HBM:Pointer must not be NULL (info)"
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nloadBlockSize must be aligned to 32 bytes boundary."
	.balign 4
	.asciz "NW4HBM:Failed assertion detail::TaskManager::GetInstance().GetTaskBufferSize() >= sizeof(SeqLoadTask)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (addr)"
	.balign 4
	.asciz "NW4HBM:Failed assertion detail::TaskManager::GetInstance().GetTaskBufferSize() >= sizeof(StrmHeaderLoadTask)"
	.balign 4
	.asciz "NW4HBM:Failed assertion detail::TaskManager::GetInstance().GetTaskBufferSize() >= sizeof(StrmDataLoadTask)"
	.balign 8

glabel lbl_801A8B40
	# ROM: 0x1A4C40
	.asciz "NW4HBM:Failed assertion mStream == NULL"
	.asciz "NW4HBM:Alignment Error(0x%x)\naddr must be aligned to 32 bytes boundary."
	.asciz "NW4HBM:Alignment Error(0x%x)\nsize must be aligned to 32 bytes boundary."
	.asciz "NW4HBM:Alignment Error(0x%x)\noffset must be aligned to 4 bytes boundary."
	.balign 4

glabel lbl_801A8C44
	# ROM: 0x1A4D44
	.asciz "failed to load stream\n"
	.balign 8

glabel lbl_801A8C60
	# ROM: 0x1A4D60
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3snd18SoundArchivePlayerFv
	.4byte InvalidateData__Q36nw4hbm3snd18SoundArchivePlayerFPCvPCv
	.4byte InvalidateWaveData__Q36nw4hbm3snd18SoundArchivePlayerFPCvPCv
	.4byte 0
	.4byte 0
	.4byte ____dt__Q36nw4hbm3snd18SoundArchivePlayerFv
	.4byte __detail_SetupSound__Q36nw4hbm3snd18SoundArchivePlayerFPQ36nw4hbm3snd11SoundHandleUlPQ56nw4hbm3snd6detail10BasicSound14AmbientArgInfoPQ46nw4hbm3snd6detail19ExternalSoundPlayerbPCQ46nw4hbm3snd14SoundStartable9StartInfo
	.4byte __detail_ConvertLabelStringToSoundId__Q36nw4hbm3snd18SoundArchivePlayerFPCc
	.4byte detail_SetupSound__Q36nw4hbm3snd18SoundArchivePlayerFPQ36nw4hbm3snd11SoundHandleUlPQ56nw4hbm3snd6detail10BasicSound14AmbientArgInfoPQ46nw4hbm3snd6detail19ExternalSoundPlayerbPCQ46nw4hbm3snd14SoundStartable9StartInfo
	.4byte detail_ConvertLabelStringToSoundId__Q36nw4hbm3snd18SoundArchivePlayerFPCc

glabel lbl_801A8C90
	# ROM: 0x1A4D90
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd18SoundArchivePlayer16StrmDataLoadTaskFv
	.4byte Execute__Q46nw4hbm3snd18SoundArchivePlayer16StrmDataLoadTaskFv
	.4byte Cancel__Q46nw4hbm3snd18SoundArchivePlayer16StrmDataLoadTaskFv

glabel lbl_801A8CA4
	# ROM: 0x1A4DA4
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv
	.4byte Execute__Q46nw4hbm3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv
	.4byte Cancel__Q46nw4hbm3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv

glabel lbl_801A8CB8
	# ROM: 0x1A4DB8
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd18SoundArchivePlayer11SeqLoadTaskFv
	.4byte Execute__Q46nw4hbm3snd18SoundArchivePlayer11SeqLoadTaskFv
	.4byte Cancel__Q46nw4hbm3snd18SoundArchivePlayer11SeqLoadTaskFv
	.4byte 0

glabel lbl_801A8CD0
	# ROM: 0x1A4DD0
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd18SoundArchivePlayer11WsdCallbackFv
	.4byte GetWaveSoundData__Q46nw4hbm3snd18SoundArchivePlayer11WsdCallbackCFPQ46nw4hbm3snd6detail13WaveSoundInfoPQ46nw4hbm3snd6detail17WaveSoundNoteInfoPQ46nw4hbm3snd6detail8WaveDataPCviiUl

glabel lbl_801A8CE0
	# ROM: 0x1A4DE0
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd18SoundArchivePlayer12StrmCallbackFv
	.4byte LoadHeader__Q46nw4hbm3snd18SoundArchivePlayer12StrmCallbackCFPFbPCQ56nw4hbm3snd6detail10StrmPlayer10StrmHeaderPv_vPvUlUl
	.4byte LoadStream__Q46nw4hbm3snd18SoundArchivePlayer12StrmCallbackCFPvUlliUllbRQ56nw4hbm3snd6detail10StrmPlayer11LoadCommandUlUl
	.4byte CancelLoading__Q46nw4hbm3snd18SoundArchivePlayer12StrmCallbackCFUlUl

glabel lbl_801A8CF8
	# ROM: 0x1A4DF8
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd18SoundArchivePlayer17SeqNoteOnCallbackFv
	.4byte NoteOn__Q46nw4hbm3snd18SoundArchivePlayer17SeqNoteOnCallbackFPQ46nw4hbm3snd6detail9SeqPlayeriRCQ46nw4hbm3snd6detail10NoteOnInfo

glabel lbl_801A8D08
	# ROM: 0x1A4E08
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd18SoundArchivePlayer15SeqLoadCallbackFv
	.4byte LoadData__Q46nw4hbm3snd18SoundArchivePlayer15SeqLoadCallbackCFPFbPCvlPv_vPvUl
	.4byte CancelLoading__Q46nw4hbm3snd18SoundArchivePlayer15SeqLoadCallbackCFUl
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail4TaskFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __dt__Q56nw4hbm3snd6detail8WsdTrack11WsdCallbackFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __dt__Q56nw4hbm3snd6detail10StrmPlayer12StrmCallbackFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __dt__Q56nw4hbm3snd6detail8SeqSound15SeqLoadCallbackFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail17SeqTrackAllocatorFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail14NoteOnCallbackFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801A8DC0
	# ROM: 0x1A4EC0
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail10PlayerHeapFv
	.4byte Alloc__Q36nw4hbm3snd9SoundHeapFUl

glabel lbl_801A8DD0
	# ROM: 0x1A4ED0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A8DF4
	# ROM: 0x1A4EF4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8E00
	# ROM: 0x1A4F00
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A8E24
	# ROM: 0x1A4F24
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8E30
	# ROM: 0x1A4F30
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A8E54
	# ROM: 0x1A4F54
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8E60
	# ROM: 0x1A4F60
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801A8E84
	# ROM: 0x1A4F84
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8E90
	# ROM: 0x1A4F90
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A8EB4
	# ROM: 0x1A4FB4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8EC0
	# ROM: 0x1A4FC0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A8EE4
	# ROM: 0x1A4FE4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8EF0
	# ROM: 0x1A4FF0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A8F14
	# ROM: 0x1A5014
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8F20
	# ROM: 0x1A5020
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801A8F44
	# ROM: 0x1A5044
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8FB0
	# ROM: 0x1A50B0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A8FD4
	# ROM: 0x1A50D4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A8FE0
	# ROM: 0x1A50E0
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801A9004
	# ROM: 0x1A5104
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A9010
	# ROM: 0x1A5110
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4

glabel lbl_801A903C
	# ROM: 0x1A513C
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A9054
	# ROM: 0x1A5154
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4

glabel lbl_801A9080
	# ROM: 0x1A5180
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A9098
	# ROM: 0x1A5198
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4

glabel lbl_801A90C4
	# ROM: 0x1A51C4
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A90DC
	# ROM: 0x1A51DC
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4

glabel lbl_801A9108
	# ROM: 0x1A5208
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A9120
	# ROM: 0x1A5220
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4

glabel lbl_801A914C
	# ROM: 0x1A524C
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A9164
	# ROM: 0x1A5264
	.asciz "NW4HBM:Pointer must not be NULL (buffer)"
	.balign 4

glabel lbl_801A9190
	# ROM: 0x1A5290
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A91A8
	# ROM: 0x1A52A8
	.asciz "NW4HBM:Pointer must not be NULL (waveData)"
	.balign 4

glabel lbl_801A91D4
	# ROM: 0x1A52D4
	.asciz "Bank.h"
	.balign 8

glabel lbl_801A91E0
	# ROM: 0x1A52E0
	.asciz "NW4HBM:Pointer must not be NULL (mSoundArchive)"

glabel lbl_801A9210
	# ROM: 0x1A5310
	.asciz "SoundArchivePlayer.h"
	.balign 4

glabel lbl_801A9228
	# ROM: 0x1A5328
	.asciz "snd_SoundHandle.cpp"
	.balign 8

glabel lbl_801A9240
	# ROM: 0x1A5340
	.asciz "NW4HBM:Pointer must not be NULL (sound)"

glabel lbl_801A9268
	# ROM: 0x1A5368
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3snd9SoundHeapFv
	.4byte Alloc__Q36nw4hbm3snd9SoundHeapFUl

glabel lbl_801A9278
	# ROM: 0x1A5378
	.asciz "snd_SoundPlayer.cpp"

glabel lbl_801A928C
	# ROM: 0x1A538C
	.asciz "NW4HBM:Failed assertion volume >= 0.0f"
	.balign 4

glabel lbl_801A92B4
	# ROM: 0x1A53B4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Failed assertion count >= 0"
	.balign 4
	.asciz "playable sound count is over limit."
	.asciz "NW4HBM:Pointer must not be NULL (dropSound)"

glabel lbl_801A9370
	# ROM: 0x1A5470
	.asciz "NW4HBM:Failed assertion limit >= 0"
	.balign 4

glabel lbl_801A9394
	# ROM: 0x1A5494
	.asciz "NW4HBM:Pointer must not be NULL (heap)"
	.balign 8

glabel lbl_801A93C0
	# ROM: 0x1A54C0
	.asciz "NW4HBM:Pointer must not be NULL (sound)"

glabel lbl_801A93E8
	# ROM: 0x1A54E8
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A940C
	# ROM: 0x1A550C
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A9418
	# ROM: 0x1A5518
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A943C
	# ROM: 0x1A553C
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A9448
	# ROM: 0x1A5548
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801A946C
	# ROM: 0x1A556C
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A9538
	# ROM: 0x1A5638
	.asciz "NW4HBM:Pointer must not be NULL (ptr)"
	.balign 4

glabel lbl_801A9560
	# ROM: 0x1A5660
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A9578
	# ROM: 0x1A5678
	.asciz "priority is out of bounds(%d)\n%d <= priority <= %d not satisfied."
	.balign 4

glabel lbl_801A95BC
	# ROM: 0x1A56BC
	.asciz "SoundInstanceManager.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A9694
	# ROM: 0x1A5794
	.asciz "NW4HBM:Pointer must not be NULL (ptr)"
	.balign 4

glabel lbl_801A96BC
	# ROM: 0x1A57BC
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A96D4
	# ROM: 0x1A57D4
	.asciz "priority is out of bounds(%d)\n%d <= priority <= %d not satisfied."
	.balign 4

glabel lbl_801A9718
	# ROM: 0x1A5818
	.asciz "SoundInstanceManager.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A97F0
	# ROM: 0x1A58F0
	.asciz "NW4HBM:Pointer must not be NULL (ptr)"
	.balign 4

glabel lbl_801A9818
	# ROM: 0x1A5918
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A9830
	# ROM: 0x1A5930
	.asciz "priority is out of bounds(%d)\n%d <= priority <= %d not satisfied."
	.balign 4

glabel lbl_801A9874
	# ROM: 0x1A5974
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801A988C
	# ROM: 0x1A598C
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A98B0
	# ROM: 0x1A59B0
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801A98BC
	# ROM: 0x1A59BC
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801A98E0
	# ROM: 0x1A59E0
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4
	.asciz "LinkList.h"
	.balign 8

glabel lbl_801A99E0
	# ROM: 0x1A5AE0
	.asciz "snd_SoundSystem.cpp"
	.asciz "NW4HBM:Failed assertion initStatus == SC_STATUS_OK"
	.balign 4

glabel lbl_801A9A28
	# ROM: 0x1A5B28
	.asciz "NW4HBM:Failed assertion result"
	.balign 4
	.asciz "SoundSystem::WaitForResetReady is TIME OUT.\n"
	.balign 4

glabel lbl_801A9A78
	# ROM: 0x1A5B78
	.asciz "snd_SoundThread.cpp"

glabel lbl_801A9A8C
	# ROM: 0x1A5B8C
	.asciz "not initialized nw4hbm::AxManager.\n"

glabel lbl_801A9AB0
	# ROM: 0x1A5BB0
	.asciz "NW4HBM:Failed assertion result != 0"
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 8

glabel lbl_801A9B08
	# ROM: 0x1A5C08
	.asciz "snd_StrmChannel.cpp"

glabel lbl_801A9B1C
	# ROM: 0x1A5C1C
	.asciz "Too large stream buffer size."
	.balign 8

glabel lbl_801A9B40
	# ROM: 0x1A5C40
	.asciz "snd_StrmFile.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (strmData)"
	.balign 4
	.asciz "NW4HBM:Failed assertion fileHeader->signature == StrmFile::SIGNATURE_FILE"
	.balign 4
	.asciz "strm file is not supported version.\n  please reconvert file using new version tools.\n"
	.balign 4
	.asciz "NW4HBM:Failed assertion mHeadBlock->blockHeader.kind == StrmFile::SIGNATURE_HEAD_BLOCK"
	.balign 4
	.asciz "NW4HBM:Failed assertion info->blockSize % 32 == 0"
	.balign 4

glabel lbl_801A9CB0
	# ROM: 0x1A5DB0
	.asciz "NW4HBM:Pointer must not be NULL (mHeader)"
	.balign 4

glabel lbl_801A9CDC
	# ROM: 0x1A5DDC
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A9D08
	# ROM: 0x1A5E08
	.asciz "Util.h"
	.balign 4

glabel lbl_801A9D10
	# ROM: 0x1A5E10
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A9D3C
	# ROM: 0x1A5E3C
	.asciz "Util.h"
	.balign 4

glabel lbl_801A9D44
	# ROM: 0x1A5E44
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A9D70
	# ROM: 0x1A5E70
	.asciz "Util.h"
	.balign 4

glabel lbl_801A9D78
	# ROM: 0x1A5E78
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801A9DA4
	# ROM: 0x1A5EA4
	.asciz "Util.h"
	.balign 8

glabel lbl_801A9DB0
	# ROM: 0x1A5EB0
	.asciz "snd_StrmPlayer.cpp"
	.balign 4

glabel lbl_801A9DC4
	# ROM: 0x1A5EC4
	.asciz "NW4HBM:Pointer must not be NULL (bufferPool)"
	.balign 4

glabel lbl_801A9DF4
	# ROM: 0x1A5EF4
	.asciz "NW4HBM:Pointer must not be NULL (mVoice)"
	.balign 4
	.asciz "stop strm because of loading delay!"
	.asciz "NW4HBM:Failed assertion false"
	.balign 4
	.asciz "AdpcmLoop can not update!"
	.balign 4

glabel lbl_801A9E80
	# ROM: 0x1A5F80
	.asciz "NW4HBM:Failed assertion loadSize <= sizeof( LoadCommand::mMramBuf )"

glabel lbl_801A9EC4
	# ROM: 0x1A5FC4
	.asciz "NW4HBM:Failed assertion sPlayerList.IsEmpty()"
	.balign 4

glabel lbl_801A9EF4
	# ROM: 0x1A5FF4
	.asciz "bus is out of bounds(%d)\n%d <= bus < %d not satisfied."
	.balign 4

glabel lbl_801A9F2C
	# ROM: 0x1A602C
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4

glabel lbl_801A9F74
	# ROM: 0x1A6074
	.asciz "NW4HBM:Pointer must not be NULL (mBufferPool)"
	.balign 4
	.asciz "Too large stream data block size."
	.balign 4
	.asciz "Too small stream buffer size."
	.balign 4

glabel lbl_801A9FE8
	# ROM: 0x1A60E8
	.asciz "NW4HBM:Pointer must not be NULL (player)"
	.balign 8
	.asciz "NW4HBM:Failed assertion player->mVoice == voice"
	.asciz "Unknown AxVoice callback status %d"
	.balign 8

glabel lbl_801AA070
	# ROM: 0x1A6170
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail10StrmPlayerFv
	.4byte Start__Q46nw4hbm3snd6detail10StrmPlayerFv
	.4byte Stop__Q46nw4hbm3snd6detail10StrmPlayerFv
	.4byte Pause__Q46nw4hbm3snd6detail10StrmPlayerFb
	.4byte IsActive__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte IsPrepared__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte IsStarted__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte IsPause__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte SetVolume__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte SetPitch__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte SetPan__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte SetSurroundPan__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte SetPan2__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte SetSurroundPan2__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte SetLpfFreq__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte GetVolume__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetPitch__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetPan__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetSurroundPan__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetPan2__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetSurroundPan2__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetLpfFreq__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte SetOutputLine__Q46nw4hbm3snd6detail10StrmPlayerFi
	.4byte SetMainOutVolume__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte SetMainSend__Q46nw4hbm3snd6detail10StrmPlayerFf
	.4byte SetFxSend__Q46nw4hbm3snd6detail10StrmPlayerFQ36nw4hbm3snd6AuxBusf
	.4byte SetRemoteOutVolume__Q46nw4hbm3snd6detail10StrmPlayerFif
	.4byte SetRemoteSend__Q46nw4hbm3snd6detail10StrmPlayerFif
	.4byte SetRemoteFxSend__Q46nw4hbm3snd6detail10StrmPlayerFif
	.4byte GetOutputLine__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetMainOutVolume__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetMainSend__Q46nw4hbm3snd6detail10StrmPlayerCFv
	.4byte GetFxSend__Q46nw4hbm3snd6detail10StrmPlayerCFQ36nw4hbm3snd6AuxBus
	.4byte GetRemoteOutVolume__Q46nw4hbm3snd6detail10StrmPlayerCFi
	.4byte GetRemoteSend__Q46nw4hbm3snd6detail10StrmPlayerCFi
	.4byte GetRemoteFxSend__Q46nw4hbm3snd6detail10StrmPlayerCFi

glabel lbl_801AA108
	# ROM: 0x1A6208
	.4byte 0
	.4byte 0
	.4byte NotifyAsyncEnd__Q56nw4hbm3snd6detail10StrmPlayer11LoadCommandFb
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA1E0
	# ROM: 0x1A62E0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AA204
	# ROM: 0x1A6304
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA210
	# ROM: 0x1A6310
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AA234
	# ROM: 0x1A6334
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA240
	# ROM: 0x1A6340
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801AA264
	# ROM: 0x1A6364
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA270
	# ROM: 0x1A6370
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AA294
	# ROM: 0x1A6394
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA2A0
	# ROM: 0x1A63A0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AA2C4
	# ROM: 0x1A63C4
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA2D0
	# ROM: 0x1A63D0
	.asciz "snd_StrmSound.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (GetSoundPlayer())"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (bufferPool)"
	.balign 4

glabel lbl_801AA348
	# ROM: 0x1A6448
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q46nw4hbm3snd6detail9StrmSoundCFv
	.4byte __dt__Q46nw4hbm3snd6detail9StrmSoundFv
	.4byte Update__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte StartPrepared__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte Stop__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte Pause__Q46nw4hbm3snd6detail10BasicSoundFbi
	.4byte SetAutoStopCounter__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte lbl_8012CF88
	.4byte Shutdown__Q46nw4hbm3snd6detail9StrmSoundFv
	.4byte FadeIn__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte IsPause__Q46nw4hbm3snd6detail10BasicSoundCFv
	.4byte SetInitialVolume__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetVolume__Q46nw4hbm3snd6detail10BasicSoundFfi
	.4byte SetPitch__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetPan__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetSurroundPan__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetLpfFreq__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetPlayerPriority__Q46nw4hbm3snd6detail9StrmSoundFi
	.4byte IsAttachedTempSpecialHandle__Q46nw4hbm3snd6detail9StrmSoundFv
	.4byte DetachTempSpecialHandle__Q46nw4hbm3snd6detail9StrmSoundFv
	.4byte InitParam__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte GetBasicPlayer__Q46nw4hbm3snd6detail9StrmSoundFv
	.4byte GetBasicPlayer__Q46nw4hbm3snd6detail9StrmSoundCFv
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 8

glabel lbl_801AA410
	# ROM: 0x1A6510
	.asciz "NW4HBM:Pointer must not be NULL (sound)"

glabel lbl_801AA438
	# ROM: 0x1A6538
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801AA450
	# ROM: 0x1A6550
	.asciz "snd_TaskManager.cpp"
	.balign 8

glabel lbl_801AA468
	# ROM: 0x1A6568
	.asciz "NW4HBM:Failed assertion MEMCountFreeBlockForUnitHeap( mHeapHandle ) >= TASK_NUM"

glabel lbl_801AA4B8
	# ROM: 0x1A65B8
	.asciz "NW4HBM:Failed assertion mHeapHandle != MEM_HEAP_INVALID_HANDLE"
	.balign 4
	.asciz "NW4HBM:Failed assertion result"
	.balign 4

glabel lbl_801AA518
	# ROM: 0x1A6618
	.asciz "priority is out of bounds(%d)\n%d <= priority < %d not satisfied."
	.balign 4

glabel lbl_801AA55C
	# ROM: 0x1A665C
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AA580
	# ROM: 0x1A6680
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA58C
	# ROM: 0x1A668C
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AA5B0
	# ROM: 0x1A66B0
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA5BC
	# ROM: 0x1A66BC
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801AA5E0
	# ROM: 0x1A66E0
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA5EC
	# ROM: 0x1A66EC
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AA610
	# ROM: 0x1A6710
	.asciz "LinkList.h"
	.balign 8

glabel lbl_801AA620
	# ROM: 0x1A6720
	.asciz "snd_TaskThread.cpp"
	.balign 4

glabel lbl_801AA634
	# ROM: 0x1A6734
	.asciz "NW4HBM:Failed assertion result != 0"

glabel lbl_801AA658
	# ROM: 0x1A6758
	.4byte 0x12345678

glabel lbl_801AA65C
	# ROM: 0x1A675C
	.asciz "snd_Util.cpp"
	.balign 4

glabel lbl_801AA66C
	# ROM: 0x1A676C
	.asciz "invalid DataRef::RefType"
	.balign 4

glabel lbl_801AA688
	# ROM: 0x1A6788
	.asciz "snd_WavePlayer.cpp"
	.balign 8
	.asciz "setupParam.channelCount is out of bounds(%d)\n%d <= setupParam.channelCount <= %d not satisfied."
	.asciz "setupParam.voiceCount is out of bounds(%d)\n%d <= setupParam.voiceCount <= %d not satisfied."
	.asciz "NW4HBM:Failed assertion false"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (wavePacket)"
	.balign 4
	.asciz "WavePacket is busy."
	.asciz "not enough buffer count in WavePacket."
	.balign 4
	.asciz "Too small wave buffer."
	.balign 4

glabel lbl_801AA800
	# ROM: 0x1A6900
	.asciz "NW4HBM:Failed assertion mWavePacketList.IsEmpty()"
	.balign 4
	.asciz "Too large pitch."
	.balign 4
	.asciz "bus is out of bounds(%d)\n%d <= bus < %d not satisfied."
	.balign 4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Failed assertion ! mWavePacketList.IsEmpty()"
	.asciz "NW4HBM:Pointer must not be NULL (mVoice)"
	.balign 4
	.asciz "Unknown AxVoice callback status %d"
	.balign 4

glabel lbl_801AA94C
	# ROM: 0x1A6A4C
	.asciz "NW4HBM:Failed assertion sPlayerList.IsEmpty()"
	.balign 4

glabel lbl_801AA97C
	# ROM: 0x1A6A7C
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm3snd10WavePlayerFv
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd10WavePlayer10WavePacketFv
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA9C4
	# ROM: 0x1A6AC4
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AA9E8
	# ROM: 0x1A6AE8
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AA9F4
	# ROM: 0x1A6AF4
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AAA18
	# ROM: 0x1A6B18
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AAA24
	# ROM: 0x1A6B24
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801AAA48
	# ROM: 0x1A6B48
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AAA54
	# ROM: 0x1A6B54
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4

glabel lbl_801AAA78
	# ROM: 0x1A6B78
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AAA84
	# ROM: 0x1A6B84
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AAAA8
	# ROM: 0x1A6BA8
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AAAB4
	# ROM: 0x1A6BB4
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AAAD8
	# ROM: 0x1A6BD8
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AAAE4
	# ROM: 0x1A6BE4
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AAB08
	# ROM: 0x1A6C08
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 8

glabel lbl_801AAB48
	# ROM: 0x1A6C48
	.asciz "snd_WaveSound.cpp"
	.balign 8
	.asciz "NW4HBM:Pointer must not be NULL (waveSoundBase)"
	.asciz "NW4HBM:Pointer must not be NULL (callback)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (GetSoundPlayer())"
	.balign 4

glabel lbl_801AABF0
	# ROM: 0x1A6CF0
	.asciz "priority is out of bounds(%d)\n%d <= priority <= %d not satisfied."
	.balign 4

glabel lbl_801AAC34
	# ROM: 0x1A6D34
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q46nw4hbm3snd6detail9WaveSoundCFv
	.4byte __dt__Q46nw4hbm3snd6detail9WaveSoundFv
	.4byte Update__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte StartPrepared__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte Stop__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte Pause__Q46nw4hbm3snd6detail10BasicSoundFbi
	.4byte SetAutoStopCounter__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte lbl_8012CF88
	.4byte Shutdown__Q46nw4hbm3snd6detail9WaveSoundFv
	.4byte FadeIn__Q46nw4hbm3snd6detail10BasicSoundFi
	.4byte IsPause__Q46nw4hbm3snd6detail10BasicSoundCFv
	.4byte SetInitialVolume__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetVolume__Q46nw4hbm3snd6detail10BasicSoundFfi
	.4byte SetPitch__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetPan__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetSurroundPan__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetLpfFreq__Q46nw4hbm3snd6detail10BasicSoundFf
	.4byte SetPlayerPriority__Q46nw4hbm3snd6detail9WaveSoundFi
	.4byte IsAttachedTempSpecialHandle__Q46nw4hbm3snd6detail9WaveSoundFv
	.4byte DetachTempSpecialHandle__Q46nw4hbm3snd6detail9WaveSoundFv
	.4byte InitParam__Q46nw4hbm3snd6detail10BasicSoundFv
	.4byte GetBasicPlayer__Q46nw4hbm3snd6detail9WaveSoundFv
	.4byte GetBasicPlayer__Q46nw4hbm3snd6detail9WaveSoundCFv
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AACF8
	# ROM: 0x1A6DF8
	.asciz "NW4HBM:Pointer must not be NULL (sound)"

glabel lbl_801AAD20
	# ROM: 0x1A6E20
	.asciz "SoundInstanceManager.h"
	.balign 4

glabel lbl_801AAD38
	# ROM: 0x1A6E38
	.asciz "snd_WsdFile.cpp"
	.asciz "NW4HBM:Failed assertion fileHeader->signature == WsdFile::SIGNATURE_FILE"
	.balign 4
	.asciz "wsd file is not supported version.\n  please reconvert file using new version tools.\n"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (wsdData)"
	.balign 4
	.asciz "NW4HBM:Failed assertion mDataBlock->blockHeader.kind == WsdFile::SIGNATURE_DATA_BLOCK"
	.balign 4
	.asciz "NW4HBM:Failed assertion mWaveBlock->blockHeader.kind == WsdFile::SIGNATURE_WAVE_BLOCK"
	.balign 4

glabel lbl_801AAEC8
	# ROM: 0x1A6FC8
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801AAEF4
	# ROM: 0x1A6FF4
	.asciz "Util.h"
	.balign 4

glabel lbl_801AAEFC
	# ROM: 0x1A6FFC
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801AAF28
	# ROM: 0x1A7028
	.asciz "Util.h"
	.balign 4

glabel lbl_801AAF30
	# ROM: 0x1A7030
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801AAF5C
	# ROM: 0x1A705C
	.asciz "Util.h"
	.balign 4

glabel lbl_801AAF64
	# ROM: 0x1A7064
	.asciz "NW4HBM:Failed assertion ref.dataType == 0"
	.balign 4

glabel lbl_801AAF90
	# ROM: 0x1A7090
	.asciz "Util.h"
	.balign 4

glabel lbl_801AAF98
	# ROM: 0x1A7098
	.asciz "snd_WsdPlayer.cpp"
	.balign 4

glabel lbl_801AAFAC
	# ROM: 0x1A70AC
	.asciz "NW4HBM:Failed assertion volume >= 0.0f"
	.balign 4

glabel lbl_801AAFD4
	# ROM: 0x1A70D4
	.asciz "NW4HBM:Failed assertion pitch >= 0.0f"
	.balign 4

glabel lbl_801AAFFC
	# ROM: 0x1A70FC
	.asciz "bus is out of bounds(%d)\n%d <= bus < %d not satisfied."
	.balign 4

glabel lbl_801AB034
	# ROM: 0x1A7134
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4

glabel lbl_801AB07C
	# ROM: 0x1A717C
	.asciz "prio is out of bounds(%d)\n%d <= prio <= %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Failed assertion trackNo == 0"
	.balign 4
	.asciz "NW4HBM:Failed assertion mActiveFlag"
	.asciz "NW4HBM:Failed assertion mStartedFlag"
	.balign 4

glabel lbl_801AB12C
	# ROM: 0x1A722C
	.asciz "NW4HBM:Failed assertion sPlayerList.IsEmpty()"
	.balign 4

glabel lbl_801AB15C
	# ROM: 0x1A725C
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm3snd6detail9WsdPlayerFv
	.4byte Start__Q46nw4hbm3snd6detail9WsdPlayerFv
	.4byte Stop__Q46nw4hbm3snd6detail9WsdPlayerFv
	.4byte Pause__Q46nw4hbm3snd6detail9WsdPlayerFb
	.4byte IsActive__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte IsPrepared__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte IsStarted__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte IsPause__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte SetVolume__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte SetPitch__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte SetPan__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte SetSurroundPan__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte SetPan2__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte SetSurroundPan2__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte SetLpfFreq__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte GetVolume__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetPitch__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetPan__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetSurroundPan__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetPan2__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetSurroundPan2__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetLpfFreq__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte SetOutputLine__Q46nw4hbm3snd6detail9WsdPlayerFi
	.4byte SetMainOutVolume__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte SetMainSend__Q46nw4hbm3snd6detail9WsdPlayerFf
	.4byte SetFxSend__Q46nw4hbm3snd6detail9WsdPlayerFQ36nw4hbm3snd6AuxBusf
	.4byte SetRemoteOutVolume__Q46nw4hbm3snd6detail9WsdPlayerFif
	.4byte SetRemoteSend__Q46nw4hbm3snd6detail9WsdPlayerFif
	.4byte SetRemoteFxSend__Q46nw4hbm3snd6detail9WsdPlayerFif
	.4byte GetOutputLine__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetMainOutVolume__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetMainSend__Q46nw4hbm3snd6detail9WsdPlayerCFv
	.4byte GetFxSend__Q46nw4hbm3snd6detail9WsdPlayerCFQ36nw4hbm3snd6AuxBus
	.4byte GetRemoteOutVolume__Q46nw4hbm3snd6detail9WsdPlayerCFi
	.4byte GetRemoteSend__Q46nw4hbm3snd6detail9WsdPlayerCFi
	.4byte GetRemoteFxSend__Q46nw4hbm3snd6detail9WsdPlayerCFi
	.4byte 0
	.4byte 0
	.4byte _8___dt__Q46nw4hbm3snd6detail9WsdPlayerFv
	.4byte _8_InvalidateData__Q46nw4hbm3snd6detail9WsdPlayerFPCvPCv
	.4byte _8_InvalidateWaveData__Q46nw4hbm3snd6detail9WsdPlayerFPCvPCv
	.4byte InvalidateData__Q46nw4hbm3snd6detail9WsdPlayerFPCvPCv
	.4byte InvalidateWaveData__Q46nw4hbm3snd6detail9WsdPlayerFPCvPCv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AB2F0
	# ROM: 0x1A73F0
	.asciz "NW4HBM:Pointer must not be NULL (p)"

glabel lbl_801AB314
	# ROM: 0x1A7414
	.asciz "LinkList.h"
	.balign 4

glabel lbl_801AB320
	# ROM: 0x1A7420
	.asciz "snd_WsdTrack.cpp"
	.balign 4

glabel lbl_801AB334
	# ROM: 0x1A7434
	.asciz "NW4HBM:Pointer must not be NULL (mWsdPlayer)"
	.balign 8
	.asciz "release is out of bounds(%d)\n%d <= release <= %d not satisfied."
	.asciz "NW4HBM:Pointer must not be NULL (dropChannel)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (track)"
	.asciz "NW4HBM:Pointer must not be NULL (channel)"
	.balign 4
	.asciz "NW4HBM:Failed assertion false"
	.balign 4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "Channel.h"
	.balign 4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "Channel.h"
	.balign 4
	.asciz "remoteIndex is out of bounds(%d)\n%d <= remoteIndex < %d not satisfied."
	.balign 4
	.asciz "Channel.h"
	.balign 4

glabel lbl_801AB548
	# ROM: 0x1A7648
	.asciz "ut_binaryFileFormat.cpp"
	.asciz "NW4HBM:Pointer Error\nheader(=%p) is not valid pointer."
	.balign 4
	.asciz "Signature check failed ('%c%c%c%c' must be '%c%c%c%c')."
	.asciz "Unsupported byte order."
	.asciz "Version check faild ('%d.%d' must be '%d.%d')."
	.balign 4
	.asciz "Too small file size(=%d)."
	.balign 4
	.asciz "Too small number of data blocks(=%d)."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nfileHeader(=%p) is not valid pointer."
	.balign 4

glabel lbl_801AB698
	# ROM: 0x1A7798
	.asciz "ut_CharStrmReader.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nmCharStrm(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Failed assertion (GetChar<u8>() & 0xC0) != 0x80"
	.balign 4
	.asciz "NW4HBM:Failed assertion (GetChar<u8>() & 0xF0) == 0xE0"
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nmCharStrm must be aligned to 2 bytes boundary."

glabel lbl_801AB7E0
	# ROM: 0x1A78E0
	.asciz "ut_CharWriter.cpp"
	.balign 4

glabel lbl_801AB7F4
	# ROM: 0x1A78F4
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\n& font(=%p) is not valid pointer."
	.balign 4
	.asciz "CharWriter::SetupGX: Unknown font sheet format(=%d)"
	.asciz "mode is out of bounds(%d)\n%d <= mode <= %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nmFont(=%p) is not valid pointer."
	.balign 4
	.asciz "mFont->GetWidth() is out of bounds(%d)\n%d <= mFont->GetWidth() not satisfied."
	.balign 8
	.asciz "mFont->GetHeight() is out of bounds(%d)\n%d <= mFont->GetHeight() not satisfied."
	.asciz "NW4HBM:Failed assertion code != Font::INVALID_CHARACTER_CODE"
	.balign 4
	.asciz "NW4HBM:Pointer Error\n& glyph(=%p) is not valid pointer."
	.asciz "glyph.texWidth is out of bounds(%d)\n%d <= glyph.texWidth not satisfied."
	.asciz "glyph.texHeight is out of bounds(%d)\n%d <= glyph.texHeight not satisfied."
	.balign 8

glabel lbl_801ABAC0
	# ROM: 0x1A7BC0
	.asciz "ut_FileStream.cpp"
	.balign 4

glabel lbl_801ABAD4
	# ROM: 0x1A7BD4
	.asciz "Stream don't support SEEK function\n"

glabel lbl_801ABAF8
	# ROM: 0x1A7BF8
	.asciz "Stream don't support CANCEL function\n"
	.balign 4
	.asciz "Stream don't support ASYNC function\n"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte lbl_80130C84
	.4byte lbl_80130C2C
	.4byte 0
	.4byte Read__Q36nw4hbm2ut8IOStreamFPvUl
	.4byte ReadAsync__Q36nw4hbm2ut8IOStreamFPvUlPFlPQ36nw4hbm2ut8IOStreamPv_vPv
	.4byte Write__Q36nw4hbm2ut8IOStreamFPCvUl
	.4byte WriteAsync__Q36nw4hbm2ut8IOStreamFPCvUlPFlPQ36nw4hbm2ut8IOStreamPv_vPv
	.4byte IsBusy__Q36nw4hbm2ut8IOStreamCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80130C7C
	.4byte lbl_80130C74
	.4byte lbl_80130C6C
	.4byte 0
	.4byte Seek__Q36nw4hbm2ut10FileStreamFlUl
	.4byte Cancel__Q36nw4hbm2ut10FileStreamFv
	.4byte CancelAsync__Q36nw4hbm2ut10FileStreamFPFlPQ36nw4hbm2ut8IOStreamPv_vPv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801ABBA8
	# ROM: 0x1A7CA8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF8__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF16__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharSJIS__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharCP1252__Q36nw4hbm2ut14CharStrmReaderFv
	.asciz "ut_Font.cpp"
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 8

glabel lbl_801ABC20
	# ROM: 0x1A7D20
	.asciz "ut_IOStream.cpp"

glabel lbl_801ABC30
	# ROM: 0x1A7D30
	.asciz "Stream don't support READ function\n"

glabel lbl_801ABC54
	# ROM: 0x1A7D54
	.asciz "Stream don't support ASYNC function\n"
	.balign 4

glabel lbl_801ABC7C
	# ROM: 0x1A7D7C
	.asciz "Stream don't support WRITE function\n"
	.balign 8
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q36nw4hbm2ut8IOStreamCFv
	.4byte lbl_80130BEC
	.4byte 0
	.4byte Read__Q36nw4hbm2ut8IOStreamFPvUl
	.4byte ReadAsync__Q36nw4hbm2ut8IOStreamFPvUlPFlPQ36nw4hbm2ut8IOStreamPv_vPv
	.4byte Write__Q36nw4hbm2ut8IOStreamFPCvUl
	.4byte WriteAsync__Q36nw4hbm2ut8IOStreamFPCvUlPFlPQ36nw4hbm2ut8IOStreamPv_vPv
	.4byte IsBusy__Q36nw4hbm2ut8IOStreamCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80130C7C
	.4byte lbl_80130C74
	.4byte lbl_80130C6C

glabel lbl_801ABCE8
	# ROM: 0x1A7DE8
	.asciz "ut_LinkList.cpp"
	.asciz "NW4HBM:Failed assertion !IsEmpty()"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (p)"
	.asciz "NW4HBM:Failed assertion p!=&mNode"
	.balign 8
	.asciz "NW4HBM:Pointer must not be NULL (pNext)"
	.asciz "NW4HBM:Pointer must not be NULL (pPrev)"
	.asciz "NW4HBM:Failed assertion it.mPointer!=&mNode"
	.asciz "NW4HBM:Pointer must not be NULL (pIt)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (pItPrev)"
	.balign 4
	.asciz "NW4HBM:Failed assertion p->mNext == NULL"
	.balign 4
	.asciz "NW4HBM:Failed assertion p->mPrev == NULL"
	.balign 4

glabel lbl_801ABE90
	# ROM: 0x1A7F90
	.asciz "ut_list.cpp"

glabel lbl_801ABE9C
	# ROM: 0x1A7F9C
	.asciz "NW4HBM:Pointer must not be NULL (list)"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (object)"
	.balign 4

glabel lbl_801ABEF0
	# ROM: 0x1A7FF0
	.asciz "ut_NandFileStream.cpp"
	.balign 4

glabel lbl_801ABF08
	# ROM: 0x1A8008
	.asciz "NW4HBM:Pointer must not be NULL (commandBlock)"
	.balign 4

glabel lbl_801ABF38
	# ROM: 0x1A8038
	.asciz "NW4HBM:Pointer must not be NULL (path)"
	.balign 4

glabel lbl_801ABF60
	# ROM: 0x1A8060
	.asciz "Can't Close NAND File. It still has been used\n"
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nbuf must be aligned to 32 bytes boundary."
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nlength must be aligned to 32 bytes boundary."
	.balign 4

glabel lbl_801AC024
	# ROM: 0x1A8124
	.asciz "NandFileStream is not opened"
	.balign 4

glabel lbl_801AC044
	# ROM: 0x1A8144
	.4byte 0
	.4byte 0
	.4byte lbl_801329D4
	.4byte func_8014C9DC
	.4byte lbl_8014D2D8
	.4byte func_8014D34C
	.4byte lbl_8014D430
	.4byte lbl_8014D59C
	.4byte lbl_8014D678
	.4byte lbl_801329CC
	.4byte lbl_801329C4
	.4byte lbl_801329B4
	.4byte lbl_801329AC
	.4byte lbl_8013299C
	.4byte lbl_80132994
	.4byte lbl_8013298C
	.4byte lbl_8014D800
	.4byte func_8014D788
	.4byte Cancel__Q36nw4hbm2ut10FileStreamFv
	.4byte CancelAsync__Q36nw4hbm2ut10FileStreamFPFlPQ36nw4hbm2ut8IOStreamPv_vPv
	.4byte lbl_801329BC
	.4byte lbl_801329A4
	.4byte lbl_8014D808

glabel lbl_801AC0A0
	# ROM: 0x1A81A0
	.asciz "ut_ResFont.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nbrfnt(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nbrfnt must be aligned to 32 bytes boundary."
	.balign 4
	.asciz "Font resource already atached."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nblockHeader(=%p) is not valid pointer."
	.asciz "Invalid font resource."
	.balign 4
	.asciz "ResFont::RemoveResource(): Res font is not loaded.\n"
	.asciz "NW4HBM:Pointer Error\nfileHeader(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nfileHeader must be aligned to 32 bytes boundary."
	.balign 4
	.asciz "NW4HBM:Failed assertion info == NULL"
	.balign 4
	.asciz "NW4HBM:Failed assertion info->fontType == FONT_TYPE_NNGCTEXTURE"
	.asciz "NW4HBM:Failed assertion info->alterCharIndex != GLYPH_INDEX_NOT_FOUND"
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (info->pGlyph)"
	.balign 4
	.asciz "NW4HBM:Pointer Error\ninfo->pGlyph(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\ninfo->pWidth(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\ninfo->pMap(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer must not be NULL (glyph->sheetImage)"
	.asciz "NW4HBM:Pointer Error\nglyph->sheetImage(=%p) is not valid pointer."
	.balign 4
	.asciz "glyph->cellWidth is out of bounds(%d)\n%d <= glyph->cellWidth not satisfied."
	.asciz "glyph->cellHeight is out of bounds(%d)\n%d <= glyph->cellHeight not satisfied."
	.balign 4
	.asciz "glyph->sheetSize is out of bounds(%d)\n%d <= glyph->sheetSize <= %d not satisfied."
	.balign 4
	.asciz "glyph->sheetNum is out of bounds(%d)\n%d <= glyph->sheetNum not satisfied."
	.balign 4
	.asciz "glyph->sheetRow is out of bounds(%d)\n%d <= glyph->sheetRow not satisfied."
	.balign 4
	.asciz "glyph->sheetLine is out of bounds(%d)\n%d <= glyph->sheetLine not satisfied."
	.asciz "glyph->sheetWidth is out of bounds(%d)\n%d <= glyph->sheetWidth <= %d not satisfied."
	.asciz "glyph->sheetHeight is out of bounds(%d)\n%d <= glyph->sheetHeight <= %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Failed assertion width->indexBegin <= width->indexEnd"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nwidth->pNext(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Failed assertion map->ccodeBegin <= map->ccodeEnd"
	.balign 4
	.asciz "NW4HBM:Failed assertion (map->mappingMethod == FONT_MAPMETHOD_DIRECT) || (map->mappingMethod == FONT_MAPMETHOD_TABLE) || (map->mappingMethod == FONT_MAPMETHOD_SCAN)"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nmap->pNext(=%p) is not valid pointer."
	.balign 8
	.asciz "The font has unknown block('%c%c%c%c')."

glabel lbl_801AC900
	# ROM: 0x1A8A00
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm2ut7ResFontFv
	.4byte GetWidth__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetHeight__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetAscent__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetDescent__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetBaselinePos__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetCellHeight__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetCellWidth__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetMaxCharWidth__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetType__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetTextureFormat__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetLineFeed__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetDefaultCharWidths__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte SetDefaultCharWidths__Q46nw4hbm2ut6detail11ResFontBaseFRCQ36nw4hbm2ut10CharWidths
	.4byte SetAlternateChar__Q46nw4hbm2ut6detail11ResFontBaseFUs
	.4byte SetLineFeed__Q46nw4hbm2ut6detail11ResFontBaseFi
	.4byte GetCharWidth__Q46nw4hbm2ut6detail11ResFontBaseCFUs
	.4byte GetCharWidths__Q46nw4hbm2ut6detail11ResFontBaseCFUs
	.4byte GetGlyph__Q46nw4hbm2ut6detail11ResFontBaseCFPQ36nw4hbm2ut5GlyphUs
	.4byte GetEncoding__Q46nw4hbm2ut6detail11ResFontBaseCFv

glabel lbl_801AC958
	# ROM: 0x1A8A58
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharCP1252__Q36nw4hbm2ut14CharStrmReaderFv
	.asciz "ut_ResFontBase.cpp"
	.balign 4
	.asciz "NW4HBM:Pointer Error\npUserBuffer(=%p) is not valid pointer."
	.asciz "NW4HBM:Pointer Error\npFontInfo(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Failed assertion mResource == NULL"
	.balign 4
	.asciz "NW4HBM:Failed assertion mFontInfo == NULL"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nmFontInfo(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\n& widths(=%p) is not valid pointer."
	.balign 4
	.asciz "linefeed is out of bounds(%d)\n%d <= linefeed <= %d not satisfied."
	.balign 4
	.asciz "NW4HBM:Pointer Error\npWidth(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\npMap(=%p) is not valid pointer."
	.balign 4
	.asciz "unknwon MAPMETHOD"
	.balign 4

glabel lbl_801ACBC0
	# ROM: 0x1A8CC0
	.4byte 0
	.4byte 0
	.4byte __dt__Q46nw4hbm2ut6detail11ResFontBaseFv
	.4byte GetWidth__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetHeight__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetAscent__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetDescent__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetBaselinePos__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetCellHeight__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetCellWidth__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetMaxCharWidth__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetType__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetTextureFormat__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetLineFeed__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte GetDefaultCharWidths__Q46nw4hbm2ut6detail11ResFontBaseCFv
	.4byte SetDefaultCharWidths__Q46nw4hbm2ut6detail11ResFontBaseFRCQ36nw4hbm2ut10CharWidths
	.4byte SetAlternateChar__Q46nw4hbm2ut6detail11ResFontBaseFUs
	.4byte SetLineFeed__Q46nw4hbm2ut6detail11ResFontBaseFi
	.4byte GetCharWidth__Q46nw4hbm2ut6detail11ResFontBaseCFUs
	.4byte GetCharWidths__Q46nw4hbm2ut6detail11ResFontBaseCFUs
	.4byte GetGlyph__Q46nw4hbm2ut6detail11ResFontBaseCFPQ36nw4hbm2ut5GlyphUs
	.4byte GetEncoding__Q46nw4hbm2ut6detail11ResFontBaseCFv

glabel lbl_801ACC18
	# ROM: 0x1A8D18
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm2ut4FontFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801ACC70
	# ROM: 0x1A8D70
	.asciz "ut_TagProcessorBase.cpp"
	.asciz "NW4HBM:Failed assertion code < ' '"
	.balign 8
	.asciz "NW4HBM:Pointer Error\ncontext(=%p) is not valid pointer."
	.asciz "NW4HBM:Pointer Error\npRect(=%p) is not valid pointer."
	.balign 4

glabel lbl_801ACD20
	# ROM: 0x1A8E20
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm2ut19TagProcessorBase_w
	.4byte Process__Q36nw4hbm2ut19TagProcessorBase_w_FUsPQ36nw4hbm2ut15PrintContext_w_
	.4byte CalcRect__Q36nw4hbm2ut19TagProcessorBase_w_FPQ36nw4hbm2ut4RectUsPQ36nw4hbm2ut15PrintContext_w_

glabel lbl_801ACD34
	# ROM: 0x1A8E34
	.4byte 0
	.4byte 0
	.4byte __dt__Q36nw4hbm2ut19TagProcessorBase_c_Fv
	.4byte Process__Q36nw4hbm2ut19TagProcessorBase_c_FUsPQ36nw4hbm2ut15PrintContext_c_
	.4byte CalcRect__Q36nw4hbm2ut19TagProcessorBase_c_FPQ36nw4hbm2ut4RectUsPQ36nw4hbm2ut15PrintContext_c_

glabel lbl_801ACD48
	# ROM: 0x1A8E48
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF16__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF8__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharCP1252__Q36nw4hbm2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharSJIS__Q36nw4hbm2ut14CharStrmReaderFv

glabel lbl_801ACD78
	# ROM: 0x1A8E78
	.asciz "ut_TextWriterBase.cpp"
	.balign 4

glabel lbl_801ACD90
	# ROM: 0x1A8E90
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\ntagProcessor(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nformat(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\npRect(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\nstr(=%p) is not valid pointer."
	.balign 8
	.asciz "length is out of bounds(%d)\n%d <= length not satisfied."
	.asciz "NW4HBM:Pointer Error\nbuffer(=%p) is not valid pointer."
	.balign 4
	.asciz "size is out of bounds(%d)\n%d <= size not satisfied."

glabel lbl_801ACF54
	# ROM: 0x1A9054
	.4byte 0x00000100
	.asciz "NW4HBM:Pointer Error\nfont(=%p) is not valid pointer."
	.balign 4
	.asciz "NW4HBM:Pointer Error\ncontext.str(=%p) is not valid pointer."
	.asciz "NW4HBM:Pointer Error\nGetFont()(=%p) is not valid pointer."
	.balign 4
	.4byte 0x00000100
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "Font.h"
	.balign 4

glabel lbl_801AD04C
	# ROM: 0x1A914C
	.asciz "NW4HBM:Failed assertion mReadFunc == ReadNextCharUTF8 || mReadFunc == ReadNextCharCP1252 || mReadFunc == ReadNextCharSJIS"
	.balign 4

glabel lbl_801AD0C8
	# ROM: 0x1A91C8
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801AD0DC
	# ROM: 0x1A91DC
	.asciz "NW4HBM:Pointer Error\nstream(=%p) is not valid pointer."
	.balign 4

glabel lbl_801AD114
	# ROM: 0x1A9214
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801AD128
	# ROM: 0x1A9228
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4

glabel lbl_801AD160
	# ROM: 0x1A9260
	.asciz "CharStrmReader.h"
	.balign 4
	.asciz "NW4HBM:Failed assertion mReadFunc == ReadNextCharUTF16"
	.balign 4
	.asciz "CharStrmReader.h"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nstream(=%p) is not valid pointer."
	.balign 4
	.asciz "CharStrmReader.h"
	.balign 4
	.asciz "NW4HBM:Alignment Error(0x%x)\nstream must be aligned to 2 bytes boundary."
	.balign 4
	.asciz "CharStrmReader.h"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "CharStrmReader.h"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "CharStrmReader.h"
	.balign 4
	.asciz "NW4HBM:Pointer Error\nthis(=%p) is not valid pointer."
	.balign 4
	.asciz "CharStrmReader.h"
	.balign 4

glabel lbl_801AD350
	# ROM: 0x1A9450
	.4byte lbl_80246B10
	.4byte 0
	.4byte lbl_8015C1D0
	.4byte lbl_8015C220

glabel lbl_801AD360
	.4byte lbl_80246B18
	.4byte 0
	.4byte 0

glabel lbl_801AD36C
	# ROM: 0x1A946C
	.asciz "bad_alloc"
	.balign 4

glabel lbl_801AD378
	# ROM: 0x1A9478
	.4byte lbl_8015D78C
	.4byte lbl_8015D78C
	.4byte lbl_8015D6E4
	.4byte lbl_8015D6F0
	.4byte lbl_8015D6FC
	.4byte lbl_8015D708
	.4byte lbl_8015D714
	.4byte lbl_8015D714
	.4byte lbl_8015D720
	.4byte lbl_8015D72C
	.4byte lbl_8015D738
	.4byte lbl_8015D744
	.4byte lbl_8015D750
	.4byte lbl_8015D768
	.4byte lbl_8015D78C
	.4byte lbl_8015D774
	.4byte lbl_8015D75C
	.4byte lbl_8015E230
	.4byte lbl_8015DDE8
	.4byte lbl_8015DDFC
	.4byte lbl_8015DE28
	.4byte lbl_8015DE8C
	.4byte lbl_8015DED8
	.4byte lbl_8015DF2C
	.4byte lbl_8015DF80
	.4byte lbl_8015DFD4
	.4byte lbl_8015E05C
	.4byte lbl_8015E0D8
	.4byte lbl_8015E120
	.4byte lbl_8015E19C
	.4byte lbl_8015E1C4
	.4byte lbl_8015E230
	.4byte lbl_8015E210
	.4byte lbl_8015E1B0
	.4byte lbl_8015E808
	.4byte lbl_8015E800
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E808
	.4byte lbl_8015E738
	.4byte lbl_8015E808
	.4byte lbl_8015E800
	.4byte lbl_8015E758
	.4byte lbl_8015E718
	.4byte 0

glabel lbl_801AD448
	# ROM: 0x1A9548
	.4byte lbl_80246B30
	.4byte 0
	.4byte __dt__Q23std13bad_exceptionFv
	.4byte lbl_8015EAC4

glabel lbl_801AD458
	.4byte lbl_80246B18
	.4byte 0
	.4byte 0

glabel lbl_801AD464
	# ROM: 0x1A9564
	.asciz "bad_exception"
	.balign 8

glabel lbl_801AD478
	# ROM: 0x1A9578
	.4byte 0
	.4byte 0x0A800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80243E18
	.4byte 0x00000100
	.4byte lbl_80243E18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_801AD4C8
lbl_801AD4C8:
	.4byte 0x00000001
	.4byte 0x12800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80243D18
	.4byte 0x00000100
	.4byte lbl_80243D18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_801AD518
lbl_801AD518:
	.4byte 0x00000002
	.4byte 0x10800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80243C18
	.4byte 0x00000100
	.4byte lbl_80243C18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_801AD568
lbl_801AD568:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801AD5B8
	# ROM: 0x1A96B8
	.4byte lbl_8015FFE0
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_8015FFF4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_8016000C
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_80160024
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_801601D4
	.4byte lbl_8016003C
	.4byte lbl_80160054
	.4byte lbl_8016006C
	.4byte lbl_80160084
	.4byte lbl_8016009C
	.4byte lbl_801600B4
	.4byte lbl_801600CC
	.4byte lbl_801600E4
	.4byte lbl_801600FC
	.4byte lbl_80160114
	.4byte lbl_8016012C
	.4byte lbl_80160144
	.4byte lbl_8016015C
	.4byte lbl_80160174
	.4byte lbl_8016018C
	.4byte lbl_801601A4
	.4byte lbl_801601BC
	.4byte 0

glabel lbl_801AD6E0
	# ROM: 0x1A97E0
	.4byte 0x40240000
	.4byte 0
	.4byte 0x40590000
	.4byte 0
	.4byte 0x408F4000
	.4byte 0
	.4byte 0x40C38800
	.4byte 0
	.4byte 0x40F86A00
	.4byte 0
	.4byte 0x412E8480
	.4byte 0
	.4byte 0x416312D0
	.4byte 0
	.4byte 0x4197D784
	.4byte 0

glabel lbl_801AD720
	# ROM: 0x1A9820
	.4byte lbl_802480D0
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
	.4byte lbl_802480D4
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
lbl_801AD758:
	.4byte 0x43000000
	.4byte 0
	.4byte lbl_80178548
	.4byte lbl_80178848
	.4byte lbl_80178748
	.4byte lbl_80178BE0
	.4byte lbl_80178FE0
	.4byte lbl_80178DE0
	.4byte __mbtowc_noconv
	.4byte __wctomb_noconv
lbl_801AD780:
	.4byte 0x00010002
	.4byte 0x00030004
	.4byte 0x00050006
	.4byte 0x00070008
	.4byte 0x0009000A
	.4byte 0x000B000C
	.4byte 0x000D000E
	.4byte 0x000F0010
	.4byte 0x00210022
	.4byte 0x00230024
	.4byte 0x00250026
	.4byte 0x00270028
	.4byte 0x0029002A
	.4byte 0x00110012
	.4byte 0x00130014
	.4byte 0x00150016
	.4byte 0x0017002B
	.4byte 0x002D002F
	.4byte 0x00310033
	.4byte 0x00350037
	.4byte 0x0039003B
	.4byte 0x003D003F
	.4byte 0x00410043
	.4byte 0x00450047
	.4byte 0x0049004B
	.4byte 0x004D004F
	.4byte 0x00510053
	.4byte 0x00550057
	.4byte 0x0059005B
	.4byte 0x005D0018
	.4byte 0x0019001A
	.4byte 0x001B001C
	.4byte 0x0000002C
	.4byte 0x002E0030
	.4byte 0x00320034
	.4byte 0x00360038
	.4byte 0x003A003C
	.4byte 0x003E0040
	.4byte 0x00420044
	.4byte 0x00460048
	.4byte 0x004A004C
	.4byte 0x004E0050
	.4byte 0x00520054
	.4byte 0x00560058
	.4byte 0x005A005C
	.4byte 0x005E001D
	.4byte 0x001E001F
	.4byte 0x00200000
lbl_801AD840:
	.4byte 0x43000000
	.4byte 0
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0
	.4byte lbl_801AD780
	.4byte 0
lbl_801AD85C:
	.4byte 0x43000000
	.4byte 0
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
	.4byte lbl_802480D4
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
lbl_801AD890:
	.4byte 0x43000000
	.4byte 0
	.4byte lbl_802480D0
	.4byte lbl_802480D4
	.4byte lbl_802480D4
	.4byte 0
lbl_801AD8A8:
	.4byte 0x43000000
	.4byte 0
	.4byte lbl_802480D8
	.4byte lbl_80178948
	.4byte lbl_80178958
	.4byte lbl_80178964
	.4byte lbl_802480E0
	.4byte lbl_80178970
	.4byte lbl_801789C8
	.4byte lbl_802480D4

glabel lbl_801AD8D0
	# ROM: 0x1A99D0
	.4byte 0
	.4byte 0x43000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801AD840
	.4byte lbl_801AD758
	.4byte lbl_801AD85C
	.4byte lbl_801AD890
	.4byte lbl_801AD8A8

glabel lbl_801AD918
	# ROM: 0x1A9A18
	.4byte lbl_80162C80
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162CE8
	.4byte lbl_80162C30
	.4byte lbl_80162CD4
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162BE8
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162C80
	.4byte lbl_80162DE0
	.4byte lbl_80162D64
	.4byte lbl_80162BE8
	.4byte lbl_80162CE8
	.4byte lbl_80162C30
	.4byte lbl_80162CD4
	.4byte lbl_80162DE0
	.4byte lbl_80162BE8
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162DC8
	.4byte lbl_80162BE8
	.4byte lbl_80162D40
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162D9C
	.4byte lbl_80162DE0
	.4byte lbl_80162BE8
	.4byte lbl_80162DE0
	.4byte lbl_80162DE0
	.4byte lbl_80162BE8
	.4byte lbl_801628E4
	.4byte lbl_80162914
	.4byte lbl_80162914
	.4byte lbl_801628F8
	.4byte lbl_80162914
	.4byte lbl_80162914
	.4byte lbl_80162914
	.4byte lbl_80162914
	.4byte lbl_80162914
	.4byte lbl_80162914
	.4byte lbl_80162914
	.4byte lbl_801628DC
	.4byte lbl_80162914
	.4byte lbl_801628D4
	.4byte lbl_80162914
	.4byte lbl_80162914
	.4byte lbl_80162900

glabel lbl_801ADA3C
	# ROM: 0x1A9B3C
	.4byte lbl_80162ED8
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162E94
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162E94
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EB8
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162EC8
	.4byte lbl_80162EE4
	.4byte lbl_80162EE4
	.4byte lbl_80162ED8

glabel lbl_801ADAC0
	# ROM: 0x1A9BC0
	.4byte lbl_80163140
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_801630DC
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_801630DC
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_80163120
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_80163130
	.4byte lbl_8016314C
	.4byte lbl_8016314C
	.4byte lbl_80163140
	.4byte lbl_801645F0
	.4byte lbl_801647E8
	.4byte lbl_801645F8
	.4byte lbl_80164600
	.4byte lbl_80164628
	.4byte lbl_801647E8
	.4byte lbl_80164608
	.4byte lbl_80164618
	.4byte lbl_80164620

glabel lbl_801ADB68
	# ROM: 0x1A9C68
	.4byte lbl_80165234
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165234
	.4byte lbl_80165234
	.4byte lbl_80165234
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_8016521C
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165370
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165234
	.4byte lbl_80165560
	.4byte lbl_8016528C
	.4byte lbl_8016521C
	.4byte lbl_80165234
	.4byte lbl_80165234
	.4byte lbl_80165234
	.4byte lbl_80165560
	.4byte lbl_8016521C
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_80165568
	.4byte lbl_8016521C
	.4byte lbl_80165278
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_801652B8
	.4byte lbl_80165560
	.4byte lbl_8016521C
	.4byte lbl_80165560
	.4byte lbl_80165560
	.4byte lbl_8016521C

glabel lbl_801ADC48
	# ROM: 0x1A9D48
	.4byte lbl_80165BEC
	.4byte lbl_80165BF4
	.4byte lbl_80165BFC
	.4byte lbl_80165C04
	.4byte lbl_80165C0C
	.4byte lbl_80165C20
	.4byte lbl_80165C28
	.4byte lbl_80165C30

glabel lbl_801ADC68
	# ROM: 0x1A9D68
	.4byte lbl_80165A54
	.4byte lbl_80165A5C
	.4byte lbl_80165A64
	.4byte lbl_80165A6C
	.4byte lbl_80165A74
	.4byte lbl_80165A88
	.4byte lbl_80165A90
	.4byte lbl_80165A98
	.4byte lbl_801682A0
	.4byte lbl_80167FA8
	.4byte lbl_80168070
	.4byte lbl_801682A0
	.4byte lbl_801680B8
	.4byte lbl_801682A0
	.4byte lbl_801682A0
	.4byte lbl_801682A0
	.4byte lbl_80168108
	.4byte lbl_801682A0
	.4byte lbl_801682A0
	.4byte lbl_801682A0
	.4byte lbl_801682A0
	.4byte lbl_801682A0
	.4byte lbl_801682A0
	.4byte lbl_801682A0
	.4byte lbl_80168108
	.4byte lbl_80168750
	.4byte lbl_801683F4
	.4byte lbl_801684BC
	.4byte lbl_80168750
	.4byte lbl_80168504
	.4byte lbl_80168750
	.4byte lbl_80168750
	.4byte lbl_80168750
	.4byte lbl_80168554
	.4byte lbl_80168750
	.4byte lbl_80168750
	.4byte lbl_80168750
	.4byte lbl_80168750
	.4byte lbl_80168750
	.4byte lbl_80168750
	.4byte lbl_80168750
	.4byte lbl_80168554
	.4byte lbl_8016A370
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_80169990
	.4byte lbl_80169AC8
	.4byte lbl_8016A084
	.4byte lbl_80169BBC
	.4byte lbl_8016A390
	.4byte lbl_80169BF8
	.4byte lbl_80169C70
	.4byte lbl_80169CA0
	.4byte lbl_80169CC0
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_80169D50
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_80169E5C
	.4byte lbl_80169E84
	.4byte lbl_80169EC0
	.4byte lbl_80169F2C
	.4byte lbl_80169F84
	.4byte lbl_80169FD0
	.4byte lbl_8016A058
	.4byte lbl_8016A0C0
	.4byte lbl_8016A328
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_801698EC
	.4byte lbl_80169A38
	.4byte lbl_80169B70
	.4byte lbl_80169B9C
	.4byte lbl_80169BD8
	.4byte lbl_8016A390
	.4byte lbl_80169C28
	.4byte lbl_80169A38
	.4byte lbl_8016A390
	.4byte lbl_80169D08
	.4byte lbl_8016A390
	.4byte lbl_8016A390
	.4byte lbl_80169D2C
	.4byte lbl_80169D70
	.4byte lbl_8016A390
	.4byte lbl_80169D8C
	.4byte lbl_8016A390
	.4byte lbl_80169E30
	.4byte lbl_8016A390
	.4byte lbl_80169EA4
	.4byte lbl_80169EE8
	.4byte lbl_8016A390
	.4byte lbl_80169FB0
	.4byte lbl_8016A02C
	.4byte lbl_8016A084
	.4byte lbl_8016A0E4

glabel lbl_801ADE68
	# ROM: 0x1A9F68
	.4byte lbl_8016FB1C
	.4byte lbl_8016FA40
	.4byte lbl_8016FA50
	.4byte lbl_8016FA60
	.4byte lbl_8016FA80
	.4byte lbl_8016FA90
	.4byte lbl_8016FB1C
	.4byte lbl_8016FA70
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FAA0
	.4byte lbl_8016FAB0
	.4byte lbl_8016FAC0
	.4byte lbl_8016FAD0
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB1C
	.4byte lbl_8016FB10
	.4byte lbl_8016FAE0
	.4byte lbl_8016FAF0
	.4byte lbl_8016FB00
	.4byte 0

glabel lbl_801ADED8
	# ROM: 0x1A9FD8
	.4byte lbl_801706E4
	.4byte lbl_80170704
	.4byte lbl_801706DC
	.4byte lbl_80170704
	.4byte lbl_801706EC
	.4byte lbl_801706F4
	.4byte lbl_801706FC

glabel lbl_801ADEF4
	# ROM: 0x1A9FF4
	.4byte lbl_80170928
	.4byte lbl_80170948
	.4byte lbl_80170920
	.4byte lbl_80170948
	.4byte lbl_80170930
	.4byte lbl_80170938
	.4byte lbl_80170940

glabel lbl_801ADF10
	# ROM: 0x1AA010
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801ADF1C
	# ROM: 0x1AA01C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000

glabel lbl_801ADF2C
	# ROM: 0x1AA02C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801ADF40
	# ROM: 0x1AA040
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.4byte 0

glabel lbl_801ADF80
	# ROM: 0x1AA080
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

