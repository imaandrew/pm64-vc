.include "macros.inc"

.section .text, "ax"

glabel nandOpen
/* 800B9F34 000B5454  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800B9F38 000B5458  7C 08 02 A6 */	mflr r0
/* 800B9F3C 000B545C  90 01 00 64 */	stw r0, 0x64(r1)
/* 800B9F40 000B5460  39 61 00 60 */	addi r11, r1, 0x60
/* 800B9F44 000B5464  48 0A 2A 01 */	bl _savegpr_27
/* 800B9F48 000B5468  38 00 00 00 */	li r0, 0
/* 800B9F4C 000B546C  7C 9B 23 78 */	mr r27, r4
/* 800B9F50 000B5470  90 01 00 08 */	stw r0, 8(r1)
/* 800B9F54 000B5474  7C 64 1B 78 */	mr r4, r3
/* 800B9F58 000B5478  7C BC 2B 78 */	mr r28, r5
/* 800B9F5C 000B547C  7C DD 33 78 */	mr r29, r6
/* 800B9F60 000B5480  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B9F64 000B5484  7C FE 3B 78 */	mr r30, r7
/* 800B9F68 000B5488  38 61 00 08 */	addi r3, r1, 8
/* 800B9F6C 000B548C  3B E0 00 00 */	li r31, 0
/* 800B9F70 000B5490  90 01 00 10 */	stw r0, 0x10(r1)
/* 800B9F74 000B5494  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9F78 000B5498  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B9F7C 000B549C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800B9F80 000B54A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 800B9F84 000B54A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B9F88 000B54A8  90 01 00 28 */	stw r0, 0x28(r1)
/* 800B9F8C 000B54AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800B9F90 000B54B0  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B9F94 000B54B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B9F98 000B54B8  90 01 00 38 */	stw r0, 0x38(r1)
/* 800B9F9C 000B54BC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800B9FA0 000B54C0  90 01 00 40 */	stw r0, 0x40(r1)
/* 800B9FA4 000B54C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B9FA8 000B54C8  48 00 0E 19 */	bl nandGenerateAbsPath
/* 800B9FAC 000B54CC  2C 1E 00 00 */	cmpwi r30, 0
/* 800B9FB0 000B54D0  40 82 00 1C */	bne lbl_800B9FCC
/* 800B9FB4 000B54D4  38 61 00 08 */	addi r3, r1, 8
/* 800B9FB8 000B54D8  48 00 0C 95 */	bl nandIsPrivatePath
/* 800B9FBC 000B54DC  2C 03 00 00 */	cmpwi r3, 0
/* 800B9FC0 000B54E0  41 82 00 0C */	beq lbl_800B9FCC
/* 800B9FC4 000B54E4  38 60 FF 9A */	li r3, -102
/* 800B9FC8 000B54E8  48 00 00 68 */	b lbl_800BA030
lbl_800B9FCC:
/* 800B9FCC 000B54EC  2C 1B 00 02 */	cmpwi r27, 2
/* 800B9FD0 000B54F0  41 82 00 2C */	beq lbl_800B9FFC
/* 800B9FD4 000B54F4  40 80 00 10 */	bge lbl_800B9FE4
/* 800B9FD8 000B54F8  2C 1B 00 01 */	cmpwi r27, 1
/* 800B9FDC 000B54FC  40 80 00 18 */	bge lbl_800B9FF4
/* 800B9FE0 000B5500  48 00 00 20 */	b lbl_800BA000
lbl_800B9FE4:
/* 800B9FE4 000B5504  2C 1B 00 04 */	cmpwi r27, 4
/* 800B9FE8 000B5508  40 80 00 18 */	bge lbl_800BA000
/* 800B9FEC 000B550C  3B E0 00 03 */	li r31, 3
/* 800B9FF0 000B5510  48 00 00 10 */	b lbl_800BA000
lbl_800B9FF4:
/* 800B9FF4 000B5514  3B E0 00 01 */	li r31, 1
/* 800B9FF8 000B5518  48 00 00 08 */	b lbl_800BA000
lbl_800B9FFC:
/* 800B9FFC 000B551C  3B E0 00 02 */	li r31, 2
lbl_800BA000:
/* 800BA000 000B5520  2C 1D 00 00 */	cmpwi r29, 0
/* 800BA004 000B5524  41 82 00 20 */	beq lbl_800BA024
/* 800BA008 000B5528  3C A0 80 0C */	lis r5, nandOpenCallback@ha
/* 800BA00C 000B552C  7F E4 FB 78 */	mr r4, r31
/* 800BA010 000B5530  7F 86 E3 78 */	mr r6, r28
/* 800BA014 000B5534  38 61 00 08 */	addi r3, r1, 8
/* 800BA018 000B5538  38 A5 A2 50 */	addi r5, r5, nandOpenCallback@l
/* 800BA01C 000B553C  48 00 7C 71 */	bl ISFS_OpenAsync
/* 800BA020 000B5540  48 00 00 10 */	b lbl_800BA030
lbl_800BA024:
/* 800BA024 000B5544  7F E4 FB 78 */	mr r4, r31
/* 800BA028 000B5548  38 61 00 08 */	addi r3, r1, 8
/* 800BA02C 000B554C  48 00 7B 99 */	bl ISFS_Open
lbl_800BA030:
/* 800BA030 000B5550  39 61 00 60 */	addi r11, r1, 0x60
/* 800BA034 000B5554  48 0A 29 5D */	bl _restgpr_27
/* 800BA038 000B5558  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800BA03C 000B555C  7C 08 03 A6 */	mtlr r0
/* 800BA040 000B5560  38 21 00 60 */	addi r1, r1, 0x60
/* 800BA044 000B5564  4E 80 00 20 */	blr 

