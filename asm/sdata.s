.include "macros.inc"

.section .sdata, "wa"  # 0x80246480 - 0x80246B60

.balign 0x20

glabel lbl_80246480
	# ROM: 0x1AA0C0
	.asciz "romc"
	.balign 4

glabel lbl_80246488
	# ROM: 0x1AA0C8
	.4byte 0

glabel lbl_8024648C
	# ROM: 0x1AA0CC
	.asciz "SW0"

glabel lbl_80246490
	# ROM: 0x1AA0D0
	.asciz "SW1"

glabel lbl_80246494
	# ROM: 0x1AA0D4
	.asciz "CART"
	.balign 8

glabel lbl_802464A0
	# ROM: 0x1AA0E0
	.asciz "COUNTER"

glabel lbl_802464A8
	# ROM: 0x1AA0E8
	.asciz "RDB"

glabel lbl_802464AC
	# ROM: 0x1AA0EC
	.asciz "SP"
	.balign 4

glabel lbl_802464B0
	# ROM: 0x1AA0F0
	.asciz "SI"
	.balign 4

glabel lbl_802464B4
	# ROM: 0x1AA0F4
	.asciz "AI"
	.balign 4

glabel lbl_802464B8
	# ROM: 0x1AA0F8
	.asciz "VI"
	.balign 4

glabel lbl_802464BC
	# ROM: 0x1AA0FC
	.asciz "PI"
	.balign 4

glabel lbl_802464C0
	# ROM: 0x1AA100
	.asciz "DP"
	.balign 4

glabel lbl_802464C4
	# ROM: 0x1AA104
	.asciz "FAULT"
	.balign 4

glabel lbl_802464CC
	# ROM: 0x1AA10C
	.asciz "PRENMI"
	.balign 4

glabel lbl_802464D4
	.asciz "SYSTEM"
	.balign 8

glabel lbl_802464E0
	.asciz "AI"
	.balign 8

glabel lbl_802464E8
	.asciz "VI"
	.balign 8

glabel lbl_802464F0
	.asciz "SI"
	.balign 8

glabel lbl_802464F8
	.asciz "PI"
	.balign 8

glabel lbl_80246500
	.asciz "MI"
	.balign 8

glabel lbl_80246508
	.asciz "DD"
	.balign 8

glabel lbl_80246510
	.asciz "CPU"
	.balign 8

glabel lbl_80246518
	.asciz "PIF"
	.balign 8

glabel lbl_80246520
	.asciz "RAM"
	.balign 8

glabel lbl_80246528
	.asciz "ROM"
	.balign 8

glabel lbl_80246530
	.asciz "RDB"
	.balign 8

glabel lbl_80246538
	# ROM: 0x1AA178
	.asciz "RAM"
	.balign 4

glabel lbl_8024653C
	.asciz "SRAM"
	.balign 8

glabel lbl_80246548
	# ROM: 0x1AA188
	.asciz "EEPROM"
	.balign 4

glabel lbl_80246550
	.asciz "EEPROM"
	.balign 4

glabel lbl_80246558
	# ROM: 0x1AA198
	.asciz "EEP"
	.balign 4

glabel lbl_8024655C
	.asciz "FLASH"
	.balign 8

glabel lbl_80246568
	# ROM: 0x1AA1A8
	.4byte 0x0000000F
	.4byte 0x00000007

glabel lbl_80246570
	.asciz "Frame"
	.balign 4

glabel lbl_80246578
	# ROM: 0x1AA1B8
	.asciz "."
	.balign 4

glabel lbl_8024657C
	# ROM: 0x1AA1BC
	.4byte 0x00000002

glabel lbl_80246580
	# ROM: 0x1AA1C0
	.4byte 0x0F000000
	.4byte 0

glabel lbl_80246588
	# ROM: 0x1AA1C8
	.4byte 0x00020406
	.4byte 0x080A0C0F

glabel lbl_80246590
	# ROM: 0x1AA1D0
	.4byte 0x00030504
	.4byte 0x02000000

glabel lbl_80246598
	# ROM: 0x1AA1D8
	.4byte 0x03010400

glabel lbl_8024659C
	# ROM: 0x1AA1DC
	.4byte 0x00000064

