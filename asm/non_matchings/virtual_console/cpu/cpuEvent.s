glabel cpuEvent
/* 8003CFE4 00038504  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003CFE8 00038508  7C 08 02 A6 */	mflr r0
/* 8003CFEC 0003850C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003CFF0 00038510  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CFF4 00038514  48 11 F9 51 */	bl _savegpr_27
/* 8003CFF8 00038518  2C 04 00 03 */	cmpwi r4, 3
/* 8003CFFC 0003851C  7C 7F 1B 78 */	mr r31, r3
/* 8003D000 00038520  41 82 00 D8 */	beq lbl_8003D0D8
/* 8003D004 00038524  40 80 00 1C */	bge lbl_8003D020
/* 8003D008 00038528  2C 04 00 01 */	cmpwi r4, 1
/* 8003D00C 0003852C  41 82 00 34 */	beq lbl_8003D040
/* 8003D010 00038530  40 80 00 44 */	bge lbl_8003D054
/* 8003D014 00038534  2C 04 00 00 */	cmpwi r4, 0
/* 8003D018 00038538  40 80 01 DC */	bge lbl_8003D1F4
/* 8003D01C 0003853C  48 00 01 D0 */	b lbl_8003D1EC
lbl_8003D020:
/* 8003D020 00038540  2C 04 10 07 */	cmpwi r4, 0x1007
/* 8003D024 00038544  41 82 01 D0 */	beq lbl_8003D1F4
/* 8003D028 00038548  40 80 01 C4 */	bge lbl_8003D1EC
/* 8003D02C 0003854C  2C 04 10 05 */	cmpwi r4, 0x1005
/* 8003D030 00038550  40 80 01 BC */	bge lbl_8003D1EC
/* 8003D034 00038554  2C 04 10 03 */	cmpwi r4, 0x1003
/* 8003D038 00038558  40 80 01 BC */	bge lbl_8003D1F4
/* 8003D03C 0003855C  48 00 01 B0 */	b lbl_8003D1EC
lbl_8003D040:
/* 8003D040 00038560  4B FF F7 95 */	bl cpuReset
/* 8003D044 00038564  2C 03 00 00 */	cmpwi r3, 0
/* 8003D048 00038568  40 82 01 AC */	bne lbl_8003D1F4
/* 8003D04C 0003856C  38 60 00 00 */	li r3, 0
/* 8003D050 00038570  48 00 01 A8 */	b lbl_8003D1F8
lbl_8003D054:
/* 8003D054 00038574  7F FD FB 78 */	mr r29, r31
/* 8003D058 00038578  3B 83 0B 60 */	addi r28, r3, 0xb60
/* 8003D05C 0003857C  3B 60 00 00 */	li r27, 0
/* 8003D060 00038580  3B C0 00 00 */	li r30, 0
lbl_8003D064:
/* 8003D064 00038584  7F 83 E3 78 */	mr r3, r28
/* 8003D068 00038588  38 80 00 4C */	li r4, 0x4c
/* 8003D06C 0003858C  48 04 8E DD */	bl xlHeapTake
/* 8003D070 00038590  2C 03 00 00 */	cmpwi r3, 0
/* 8003D074 00038594  40 82 00 0C */	bne lbl_8003D080
/* 8003D078 00038598  38 60 00 00 */	li r3, 0
/* 8003D07C 0003859C  48 00 01 7C */	b lbl_8003D1F8
lbl_8003D080:
/* 8003D080 000385A0  80 7D 0B 60 */	lwz r3, 0xb60(r29)
/* 8003D084 000385A4  3B 7B 00 01 */	addi r27, r27, 1
/* 8003D088 000385A8  2C 1B 01 00 */	cmpwi r27, 0x100
/* 8003D08C 000385AC  3B BD 00 04 */	addi r29, r29, 4
/* 8003D090 000385B0  93 C3 00 40 */	stw r30, 0x40(r3)
/* 8003D094 000385B4  3B 9C 00 04 */	addi r28, r28, 4
/* 8003D098 000385B8  41 80 FF CC */	blt lbl_8003D064
/* 8003D09C 000385BC  7F E3 FB 78 */	mr r3, r31
/* 8003D0A0 000385C0  4B FF F7 35 */	bl cpuReset
/* 8003D0A4 000385C4  2C 03 00 00 */	cmpwi r3, 0
/* 8003D0A8 000385C8  40 82 00 0C */	bne lbl_8003D0B4
/* 8003D0AC 000385CC  38 60 00 00 */	li r3, 0
/* 8003D0B0 000385D0  48 00 01 48 */	b lbl_8003D1F8
lbl_8003D0B4:
/* 8003D0B4 000385D4  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003D0B8 000385D8  3C 80 30 05 */	lis r4, 0x3004E200@ha
/* 8003D0BC 000385DC  38 84 E2 00 */	addi r4, r4, 0x3004E200@l
/* 8003D0C0 000385E0  38 63 14 9C */	addi r3, r3, 0x149c
/* 8003D0C4 000385E4  48 04 8E 85 */	bl xlHeapTake
/* 8003D0C8 000385E8  2C 03 00 00 */	cmpwi r3, 0
/* 8003D0CC 000385EC  40 82 01 28 */	bne lbl_8003D1F4
/* 8003D0D0 000385F0  38 60 00 00 */	li r3, 0
/* 8003D0D4 000385F4  48 00 01 24 */	b lbl_8003D1F8
lbl_8003D0D8:
/* 8003D0D8 000385F8  7F FD FB 78 */	mr r29, r31
/* 8003D0DC 000385FC  3B 83 0B 60 */	addi r28, r3, 0xb60
/* 8003D0E0 00038600  3B 60 00 00 */	li r27, 0
/* 8003D0E4 00038604  3B C0 00 00 */	li r30, 0
lbl_8003D0E8:
/* 8003D0E8 00038608  80 7D 0B 60 */	lwz r3, 0xb60(r29)
/* 8003D0EC 0003860C  80 83 00 48 */	lwz r4, 0x48(r3)
/* 8003D0F0 00038610  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 8003D0F4 00038614  38 64 00 01 */	addi r3, r4, 1
/* 8003D0F8 00038618  7C 05 20 40 */	cmplw r5, r4
/* 8003D0FC 0003861C  7C 65 18 50 */	subf r3, r5, r3
/* 8003D100 00038620  41 81 00 B4 */	bgt lbl_8003D1B4
/* 8003D104 00038624  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 8003D108 00038628  7C 09 03 A6 */	mtctr r0
/* 8003D10C 0003862C  41 82 00 90 */	beq lbl_8003D19C
lbl_8003D110:
/* 8003D110 00038630  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D114 00038634  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D118 00038638  38 A5 00 01 */	addi r5, r5, 1
/* 8003D11C 0003863C  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D120 00038640  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D124 00038644  38 A5 00 01 */	addi r5, r5, 1
/* 8003D128 00038648  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D12C 0003864C  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D130 00038650  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D134 00038654  38 A5 00 01 */	addi r5, r5, 1
/* 8003D138 00038658  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D13C 0003865C  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D140 00038660  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D144 00038664  38 A5 00 01 */	addi r5, r5, 1
/* 8003D148 00038668  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D14C 0003866C  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D150 00038670  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D154 00038674  38 A5 00 01 */	addi r5, r5, 1
/* 8003D158 00038678  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D15C 0003867C  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D160 00038680  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D164 00038684  38 A5 00 01 */	addi r5, r5, 1
/* 8003D168 00038688  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D16C 0003868C  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D170 00038690  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D174 00038694  38 A5 00 01 */	addi r5, r5, 1
/* 8003D178 00038698  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D17C 0003869C  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D180 000386A0  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D184 000386A4  38 A5 00 01 */	addi r5, r5, 1
/* 8003D188 000386A8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D18C 000386AC  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D190 000386B0  42 00 FF 80 */	bdnz lbl_8003D110
/* 8003D194 000386B4  70 63 00 07 */	andi. r3, r3, 7
/* 8003D198 000386B8  41 82 00 1C */	beq lbl_8003D1B4
lbl_8003D19C:
/* 8003D19C 000386BC  7C 69 03 A6 */	mtctr r3
lbl_8003D1A0:
/* 8003D1A0 000386C0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003D1A4 000386C4  7C 9F 2A 14 */	add r4, r31, r5
/* 8003D1A8 000386C8  38 A5 00 01 */	addi r5, r5, 1
/* 8003D1AC 000386CC  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8003D1B0 000386D0  42 00 FF F0 */	bdnz lbl_8003D1A0
lbl_8003D1B4:
/* 8003D1B4 000386D4  80 9D 0B 60 */	lwz r4, 0xb60(r29)
/* 8003D1B8 000386D8  7F 83 E3 78 */	mr r3, r28
/* 8003D1BC 000386DC  93 C4 00 40 */	stw r30, 0x40(r4)
/* 8003D1C0 000386E0  48 04 8F F5 */	bl xlHeapFree
/* 8003D1C4 000386E4  2C 03 00 00 */	cmpwi r3, 0
/* 8003D1C8 000386E8  40 82 00 0C */	bne lbl_8003D1D4
/* 8003D1CC 000386EC  38 60 00 00 */	li r3, 0
/* 8003D1D0 000386F0  48 00 00 28 */	b lbl_8003D1F8
lbl_8003D1D4:
/* 8003D1D4 000386F4  3B 7B 00 01 */	addi r27, r27, 1
/* 8003D1D8 000386F8  3B 9C 00 04 */	addi r28, r28, 4
/* 8003D1DC 000386FC  2C 1B 01 00 */	cmpwi r27, 0x100
/* 8003D1E0 00038700  3B BD 00 04 */	addi r29, r29, 4
/* 8003D1E4 00038704  41 80 FF 04 */	blt lbl_8003D0E8
/* 8003D1E8 00038708  48 00 00 0C */	b lbl_8003D1F4
lbl_8003D1EC:
/* 8003D1EC 0003870C  38 60 00 00 */	li r3, 0
/* 8003D1F0 00038710  48 00 00 08 */	b lbl_8003D1F8
lbl_8003D1F4:
/* 8003D1F4 00038714  38 60 00 01 */	li r3, 1
lbl_8003D1F8:
/* 8003D1F8 00038718  39 61 00 20 */	addi r11, r1, 0x20
/* 8003D1FC 0003871C  48 11 F7 95 */	bl _restgpr_27
/* 8003D200 00038720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003D204 00038724  7C 08 03 A6 */	mtlr r0
/* 8003D208 00038728  38 21 00 20 */	addi r1, r1, 0x20
/* 8003D20C 0003872C  4E 80 00 20 */	blr 

