glabel cpuMakeFunction
/* 80031A70 0002CF90  94 21 DF B0 */	stwu r1, -0x2050(r1)
/* 80031A74 0002CF94  7C 08 02 A6 */	mflr r0
/* 80031A78 0002CF98  90 01 20 54 */	stw r0, 0x2054(r1)
/* 80031A7C 0002CF9C  39 61 20 50 */	addi r11, r1, 0x2050
/* 80031A80 0002CFA0  48 12 AE A9 */	bl _savegpr_20
/* 80031A84 0002CFA4  7C 97 23 78 */	mr r23, r4
/* 80031A88 0002CFA8  7C A4 2B 78 */	mr r4, r5
/* 80031A8C 0002CFAC  7C 76 1B 78 */	mr r22, r3
/* 80031A90 0002CFB0  38 A1 00 08 */	addi r5, r1, 8
/* 80031A94 0002CFB4  3B 80 00 01 */	li r28, 1
/* 80031A98 0002CFB8  48 00 C1 3D */	bl cpuFindFunction
/* 80031A9C 0002CFBC  2C 03 00 00 */	cmpwi r3, 0
/* 80031AA0 0002CFC0  40 82 00 0C */	bne lbl_80031AAC
/* 80031AA4 0002CFC4  38 60 00 00 */	li r3, 0
/* 80031AA8 0002CFC8  48 00 06 14 */	b lbl_800320BC
lbl_80031AAC:
/* 80031AAC 0002CFCC  80 61 00 08 */	lwz r3, 8(r1)
/* 80031AB0 0002CFD0  80 03 00 04 */	lwz r0, 4(r3)
/* 80031AB4 0002CFD4  2C 00 00 00 */	cmpwi r0, 0
/* 80031AB8 0002CFD8  41 82 00 1C */	beq lbl_80031AD4
/* 80031ABC 0002CFDC  3C 76 00 10 */	addis r3, r22, 0x10
/* 80031AC0 0002CFE0  80 83 16 94 */	lwz r4, 0x1694(r3)
/* 80031AC4 0002CFE4  80 64 00 70 */	lwz r3, 0x70(r4)
/* 80031AC8 0002CFE8  38 03 00 01 */	addi r0, r3, 1
/* 80031ACC 0002CFEC  90 04 00 70 */	stw r0, 0x70(r4)
/* 80031AD0 0002CFF0  48 00 05 D8 */	b lbl_800320A8
lbl_80031AD4:
/* 80031AD4 0002CFF4  3C 76 00 10 */	addis r3, r22, 0x10
/* 80031AD8 0002CFF8  80 83 16 94 */	lwz r4, 0x1694(r3)
/* 80031ADC 0002CFFC  80 64 00 74 */	lwz r3, 0x74(r4)
/* 80031AE0 0002D000  38 03 00 01 */	addi r0, r3, 1
/* 80031AE4 0002D004  90 04 00 74 */	stw r0, 0x74(r4)
/* 80031AE8 0002D008  80 6D 86 E4 */	lwz r3, lbl_80246B64@sda21(r13)
/* 80031AEC 0002D00C  80 81 00 08 */	lwz r4, 8(r1)
/* 80031AF0 0002D010  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80031AF4 0002D014  48 02 B5 F1 */	bl libraryTestFunction
/* 80031AF8 0002D018  80 61 00 08 */	lwz r3, 8(r1)
/* 80031AFC 0002D01C  39 00 00 00 */	li r8, 0
/* 80031B00 0002D020  38 E1 00 18 */	addi r7, r1, 0x18
/* 80031B04 0002D024  3C B6 00 10 */	addis r5, r22, 0x10
/* 80031B08 0002D028  91 03 00 08 */	stw r8, 8(r3)
/* 80031B0C 0002D02C  3C 60 20 00 */	lis r3, 0x2000
/* 80031B10 0002D030  38 80 00 0B */	li r4, 0xb
/* 80031B14 0002D034  38 00 00 01 */	li r0, 1
/* 80031B18 0002D038  80 C1 00 08 */	lwz r6, 8(r1)
/* 80031B1C 0002D03C  90 E6 00 0C */	stw r7, 0xc(r6)
/* 80031B20 0002D040  90 65 24 1C */	stw r3, 0x241c(r5)
/* 80031B24 0002D044  91 05 24 20 */	stw r8, 0x2420(r5)
/* 80031B28 0002D048  80 61 00 08 */	lwz r3, 8(r1)
/* 80031B2C 0002D04C  91 03 00 1C */	stw r8, 0x1c(r3)
/* 80031B30 0002D050  80 61 00 08 */	lwz r3, 8(r1)
/* 80031B34 0002D054  90 83 00 20 */	stw r4, 0x20(r3)
/* 80031B38 0002D058  90 05 24 70 */	stw r0, 0x2470(r5)
/* 80031B3C 0002D05C  91 05 24 94 */	stw r8, 0x2494(r5)
/* 80031B40 0002D060  91 01 00 14 */	stw r8, 0x14(r1)
/* 80031B44 0002D064  80 61 00 08 */	lwz r3, 8(r1)
/* 80031B48 0002D068  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80031B4C 0002D06C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80031B50 0002D070  48 00 00 2C */	b lbl_80031B7C
lbl_80031B54:
/* 80031B54 0002D074  7E C3 B3 78 */	mr r3, r22
/* 80031B58 0002D078  38 81 00 0C */	addi r4, r1, 0xc
/* 80031B5C 0002D07C  38 E1 00 14 */	addi r7, r1, 0x14
/* 80031B60 0002D080  38 C0 00 00 */	li r6, 0
/* 80031B64 0002D084  39 00 00 00 */	li r8, 0
/* 80031B68 0002D088  4B FD CD C1 */	bl cpuGetPPC
/* 80031B6C 0002D08C  2C 03 00 00 */	cmpwi r3, 0
/* 80031B70 0002D090  40 82 00 0C */	bne lbl_80031B7C
/* 80031B74 0002D094  38 60 00 00 */	li r3, 0
/* 80031B78 0002D098  48 00 05 44 */	b lbl_800320BC
lbl_80031B7C:
/* 80031B7C 0002D09C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80031B80 0002D0A0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80031B84 0002D0A4  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80031B88 0002D0A8  7C 03 00 00 */	cmpw r3, r0
/* 80031B8C 0002D0AC  40 81 FF C8 */	ble lbl_80031B54
/* 80031B90 0002D0B0  83 A5 00 1C */	lwz r29, 0x1c(r5)
/* 80031B94 0002D0B4  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 80031B98 0002D0B8  2C 1D 00 00 */	cmpwi r29, 0
/* 80031B9C 0002D0BC  57 D9 10 3A */	slwi r25, r30, 2
/* 80031BA0 0002D0C0  7F 3A CB 78 */	mr r26, r25
/* 80031BA4 0002D0C4  41 82 00 10 */	beq lbl_80031BB4
/* 80031BA8 0002D0C8  57 B8 18 38 */	slwi r24, r29, 3
/* 80031BAC 0002D0CC  7F 59 C2 14 */	add r26, r25, r24
/* 80031BB0 0002D0D0  48 00 00 08 */	b lbl_80031BB8
lbl_80031BB4:
/* 80031BB4 0002D0D4  3B 00 00 00 */	li r24, 0
lbl_80031BB8:
/* 80031BB8 0002D0D8  80 05 00 08 */	lwz r0, 8(r5)
/* 80031BBC 0002D0DC  2C 00 00 00 */	cmpwi r0, 0
/* 80031BC0 0002D0E0  40 81 00 0C */	ble lbl_80031BCC
/* 80031BC4 0002D0E4  54 00 18 38 */	slwi r0, r0, 3
/* 80031BC8 0002D0E8  7F 5A 02 14 */	add r26, r26, r0
lbl_80031BCC:
/* 80031BCC 0002D0EC  80 6D 86 E4 */	lwz r3, lbl_80246B64@sda21(r13)
/* 80031BD0 0002D0F0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80031BD4 0002D0F4  3C 03 B1 B3 */	addis r0, r3, 0xb1b3
/* 80031BD8 0002D0F8  28 00 51 4A */	cmplwi r0, 0x514a
/* 80031BDC 0002D0FC  41 82 00 14 */	beq lbl_80031BF0
/* 80031BE0 0002D100  28 00 51 45 */	cmplwi r0, 0x5145
/* 80031BE4 0002D104  41 82 00 0C */	beq lbl_80031BF0
/* 80031BE8 0002D108  28 00 51 50 */	cmplwi r0, 0x5150
/* 80031BEC 0002D10C  40 82 01 58 */	bne lbl_80031D44
lbl_80031BF0:
/* 80031BF0 0002D110  3E 96 00 10 */	addis r20, r22, 0x10
/* 80031BF4 0002D114  3B E0 00 00 */	li r31, 0
lbl_80031BF8:
/* 80031BF8 0002D118  80 A1 00 08 */	lwz r5, 8(r1)
/* 80031BFC 0002D11C  7E C4 B3 78 */	mr r4, r22
/* 80031C00 0002D120  7F 46 D3 78 */	mr r6, r26
/* 80031C04 0002D124  38 61 00 10 */	addi r3, r1, 0x10
/* 80031C08 0002D128  48 00 BB 19 */	bl cpuHeapTake
/* 80031C0C 0002D12C  2C 03 00 00 */	cmpwi r3, 0
/* 80031C10 0002D130  40 82 02 10 */	bne lbl_80031E20
/* 80031C14 0002D134  80 76 00 34 */	lwz r3, 0x34(r22)
/* 80031C18 0002D138  2C 1A 27 10 */	cmpwi r26, 0x2710
/* 80031C1C 0002D13C  3B 63 FF F6 */	addi r27, r3, -10
/* 80031C20 0002D140  40 81 00 90 */	ble lbl_80031CB0
/* 80031C24 0002D144  3C 76 00 10 */	addis r3, r22, 0x10
/* 80031C28 0002D148  80 81 00 08 */	lwz r4, 8(r1)
/* 80031C2C 0002D14C  82 A3 16 94 */	lwz r21, 0x1694(r3)
/* 80031C30 0002D150  2C 04 00 00 */	cmpwi r4, 0
/* 80031C34 0002D154  93 F5 00 7C */	stw r31, 0x7c(r21)
/* 80031C38 0002D158  93 F5 00 88 */	stw r31, 0x88(r21)
/* 80031C3C 0002D15C  93 F5 00 8C */	stw r31, 0x8c(r21)
/* 80031C40 0002D160  41 82 00 18 */	beq lbl_80031C58
/* 80031C44 0002D164  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80031C48 0002D168  2C 00 00 00 */	cmpwi r0, 0
/* 80031C4C 0002D16C  40 81 00 0C */	ble lbl_80031C58
/* 80031C50 0002D170  80 16 00 34 */	lwz r0, 0x34(r22)
/* 80031C54 0002D174  90 04 00 28 */	stw r0, 0x28(r4)
lbl_80031C58:
/* 80031C58 0002D178  80 15 00 84 */	lwz r0, 0x84(r21)
/* 80031C5C 0002D17C  2C 00 00 00 */	cmpwi r0, 0
/* 80031C60 0002D180  40 82 00 24 */	bne lbl_80031C84
/* 80031C64 0002D184  80 95 00 68 */	lwz r4, 0x68(r21)
/* 80031C68 0002D188  2C 04 00 00 */	cmpwi r4, 0
/* 80031C6C 0002D18C  41 82 00 34 */	beq lbl_80031CA0
/* 80031C70 0002D190  7E C3 B3 78 */	mr r3, r22
/* 80031C74 0002D194  7F 65 DB 78 */	mr r5, r27
/* 80031C78 0002D198  38 C0 00 42 */	li r6, 0x42
/* 80031C7C 0002D19C  48 00 E4 6D */	bl treeForceCleanNodes
/* 80031C80 0002D1A0  48 00 00 20 */	b lbl_80031CA0
lbl_80031C84:
/* 80031C84 0002D1A4  80 95 00 6C */	lwz r4, 0x6c(r21)
/* 80031C88 0002D1A8  2C 04 00 00 */	cmpwi r4, 0
/* 80031C8C 0002D1AC  41 82 00 14 */	beq lbl_80031CA0
/* 80031C90 0002D1B0  7E C3 B3 78 */	mr r3, r22
/* 80031C94 0002D1B4  7F 65 DB 78 */	mr r5, r27
/* 80031C98 0002D1B8  38 C0 00 42 */	li r6, 0x42
/* 80031C9C 0002D1BC  48 00 E4 4D */	bl treeForceCleanNodes
lbl_80031CA0:
/* 80031CA0 0002D1C0  80 15 00 84 */	lwz r0, 0x84(r21)
/* 80031CA4 0002D1C4  68 00 00 01 */	xori r0, r0, 1
/* 80031CA8 0002D1C8  90 15 00 84 */	stw r0, 0x84(r21)
/* 80031CAC 0002D1CC  48 00 00 8C */	b lbl_80031D38
lbl_80031CB0:
/* 80031CB0 0002D1D0  3C 76 00 10 */	addis r3, r22, 0x10
/* 80031CB4 0002D1D4  80 81 00 08 */	lwz r4, 8(r1)
/* 80031CB8 0002D1D8  82 A3 16 94 */	lwz r21, 0x1694(r3)
/* 80031CBC 0002D1DC  2C 04 00 00 */	cmpwi r4, 0
/* 80031CC0 0002D1E0  93 F5 00 7C */	stw r31, 0x7c(r21)
/* 80031CC4 0002D1E4  93 F5 00 88 */	stw r31, 0x88(r21)
/* 80031CC8 0002D1E8  93 F5 00 8C */	stw r31, 0x8c(r21)
/* 80031CCC 0002D1EC  41 82 00 18 */	beq lbl_80031CE4
/* 80031CD0 0002D1F0  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80031CD4 0002D1F4  2C 00 00 00 */	cmpwi r0, 0
/* 80031CD8 0002D1F8  40 81 00 0C */	ble lbl_80031CE4
/* 80031CDC 0002D1FC  80 16 00 34 */	lwz r0, 0x34(r22)
/* 80031CE0 0002D200  90 04 00 28 */	stw r0, 0x28(r4)
lbl_80031CE4:
/* 80031CE4 0002D204  80 15 00 84 */	lwz r0, 0x84(r21)
/* 80031CE8 0002D208  2C 00 00 00 */	cmpwi r0, 0
/* 80031CEC 0002D20C  40 82 00 24 */	bne lbl_80031D10
/* 80031CF0 0002D210  80 95 00 68 */	lwz r4, 0x68(r21)
/* 80031CF4 0002D214  2C 04 00 00 */	cmpwi r4, 0
/* 80031CF8 0002D218  41 82 00 34 */	beq lbl_80031D2C
/* 80031CFC 0002D21C  7E C3 B3 78 */	mr r3, r22
/* 80031D00 0002D220  7F 65 DB 78 */	mr r5, r27
/* 80031D04 0002D224  38 C0 00 19 */	li r6, 0x19
/* 80031D08 0002D228  48 00 E3 E1 */	bl treeForceCleanNodes
/* 80031D0C 0002D22C  48 00 00 20 */	b lbl_80031D2C
lbl_80031D10:
/* 80031D10 0002D230  80 95 00 6C */	lwz r4, 0x6c(r21)
/* 80031D14 0002D234  2C 04 00 00 */	cmpwi r4, 0
/* 80031D18 0002D238  41 82 00 14 */	beq lbl_80031D2C
/* 80031D1C 0002D23C  7E C3 B3 78 */	mr r3, r22
/* 80031D20 0002D240  7F 65 DB 78 */	mr r5, r27
/* 80031D24 0002D244  38 C0 00 19 */	li r6, 0x19
/* 80031D28 0002D248  48 00 E3 C1 */	bl treeForceCleanNodes
lbl_80031D2C:
/* 80031D2C 0002D24C  80 15 00 84 */	lwz r0, 0x84(r21)
/* 80031D30 0002D250  68 00 00 01 */	xori r0, r0, 1
/* 80031D34 0002D254  90 15 00 84 */	stw r0, 0x84(r21)
lbl_80031D38:
/* 80031D38 0002D258  80 74 16 94 */	lwz r3, 0x1694(r20)
/* 80031D3C 0002D25C  93 E3 00 78 */	stw r31, 0x78(r3)
/* 80031D40 0002D260  4B FF FE B8 */	b lbl_80031BF8
lbl_80031D44:
/* 80031D44 0002D264  3E 96 00 10 */	addis r20, r22, 0x10
/* 80031D48 0002D268  3A A0 00 00 */	li r21, 0
lbl_80031D4C:
/* 80031D4C 0002D26C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80031D50 0002D270  7E C4 B3 78 */	mr r4, r22
/* 80031D54 0002D274  7F 46 D3 78 */	mr r6, r26
/* 80031D58 0002D278  38 61 00 10 */	addi r3, r1, 0x10
/* 80031D5C 0002D27C  48 00 B9 C5 */	bl cpuHeapTake
/* 80031D60 0002D280  2C 03 00 00 */	cmpwi r3, 0
/* 80031D64 0002D284  40 82 00 BC */	bne lbl_80031E20
/* 80031D68 0002D288  2C 1C 00 00 */	cmpwi r28, 0
/* 80031D6C 0002D28C  41 82 00 14 */	beq lbl_80031D80
/* 80031D70 0002D290  80 76 00 34 */	lwz r3, 0x34(r22)
/* 80031D74 0002D294  3B 80 00 00 */	li r28, 0
/* 80031D78 0002D298  3B 63 FE D4 */	addi r27, r3, -300
/* 80031D7C 0002D29C  48 00 00 1C */	b lbl_80031D98
lbl_80031D80:
/* 80031D80 0002D2A0  80 76 00 34 */	lwz r3, 0x34(r22)
/* 80031D84 0002D2A4  3B 7B 00 5F */	addi r27, r27, 0x5f
/* 80031D88 0002D2A8  38 03 FF F6 */	addi r0, r3, -10
/* 80031D8C 0002D2AC  7C 1B 00 00 */	cmpw r27, r0
/* 80031D90 0002D2B0  40 81 00 08 */	ble lbl_80031D98
/* 80031D94 0002D2B4  7C 1B 03 78 */	mr r27, r0
lbl_80031D98:
/* 80031D98 0002D2B8  80 61 00 08 */	lwz r3, 8(r1)
/* 80031D9C 0002D2BC  83 F4 16 94 */	lwz r31, 0x1694(r20)
/* 80031DA0 0002D2C0  2C 03 00 00 */	cmpwi r3, 0
/* 80031DA4 0002D2C4  92 BF 00 7C */	stw r21, 0x7c(r31)
/* 80031DA8 0002D2C8  92 BF 00 88 */	stw r21, 0x88(r31)
/* 80031DAC 0002D2CC  92 BF 00 8C */	stw r21, 0x8c(r31)
/* 80031DB0 0002D2D0  41 82 00 18 */	beq lbl_80031DC8
/* 80031DB4 0002D2D4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80031DB8 0002D2D8  2C 00 00 00 */	cmpwi r0, 0
/* 80031DBC 0002D2DC  40 81 00 0C */	ble lbl_80031DC8
/* 80031DC0 0002D2E0  80 16 00 34 */	lwz r0, 0x34(r22)
/* 80031DC4 0002D2E4  90 03 00 28 */	stw r0, 0x28(r3)
lbl_80031DC8:
/* 80031DC8 0002D2E8  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 80031DCC 0002D2EC  2C 00 00 00 */	cmpwi r0, 0
/* 80031DD0 0002D2F0  40 82 00 24 */	bne lbl_80031DF4
/* 80031DD4 0002D2F4  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 80031DD8 0002D2F8  2C 04 00 00 */	cmpwi r4, 0
/* 80031DDC 0002D2FC  41 82 00 34 */	beq lbl_80031E10
/* 80031DE0 0002D300  7E C3 B3 78 */	mr r3, r22
/* 80031DE4 0002D304  7F 65 DB 78 */	mr r5, r27
/* 80031DE8 0002D308  38 C0 00 19 */	li r6, 0x19
/* 80031DEC 0002D30C  48 00 E2 FD */	bl treeForceCleanNodes
/* 80031DF0 0002D310  48 00 00 20 */	b lbl_80031E10
lbl_80031DF4:
/* 80031DF4 0002D314  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 80031DF8 0002D318  2C 04 00 00 */	cmpwi r4, 0
/* 80031DFC 0002D31C  41 82 00 14 */	beq lbl_80031E10
/* 80031E00 0002D320  7E C3 B3 78 */	mr r3, r22
/* 80031E04 0002D324  7F 65 DB 78 */	mr r5, r27
/* 80031E08 0002D328  38 C0 00 19 */	li r6, 0x19
/* 80031E0C 0002D32C  48 00 E2 DD */	bl treeForceCleanNodes
lbl_80031E10:
/* 80031E10 0002D330  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 80031E14 0002D334  68 00 00 01 */	xori r0, r0, 1
/* 80031E18 0002D338  90 1F 00 84 */	stw r0, 0x84(r31)
/* 80031E1C 0002D33C  4B FF FF 30 */	b lbl_80031D4C
lbl_80031E20:
/* 80031E20 0002D340  2C 18 00 00 */	cmpwi r24, 0
/* 80031E24 0002D344  83 E1 00 10 */	lwz r31, 0x10(r1)
/* 80031E28 0002D348  41 82 00 E8 */	beq lbl_80031F10
/* 80031E2C 0002D34C  80 61 00 08 */	lwz r3, 8(r1)
/* 80031E30 0002D350  7C 1F CA 14 */	add r0, r31, r25
/* 80031E34 0002D354  2C 9D 00 00 */	cmpwi cr1, r29, 0
/* 80031E38 0002D358  38 A0 00 00 */	li r5, 0
/* 80031E3C 0002D35C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80031E40 0002D360  80 61 00 08 */	lwz r3, 8(r1)
/* 80031E44 0002D364  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80031E48 0002D368  40 85 00 C8 */	ble cr1, lbl_80031F10
/* 80031E4C 0002D36C  2C 1D 00 08 */	cmpwi r29, 8
/* 80031E50 0002D370  38 DD FF F8 */	addi r6, r29, -8
/* 80031E54 0002D374  40 81 00 90 */	ble lbl_80031EE4
/* 80031E58 0002D378  38 E0 00 00 */	li r7, 0
/* 80031E5C 0002D37C  41 84 00 18 */	blt cr1, lbl_80031E74
/* 80031E60 0002D380  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 80031E64 0002D384  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 80031E68 0002D388  7C 1D 00 00 */	cmpw r29, r0
/* 80031E6C 0002D38C  41 81 00 08 */	bgt lbl_80031E74
/* 80031E70 0002D390  38 E0 00 01 */	li r7, 1
lbl_80031E74:
/* 80031E74 0002D394  2C 07 00 00 */	cmpwi r7, 0
/* 80031E78 0002D398  41 82 00 6C */	beq lbl_80031EE4
/* 80031E7C 0002D39C  38 06 00 07 */	addi r0, r6, 7
/* 80031E80 0002D3A0  7C 87 23 78 */	mr r7, r4
/* 80031E84 0002D3A4  54 00 E8 FE */	srwi r0, r0, 3
/* 80031E88 0002D3A8  38 60 00 00 */	li r3, 0
/* 80031E8C 0002D3AC  7C 09 03 A6 */	mtctr r0
/* 80031E90 0002D3B0  2C 06 00 00 */	cmpwi r6, 0
/* 80031E94 0002D3B4  40 81 00 50 */	ble lbl_80031EE4
lbl_80031E98:
/* 80031E98 0002D3B8  90 67 00 00 */	stw r3, 0(r7)
/* 80031E9C 0002D3BC  38 A5 00 08 */	addi r5, r5, 8
/* 80031EA0 0002D3C0  90 67 00 04 */	stw r3, 4(r7)
/* 80031EA4 0002D3C4  90 67 00 08 */	stw r3, 8(r7)
/* 80031EA8 0002D3C8  90 67 00 0C */	stw r3, 0xc(r7)
/* 80031EAC 0002D3CC  90 67 00 10 */	stw r3, 0x10(r7)
/* 80031EB0 0002D3D0  90 67 00 14 */	stw r3, 0x14(r7)
/* 80031EB4 0002D3D4  90 67 00 18 */	stw r3, 0x18(r7)
/* 80031EB8 0002D3D8  90 67 00 1C */	stw r3, 0x1c(r7)
/* 80031EBC 0002D3DC  90 67 00 20 */	stw r3, 0x20(r7)
/* 80031EC0 0002D3E0  90 67 00 24 */	stw r3, 0x24(r7)
/* 80031EC4 0002D3E4  90 67 00 28 */	stw r3, 0x28(r7)
/* 80031EC8 0002D3E8  90 67 00 2C */	stw r3, 0x2c(r7)
/* 80031ECC 0002D3EC  90 67 00 30 */	stw r3, 0x30(r7)
/* 80031ED0 0002D3F0  90 67 00 34 */	stw r3, 0x34(r7)
/* 80031ED4 0002D3F4  90 67 00 38 */	stw r3, 0x38(r7)
/* 80031ED8 0002D3F8  90 67 00 3C */	stw r3, 0x3c(r7)
/* 80031EDC 0002D3FC  38 E7 00 40 */	addi r7, r7, 0x40
/* 80031EE0 0002D400  42 00 FF B8 */	bdnz lbl_80031E98
lbl_80031EE4:
/* 80031EE4 0002D404  54 A3 18 38 */	slwi r3, r5, 3
/* 80031EE8 0002D408  7C 05 E8 50 */	subf r0, r5, r29
/* 80031EEC 0002D40C  7C 84 1A 14 */	add r4, r4, r3
/* 80031EF0 0002D410  38 60 00 00 */	li r3, 0
/* 80031EF4 0002D414  7C 09 03 A6 */	mtctr r0
/* 80031EF8 0002D418  7C 05 E8 00 */	cmpw r5, r29
/* 80031EFC 0002D41C  40 80 00 14 */	bge lbl_80031F10
lbl_80031F00:
/* 80031F00 0002D420  90 64 00 00 */	stw r3, 0(r4)
/* 80031F04 0002D424  90 64 00 04 */	stw r3, 4(r4)
/* 80031F08 0002D428  38 84 00 08 */	addi r4, r4, 8
/* 80031F0C 0002D42C  42 00 FF F4 */	bdnz lbl_80031F00
lbl_80031F10:
/* 80031F10 0002D430  3C B6 00 10 */	addis r5, r22, 0x10
/* 80031F14 0002D434  3C 00 20 00 */	lis r0, 0x2000
/* 80031F18 0002D438  38 80 00 00 */	li r4, 0
/* 80031F1C 0002D43C  90 05 24 1C */	stw r0, 0x241c(r5)
/* 80031F20 0002D440  38 00 00 16 */	li r0, 0x16
/* 80031F24 0002D444  90 85 24 20 */	stw r4, 0x2420(r5)
/* 80031F28 0002D448  80 61 00 08 */	lwz r3, 8(r1)
/* 80031F2C 0002D44C  90 83 00 1C */	stw r4, 0x1c(r3)
/* 80031F30 0002D450  80 61 00 08 */	lwz r3, 8(r1)
/* 80031F34 0002D454  90 03 00 20 */	stw r0, 0x20(r3)
/* 80031F38 0002D458  90 85 24 94 */	stw r4, 0x2494(r5)
/* 80031F3C 0002D45C  90 85 24 74 */	stw r4, 0x2474(r5)
/* 80031F40 0002D460  90 85 24 80 */	stw r4, 0x2480(r5)
/* 80031F44 0002D464  90 81 00 14 */	stw r4, 0x14(r1)
/* 80031F48 0002D468  80 61 00 08 */	lwz r3, 8(r1)
/* 80031F4C 0002D46C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80031F50 0002D470  90 01 00 0C */	stw r0, 0xc(r1)
/* 80031F54 0002D474  48 00 00 2C */	b lbl_80031F80
lbl_80031F58:
/* 80031F58 0002D478  7E C3 B3 78 */	mr r3, r22
/* 80031F5C 0002D47C  7F E6 FB 78 */	mr r6, r31
/* 80031F60 0002D480  38 81 00 0C */	addi r4, r1, 0xc
/* 80031F64 0002D484  38 E1 00 14 */	addi r7, r1, 0x14
/* 80031F68 0002D488  39 00 00 00 */	li r8, 0
/* 80031F6C 0002D48C  4B FD C9 BD */	bl cpuGetPPC
/* 80031F70 0002D490  2C 03 00 00 */	cmpwi r3, 0
/* 80031F74 0002D494  40 82 00 0C */	bne lbl_80031F80
/* 80031F78 0002D498  38 60 00 00 */	li r3, 0
/* 80031F7C 0002D49C  48 00 01 40 */	b lbl_800320BC
lbl_80031F80:
/* 80031F80 0002D4A0  80 A1 00 08 */	lwz r5, 8(r1)
/* 80031F84 0002D4A4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80031F88 0002D4A8  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80031F8C 0002D4AC  7C 03 00 00 */	cmpw r3, r0
/* 80031F90 0002D4B0  40 81 FF C8 */	ble lbl_80031F58
/* 80031F94 0002D4B4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80031F98 0002D4B8  7C 04 F0 00 */	cmpw r4, r30
/* 80031F9C 0002D4BC  40 81 00 0C */	ble lbl_80031FA8
/* 80031FA0 0002D4C0  38 60 00 00 */	li r3, 0
/* 80031FA4 0002D4C4  48 00 01 18 */	b lbl_800320BC
lbl_80031FA8:
/* 80031FA8 0002D4C8  3C 60 60 00 */	lis r3, 0x6000
/* 80031FAC 0002D4CC  48 00 00 14 */	b lbl_80031FC0
lbl_80031FB0:
/* 80031FB0 0002D4D0  54 80 10 3A */	slwi r0, r4, 2
/* 80031FB4 0002D4D4  38 84 00 01 */	addi r4, r4, 1
/* 80031FB8 0002D4D8  7C 7F 01 2E */	stwx r3, r31, r0
/* 80031FBC 0002D4DC  90 81 00 14 */	stw r4, 0x14(r1)
lbl_80031FC0:
/* 80031FC0 0002D4E0  7C 04 F0 00 */	cmpw r4, r30
/* 80031FC4 0002D4E4  41 80 FF EC */	blt lbl_80031FB0
/* 80031FC8 0002D4E8  80 61 00 08 */	lwz r3, 8(r1)
/* 80031FCC 0002D4EC  38 00 00 21 */	li r0, 0x21
/* 80031FD0 0002D4F0  90 03 00 20 */	stw r0, 0x20(r3)
/* 80031FD4 0002D4F4  80 61 00 08 */	lwz r3, 8(r1)
/* 80031FD8 0002D4F8  93 E3 00 04 */	stw r31, 4(r3)
/* 80031FDC 0002D4FC  80 61 00 08 */	lwz r3, 8(r1)
/* 80031FE0 0002D500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031FE4 0002D504  80 63 00 04 */	lwz r3, 4(r3)
/* 80031FE8 0002D508  54 04 10 3A */	slwi r4, r0, 2
/* 80031FEC 0002D50C  48 05 EC B1 */	bl DCStoreRange
/* 80031FF0 0002D510  80 61 00 08 */	lwz r3, 8(r1)
/* 80031FF4 0002D514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031FF8 0002D518  80 63 00 04 */	lwz r3, 4(r3)
/* 80031FFC 0002D51C  54 04 10 3A */	slwi r4, r0, 2
/* 80032000 0002D520  48 05 ED 25 */	bl ICInvalidateRange
/* 80032004 0002D524  80 81 00 08 */	lwz r4, 8(r1)
/* 80032008 0002D528  80 04 00 08 */	lwz r0, 8(r4)
/* 8003200C 0002D52C  2C 00 00 00 */	cmpwi r0, 0
/* 80032010 0002D530  40 81 00 74 */	ble lbl_80032084
/* 80032014 0002D534  2C 00 04 00 */	cmpwi r0, 0x400
/* 80032018 0002D538  41 80 00 0C */	blt lbl_80032024
/* 8003201C 0002D53C  38 60 00 00 */	li r3, 0
/* 80032020 0002D540  48 00 00 9C */	b lbl_800320BC
lbl_80032024:
/* 80032024 0002D544  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80032028 0002D548  7C 18 CA 14 */	add r0, r24, r25
/* 8003202C 0002D54C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80032030 0002D550  38 E0 00 00 */	li r7, 0
/* 80032034 0002D554  7C 03 02 14 */	add r0, r3, r0
/* 80032038 0002D558  38 C0 00 00 */	li r6, 0
/* 8003203C 0002D55C  90 04 00 0C */	stw r0, 0xc(r4)
/* 80032040 0002D560  48 00 00 30 */	b lbl_80032070
lbl_80032044:
/* 80032044 0002D564  80 05 00 00 */	lwz r0, 0(r5)
/* 80032048 0002D568  38 E7 00 01 */	addi r7, r7, 1
/* 8003204C 0002D56C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80032050 0002D570  7C 03 31 2E */	stwx r0, r3, r6
/* 80032054 0002D574  80 61 00 08 */	lwz r3, 8(r1)
/* 80032058 0002D578  80 85 00 04 */	lwz r4, 4(r5)
/* 8003205C 0002D57C  38 A5 00 08 */	addi r5, r5, 8
/* 80032060 0002D580  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80032064 0002D584  7C 60 32 14 */	add r3, r0, r6
/* 80032068 0002D588  38 C6 00 08 */	addi r6, r6, 8
/* 8003206C 0002D58C  90 83 00 04 */	stw r4, 4(r3)
lbl_80032070:
/* 80032070 0002D590  80 61 00 08 */	lwz r3, 8(r1)
/* 80032074 0002D594  80 03 00 08 */	lwz r0, 8(r3)
/* 80032078 0002D598  7C 07 00 00 */	cmpw r7, r0
/* 8003207C 0002D59C  41 80 FF C8 */	blt lbl_80032044
/* 80032080 0002D5A0  48 00 00 0C */	b lbl_8003208C
lbl_80032084:
/* 80032084 0002D5A4  38 00 00 00 */	li r0, 0
/* 80032088 0002D5A8  90 04 00 0C */	stw r0, 0xc(r4)
lbl_8003208C:
/* 8003208C 0002D5AC  80 81 00 08 */	lwz r4, 8(r1)
/* 80032090 0002D5B0  3C 76 00 10 */	addis r3, r22, 0x10
/* 80032094 0002D5B4  93 44 00 2C */	stw r26, 0x2c(r4)
/* 80032098 0002D5B8  80 63 16 94 */	lwz r3, 0x1694(r3)
/* 8003209C 0002D5BC  80 03 00 04 */	lwz r0, 4(r3)
/* 800320A0 0002D5C0  7C 00 D2 14 */	add r0, r0, r26
/* 800320A4 0002D5C4  90 03 00 04 */	stw r0, 4(r3)
lbl_800320A8:
/* 800320A8 0002D5C8  2C 17 00 00 */	cmpwi r23, 0
/* 800320AC 0002D5CC  41 82 00 0C */	beq lbl_800320B8
/* 800320B0 0002D5D0  80 01 00 08 */	lwz r0, 8(r1)
/* 800320B4 0002D5D4  90 17 00 00 */	stw r0, 0(r23)
lbl_800320B8:
/* 800320B8 0002D5D8  38 60 00 01 */	li r3, 1
lbl_800320BC:
/* 800320BC 0002D5DC  39 61 20 50 */	addi r11, r1, 0x2050
/* 800320C0 0002D5E0  48 12 A8 B5 */	bl _restgpr_20
/* 800320C4 0002D5E4  80 01 20 54 */	lwz r0, 0x2054(r1)
/* 800320C8 0002D5E8  7C 08 03 A6 */	mtlr r0
/* 800320CC 0002D5EC  38 21 20 50 */	addi r1, r1, 0x2050
/* 800320D0 0002D5F0  4E 80 00 20 */	blr 

