.include "macros.inc"

.section .sdata, "wa"  # 0x80246480 - 0x80246B60

.balign 0x20

glabel lbl_80246480
	.incbin "00000001.app", 0x1AA0C0, 0x8

glabel lbl_80246488
	.incbin "00000001.app", 0x1AA0C8, 0x4

glabel lbl_8024648C
	.incbin "00000001.app", 0x1AA0CC, 0x4

glabel lbl_80246490
	.incbin "00000001.app", 0x1AA0D0, 0x4

glabel lbl_80246494
	.incbin "00000001.app", 0x1AA0D4, 0xC

glabel lbl_802464A0
	.incbin "00000001.app", 0x1AA0E0, 0x8

glabel lbl_802464A8
	.incbin "00000001.app", 0x1AA0E8, 0x4

glabel lbl_802464AC
	.incbin "00000001.app", 0x1AA0EC, 0x4

glabel lbl_802464B0
	.incbin "00000001.app", 0x1AA0F0, 0x4

glabel lbl_802464B4
	.incbin "00000001.app", 0x1AA0F4, 0x4

glabel lbl_802464B8
	.incbin "00000001.app", 0x1AA0F8, 0x4

glabel lbl_802464BC
	.incbin "00000001.app", 0x1AA0FC, 0x4

glabel lbl_802464C0
	.incbin "00000001.app", 0x1AA100, 0x4

glabel lbl_802464C4
	.incbin "00000001.app", 0x1AA104, 0x8

glabel lbl_802464CC
	.incbin "00000001.app", 0x1AA10C, 0x6C

glabel lbl_80246538
	.incbin "00000001.app", 0x1AA178, 0x10

glabel lbl_80246548
	.incbin "00000001.app", 0x1AA188, 0x10

glabel lbl_80246558
	.incbin "00000001.app", 0x1AA198, 0x10

glabel lbl_80246568
	.incbin "00000001.app", 0x1AA1A8, 0x10

glabel lbl_80246578
	.incbin "00000001.app", 0x1AA1B8, 0x4

glabel lbl_8024657C
	.incbin "00000001.app", 0x1AA1BC, 0x4

glabel lbl_80246580
	.incbin "00000001.app", 0x1AA1C0, 0x8

glabel lbl_80246588
	.incbin "00000001.app", 0x1AA1C8, 0x8

glabel lbl_80246590
	.incbin "00000001.app", 0x1AA1D0, 0x8

glabel lbl_80246598
	.incbin "00000001.app", 0x1AA1D8, 0x4

glabel lbl_8024659C
	.incbin "00000001.app", 0x1AA1DC, 0x4

glabel lbl_802465A0
	.incbin "00000001.app", 0x1AA1E0, 0x4

glabel lbl_802465A4
	.incbin "00000001.app", 0x1AA1E4, 0x4

glabel lbl_802465A8
	.incbin "00000001.app", 0x1AA1E8, 0x8

glabel lbl_802465B0
	.incbin "00000001.app", 0x1AA1F0, 0x10

glabel lbl_802465C0
	.incbin "00000001.app", 0x1AA200, 0x8

glabel lbl_802465C8
	.incbin "00000001.app", 0x1AA208, 0x8

glabel lbl_802465D0
	.incbin "00000001.app", 0x1AA210, 0x20

glabel lbl_802465F0
	.incbin "00000001.app", 0x1AA230, 0x4

glabel lbl_802465F4
	.incbin "00000001.app", 0x1AA234, 0x4

glabel lbl_802465F8
	.incbin "00000001.app", 0x1AA238, 0x8

glabel lbl_80246600
	.incbin "00000001.app", 0x1AA240, 0x8

glabel lbl_80246608
	.incbin "00000001.app", 0x1AA248, 0x4

glabel lbl_8024660C
	.incbin "00000001.app", 0x1AA24C, 0x4

glabel lbl_80246610
	.incbin "00000001.app", 0x1AA250, 0x4

glabel lbl_80246614
	.incbin "00000001.app", 0x1AA254, 0x4

glabel lbl_80246618
	.incbin "00000001.app", 0x1AA258, 0x4

glabel lbl_8024661C
	.incbin "00000001.app", 0x1AA25C, 0x2

glabel lbl_8024661E
	.incbin "00000001.app", 0x1AA25E, 0x2

glabel lbl_80246620
	.incbin "00000001.app", 0x1AA260, 0x8