glabel NANDOpen
/* 800BA048 000B5568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BA04C 000B556C  7C 08 02 A6 */	mflr r0
/* 800BA050 000B5570  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA054 000B5574  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BA058 000B5578  7C BF 2B 78 */	mr r31, r5
/* 800BA05C 000B557C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800BA060 000B5580  7C 9E 23 78 */	mr r30, r4
/* 800BA064 000B5584  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800BA068 000B5588  7C 7D 1B 78 */	mr r29, r3
/* 800BA06C 000B558C  48 00 0C 6D */	bl nandIsInitialized
/* 800BA070 000B5590  2C 03 00 00 */	cmpwi r3, 0
/* 800BA074 000B5594  40 82 00 0C */	bne lbl_800BA080
/* 800BA078 000B5598  38 60 FF 80 */	li r3, -128
/* 800BA07C 000B559C  48 00 00 3C */	b lbl_800BA0B8
lbl_800BA080:
/* 800BA080 000B55A0  7F A3 EB 78 */	mr r3, r29
/* 800BA084 000B55A4  7F E4 FB 78 */	mr r4, r31
/* 800BA088 000B55A8  38 A0 00 00 */	li r5, 0
/* 800BA08C 000B55AC  38 C0 00 00 */	li r6, 0
/* 800BA090 000B55B0  38 E0 00 00 */	li r7, 0
/* 800BA094 000B55B4  4B FF FE A1 */	bl nandOpen
/* 800BA098 000B55B8  2C 03 00 00 */	cmpwi r3, 0
/* 800BA09C 000B55BC  41 80 00 18 */	blt lbl_800BA0B4
/* 800BA0A0 000B55C0  38 00 00 01 */	li r0, 1
/* 800BA0A4 000B55C4  90 7E 00 00 */	stw r3, 0(r30)
/* 800BA0A8 000B55C8  38 60 00 00 */	li r3, 0
/* 800BA0AC 000B55CC  98 1E 00 8A */	stb r0, 0x8a(r30)
/* 800BA0B0 000B55D0  48 00 00 08 */	b lbl_800BA0B8
lbl_800BA0B4:
/* 800BA0B4 000B55D4  48 00 0C 3D */	bl nandConvertErrorCode
lbl_800BA0B8:
/* 800BA0B8 000B55D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BA0BC 000B55DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BA0C0 000B55E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800BA0C4 000B55E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800BA0C8 000B55E8  7C 08 03 A6 */	mtlr r0
/* 800BA0CC 000B55EC  38 21 00 20 */	addi r1, r1, 0x20
/* 800BA0D0 000B55F0  4E 80 00 20 */	blr 

glabel NANDPrivateOpen
/* 800BA0D4 000B55F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BA0D8 000B55F8  7C 08 02 A6 */	mflr r0
/* 800BA0DC 000B55FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA0E0 000B5600  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BA0E4 000B5604  7C BF 2B 78 */	mr r31, r5
/* 800BA0E8 000B5608  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800BA0EC 000B560C  7C 9E 23 78 */	mr r30, r4
/* 800BA0F0 000B5610  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800BA0F4 000B5614  7C 7D 1B 78 */	mr r29, r3
/* 800BA0F8 000B5618  48 00 0B E1 */	bl nandIsInitialized
/* 800BA0FC 000B561C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA100 000B5620  40 82 00 0C */	bne lbl_800BA10C
/* 800BA104 000B5624  38 60 FF 80 */	li r3, -128
/* 800BA108 000B5628  48 00 00 3C */	b lbl_800BA144
lbl_800BA10C:
/* 800BA10C 000B562C  7F A3 EB 78 */	mr r3, r29
/* 800BA110 000B5630  7F E4 FB 78 */	mr r4, r31
/* 800BA114 000B5634  38 A0 00 00 */	li r5, 0
/* 800BA118 000B5638  38 C0 00 00 */	li r6, 0
/* 800BA11C 000B563C  38 E0 00 01 */	li r7, 1
/* 800BA120 000B5640  4B FF FE 15 */	bl nandOpen
/* 800BA124 000B5644  2C 03 00 00 */	cmpwi r3, 0
/* 800BA128 000B5648  41 80 00 18 */	blt lbl_800BA140
/* 800BA12C 000B564C  38 00 00 01 */	li r0, 1
/* 800BA130 000B5650  90 7E 00 00 */	stw r3, 0(r30)
/* 800BA134 000B5654  38 60 00 00 */	li r3, 0
/* 800BA138 000B5658  98 1E 00 8A */	stb r0, 0x8a(r30)
/* 800BA13C 000B565C  48 00 00 08 */	b lbl_800BA144
lbl_800BA140:
/* 800BA140 000B5660  48 00 0B B1 */	bl nandConvertErrorCode
lbl_800BA144:
/* 800BA144 000B5664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BA148 000B5668  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BA14C 000B566C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800BA150 000B5670  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800BA154 000B5674  7C 08 03 A6 */	mtlr r0
/* 800BA158 000B5678  38 21 00 20 */	addi r1, r1, 0x20
/* 800BA15C 000B567C  4E 80 00 20 */	blr 

glabel NANDOpenAsync
/* 800BA160 000B5680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BA164 000B5684  7C 08 02 A6 */	mflr r0
/* 800BA168 000B5688  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA16C 000B568C  39 61 00 20 */	addi r11, r1, 0x20
/* 800BA170 000B5690  48 0A 27 D5 */	bl _savegpr_27
/* 800BA174 000B5694  7C 7B 1B 78 */	mr r27, r3
/* 800BA178 000B5698  7C 9C 23 78 */	mr r28, r4
/* 800BA17C 000B569C  7C BD 2B 78 */	mr r29, r5
/* 800BA180 000B56A0  7C DE 33 78 */	mr r30, r6
/* 800BA184 000B56A4  7C FF 3B 78 */	mr r31, r7
/* 800BA188 000B56A8  48 00 0B 51 */	bl nandIsInitialized
/* 800BA18C 000B56AC  2C 03 00 00 */	cmpwi r3, 0
/* 800BA190 000B56B0  40 82 00 0C */	bne lbl_800BA19C
/* 800BA194 000B56B4  38 60 FF 80 */	li r3, -128
/* 800BA198 000B56B8  48 00 00 28 */	b lbl_800BA1C0
lbl_800BA19C:
/* 800BA19C 000B56BC  93 DF 00 04 */	stw r30, 4(r31)
/* 800BA1A0 000B56C0  7F 63 DB 78 */	mr r3, r27
/* 800BA1A4 000B56C4  7F A4 EB 78 */	mr r4, r29
/* 800BA1A8 000B56C8  7F E5 FB 78 */	mr r5, r31
/* 800BA1AC 000B56CC  93 9F 00 08 */	stw r28, 8(r31)
/* 800BA1B0 000B56D0  38 C0 00 01 */	li r6, 1
/* 800BA1B4 000B56D4  38 E0 00 00 */	li r7, 0
/* 800BA1B8 000B56D8  4B FF FD 7D */	bl nandOpen
/* 800BA1BC 000B56DC  48 00 0B 35 */	bl nandConvertErrorCode
lbl_800BA1C0:
/* 800BA1C0 000B56E0  39 61 00 20 */	addi r11, r1, 0x20
/* 800BA1C4 000B56E4  48 0A 27 CD */	bl _restgpr_27
/* 800BA1C8 000B56E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BA1CC 000B56EC  7C 08 03 A6 */	mtlr r0
/* 800BA1D0 000B56F0  38 21 00 20 */	addi r1, r1, 0x20
/* 800BA1D4 000B56F4  4E 80 00 20 */	blr 