glabel lbl_802465A0
	# ROM: 0x1AA1E0
	.4byte 0x00000064

glabel lbl_802465A4
	# ROM: 0x1AA1E4
	.4byte 0x00000064

glabel lbl_802465A8
	# ROM: 0x1AA1E8
	.asciz ".T64"
	.balign 4

glabel lbl_802465B0
	# ROM: 0x1AA1F0
	.4byte 0xFFFFFFFF
	.4byte 0

glabel lbl_802465B8
	.asciz "Code"
	.balign 4

glabel lbl_802465C0
	# ROM: 0x1AA200
	.asciz "/LZ77"
	.balign 4

glabel lbl_802465C8
	# ROM: 0x1AA208
	.asciz "/Huf8"
	.balign 4

glabel lbl_802465D0
	# ROM: 0x1AA210
	.4byte 0x2E000000
	.4byte 0

glabel lbl_802465D8
	.asciz "AUDIO"
	.balign 4

glabel lbl_802465E0
	.asciz "Video"
	.balign 4

glabel lbl_802465E8
	.asciz "Store"
	.balign 4

glabel lbl_802465F0
	# ROM: 0x1AA230
	.asciz "\n"
	.balign 4

glabel lbl_802465F4
	# ROM: 0x1AA234
	.4byte 0

glabel lbl_802465F8
	# ROM: 0x1AA238
	.4byte 0x03030303
	.4byte 0x03030303

glabel lbl_80246600
	# ROM: 0x1AA240
	.4byte 0x01010102
	.4byte 0x03040404

glabel lbl_80246608
	# ROM: 0x1AA248
	.4byte 0x00000001

glabel lbl_8024660C
	# ROM: 0x1AA24C
	.4byte 0x00000001

glabel lbl_80246610
	# ROM: 0x1AA250
	.4byte 0x00000001

glabel lbl_80246614
	# ROM: 0x1AA254
	.4byte 0x00000001

glabel lbl_80246618
	# ROM: 0x1AA258
	.4byte 0x00000001

glabel lbl_8024661C
	# ROM: 0x1AA25C
	.2byte 0x0500

glabel lbl_8024661E
	# ROM: 0x1AA25E
	.2byte 0x03C0

glabel lbl_80246620
	# ROM: 0x1AA260
	.4byte 0x01FF00FF
	.4byte 0x007F003F

glabel lbl_80246628
	# ROM: 0x1AA268
	.4byte 0x02000100
	.4byte 0x00800040

glabel lbl_80246630
	.asciz "RSP"
	.balign 8

glabel lbl_80246638
	.asciz "RDP"
	.balign 8

glabel lbl_80246640
	# ROM: 0x1AA280
	.asciz "xlExit"
	.balign 4

glabel lbl_80246648
	.asciz "FILE"
	.balign 4

glabel lbl_80246650
	# ROM: 0x1AA290
	.4byte 0x80000000
	.4byte 0

glabel lbl_80246658
	# ROM: 0x1AA298
	.4byte 0xFFFFFFFF
	.4byte 0

glabel lbl_80246660
	# ROM: 0x1AA2A0
	.4byte 0x43980000

glabel lbl_80246664
	# ROM: 0x1AA2A4
	.4byte 0x43640000

glabel lbl_80246668
	# ROM: 0x1AA2A8
	.4byte 0x3F800000

glabel lbl_8024666C
	# ROM: 0x1AA2AC
	.4byte 0x0000000F

glabel lbl_80246670
	# ROM: 0x1AA2B0
	.4byte lbl_80174388
	.4byte 0

glabel lbl_80246678
	# ROM: 0x1AA2B8
	.byte 0x01

glabel lbl_80246679
	# ROM: 0x1AA2B9
	.byte 0x01

glabel lbl_8024667A
	# ROM: 0x1AA2BA
	.2byte 0x0100
	.4byte 0

glabel lbl_80246680
	# ROM: 0x1AA2C0
	.4byte lbl_80174E24
	.4byte lbl_80247BE0

glabel lbl_80246688
	# ROM: 0x1AA2C8
	.4byte lbl_80247BE8

glabel lbl_8024668C
	# ROM: 0x1AA2CC
	.4byte 0x01000000

glabel lbl_80246690
	# ROM: 0x1AA2D0
	.4byte lbl_80182988