glabel lbl_80246628
	.incbin "00000001.app", 0x1AA268, 0x18

glabel lbl_80246640
	.incbin "00000001.app", 0x1AA280, 0x10

glabel lbl_80246650
	.incbin "00000001.app", 0x1AA290, 0x8

glabel lbl_80246658
	.incbin "00000001.app", 0x1AA298, 0x8

glabel lbl_80246660
	.incbin "00000001.app", 0x1AA2A0, 0x4

glabel lbl_80246664
	.incbin "00000001.app", 0x1AA2A4, 0x4

glabel lbl_80246668
	.incbin "00000001.app", 0x1AA2A8, 0x4

glabel lbl_8024666C
	.incbin "00000001.app", 0x1AA2AC, 0x4

glabel lbl_80246670
	.incbin "00000001.app", 0x1AA2B0, 0x8

glabel lbl_80246678
	.incbin "00000001.app", 0x1AA2B8, 0x1

glabel lbl_80246679
	.incbin "00000001.app", 0x1AA2B9, 0x1

glabel lbl_8024667A
	.incbin "00000001.app", 0x1AA2BA, 0x6

glabel lbl_80246680
	.incbin "00000001.app", 0x1AA2C0, 0x8

glabel lbl_80246688
	.incbin "00000001.app", 0x1AA2C8, 0x4

glabel lbl_8024668C
	.incbin "00000001.app", 0x1AA2CC, 0x4

glabel lbl_80246690
	.incbin "00000001.app", 0x1AA2D0, 0x4

glabel lbl_80246694
	.incbin "00000001.app", 0x1AA2D4, 0x8

glabel lbl_8024669C
	.incbin "00000001.app", 0x1AA2DC, 0x4

glabel lbl_802466A0
	.incbin "00000001.app", 0x1AA2E0, 0x10

glabel lbl_802466B0
	.incbin "00000001.app", 0x1AA2F0, 0x8

glabel lbl_802466B8
	.incbin "00000001.app", 0x1AA2F8, 0x8

glabel lbl_802466C0
	.incbin "00000001.app", 0x1AA300, 0x4

glabel lbl_802466C4
	.incbin "00000001.app", 0x1AA304, 0x4

glabel lbl_802466C8
	.incbin "00000001.app", 0x1AA308, 0x4

glabel lbl_802466CC
	.incbin "00000001.app", 0x1AA30C, 0x4

glabel lbl_802466D0
	.incbin "00000001.app", 0x1AA310, 0x8

glabel lbl_802466D8
	.incbin "00000001.app", 0x1AA318, 0x8

glabel lbl_802466E0
	.incbin "00000001.app", 0x1AA320, 0x8

glabel lbl_802466E8
	.incbin "00000001.app", 0x1AA328, 0x8

glabel lbl_802466F0
	.incbin "00000001.app", 0x1AA330, 0x8

glabel lbl_802466F8
	.incbin "00000001.app", 0x1AA338, 0x8

glabel lbl_80246700
	.incbin "00000001.app", 0x1AA340, 0x8

glabel lbl_80246708
	.incbin "00000001.app", 0x1AA348, 0x8

glabel lbl_80246710
	.incbin "00000001.app", 0x1AA350, 0x8

glabel lbl_80246718
	.incbin "00000001.app", 0x1AA358, 0x8

glabel lbl_80246720
	.incbin "00000001.app", 0x1AA360, 0x4

glabel lbl_80246724
	.incbin "00000001.app", 0x1AA364, 0x4

glabel lbl_80246728
	.incbin "00000001.app", 0x1AA368, 0x4

glabel lbl_8024672C
	.incbin "00000001.app", 0x1AA36C, 0x4

glabel lbl_80246730
	.incbin "00000001.app", 0x1AA370, 0x4

glabel lbl_80246734
	.incbin "00000001.app", 0x1AA374, 0x4

glabel lbl_80246738
	.incbin "00000001.app", 0x1AA378, 0x8

glabel lbl_80246740
	.incbin "00000001.app", 0x1AA380, 0x8

glabel lbl_80246748
	.incbin "00000001.app", 0x1AA388, 0x1

glabel lbl_80246749
	.incbin "00000001.app", 0x1AA389, 0x1

glabel lbl_8024674A
	.incbin "00000001.app", 0x1AA38A, 0x1

glabel lbl_8024674B
	.incbin "00000001.app", 0x1AA38B, 0x1

glabel lbl_8024674C
	.incbin "00000001.app", 0x1AA38C, 0x1