glabel NANDPrivateOpenAsync
/* 800BA1D8 000B56F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BA1DC 000B56FC  7C 08 02 A6 */	mflr r0
/* 800BA1E0 000B5700  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA1E4 000B5704  39 61 00 20 */	addi r11, r1, 0x20
/* 800BA1E8 000B5708  48 0A 27 5D */	bl _savegpr_27
/* 800BA1EC 000B570C  7C 7B 1B 78 */	mr r27, r3
/* 800BA1F0 000B5710  7C 9C 23 78 */	mr r28, r4
/* 800BA1F4 000B5714  7C BD 2B 78 */	mr r29, r5
/* 800BA1F8 000B5718  7C DE 33 78 */	mr r30, r6
/* 800BA1FC 000B571C  7C FF 3B 78 */	mr r31, r7
/* 800BA200 000B5720  48 00 0A D9 */	bl nandIsInitialized
/* 800BA204 000B5724  2C 03 00 00 */	cmpwi r3, 0
/* 800BA208 000B5728  40 82 00 0C */	bne lbl_800BA214
/* 800BA20C 000B572C  38 60 FF 80 */	li r3, -128
/* 800BA210 000B5730  48 00 00 28 */	b lbl_800BA238
lbl_800BA214:
/* 800BA214 000B5734  93 DF 00 04 */	stw r30, 4(r31)
/* 800BA218 000B5738  7F 63 DB 78 */	mr r3, r27
/* 800BA21C 000B573C  7F A4 EB 78 */	mr r4, r29
/* 800BA220 000B5740  7F E5 FB 78 */	mr r5, r31
/* 800BA224 000B5744  93 9F 00 08 */	stw r28, 8(r31)
/* 800BA228 000B5748  38 C0 00 01 */	li r6, 1
/* 800BA22C 000B574C  38 E0 00 01 */	li r7, 1
/* 800BA230 000B5750  4B FF FD 05 */	bl nandOpen
/* 800BA234 000B5754  48 00 0A BD */	bl nandConvertErrorCode
lbl_800BA238:
/* 800BA238 000B5758  39 61 00 20 */	addi r11, r1, 0x20
/* 800BA23C 000B575C  48 0A 27 55 */	bl _restgpr_27
/* 800BA240 000B5760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BA244 000B5764  7C 08 03 A6 */	mtlr r0
/* 800BA248 000B5768  38 21 00 20 */	addi r1, r1, 0x20
/* 800BA24C 000B576C  4E 80 00 20 */	blr 

glabel nandOpenCallback
/* 800BA250 000B5770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BA254 000B5774  7C 08 02 A6 */	mflr r0
/* 800BA258 000B5778  2C 03 00 00 */	cmpwi r3, 0
/* 800BA25C 000B577C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BA260 000B5780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BA264 000B5784  7C 9F 23 78 */	mr r31, r4
/* 800BA268 000B5788  41 80 00 38 */	blt lbl_800BA2A0
/* 800BA26C 000B578C  80 A4 00 08 */	lwz r5, 8(r4)
/* 800BA270 000B5790  38 C0 00 02 */	li r6, 2
/* 800BA274 000B5794  38 00 00 01 */	li r0, 1
/* 800BA278 000B5798  90 65 00 00 */	stw r3, 0(r5)
/* 800BA27C 000B579C  38 60 00 00 */	li r3, 0
/* 800BA280 000B57A0  80 A4 00 08 */	lwz r5, 8(r4)
/* 800BA284 000B57A4  98 C5 00 89 */	stb r6, 0x89(r5)
/* 800BA288 000B57A8  80 A4 00 08 */	lwz r5, 8(r4)
/* 800BA28C 000B57AC  98 05 00 8A */	stb r0, 0x8a(r5)
/* 800BA290 000B57B0  81 84 00 04 */	lwz r12, 4(r4)
/* 800BA294 000B57B4  7D 89 03 A6 */	mtctr r12
/* 800BA298 000B57B8  4E 80 04 21 */	bctrl 
/* 800BA29C 000B57BC  48 00 00 18 */	b lbl_800BA2B4
lbl_800BA2A0:
/* 800BA2A0 000B57C0  48 00 0A 51 */	bl nandConvertErrorCode
/* 800BA2A4 000B57C4  81 9F 00 04 */	lwz r12, 4(r31)
/* 800BA2A8 000B57C8  7F E4 FB 78 */	mr r4, r31
/* 800BA2AC 000B57CC  7D 89 03 A6 */	mtctr r12
/* 800BA2B0 000B57D0  4E 80 04 21 */	bctrl 
lbl_800BA2B4:
/* 800BA2B4 000B57D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BA2B8 000B57D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BA2BC 000B57DC  7C 08 03 A6 */	mtlr r0
/* 800BA2C0 000B57E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BA2C4 000B57E4  4E 80 00 20 */	blr 

glabel NANDClose
/* 800BA2C8 000B57E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BA2CC 000B57EC  7C 08 02 A6 */	mflr r0
/* 800BA2D0 000B57F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BA2D4 000B57F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BA2D8 000B57F8  7C 7F 1B 78 */	mr r31, r3
/* 800BA2DC 000B57FC  48 00 09 FD */	bl nandIsInitialized
/* 800BA2E0 000B5800  2C 03 00 00 */	cmpwi r3, 0
/* 800BA2E4 000B5804  40 82 00 0C */	bne lbl_800BA2F0
/* 800BA2E8 000B5808  38 60 FF 80 */	li r3, -128
/* 800BA2EC 000B580C  48 00 00 34 */	b lbl_800BA320
lbl_800BA2F0:
/* 800BA2F0 000B5810  88 1F 00 8A */	lbz r0, 0x8a(r31)
/* 800BA2F4 000B5814  28 00 00 01 */	cmplwi r0, 1
/* 800BA2F8 000B5818  41 82 00 0C */	beq lbl_800BA304
/* 800BA2FC 000B581C  38 60 FF F8 */	li r3, -8
/* 800BA300 000B5820  48 00 00 20 */	b lbl_800BA320
lbl_800BA304:
/* 800BA304 000B5824  80 7F 00 00 */	lwz r3, 0(r31)
/* 800BA308 000B5828  48 00 7C 89 */	bl other_IOS_Close
/* 800BA30C 000B582C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA310 000B5830  40 82 00 0C */	bne lbl_800BA31C
/* 800BA314 000B5834  38 00 00 02 */	li r0, 2
/* 800BA318 000B5838  98 1F 00 8A */	stb r0, 0x8a(r31)
lbl_800BA31C:
/* 800BA31C 000B583C  48 00 09 D5 */	bl nandConvertErrorCode
lbl_800BA320:
/* 800BA320 000B5840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BA324 000B5844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BA328 000B5848  7C 08 03 A6 */	mtlr r0
/* 800BA32C 000B584C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BA330 000B5850  4E 80 00 20 */	blr 