glabel lbl_80246694
	# ROM: 0x1AA2D4
	.asciz "%08x\n"
	.balign 4

glabel lbl_8024669C
	# ROM: 0x1AA2DC
	.asciz "%s\n"
	.balign 4

glabel lbl_802466A0
	# ROM: 0x1AA2E0
	.asciz "OS.c"
	.balign 4

glabel lbl_802466A8
	.asciz "HAEA"
	.balign 4

glabel lbl_802466B0
	# ROM: 0x1AA2F0
	.4byte lbl_802466A8
	.4byte 0

glabel lbl_802466B8
	# ROM: 0x1AA2F8
	.4byte 0xFFFFFFFF
	.4byte 0

glabel lbl_802466C0
	# ROM: 0x1AA300
	.4byte 0xFFFFFFFF

glabel lbl_802466C4
	# ROM: 0x1AA304
	.4byte 0xFFFFFFFF

glabel lbl_802466C8
	# ROM: 0x1AA308
	.4byte 0x000000F8

glabel lbl_802466CC
	# ROM: 0x1AA30C
	.4byte 0x0A000000

glabel lbl_802466D0
	# ROM: 0x1AA310
	.asciz "/dev/es"

glabel lbl_802466D8
	# ROM: 0x1AA318
	.asciz "%d"
	.balign 8

glabel lbl_802466E0
	# ROM: 0x1AA320
	.asciz "%s\n"
	.balign 8

glabel lbl_802466E8
	# ROM: 0x1AA328
	.4byte 0xFFFF0000
	.4byte 0

glabel lbl_802466F0
	# ROM: 0x1AA330
	.4byte DefaultSwitchThreadCallback
	.4byte 0

glabel lbl_802466F8
	# ROM: 0x1AA338
	.4byte 0xFFFFFFFF
	.4byte 0

glabel lbl_80246700
	# ROM: 0x1AA340
	.4byte 0x00000009
	.4byte 0

glabel lbl_80246708
	# ROM: 0x1AA348
	.4byte 0xFFFFFFFF
	.4byte 0

glabel lbl_80246710
	# ROM: 0x1AA350
	.4byte lbl_801902D0
	.4byte 0

glabel lbl_80246718
	# ROM: 0x1AA358
	.4byte lbl_80190318
	.4byte 0

glabel lbl_80246720
	# ROM: 0x1AA360
	.4byte lbl_80190438

glabel lbl_80246724
	# ROM: 0x1AA364
	.4byte 0x00000001

glabel lbl_80246728
	# ROM: 0x1AA368
	.4byte 0x000003E7

glabel lbl_8024672C
	# ROM: 0x1AA36C
	.4byte 0x000003E7

glabel lbl_80246730
	# ROM: 0x1AA370
	.4byte 0x00000001

glabel lbl_80246734
	# ROM: 0x1AA374
	.4byte 0x00000001

glabel lbl_80246738
	# ROM: 0x1AA378
	.asciz "vi.c"
	.balign 4

glabel lbl_80246740
	# ROM: 0x1AA380
	.4byte 0x00000001
	.4byte 0

glabel lbl_80246748
	# ROM: 0x1AA388
	.byte 0xFF

glabel lbl_80246749
	# ROM: 0x1AA389
	.byte 0xFF

glabel lbl_8024674A
	# ROM: 0x1AA38A
	.byte 0xFF

glabel lbl_8024674B
	# ROM: 0x1AA38B
	.byte 0xFF

glabel lbl_8024674C
	# ROM: 0x1AA38C
	.byte 0xFF

glabel lbl_8024674D
	# ROM: 0x1AA38D
	.byte 0xFF

glabel lbl_8024674E
	# ROM: 0x1AA38E
	.byte 0xFF

glabel lbl_8024674F
	# ROM: 0x1AA38F
	.byte 0xFF

glabel lbl_80246750
	# ROM: 0x1AA390
	.byte 0xFF

glabel lbl_80246751
	# ROM: 0x1AA391
	.byte 0xFF

glabel lbl_80246752
	# ROM: 0x1AA392
	.2byte 0xFF00

glabel lbl_80246754
	# ROM: 0x1AA394
	.4byte 0x000000FF