glabel lbl_8024674D
	.incbin "00000001.app", 0x1AA38D, 0x1

glabel lbl_8024674E
	.incbin "00000001.app", 0x1AA38E, 0x1

glabel lbl_8024674F
	.incbin "00000001.app", 0x1AA38F, 0x1

glabel lbl_80246750
	.incbin "00000001.app", 0x1AA390, 0x1

glabel lbl_80246751
	.incbin "00000001.app", 0x1AA391, 0x1

glabel lbl_80246752
	.incbin "00000001.app", 0x1AA392, 0x2

glabel lbl_80246754
	.incbin "00000001.app", 0x1AA394, 0x4

glabel lbl_80246758
	.incbin "00000001.app", 0x1AA398, 0x8

glabel lbl_80246760
	.incbin "00000001.app", 0x1AA3A0, 0x8

glabel lbl_80246768
	.incbin "00000001.app", 0x1AA3A8, 0x8

glabel lbl_80246770
	.incbin "00000001.app", 0x1AA3B0, 0x4

glabel lbl_80246774
	.incbin "00000001.app", 0x1AA3B4, 0x4

glabel lbl_80246778
	.incbin "00000001.app", 0x1AA3B8, 0x8

glabel lbl_80246780
	.incbin "00000001.app", 0x1AA3C0, 0x8

glabel lbl_80246788
	.incbin "00000001.app", 0x1AA3C8, 0x8

glabel lbl_80246790
	.incbin "00000001.app", 0x1AA3D0, 0x8

glabel lbl_80246798
	.incbin "00000001.app", 0x1AA3D8, 0x8

glabel lbl_802467A0
	.incbin "00000001.app", 0x1AA3E0, 0x8

glabel lbl_802467A8
	.incbin "00000001.app", 0x1AA3E8, 0x8

glabel lbl_802467B0
	.incbin "00000001.app", 0x1AA3F0, 0x8

glabel lbl_802467B8
	.incbin "00000001.app", 0x1AA3F8, 0x8

glabel lbl_802467C0
	.incbin "00000001.app", 0x1AA400, 0x8

glabel lbl_802467C8
	.incbin "00000001.app", 0x1AA408, 0x8

glabel lbl_802467D0
	.incbin "00000001.app", 0x1AA410, 0x4

glabel lbl_802467D4
	.incbin "00000001.app", 0x1AA414, 0x4

glabel lbl_802467D8
	.incbin "00000001.app", 0x1AA418, 0x4

glabel lbl_802467DC
	.incbin "00000001.app", 0x1AA41C, 0x8

glabel lbl_802467E4
	.incbin "00000001.app", 0x1AA424, 0x4

glabel lbl_802467E8
	.incbin "00000001.app", 0x1AA428, 0x8

glabel lbl_802467F0
	.incbin "00000001.app", 0x1AA430, 0x8

glabel lbl_802467F8
	.incbin "00000001.app", 0x1AA438, 0x8

glabel lbl_80246800
	.incbin "00000001.app", 0x1AA440, 0x8

glabel lbl_80246808
	.incbin "00000001.app", 0x1AA448, 0x2

glabel lbl_8024680A
	.incbin "00000001.app", 0x1AA44A, 0x2

glabel lbl_8024680C
	.incbin "00000001.app", 0x1AA44C, 0x4

glabel lbl_80246810
	.incbin "00000001.app", 0x1AA450, 0x4

glabel lbl_80246814
	.incbin "00000001.app", 0x1AA454, 0x4

glabel lbl_80246818
	.incbin "00000001.app", 0x1AA458, 0x8

glabel lbl_80246820
	.incbin "00000001.app", 0x1AA460, 0x8

glabel lbl_80246828
	.incbin "00000001.app", 0x1AA468, 0x4

glabel lbl_8024682C
	.incbin "00000001.app", 0x1AA46C, 0x4

glabel lbl_80246830
	.incbin "00000001.app", 0x1AA470, 0x4

glabel lbl_80246834
	.incbin "00000001.app", 0x1AA474, 0x4

glabel lbl_80246838
	.incbin "00000001.app", 0x1AA478, 0x4

glabel lbl_8024683C
	.incbin "00000001.app", 0x1AA47C, 0x4

glabel lbl_80246840
	.incbin "00000001.app", 0x1AA480, 0x8

glabel lbl_80246848
	.incbin "00000001.app", 0x1AA488, 0x8