glabel NANDCloseAsync
/* 800BA334 000B5854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BA338 000B5858  7C 08 02 A6 */	mflr r0
/* 800BA33C 000B585C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA340 000B5860  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BA344 000B5864  7C BF 2B 78 */	mr r31, r5
/* 800BA348 000B5868  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800BA34C 000B586C  7C 9E 23 78 */	mr r30, r4
/* 800BA350 000B5870  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800BA354 000B5874  7C 7D 1B 78 */	mr r29, r3
/* 800BA358 000B5878  48 00 09 81 */	bl nandIsInitialized
/* 800BA35C 000B587C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA360 000B5880  40 82 00 0C */	bne lbl_800BA36C
/* 800BA364 000B5884  38 60 FF 80 */	li r3, -128
/* 800BA368 000B5888  48 00 00 38 */	b lbl_800BA3A0
lbl_800BA36C:
/* 800BA36C 000B588C  88 1D 00 8A */	lbz r0, 0x8a(r29)
/* 800BA370 000B5890  28 00 00 01 */	cmplwi r0, 1
/* 800BA374 000B5894  41 82 00 0C */	beq lbl_800BA380
/* 800BA378 000B5898  38 60 FF F8 */	li r3, -8
/* 800BA37C 000B589C  48 00 00 24 */	b lbl_800BA3A0
lbl_800BA380:
/* 800BA380 000B58A0  93 DF 00 04 */	stw r30, 4(r31)
/* 800BA384 000B58A4  3C 80 80 0C */	lis r4, nandCloseCallback@ha
/* 800BA388 000B58A8  7F E5 FB 78 */	mr r5, r31
/* 800BA38C 000B58AC  93 BF 00 08 */	stw r29, 8(r31)
/* 800BA390 000B58B0  38 84 A8 74 */	addi r4, r4, nandCloseCallback@l
/* 800BA394 000B58B4  80 7D 00 00 */	lwz r3, 0(r29)
/* 800BA398 000B58B8  48 00 7B FD */	bl ISFS_CloseAsync
/* 800BA39C 000B58BC  48 00 09 55 */	bl nandConvertErrorCode
lbl_800BA3A0:
/* 800BA3A0 000B58C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BA3A4 000B58C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BA3A8 000B58C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800BA3AC 000B58CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800BA3B0 000B58D0  7C 08 03 A6 */	mtlr r0
/* 800BA3B4 000B58D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800BA3B8 000B58D8  4E 80 00 20 */	blr 