glabel lbl_80246758
	# ROM: 0x1AA398
	.4byte 0xFF000000
	.4byte 0

glabel lbl_80246760
	# ROM: 0x1AA3A0
	.4byte 0
	.4byte 0x3F800000

glabel lbl_80246768
	# ROM: 0x1AA3A8
	.4byte lbl_80190E60
	.4byte 0

glabel lbl_80246770
	# ROM: 0x1AA3B0
	.4byte 0x00040102

glabel lbl_80246774
	# ROM: 0x1AA3B4
	.4byte 0x00080102

glabel lbl_80246778
	# ROM: 0x1AA3B8
	.4byte 0x000C0102
	.4byte 0

glabel lbl_80246780
	# ROM: 0x1AA3C0
	.4byte 0x80818283
	.4byte 0xA0A1A2A3

glabel lbl_80246788
	# ROM: 0x1AA3C8
	.4byte 0x84858687
	.4byte 0xA4A5A6A7

glabel lbl_80246790
	# ROM: 0x1AA3D0
	.4byte 0x88898A8B
	.4byte 0xA8A9AAAB

glabel lbl_80246798
	# ROM: 0x1AA3D8
	.4byte 0x8C8D8E8F
	.4byte 0xACADAEAF

glabel lbl_802467A0
	# ROM: 0x1AA3E0
	.4byte 0x90919293
	.4byte 0xB0B1B2B3

glabel lbl_802467A8
	# ROM: 0x1AA3E8
	.4byte 0x94959697
	.4byte 0xB4B5B6B7

glabel lbl_802467B0
	# ROM: 0x1AA3F0
	.4byte 0x98999A9B
	.4byte 0xB8B9BABB

glabel lbl_802467B8
	# ROM: 0x1AA3F8
	.4byte 0x00040105
	.4byte 0x02060000

glabel lbl_802467C0
	# ROM: 0x1AA400
	.4byte 0x00000001
	.4byte 0

glabel lbl_802467C8
	# ROM: 0x1AA408
	.asciz "dvdfs.c"

glabel lbl_802467D0
	# ROM: 0x1AA410
	.4byte lbl_80191780

glabel lbl_802467D4
	# ROM: 0x1AA414
	.4byte 0x00000001

glabel lbl_802467D8
	# ROM: 0x1AA418
	.4byte lbl_800AAF8C

glabel lbl_802467DC
	# ROM: 0x1AA41C
	.asciz "dvd.c"
	.balign 4

glabel lbl_802467E4
	# ROM: 0x1AA424
	.4byte 0xFFFFFFFF

glabel lbl_802467E8
	# ROM: 0x1AA428
	.4byte 0xFFFFFFFF
	.4byte 0

glabel lbl_802467F0
	# ROM: 0x1AA430
	.asciz "/dev/di"

glabel lbl_802467F8
	# ROM: 0x1AA438
	.4byte lbl_80192B70
	.4byte 0

glabel lbl_80246800
	# ROM: 0x1AA440
	.4byte lbl_80192BB8
	.4byte 0

glabel lbl_80246808
	# ROM: 0x1AA448
	.2byte 0x0010

glabel lbl_8024680A
	# ROM: 0x1AA44A
	.2byte 0x0037

glabel lbl_8024680C
	# ROM: 0x1AA44C
	.4byte 0x20000000

glabel lbl_80246810
	# ROM: 0x1AA450
	.4byte lbl_800B6CD8

glabel lbl_80246814
	# ROM: 0x1AA454
	.4byte lbl_800B6CE4

glabel lbl_80246818
	# ROM: 0x1AA458
	.4byte lbl_80196990
	.4byte 0

glabel lbl_80246820
	# ROM: 0x1AA460
	.asciz "%s/%08x"

glabel lbl_80246828
	# ROM: 0x1AA468
	.4byte lbl_80196B80

glabel lbl_8024682C
	# ROM: 0x1AA46C
	.asciz "/"
	.balign 4

glabel lbl_80246830
	# ROM: 0x1AA470
	.4byte 0

glabel lbl_80246834
	# ROM: 0x1AA474
	.asciz "."
	.balign 4

glabel lbl_80246838
	# ROM: 0x1AA478
	.asciz ".."
	.balign 4