glabel lbl_80246850
	.incbin "00000001.app", 0x1AA490, 0x4

glabel lbl_80246854
	.incbin "00000001.app", 0x1AA494, 0x14

glabel lbl_80246868
	.incbin "00000001.app", 0x1AA4A8, 0xF0

glabel lbl_80246958
	.incbin "00000001.app", 0x1AA598, 0x8

glabel lbl_80246960
	.incbin "00000001.app", 0x1AA5A0, 0x8

glabel lbl_80246968
	.incbin "00000001.app", 0x1AA5A8, 0x8

glabel lbl_80246970
	.incbin "00000001.app", 0x1AA5B0, 0x8

glabel lbl_80246978
	.incbin "00000001.app", 0x1AA5B8, 0x4

glabel lbl_8024697C
	.incbin "00000001.app", 0x1AA5BC, 0x4

glabel lbl_80246980
	.incbin "00000001.app", 0x1AA5C0, 0x4

glabel lbl_80246984
	.incbin "00000001.app", 0x1AA5C4, 0x4

glabel lbl_80246988
	.incbin "00000001.app", 0x1AA5C8, 0x8

glabel lbl_80246990
	.incbin "00000001.app", 0x1AA5D0, 0x4

glabel lbl_80246994
	.incbin "00000001.app", 0x1AA5D4, 0x4

glabel lbl_80246998
	.incbin "00000001.app", 0x1AA5D8, 0x4

glabel lbl_8024699C
	.incbin "00000001.app", 0x1AA5DC, 0x4

glabel lbl_802469A0
	.incbin "00000001.app", 0x1AA5E0, 0x4

glabel lbl_802469A4
	.incbin "00000001.app", 0x1AA5E4, 0x4

glabel lbl_802469A8
	.incbin "00000001.app", 0x1AA5E8, 0x4

glabel lbl_802469AC
	.incbin "00000001.app", 0x1AA5EC, 0x4

glabel lbl_802469B0
	.incbin "00000001.app", 0x1AA5F0, 0x4

glabel lbl_802469B4
	.incbin "00000001.app", 0x1AA5F4, 0x2

glabel lbl_802469B6
	.incbin "00000001.app", 0x1AA5F6, 0x2

glabel lbl_802469B8
	.incbin "00000001.app", 0x1AA5F8, 0x2

glabel lbl_802469BA
	.incbin "00000001.app", 0x1AA5FA, 0x2

glabel lbl_802469BC
	.incbin "00000001.app", 0x1AA5FC, 0x4

glabel lbl_802469C0
	.incbin "00000001.app", 0x1AA600, 0x4

glabel lbl_802469C4
	.incbin "00000001.app", 0x1AA604, 0x4

glabel lbl_802469C8
	.incbin "00000001.app", 0x1AA608, 0x4

glabel lbl_802469CC
	.incbin "00000001.app", 0x1AA60C, 0x4

glabel lbl_802469D0
	.incbin "00000001.app", 0x1AA610, 0x4

glabel lbl_802469D4
	.incbin "00000001.app", 0x1AA614, 0x4

glabel lbl_802469D8
	.incbin "00000001.app", 0x1AA618, 0x4

glabel lbl_802469DC
	.incbin "00000001.app", 0x1AA61C, 0x4

glabel lbl_802469E0
	.incbin "00000001.app", 0x1AA620, 0x4

glabel lbl_802469E4
	.incbin "00000001.app", 0x1AA624, 0x4

glabel lbl_802469E8
	.incbin "00000001.app", 0x1AA628, 0x4

glabel lbl_802469EC
	.incbin "00000001.app", 0x1AA62C, 0x4

glabel lbl_802469F0
	.incbin "00000001.app", 0x1AA630, 0x4

glabel lbl_802469F4
	.incbin "00000001.app", 0x1AA634, 0x4

glabel lbl_802469F8
	.incbin "00000001.app", 0x1AA638, 0x4

glabel lbl_802469FC
	.incbin "00000001.app", 0x1AA63C, 0x4

glabel lbl_80246A00
	.incbin "00000001.app", 0x1AA640, 0x4

glabel lbl_80246A04
	.incbin "00000001.app", 0x1AA644, 0x4

glabel lbl_80246A08
	.incbin "00000001.app", 0x1AA648, 0x4

glabel lbl_80246A0C
	.incbin "00000001.app", 0x1AA64C, 0x4

glabel lbl_80246A10
	.incbin "00000001.app", 0x1AA650, 0x4