glabel NANDSafeOpen
/* 800BA3BC 000B58DC  39 00 00 00 */	li r8, 0
/* 800BA3C0 000B58E0  48 00 00 04 */	b lbl_800BA3C4
lbl_800BA3C4:
/* 800BA3C4 000B58E4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800BA3C8 000B58E8  7C 08 02 A6 */	mflr r0
/* 800BA3CC 000B58EC  90 01 00 94 */	stw r0, 0x94(r1)
/* 800BA3D0 000B58F0  39 61 00 90 */	addi r11, r1, 0x90
/* 800BA3D4 000B58F4  48 0A 25 6D */	bl _savegpr_26
/* 800BA3D8 000B58F8  7C 7C 1B 78 */	mr r28, r3
/* 800BA3DC 000B58FC  7C 9D 23 78 */	mr r29, r4
/* 800BA3E0 000B5900  7C BA 2B 78 */	mr r26, r5
/* 800BA3E4 000B5904  7C DE 33 78 */	mr r30, r6
/* 800BA3E8 000B5908  7C FF 3B 78 */	mr r31, r7
/* 800BA3EC 000B590C  7D 1B 43 78 */	mr r27, r8
/* 800BA3F0 000B5910  48 00 08 E9 */	bl nandIsInitialized
/* 800BA3F4 000B5914  2C 03 00 00 */	cmpwi r3, 0
/* 800BA3F8 000B5918  40 82 00 0C */	bne lbl_800BA404
/* 800BA3FC 000B591C  38 60 FF 80 */	li r3, -128
/* 800BA400 000B5920  48 00 02 D8 */	b lbl_800BA6D8
lbl_800BA404:
/* 800BA404 000B5924  38 00 00 00 */	li r0, 0
/* 800BA408 000B5928  9B 5D 00 88 */	stb r26, 0x88(r29)
/* 800BA40C 000B592C  7F 84 E3 78 */	mr r4, r28
/* 800BA410 000B5930  38 7D 00 08 */	addi r3, r29, 8
/* 800BA414 000B5934  98 1D 00 89 */	stb r0, 0x89(r29)
/* 800BA418 000B5938  48 00 09 A9 */	bl nandGenerateAbsPath
/* 800BA41C 000B593C  2C 1B 00 00 */	cmpwi r27, 0
/* 800BA420 000B5940  40 82 00 1C */	bne lbl_800BA43C
/* 800BA424 000B5944  38 7D 00 08 */	addi r3, r29, 8
/* 800BA428 000B5948  48 00 08 25 */	bl nandIsPrivatePath
/* 800BA42C 000B594C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA430 000B5950  41 82 00 0C */	beq lbl_800BA43C
/* 800BA434 000B5954  38 60 FF FF */	li r3, -1
/* 800BA438 000B5958  48 00 02 A0 */	b lbl_800BA6D8
lbl_800BA43C:
/* 800BA43C 000B595C  28 1A 00 01 */	cmplwi r26, 1
/* 800BA440 000B5960  40 82 00 3C */	bne lbl_800BA47C
/* 800BA444 000B5964  38 7D 00 08 */	addi r3, r29, 8
/* 800BA448 000B5968  38 80 00 01 */	li r4, 1
/* 800BA44C 000B596C  48 00 77 79 */	bl ISFS_Open
/* 800BA450 000B5970  2C 03 00 00 */	cmpwi r3, 0
/* 800BA454 000B5974  41 80 00 20 */	blt lbl_800BA474
/* 800BA458 000B5978  38 80 00 02 */	li r4, 2
/* 800BA45C 000B597C  38 00 00 03 */	li r0, 3
/* 800BA460 000B5980  90 7D 00 00 */	stw r3, 0(r29)
/* 800BA464 000B5984  38 60 00 00 */	li r3, 0
/* 800BA468 000B5988  98 9D 00 89 */	stb r4, 0x89(r29)
/* 800BA46C 000B598C  98 1D 00 8A */	stb r0, 0x8a(r29)
/* 800BA470 000B5990  48 00 02 68 */	b lbl_800BA6D8
lbl_800BA474:
/* 800BA474 000B5994  48 00 08 7D */	bl nandConvertErrorCode
/* 800BA478 000B5998  48 00 02 60 */	b lbl_800BA6D8
lbl_800BA47C:
/* 800BA47C 000B599C  38 1A 00 FE */	addi r0, r26, 0xfe
/* 800BA480 000B59A0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800BA484 000B59A4  28 00 00 01 */	cmplwi r0, 1
/* 800BA488 000B59A8  41 81 02 4C */	bgt lbl_800BA6D4
/* 800BA48C 000B59AC  38 00 00 00 */	li r0, 0
/* 800BA490 000B59B0  3C 60 80 19 */	lis r3, lbl_80196B50@ha
/* 800BA494 000B59B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 800BA498 000B59B8  38 63 6B 50 */	addi r3, r3, lbl_80196B50@l
/* 800BA49C 000B59BC  38 80 00 00 */	li r4, 0
/* 800BA4A0 000B59C0  38 A0 00 03 */	li r5, 3
/* 800BA4A4 000B59C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA4A8 000B59C8  38 C0 00 03 */	li r6, 3
/* 800BA4AC 000B59CC  38 E0 00 03 */	li r7, 3
/* 800BA4B0 000B59D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 800BA4B4 000B59D4  98 01 00 2C */	stb r0, 0x2c(r1)
/* 800BA4B8 000B59D8  48 00 6A 31 */	bl ISFS_CreateDir
/* 800BA4BC 000B59DC  2C 03 00 00 */	cmpwi r3, 0
/* 800BA4C0 000B59E0  41 82 00 14 */	beq lbl_800BA4D4
/* 800BA4C4 000B59E4  2C 03 FF 97 */	cmpwi r3, -105
/* 800BA4C8 000B59E8  41 82 00 0C */	beq lbl_800BA4D4
/* 800BA4CC 000B59EC  48 00 08 25 */	bl nandConvertErrorCode
/* 800BA4D0 000B59F0  48 00 02 08 */	b lbl_800BA6D8
lbl_800BA4D4:
/* 800BA4D4 000B59F4  38 00 00 01 */	li r0, 1
/* 800BA4D8 000B59F8  38 7D 00 08 */	addi r3, r29, 8
/* 800BA4DC 000B59FC  98 1D 00 89 */	stb r0, 0x89(r29)
/* 800BA4E0 000B5A00  38 81 00 1C */	addi r4, r1, 0x1c
/* 800BA4E4 000B5A04  38 A1 00 08 */	addi r5, r1, 8
/* 800BA4E8 000B5A08  38 C1 00 18 */	addi r6, r1, 0x18
/* 800BA4EC 000B5A0C  38 E1 00 14 */	addi r7, r1, 0x14
/* 800BA4F0 000B5A10  39 01 00 10 */	addi r8, r1, 0x10
/* 800BA4F4 000B5A14  39 21 00 0C */	addi r9, r1, 0xc
/* 800BA4F8 000B5A18  48 00 6E 75 */	bl ISFS_GetAttr
/* 800BA4FC 000B5A1C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA500 000B5A20  41 82 00 0C */	beq lbl_800BA50C
/* 800BA504 000B5A24  48 00 07 ED */	bl nandConvertErrorCode
/* 800BA508 000B5A28  48 00 01 D0 */	b lbl_800BA6D8
lbl_800BA50C:
/* 800BA50C 000B5A2C  38 7D 00 08 */	addi r3, r29, 8
/* 800BA510 000B5A30  38 80 00 01 */	li r4, 1
/* 800BA514 000B5A34  48 00 76 B1 */	bl ISFS_Open
/* 800BA518 000B5A38  2C 03 00 00 */	cmpwi r3, 0
/* 800BA51C 000B5A3C  90 7D 00 04 */	stw r3, 4(r29)
/* 800BA520 000B5A40  40 80 00 0C */	bge lbl_800BA52C
/* 800BA524 000B5A44  48 00 07 CD */	bl nandConvertErrorCode
/* 800BA528 000B5A48  48 00 01 B0 */	b lbl_800BA6D8
lbl_800BA52C:
/* 800BA52C 000B5A4C  38 00 00 02 */	li r0, 2
/* 800BA530 000B5A50  98 1D 00 89 */	stb r0, 0x89(r29)
/* 800BA534 000B5A54  4B FD AD 81 */	bl OSDisableInterrupts
/* 800BA538 000B5A58  83 6D 91 A0 */	lwz r27, lbl_80247620@sda21(r13)
/* 800BA53C 000B5A5C  38 1B 00 01 */	addi r0, r27, 1
/* 800BA540 000B5A60  90 0D 91 A0 */	stw r0, lbl_80247620@sda21(r13)
/* 800BA544 000B5A64  4B FD AD 99 */	bl OSRestoreInterrupts
/* 800BA548 000B5A68  3F 80 80 19 */	lis r28, lbl_80196B50@ha
/* 800BA54C 000B5A6C  7F 66 DB 78 */	mr r6, r27
/* 800BA550 000B5A70  38 61 00 30 */	addi r3, r1, 0x30
/* 800BA554 000B5A74  38 8D 83 A0 */	addi r4, r13, lbl_80246820@sda21
/* 800BA558 000B5A78  38 BC 6B 50 */	addi r5, r28, lbl_80196B50@l
/* 800BA55C 000B5A7C  4C C6 31 82 */	crclr 6
/* 800BA560 000B5A80  48 0A A7 51 */	bl sprintf
/* 800BA564 000B5A84  38 61 00 30 */	addi r3, r1, 0x30
/* 800BA568 000B5A88  38 80 00 00 */	li r4, 0
/* 800BA56C 000B5A8C  38 A0 00 03 */	li r5, 3
/* 800BA570 000B5A90  38 C0 00 00 */	li r6, 0
/* 800BA574 000B5A94  38 E0 00 00 */	li r7, 0
/* 800BA578 000B5A98  48 00 69 71 */	bl ISFS_CreateDir
/* 800BA57C 000B5A9C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA580 000B5AA0  41 82 00 0C */	beq lbl_800BA58C
/* 800BA584 000B5AA4  48 00 07 6D */	bl nandConvertErrorCode
/* 800BA588 000B5AA8  48 00 01 50 */	b lbl_800BA6D8
lbl_800BA58C:
/* 800BA58C 000B5AAC  38 00 00 03 */	li r0, 3
/* 800BA590 000B5AB0  38 61 00 20 */	addi r3, r1, 0x20
/* 800BA594 000B5AB4  98 1D 00 89 */	stb r0, 0x89(r29)
/* 800BA598 000B5AB8  38 9D 00 08 */	addi r4, r29, 8
/* 800BA59C 000B5ABC  48 00 04 DD */	bl nandGetRelativeName
/* 800BA5A0 000B5AC0  3C 80 80 19 */	lis r4, lbl_80196B5C@ha
/* 800BA5A4 000B5AC4  7F 66 DB 78 */	mr r6, r27
/* 800BA5A8 000B5AC8  38 7D 00 48 */	addi r3, r29, 0x48
/* 800BA5AC 000B5ACC  38 BC 6B 50 */	addi r5, r28, 0x6b50
/* 800BA5B0 000B5AD0  38 84 6B 5C */	addi r4, r4, lbl_80196B5C@l
/* 800BA5B4 000B5AD4  38 E1 00 20 */	addi r7, r1, 0x20
/* 800BA5B8 000B5AD8  4C C6 31 82 */	crclr 6
/* 800BA5BC 000B5ADC  48 0A A6 F5 */	bl sprintf
/* 800BA5C0 000B5AE0  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800BA5C4 000B5AE4  38 7D 00 48 */	addi r3, r29, 0x48
/* 800BA5C8 000B5AE8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 800BA5CC 000B5AEC  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 800BA5D0 000B5AF0  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 800BA5D4 000B5AF4  48 00 74 09 */	bl ISFS_CreateFile
/* 800BA5D8 000B5AF8  2C 03 00 00 */	cmpwi r3, 0
/* 800BA5DC 000B5AFC  41 82 00 0C */	beq lbl_800BA5E8
/* 800BA5E0 000B5B00  48 00 07 11 */	bl nandConvertErrorCode
/* 800BA5E4 000B5B04  48 00 00 F4 */	b lbl_800BA6D8
lbl_800BA5E8:
/* 800BA5E8 000B5B08  38 00 00 04 */	li r0, 4
/* 800BA5EC 000B5B0C  28 1A 00 02 */	cmplwi r26, 2
/* 800BA5F0 000B5B10  98 1D 00 89 */	stb r0, 0x89(r29)
/* 800BA5F4 000B5B14  40 82 00 18 */	bne lbl_800BA60C
/* 800BA5F8 000B5B18  38 7D 00 48 */	addi r3, r29, 0x48
/* 800BA5FC 000B5B1C  38 80 00 02 */	li r4, 2
/* 800BA600 000B5B20  48 00 75 C5 */	bl ISFS_Open
/* 800BA604 000B5B24  90 7D 00 00 */	stw r3, 0(r29)
/* 800BA608 000B5B28  48 00 00 1C */	b lbl_800BA624
lbl_800BA60C:
/* 800BA60C 000B5B2C  28 1A 00 03 */	cmplwi r26, 3
/* 800BA610 000B5B30  40 82 00 14 */	bne lbl_800BA624
/* 800BA614 000B5B34  38 7D 00 48 */	addi r3, r29, 0x48
/* 800BA618 000B5B38  38 80 00 03 */	li r4, 3
/* 800BA61C 000B5B3C  48 00 75 A9 */	bl ISFS_Open
/* 800BA620 000B5B40  90 7D 00 00 */	stw r3, 0(r29)
lbl_800BA624:
/* 800BA624 000B5B44  80 7D 00 00 */	lwz r3, 0(r29)
/* 800BA628 000B5B48  2C 03 00 00 */	cmpwi r3, 0
/* 800BA62C 000B5B4C  40 80 00 0C */	bge lbl_800BA638
/* 800BA630 000B5B50  48 00 06 C1 */	bl nandConvertErrorCode
/* 800BA634 000B5B54  48 00 00 A4 */	b lbl_800BA6D8
lbl_800BA638:
/* 800BA638 000B5B58  38 00 00 05 */	li r0, 5
/* 800BA63C 000B5B5C  83 9D 00 04 */	lwz r28, 4(r29)
/* 800BA640 000B5B60  98 1D 00 89 */	stb r0, 0x89(r29)
/* 800BA644 000B5B64  7C 7B 1B 78 */	mr r27, r3
lbl_800BA648:
/* 800BA648 000B5B68  7F 83 E3 78 */	mr r3, r28
/* 800BA64C 000B5B6C  7F C4 F3 78 */	mr r4, r30
/* 800BA650 000B5B70  7F E5 FB 78 */	mr r5, r31
/* 800BA654 000B5B74  48 00 77 B5 */	bl IOS_Read
/* 800BA658 000B5B78  2C 03 00 00 */	cmpwi r3, 0
/* 800BA65C 000B5B7C  7C 65 1B 78 */	mr r5, r3
/* 800BA660 000B5B80  40 82 00 0C */	bne lbl_800BA66C
/* 800BA664 000B5B84  38 A0 00 00 */	li r5, 0
/* 800BA668 000B5B88  48 00 00 24 */	b lbl_800BA68C
lbl_800BA66C:
/* 800BA66C 000B5B8C  40 80 00 08 */	bge lbl_800BA674
/* 800BA670 000B5B90  48 00 00 1C */	b lbl_800BA68C
lbl_800BA674:
/* 800BA674 000B5B94  7F 63 DB 78 */	mr r3, r27
/* 800BA678 000B5B98  7F C4 F3 78 */	mr r4, r30
/* 800BA67C 000B5B9C  48 00 78 51 */	bl IOS_Write
/* 800BA680 000B5BA0  2C 03 00 00 */	cmpwi r3, 0
/* 800BA684 000B5BA4  40 80 FF C4 */	bge lbl_800BA648
/* 800BA688 000B5BA8  7C 65 1B 78 */	mr r5, r3
lbl_800BA68C:
/* 800BA68C 000B5BAC  2C 05 00 00 */	cmpwi r5, 0
/* 800BA690 000B5BB0  41 82 00 10 */	beq lbl_800BA6A0
/* 800BA694 000B5BB4  7C A3 2B 78 */	mr r3, r5
/* 800BA698 000B5BB8  48 00 06 59 */	bl nandConvertErrorCode
/* 800BA69C 000B5BBC  48 00 00 3C */	b lbl_800BA6D8
lbl_800BA6A0:
/* 800BA6A0 000B5BC0  80 7D 00 00 */	lwz r3, 0(r29)
/* 800BA6A4 000B5BC4  38 80 00 00 */	li r4, 0
/* 800BA6A8 000B5BC8  38 A0 00 00 */	li r5, 0
/* 800BA6AC 000B5BCC  48 00 76 CD */	bl IOS_Seek
/* 800BA6B0 000B5BD0  2C 03 00 00 */	cmpwi r3, 0
/* 800BA6B4 000B5BD4  41 82 00 0C */	beq lbl_800BA6C0
/* 800BA6B8 000B5BD8  48 00 06 39 */	bl nandConvertErrorCode
/* 800BA6BC 000B5BDC  48 00 00 1C */	b lbl_800BA6D8
lbl_800BA6C0:
/* 800BA6C0 000B5BE0  38 00 00 03 */	li r0, 3
/* 800BA6C4 000B5BE4  38 60 00 00 */	li r3, 0
/* 800BA6C8 000B5BE8  98 1D 00 8A */	stb r0, 0x8a(r29)
/* 800BA6CC 000B5BEC  48 00 06 25 */	bl nandConvertErrorCode
/* 800BA6D0 000B5BF0  48 00 00 08 */	b lbl_800BA6D8
lbl_800BA6D4:
/* 800BA6D4 000B5BF4  38 60 FF F8 */	li r3, -8
lbl_800BA6D8:
/* 800BA6D8 000B5BF8  39 61 00 90 */	addi r11, r1, 0x90
/* 800BA6DC 000B5BFC  48 0A 22 B1 */	bl _restgpr_26
/* 800BA6E0 000B5C00  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800BA6E4 000B5C04  7C 08 03 A6 */	mtlr r0
/* 800BA6E8 000B5C08  38 21 00 90 */	addi r1, r1, 0x90
/* 800BA6EC 000B5C0C  4E 80 00 20 */	blr 