glabel lbl_8024683C
	# ROM: 0x1AA47C
	.asciz "/%s"
	.balign 4

glabel lbl_80246840
	# ROM: 0x1AA480
	.asciz "%s/%s"
	.balign 4

glabel lbl_80246848
	# ROM: 0x1AA488
	.asciz "/dev/es"

glabel lbl_80246850
	# ROM: 0x1AA490
	.4byte 0

glabel lbl_80246854
	# ROM: 0x1AA494
	.4byte 0x00200000

glabel lbl_80246858
	.asciz "/meta"
	.balign 4

glabel lbl_80246860
	.asciz "/ticket"

glabel lbl_80246868
	# ROM: 0x1AA4A8
	.4byte lbl_80196D50

glabel lbl_8024686C
	.asciz "IPL.CB"
	.balign 4

glabel lbl_80246874
	.asciz "IPL.AR"
	.balign 8

glabel lbl_80246880
	.asciz "IPL.ARN"

glabel lbl_80246888
	.asciz "IPL.CD"
	.balign 4

glabel lbl_80246890
	.asciz "IPL.CD2"

glabel lbl_80246898
	.asciz "IPL.DH"
	.balign 4

glabel lbl_802468A0
	.asciz "IPL.E60"

glabel lbl_802468A8
	.asciz "IPL.FRC"

glabel lbl_802468B0
	.asciz "IPL.IDL"

glabel lbl_802468B8
	.asciz "IPL.INC"

glabel lbl_802468C0
	.asciz "IPL.LNG"

glabel lbl_802468C8
	.asciz "IPL.NIK"

glabel lbl_802468D0
	.asciz "IPL.PC"
	.balign 4

glabel lbl_802468D8
	.asciz "IPL.PGS"

glabel lbl_802468E0
	.asciz "IPL.SSV"

glabel lbl_802468E8
	.asciz "IPL.SND"

glabel lbl_802468F0
	.asciz "IPL.UPT"

glabel lbl_802468F8
	.asciz "NET.CNF"

glabel lbl_80246900
	.asciz "DEV.BTM"

glabel lbl_80246908
	.asciz "DEV.VIM"

glabel lbl_80246910
	.asciz "DEV.CTC"

glabel lbl_80246918
	.asciz "DEV.DSM"

glabel lbl_80246920
	.asciz "BT.DINF"

glabel lbl_80246928
	.asciz "BT.SENS"

glabel lbl_80246930
	.asciz "BT.SPKV"

glabel lbl_80246938
	.asciz "BT.MOT"
	.balign 4

glabel lbl_80246940
	.asciz "BT.BAR"
	.balign 4

glabel lbl_80246948
	.asciz "DVD.CNF"

glabel lbl_80246950
	.asciz "WWW.RST"

glabel lbl_80246958
	# ROM: 0x1AA598
	.asciz "SCv0"
	.balign 4

glabel lbl_80246960
	# ROM: 0x1AA5A0
	.asciz "SCed"
	.balign 4

glabel lbl_80246968
	# ROM: 0x1AA5A8
	.asciz "AREA"
	.balign 4

glabel lbl_80246970
	# ROM: 0x1AA5B0
	.asciz "arc.c"
	.balign 4

glabel lbl_80246978
	# ROM: 0x1AA5B8
	.4byte 0x00000001

glabel lbl_8024697C
	# ROM: 0x1AA5BC
	.4byte 0xFFFFFFFF

glabel lbl_80246980
	# ROM: 0x1AA5C0
	.4byte 0xFFFFFFFF

glabel lbl_80246984
	# ROM: 0x1AA5C4
	.4byte 0x00000001

glabel lbl_80246988
	# ROM: 0x1AA5C8
	.asciz "/dev/fs"

glabel lbl_80246990
	# ROM: 0x1AA5D0
	.4byte lbl_80197000

glabel lbl_80246994
	# ROM: 0x1AA5D4
	.4byte 0x00000020

glabel lbl_80246998
	# ROM: 0x1AA5D8
	.4byte 0xF0000000

glabel lbl_8024699C
	# ROM: 0x1AA5DC
	.4byte 0x00000300

glabel lbl_802469A0
	# ROM: 0x1AA5E0
	.4byte 0x00000005

