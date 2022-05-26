.include "macros.inc"

.section extab_, "wa"  # 0x800064E0 - 0x800069E0

.balign 0x20

glabel lbl_extab
	# ROM: 0x16F720
	.4byte 0x90080000
	.4byte 0

glabel lbl_800064E8
	.4byte 0x080A0000
	.4byte 0

glabel lbl_800064F0
	.4byte 0x380A0000
	.4byte 0

glabel lbl_800064F8
	.4byte 0x60080000
	.4byte 0

glabel lbl_80006500
	.4byte 0x60080000
	.4byte 0

glabel lbl_80006508
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006510
	.4byte 0x180A0000
	.4byte 0

glabel lbl_80006518
	.4byte 0x280A0000
	.4byte 0

glabel lbl_80006520
	.4byte 0x000A0000
	.4byte 0

glabel lbl_80006528
	.4byte 0x000A0000
	.4byte 0

glabel lbl_80006530
	.4byte 0x300A0000
	.4byte 0

glabel lbl_80006538
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006540
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006548
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006550
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006558
	.4byte 0x080A0000
	.4byte 0

glabel lbl_80006560
	.4byte 0x2B0A0000
	.4byte 0

glabel lbl_80006568
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006570
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006578
	.4byte 0x18080000
	.4byte 0

glabel lbl_80006580
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006588
	.4byte 0x20080000
	.4byte 0

glabel lbl_80006590
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006598
	.4byte 0x00080000
	.4byte 0

glabel lbl_800065A0
	.4byte 0x00080000
	.4byte 0

glabel lbl_800065A8
	.4byte 0x00080000
	.4byte 0

glabel lbl_800065B0
	.4byte 0x00080000
	.4byte 0

glabel lbl_800065B8
	.4byte 0x000A0000
	.4byte 0

glabel lbl_800065C0
	.4byte 0x000A0000
	.4byte 0

glabel lbl_800065C8
	.4byte 0x000A0000
	.4byte 0

glabel lbl_800065D0
	.4byte 0x300A0000
	.4byte 0

glabel lbl_800065D8
	.4byte 0x08080000
	.4byte 0

glabel lbl_800065E0
	.4byte 0x20080000
	.4byte 0

glabel lbl_800065E8
	.4byte 0x18080000
	.4byte 0

glabel lbl_800065F0
	.4byte 0x28080000
	.4byte 0

glabel lbl_800065F8
	.4byte 0x18080000
	.4byte 0

glabel lbl_80006600
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006608
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006610
	.4byte 0x304A0000
	.4byte 0

glabel lbl_80006618
	.4byte 0x20080000
	.4byte 0

glabel lbl_80006620
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006628
	.4byte 0x000A0000
	.4byte 0

glabel lbl_80006630
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006638
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006640
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006648
	.4byte 0x18080000
	.4byte 0

glabel lbl_80006650
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006658
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006660
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006668
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006670
	.4byte 0x18080000
	.4byte 0

glabel lbl_80006678
	.4byte 0x18080000
	.4byte 0

glabel lbl_80006680
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006688
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006690
	.4byte 0x20080000
	.4byte 0

glabel lbl_80006698
	.4byte 0x20080000
	.4byte 0

glabel lbl_800066A0
	.4byte 0x18080000
	.4byte 0

glabel lbl_800066A8
	.4byte 0x08080000
	.4byte 0

glabel lbl_800066B0
	.4byte 0x10080000
	.4byte 0

glabel lbl_800066B8
	.4byte 0x10180000
	.4byte 0x0000004C
	.4byte 0x000A0018
	.4byte 0x00000084
	.4byte 0x00000028
	.4byte 0
	.4byte 0x8F000001
	.4byte 0x0000007C
	.4byte 0x00000010
	.4byte lbl_80178308
	.4byte 0x8D000010

glabel lbl_800066E4
	.4byte 0x08080000
	.4byte 0

glabel lbl_800066EC
	.4byte 0x28080000
	.4byte 0x00000070
	.4byte 0x00000010
	.4byte 0
	.4byte 0x82000008
	.4byte __dt__26__partial_array_destructorFv

glabel lbl_80006704
	.4byte 0x18080000
	.4byte 0

glabel lbl_8000670C
	.4byte 0x20080000
	.4byte 0x0000005C
	.4byte 0x00000010
	.4byte 0
	.4byte 0x82000008
	.4byte __dt__26__partial_array_destructorFv

glabel lbl_80006724
	.4byte 0x20080000
	.4byte 0

glabel lbl_8000672C
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006734
	.4byte 0x10080000
	.4byte 0

glabel lbl_8000673C
	.4byte 0x280A0000
	.4byte 0

glabel lbl_80006744
	.4byte 0x50080000
	.4byte 0x00000054
	.4byte 0x01250010
	.4byte 0
	.4byte 0x8E000000