glabel NANDSafeClose
/* 800BA6F0 000B5C10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800BA6F4 000B5C14  7C 08 02 A6 */	mflr r0
/* 800BA6F8 000B5C18  90 01 00 54 */	stw r0, 0x54(r1)
/* 800BA6FC 000B5C1C  38 00 00 00 */	li r0, 0
/* 800BA700 000B5C20  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800BA704 000B5C24  7C 7F 1B 78 */	mr r31, r3
/* 800BA708 000B5C28  90 01 00 08 */	stw r0, 8(r1)
/* 800BA70C 000B5C2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BA710 000B5C30  90 01 00 10 */	stw r0, 0x10(r1)
/* 800BA714 000B5C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BA718 000B5C38  90 01 00 18 */	stw r0, 0x18(r1)
/* 800BA71C 000B5C3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800BA720 000B5C40  90 01 00 20 */	stw r0, 0x20(r1)
/* 800BA724 000B5C44  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA728 000B5C48  90 01 00 28 */	stw r0, 0x28(r1)
/* 800BA72C 000B5C4C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800BA730 000B5C50  90 01 00 30 */	stw r0, 0x30(r1)
/* 800BA734 000B5C54  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BA738 000B5C58  90 01 00 38 */	stw r0, 0x38(r1)
/* 800BA73C 000B5C5C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800BA740 000B5C60  90 01 00 40 */	stw r0, 0x40(r1)
/* 800BA744 000B5C64  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BA748 000B5C68  48 00 05 91 */	bl nandIsInitialized
/* 800BA74C 000B5C6C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA750 000B5C70  40 82 00 0C */	bne lbl_800BA75C
/* 800BA754 000B5C74  38 60 FF 80 */	li r3, -128
/* 800BA758 000B5C78  48 00 01 08 */	b lbl_800BA860
lbl_800BA75C:
/* 800BA75C 000B5C7C  88 1F 00 8A */	lbz r0, 0x8a(r31)
/* 800BA760 000B5C80  28 00 00 03 */	cmplwi r0, 3
/* 800BA764 000B5C84  41 82 00 0C */	beq lbl_800BA770
/* 800BA768 000B5C88  38 60 FF F8 */	li r3, -8
/* 800BA76C 000B5C8C  48 00 00 F4 */	b lbl_800BA860
lbl_800BA770:
/* 800BA770 000B5C90  88 7F 00 88 */	lbz r3, 0x88(r31)
/* 800BA774 000B5C94  28 03 00 01 */	cmplwi r3, 1
/* 800BA778 000B5C98  40 82 00 2C */	bne lbl_800BA7A4
/* 800BA77C 000B5C9C  80 7F 00 00 */	lwz r3, 0(r31)
/* 800BA780 000B5CA0  48 00 78 11 */	bl other_IOS_Close
/* 800BA784 000B5CA4  2C 03 00 00 */	cmpwi r3, 0
/* 800BA788 000B5CA8  40 82 00 14 */	bne lbl_800BA79C
/* 800BA78C 000B5CAC  38 80 00 07 */	li r4, 7
/* 800BA790 000B5CB0  38 00 00 04 */	li r0, 4
/* 800BA794 000B5CB4  98 9F 00 89 */	stb r4, 0x89(r31)
/* 800BA798 000B5CB8  98 1F 00 8A */	stb r0, 0x8a(r31)
lbl_800BA79C:
/* 800BA79C 000B5CBC  48 00 05 55 */	bl nandConvertErrorCode
/* 800BA7A0 000B5CC0  48 00 00 C0 */	b lbl_800BA860
lbl_800BA7A4:
/* 800BA7A4 000B5CC4  38 03 00 FE */	addi r0, r3, 0xfe
/* 800BA7A8 000B5CC8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800BA7AC 000B5CCC  28 00 00 01 */	cmplwi r0, 1
/* 800BA7B0 000B5CD0  41 81 00 9C */	bgt lbl_800BA84C
/* 800BA7B4 000B5CD4  80 7F 00 00 */	lwz r3, 0(r31)
/* 800BA7B8 000B5CD8  48 00 77 D9 */	bl other_IOS_Close
/* 800BA7BC 000B5CDC  2C 03 00 00 */	cmpwi r3, 0
/* 800BA7C0 000B5CE0  41 82 00 0C */	beq lbl_800BA7CC
/* 800BA7C4 000B5CE4  48 00 05 2D */	bl nandConvertErrorCode
/* 800BA7C8 000B5CE8  48 00 00 98 */	b lbl_800BA860
lbl_800BA7CC:
/* 800BA7CC 000B5CEC  38 00 00 06 */	li r0, 6
/* 800BA7D0 000B5CF0  80 7F 00 04 */	lwz r3, 4(r31)
/* 800BA7D4 000B5CF4  98 1F 00 89 */	stb r0, 0x89(r31)
/* 800BA7D8 000B5CF8  48 00 77 B9 */	bl other_IOS_Close
/* 800BA7DC 000B5CFC  2C 03 00 00 */	cmpwi r3, 0
/* 800BA7E0 000B5D00  41 82 00 0C */	beq lbl_800BA7EC
/* 800BA7E4 000B5D04  48 00 05 0D */	bl nandConvertErrorCode
/* 800BA7E8 000B5D08  48 00 00 78 */	b lbl_800BA860
lbl_800BA7EC:
/* 800BA7EC 000B5D0C  38 00 00 07 */	li r0, 7
/* 800BA7F0 000B5D10  38 7F 00 48 */	addi r3, r31, 0x48
/* 800BA7F4 000B5D14  98 1F 00 89 */	stb r0, 0x89(r31)
/* 800BA7F8 000B5D18  38 9F 00 08 */	addi r4, r31, 8
/* 800BA7FC 000B5D1C  48 00 6F A5 */	bl ISFS_Rename
/* 800BA800 000B5D20  2C 03 00 00 */	cmpwi r3, 0
/* 800BA804 000B5D24  41 82 00 0C */	beq lbl_800BA810
/* 800BA808 000B5D28  48 00 04 E9 */	bl nandConvertErrorCode
/* 800BA80C 000B5D2C  48 00 00 54 */	b lbl_800BA860
lbl_800BA810:
/* 800BA810 000B5D30  38 00 00 08 */	li r0, 8
/* 800BA814 000B5D34  38 61 00 08 */	addi r3, r1, 8
/* 800BA818 000B5D38  98 1F 00 89 */	stb r0, 0x89(r31)
/* 800BA81C 000B5D3C  38 9F 00 48 */	addi r4, r31, 0x48
/* 800BA820 000B5D40  48 00 06 69 */	bl nandGetParentDirectory
/* 800BA824 000B5D44  38 61 00 08 */	addi r3, r1, 8
/* 800BA828 000B5D48  48 00 6D D1 */	bl ISFS_Delete
/* 800BA82C 000B5D4C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA830 000B5D50  40 82 00 14 */	bne lbl_800BA844
/* 800BA834 000B5D54  38 80 00 09 */	li r4, 9
/* 800BA838 000B5D58  38 00 00 04 */	li r0, 4
/* 800BA83C 000B5D5C  98 9F 00 89 */	stb r4, 0x89(r31)
/* 800BA840 000B5D60  98 1F 00 8A */	stb r0, 0x8a(r31)
lbl_800BA844:
/* 800BA844 000B5D64  48 00 04 AD */	bl nandConvertErrorCode
/* 800BA848 000B5D68  48 00 00 18 */	b lbl_800BA860
lbl_800BA84C:
/* 800BA84C 000B5D6C  3C 60 80 19 */	lis r3, lbl_80196B68@ha
/* 800BA850 000B5D70  38 63 6B 68 */	addi r3, r3, lbl_80196B68@l
/* 800BA854 000B5D74  4C C6 31 82 */	crclr 6
/* 800BA858 000B5D78  4B FD 70 55 */	bl OSReport
/* 800BA85C 000B5D7C  38 60 FF 80 */	li r3, -128
lbl_800BA860:
/* 800BA860 000B5D80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800BA864 000B5D84  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800BA868 000B5D88  7C 08 03 A6 */	mtlr r0
/* 800BA86C 000B5D8C  38 21 00 50 */	addi r1, r1, 0x50
/* 800BA870 000B5D90  4E 80 00 20 */	blr 