glabel lbl_80246A14
	.incbin "00000001.app", 0x1AA654, 0x4

glabel lbl_80246A18
	.incbin "00000001.app", 0x1AA658, 0x4

glabel lbl_80246A1C
	.incbin "00000001.app", 0x1AA65C, 0x4

glabel lbl_80246A20
	.incbin "00000001.app", 0x1AA660, 0x4

glabel lbl_80246A24
	.incbin "00000001.app", 0x1AA664, 0x4

glabel lbl_80246A28
	.incbin "00000001.app", 0x1AA668, 0x8

glabel lbl_80246A30
	.incbin "00000001.app", 0x1AA670, 0x4

glabel lbl_80246A34
	.incbin "00000001.app", 0x1AA674, 0xC

glabel lbl_80246A40
	.incbin "00000001.app", 0x1AA680, 0x8

glabel lbl_80246A48
	.incbin "00000001.app", 0x1AA688, 0x4

glabel lbl_80246A4C
	.incbin "00000001.app", 0x1AA68C, 0x4

glabel lbl_80246A50
	.incbin "00000001.app", 0x1AA690, 0x8

glabel lbl_80246A58
	.incbin "00000001.app", 0x1AA698, 0x4

glabel lbl_80246A5C
	.incbin "00000001.app", 0x1AA69C, 0x4

glabel lbl_80246A60
	.incbin "00000001.app", 0x1AA6A0, 0x8

glabel lbl_80246A68
	.incbin "00000001.app", 0x1AA6A8, 0x4

glabel lbl_80246A6C
	.incbin "00000001.app", 0x1AA6AC, 0x4

glabel lbl_80246A70
	.incbin "00000001.app", 0x1AA6B0, 0x4

glabel lbl_80246A74
	.incbin "00000001.app", 0x1AA6B4, 0x4

glabel lbl_80246A78
	.incbin "00000001.app", 0x1AA6B8, 0x10

glabel lbl_80246A88
	.incbin "00000001.app", 0x1AA6C8, 0x8

glabel lbl_80246A90
	.incbin "00000001.app", 0x1AA6D0, 0x8

glabel lbl_80246A98
	.incbin "00000001.app", 0x1AA6D8, 0x8

glabel lbl_80246AA0
	.incbin "00000001.app", 0x1AA6E0, 0x8

glabel lbl_80246AA8
	.incbin "00000001.app", 0x1AA6E8, 0x4

glabel lbl_80246AAC
	.incbin "00000001.app", 0x1AA6EC, 0x4

glabel lbl_80246AB0
	.incbin "00000001.app", 0x1AA6F0, 0x8

glabel lbl_80246AB8
	.incbin "00000001.app", 0x1AA6F8, 0x4

glabel lbl_80246ABC
	.incbin "00000001.app", 0x1AA6FC, 0x8

glabel lbl_80246AC4
	.incbin "00000001.app", 0x1AA704, 0xC

glabel lbl_80246AD0
	.incbin "00000001.app", 0x1AA710, 0x8

glabel lbl_80246AD8
	.incbin "00000001.app", 0x1AA718, 0x8

glabel lbl_80246AE0
	.incbin "00000001.app", 0x1AA720, 0x8

glabel lbl_80246AE8
	.incbin "00000001.app", 0x1AA728, 0x8

glabel lbl_80246AF0
	.incbin "00000001.app", 0x1AA730, 0x8

glabel lbl_80246AF8
	.incbin "00000001.app", 0x1AA738, 0x8

glabel lbl_80246B00
	.incbin "00000001.app", 0x1AA740, 0x8

glabel lbl_80246B08
	.incbin "00000001.app", 0x1AA748, 0x18

glabel lbl_80246B20
	.incbin "00000001.app", 0x1AA760, 0x4

glabel lbl_80246B24
	.incbin "00000001.app", 0x1AA764, 0x4

glabel lbl_80246B28
	.incbin "00000001.app", 0x1AA768, 0x10

glabel lbl_80246B38
	.incbin "00000001.app", 0x1AA778, 0x8

glabel lbl_80246B40
	.incbin "00000001.app", 0x1AA780, 0x8

glabel lbl_80246B48
	.incbin "00000001.app", 0x1AA788, 0x4

glabel lbl_80246B4C
	.incbin "00000001.app", 0x1AA78C, 0x4

glabel lbl_80246B50
	.incbin "00000001.app", 0x1AA790, 0x10