glabel lbl_802469A4
	# ROM: 0x1AA5E4
	.4byte lbl_800C33A4

glabel lbl_802469A8
	# ROM: 0x1AA5E8
	.asciz "A"
	.balign 4

glabel lbl_802469AC
	# ROM: 0x1AA5EC
	.asciz "B"
	.balign 4

glabel lbl_802469B0
	# ROM: 0x1AA5F0
	.4byte lbl_80197058

glabel lbl_802469B4
	# ROM: 0x1AA5F4
	.2byte 0x0006

glabel lbl_802469B6
	# ROM: 0x1AA5F6
	.2byte 0x0004

glabel lbl_802469B8
	# ROM: 0x1AA5F8
	.2byte 0x001E

glabel lbl_802469BA
	# ROM: 0x1AA5FA
	.2byte 0x001E

glabel lbl_802469BC
	# ROM: 0x1AA5FC
	.asciz "2.0"

glabel lbl_802469C0
	# ROM: 0x1AA600
	.4byte lbl_80198AC8

glabel lbl_802469C4
	# ROM: 0x1AA604
	.4byte 0x3F800000

glabel lbl_802469C8
	# ROM: 0x1AA608
	.4byte 0

glabel lbl_802469CC
	# ROM: 0x1AA60C
	.4byte 0xBF800000

glabel lbl_802469D0
	# ROM: 0x1AA610
	.4byte 0x3F800000

glabel lbl_802469D4
	# ROM: 0x1AA614
	.4byte 0

glabel lbl_802469D8
	# ROM: 0x1AA618
	.4byte 0x3E4CCCCD

glabel lbl_802469DC
	# ROM: 0x1AA61C
	.4byte 0x3D4CCCCD

glabel lbl_802469E0
	# ROM: 0x1AA620
	.4byte 0x3D8F5C29

glabel lbl_802469E4
	# ROM: 0x1AA624
	.4byte 0x3D75C28F

glabel lbl_802469E8
	# ROM: 0x1AA628
	.4byte 0x00640000

glabel lbl_802469EC
	# ROM: 0x1AA62C
	.4byte 0x3D4CCCCD

glabel lbl_802469F0
	# ROM: 0x1AA630
	.4byte 0x40400000

glabel lbl_802469F4
	# ROM: 0x1AA634
	.4byte 0x3D23D70A

glabel lbl_802469F8
	# ROM: 0x1AA638
	.4byte 0x3F666666

glabel lbl_802469FC
	# ROM: 0x1AA63C
	.4byte 0x3F666666

glabel lbl_80246A00
	# ROM: 0x1AA640
	.4byte 0x3F666666

glabel lbl_80246A04
	# ROM: 0x1AA644
	.4byte 0x3F333333

glabel lbl_80246A08
	# ROM: 0x1AA648
	.4byte 0x3DCCCCCD

glabel lbl_80246A0C
	# ROM: 0x1AA64C
	.4byte 0x0000000F

glabel lbl_80246A10
	# ROM: 0x1AA650
	.4byte 0x00000047

glabel lbl_80246A14
	# ROM: 0x1AA654
	.4byte 0x0000003C

glabel lbl_80246A18
	# ROM: 0x1AA658
	.4byte 0x00000134

glabel lbl_80246A1C
	# ROM: 0x1AA65C
	.4byte 0x0000001E

glabel lbl_80246A20
	# ROM: 0x1AA660
	.4byte 0x000000B4

glabel lbl_80246A24
	# ROM: 0x1AA664
	.4byte 0x4059999A

glabel lbl_80246A28
	# ROM: 0x1AA668
	.4byte 0x40066666
	.4byte 0

glabel lbl_80246A30
	# ROM: 0x1AA670
	.4byte 0xFFFFFFFF

glabel lbl_80246A34
	# ROM: 0x1AA674
	.asciz "USB: "
	.balign 8

glabel lbl_80246A40
	# ROM: 0x1AA680
	.asciz "WUD.c"
	.balign 4

glabel lbl_80246A48
	# ROM: 0x1AA688
	.4byte 0x00000001

glabel lbl_80246A4C
	# ROM: 0x1AA68C
	.4byte 0xFFFFFFFF

glabel lbl_80246A50
	# ROM: 0x1AA690
	.asciz "%02x "
	.balign 4