glabel nandCloseCallback
/* 800BA874 000B5D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BA878 000B5D98  7C 08 02 A6 */	mflr r0
/* 800BA87C 000B5D9C  2C 03 00 00 */	cmpwi r3, 0
/* 800BA880 000B5DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BA884 000B5DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BA888 000B5DA8  7C 9F 23 78 */	mr r31, r4
/* 800BA88C 000B5DAC  40 82 00 1C */	bne lbl_800BA8A8
/* 800BA890 000B5DB0  80 A4 00 08 */	lwz r5, 8(r4)
/* 800BA894 000B5DB4  38 C0 00 07 */	li r6, 7
/* 800BA898 000B5DB8  38 00 00 02 */	li r0, 2
/* 800BA89C 000B5DBC  98 C5 00 89 */	stb r6, 0x89(r5)
/* 800BA8A0 000B5DC0  80 84 00 08 */	lwz r4, 8(r4)
/* 800BA8A4 000B5DC4  98 04 00 8A */	stb r0, 0x8a(r4)
lbl_800BA8A8:
/* 800BA8A8 000B5DC8  48 00 04 49 */	bl nandConvertErrorCode
/* 800BA8AC 000B5DCC  81 9F 00 04 */	lwz r12, 4(r31)
/* 800BA8B0 000B5DD0  7F E4 FB 78 */	mr r4, r31
/* 800BA8B4 000B5DD4  7D 89 03 A6 */	mtctr r12
/* 800BA8B8 000B5DD8  4E 80 04 21 */	bctrl 
/* 800BA8BC 000B5DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BA8C0 000B5DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BA8C4 000B5DE4  7C 08 03 A6 */	mtlr r0
/* 800BA8C8 000B5DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BA8CC 000B5DEC  4E 80 00 20 */	blr 