glabel lbl_80006758
	.4byte 0x28180000
	.4byte 0x00000020
	.4byte 0x00000018
	.4byte 0x00000044
	.4byte 0x004F0028
	.4byte 0
	.4byte 0x90000000
	.4byte 0
	.4byte 0x00000024
	.4byte 0x00000020
	.4byte 0x8D000020

glabel lbl_80006784
	.4byte 0x08080000
	.4byte 0

glabel lbl_8000678C
	.4byte 0x30080000
	.4byte 0x0000026C
	.4byte 0x000F0010
	.4byte 0
	.4byte 0x8E000000

glabel lbl_800067A0
	.4byte 0x10080000
	.4byte 0

glabel lbl_800067A8
	.4byte 0x28080000
	.4byte 0

glabel lbl_800067B0
	.4byte 0x20080000
	.4byte 0

glabel lbl_800067B8
	.4byte 0x48080000
	.4byte 0

glabel lbl_800067C0
	.4byte 0x10080000
	.4byte 0

glabel lbl_800067C8
	.4byte 0x08080000
	.4byte 0

glabel lbl_800067D0
	.4byte 0x10080000
	.4byte 0

glabel lbl_800067D8
	.4byte 0x18080000
	.4byte 0

glabel lbl_800067E0
	.4byte 0x10080000
	.4byte 0

glabel lbl_800067E8
	.4byte 0x18080000
	.4byte 0

glabel lbl_800067F0
	.4byte 0x18080000
	.4byte 0

glabel lbl_800067F8
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006800
	.4byte 0x68080000
	.4byte 0

glabel lbl_80006808
	.4byte 0x18480000
	.4byte 0

glabel lbl_80006810
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006818
	.4byte 0x684A0000
	.4byte 0

glabel lbl_80006820
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006828
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006830
	.4byte 0x40080000
	.4byte 0

glabel lbl_80006838
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006840
	.4byte 0x38080000
	.4byte 0

glabel lbl_80006848
	.4byte 0x18080000
	.4byte 0

glabel lbl_80006850
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006858
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006860
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006868
	.4byte 0x30080000
	.4byte 0

glabel lbl_80006870
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006878
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006880
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006888
	.4byte 0x18080000
	.4byte 0

glabel lbl_80006890
	.4byte 0x50080000
	.4byte 0

glabel lbl_80006898
	.4byte 0x204A0000
	.4byte 0

glabel lbl_800068A0
	.4byte 0x20480000
	.4byte 0

glabel lbl_800068A8
	.4byte lbl_80080000
	.4byte 0

glabel lbl_800068B0
	.4byte 0x10080000
	.4byte 0

glabel lbl_800068B8
	.4byte 0x10080000
	.4byte 0

glabel lbl_800068C0
	.4byte 0x10080000
	.4byte 0

glabel lbl_800068C8
	.4byte 0x10080000
	.4byte 0

glabel lbl_800068D0
	.4byte 0x18080000
	.4byte 0

glabel lbl_800068D8
	.4byte 0x18080000
	.4byte 0

glabel lbl_800068E0
	.4byte 0x18080000
	.4byte 0

glabel lbl_800068E8
	.4byte 0x28080000
	.4byte 0

glabel lbl_800068F0
	.4byte 0x28080000
	.4byte 0

glabel lbl_800068F8
	.4byte 0x68080000
	.4byte 0

glabel lbl_80006900
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006908
	.4byte 0x880A0000
	.4byte 0

glabel lbl_80006910
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006918
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006920
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006928
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006930
	.4byte 0x00080000
	.4byte 0

glabel lbl_80006938
	.4byte 0x900A0000
	.4byte 0

glabel lbl_80006940
	.4byte lbl_80080000
	.4byte 0

glabel lbl_80006948
	.4byte 0x90080000
	.4byte 0

glabel lbl_80006950
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006958
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006960
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006968
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006970
	.4byte 0x20080000
	.4byte 0

glabel lbl_80006978
	.4byte 0x30080000
	.4byte 0

glabel lbl_80006980
	.4byte 0x10080000
	.4byte 0

glabel lbl_80006988
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006990
	.4byte 0x08080000
	.4byte 0

glabel lbl_80006998
	.4byte 0x08080000
	.4byte 0

glabel lbl_800069A0
	.4byte 0x00080000
	.4byte 0

glabel lbl_800069A8
	.4byte 0x10080000
	.4byte 0

glabel lbl_800069B0
	.4byte 0x90880000
	.4byte 0

glabel lbl_800069B8
	.4byte 0x20080000
	.4byte 0

glabel lbl_800069C0
	.4byte 0x00080000
	.4byte 0

glabel lbl_800069C8
	.4byte 0x08080000
	.4byte 0