glabel lbl_80246A58
	# ROM: 0x1AA698
	.asciz "\n"
	.balign 4

glabel lbl_80246A5C
	# ROM: 0x1AA69C
	.asciz "oh0"
	.balign 4

glabel lbl_80246A60
	# ROM: 0x1AA6A0
	.asciz "oh1"
	.balign 8

glabel lbl_80246A68
	# ROM: 0x1AA6A8
	.4byte lbl_80175A34

glabel lbl_80246A6C
	# ROM: 0x1AA6AC
	.4byte lbl_80175A40

glabel lbl_80246A70
	# ROM: 0x1AA6B0
	.4byte lbl_802486C0

glabel lbl_80246A74
	# ROM: 0x1AA6B4
	.4byte lbl_80175A54

glabel lbl_80246A78
	# ROM: 0x1AA6B8
	.4byte lbl_80175AA0
	.4byte 0

glabel lbl_80246A80
	.4byte 0x20011002
	.4byte 0x01033102

glabel lbl_80246A88
	# ROM: 0x1AA6C8
	.4byte lbl_80175AB8
	.4byte 0

glabel lbl_80246A90
	# ROM: 0x1AA6D0
	.4byte lbl_80248048
	.4byte 0

glabel lbl_80246A98
	# ROM: 0x1AA6D8
	.asciz "%s\n"
	.balign 8

glabel lbl_80246AA0
	# ROM: 0x1AA6E0
	.4byte 0x0A5C2101
	.4byte 0

glabel lbl_80246AA8
	# ROM: 0x1AA6E8
	.4byte 0x01000000

glabel lbl_80246AAC
	# ROM: 0x1AA6EC
	.4byte 0x00000001

glabel lbl_80246AB0
	# ROM: 0x1AA6F0
	.4byte 0
	.4byte 0

glabel lbl_80246AB8
	# ROM: 0x1AA6F8
	.4byte 0x001F0000

glabel lbl_80246ABC
	# ROM: 0x1AA6FC
	.asciz "TRUE"
	.balign 4

glabel lbl_80246AC4
	# ROM: 0x1AA704
	.asciz "FALSE"
	.balign 8

glabel lbl_80246AD0
	# ROM: 0x1AA710
	.asciz "*******"

glabel lbl_80246AD8
	# ROM: 0x1AA718
	.asciz "TRUE"
	.balign 4

glabel lbl_80246AE0
	# ROM: 0x1AA720
	.asciz "FALSE"
	.balign 4

glabel lbl_80246AE8
	# ROM: 0x1AA728
	.asciz "Bad UA"
	.balign 4

glabel lbl_80246AF0
	# ROM: 0x1AA730
	.asciz "Bad DM"
	.balign 4

glabel lbl_80246AF8
	# ROM: 0x1AA738
	.asciz "/dev/es"

glabel lbl_80246B00
	# ROM: 0x1AA740
	.4byte 0xFFFFFFFF
	.4byte 0

glabel lbl_80246B08
	# ROM: 0x1AA748
	.asciz "TPL.c"
	.balign 4

glabel lbl_80246B10
	.4byte lbl_8017831C
	.4byte lbl_801AD360

glabel lbl_80246B18
	.4byte lbl_8017832C
	.4byte 0

glabel lbl_80246B20
	# ROM: 0x1AA760
	.4byte lbl_8015C22C

glabel lbl_80246B24
	# ROM: 0x1AA764
	.4byte lbl_8015C230

glabel lbl_80246B28
	# ROM: 0x1AA768
	.4byte 0xFFFFFFFE
	.4byte 0

glabel lbl_80246B30
	.4byte lbl_80178378
	.4byte lbl_801AD458

glabel lbl_80246B38
	# ROM: 0x1AA778
	.4byte 0
	.4byte 0

glabel lbl_80246B40
	# ROM: 0x1AA780
	.4byte 0x00000001
	.4byte 0

glabel lbl_80246B48
	# ROM: 0x1AA788
	.4byte 0x7FFFFFFF

glabel lbl_80246B4C
	# ROM: 0x1AA78C
	.4byte 0x7F800000

glabel lbl_80246B50
	# ROM: 0x1AA790
	.4byte 0x7FF00000
	.4byte 0

