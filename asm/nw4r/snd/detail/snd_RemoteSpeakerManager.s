.include "macros.inc"

.section .text, "ax"

glabel GetInstance__Q46nw4hbm3snd6detail20RemoteSpeakerManagerFv
/* 80132F18 0012E438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80132F1C 0012E43C  7C 08 02 A6 */	mflr r0
/* 80132F20 0012E440  3C 60 80 24 */	lis r3, lbl_80238DD8@ha
/* 80132F24 0012E444  90 01 00 24 */	stw r0, 0x24(r1)
/* 80132F28 0012E448  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80132F2C 0012E44C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80132F30 0012E450  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80132F34 0012E454  88 03 8D D8 */	lbz r0, lbl_80238DD8@l(r3)
/* 80132F38 0012E458  7C 00 07 75 */	extsb. r0, r0
/* 80132F3C 0012E45C  40 82 00 58 */	bne .L_80132F94
/* 80132F40 0012E460  3C 60 80 24 */	lis r3, lbl_80238DE0@ha
/* 80132F44 0012E464  38 00 00 00 */	li r0, 0
/* 80132F48 0012E468  3B C3 8D E0 */	addi r30, r3, lbl_80238DE0@l
/* 80132F4C 0012E46C  98 03 8D E0 */	stb r0, -0x7220(r3)
/* 80132F50 0012E470  3B BE 00 38 */	addi r29, r30, 0x38
/* 80132F54 0012E474  3B FE 02 B8 */	addi r31, r30, 0x2b8
.L_80132F58:
/* 80132F58 0012E478  7F A3 EB 78 */	mr r3, r29
/* 80132F5C 0012E47C  4B FF FA AD */	bl __ct__Q36nw4hbm3snd13RemoteSpeakerFv
/* 80132F60 0012E480  3B BD 00 A0 */	addi r29, r29, 0xa0
/* 80132F64 0012E484  7C 1D F8 40 */	cmplw r29, r31
/* 80132F68 0012E488  41 80 FF F0 */	blt .L_80132F58
/* 80132F6C 0012E48C  38 C0 00 00 */	li r6, 0
/* 80132F70 0012E490  38 A0 00 01 */	li r5, 1
/* 80132F74 0012E494  38 80 00 02 */	li r4, 2
/* 80132F78 0012E498  38 00 00 03 */	li r0, 3
/* 80132F7C 0012E49C  3C 60 80 24 */	lis r3, lbl_80238DD8@ha
/* 80132F80 0012E4A0  90 DE 00 64 */	stw r6, 0x64(r30)
/* 80132F84 0012E4A4  90 BE 01 04 */	stw r5, 0x104(r30)
/* 80132F88 0012E4A8  90 9E 01 A4 */	stw r4, 0x1a4(r30)
/* 80132F8C 0012E4AC  90 1E 02 44 */	stw r0, 0x244(r30)
/* 80132F90 0012E4B0  98 A3 8D D8 */	stb r5, lbl_80238DD8@l(r3)
.L_80132F94:
/* 80132F94 0012E4B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80132F98 0012E4B8  3C 60 80 24 */	lis r3, lbl_80238DE0@ha
/* 80132F9C 0012E4BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80132FA0 0012E4C0  38 63 8D E0 */	addi r3, r3, lbl_80238DE0@l
/* 80132FA4 0012E4C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80132FA8 0012E4C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80132FAC 0012E4CC  7C 08 03 A6 */	mtlr r0
/* 80132FB0 0012E4D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80132FB4 0012E4D4  4E 80 00 20 */	blr 

glabel Setup__Q46nw4hbm3snd6detail20RemoteSpeakerManagerFv
/* 80132FB8 0012E4D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80132FBC 0012E4DC  7C 08 02 A6 */	mflr r0
/* 80132FC0 0012E4E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80132FC4 0012E4E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80132FC8 0012E4E8  7C 7F 1B 78 */	mr r31, r3
/* 80132FCC 0012E4EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80132FD0 0012E4F0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80132FD4 0012E4F4  88 03 00 00 */	lbz r0, 0(r3)
/* 80132FD8 0012E4F8  2C 00 00 00 */	cmpwi r0, 0
/* 80132FDC 0012E4FC  40 82 00 8C */	bne .L_80133068
/* 80132FE0 0012E500  3B C3 00 38 */	addi r30, r3, 0x38
/* 80132FE4 0012E504  3B A0 00 00 */	li r29, 0
.L_80132FE8:
/* 80132FE8 0012E508  7F C3 F3 78 */	mr r3, r30
/* 80132FEC 0012E50C  4B FF FA 95 */	bl InitParam__Q36nw4hbm3snd13RemoteSpeakerFv
/* 80132FF0 0012E510  3B BD 00 01 */	addi r29, r29, 1
/* 80132FF4 0012E514  3B DE 00 A0 */	addi r30, r30, 0xa0
/* 80132FF8 0012E518  2C 1D 00 04 */	cmpwi r29, 4
/* 80132FFC 0012E51C  41 80 FF EC */	blt .L_80132FE8
/* 80133000 0012E520  38 7F 00 08 */	addi r3, r31, 8
/* 80133004 0012E524  4B F5 CE 71 */	bl OSCreateAlarm
/* 80133008 0012E528  4B F6 5D C1 */	bl OSGetTime
/* 8013300C 0012E52C  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 80133010 0012E530  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 80133014 0012E534  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 80133018 0012E538  3C C0 10 62 */	lis r6, 0x10624DD3@ha
/* 8013301C 0012E53C  39 46 4D D3 */	addi r10, r6, 0x10624DD3@l
/* 80133020 0012E540  3D 20 80 13 */	lis r9, RemoteSpeakerAlarmProc__Q46nw4hbm3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext@ha
/* 80133024 0012E544  54 00 F0 BE */	srwi r0, r0, 2
/* 80133028 0012E548  38 A5 DE 83 */	addi r5, r5, 0x431BDE83@l
/* 8013302C 0012E54C  7D 05 00 16 */	mulhwu r8, r5, r0
/* 80133030 0012E550  3C E0 00 66 */	lis r7, 0x0065B9AB@ha
/* 80133034 0012E554  7C 86 23 78 */	mr r6, r4
/* 80133038 0012E558  38 07 B9 AB */	addi r0, r7, 0x0065B9AB@l
/* 8013303C 0012E55C  7C 65 1B 78 */	mr r5, r3
/* 80133040 0012E560  38 7F 00 08 */	addi r3, r31, 8
/* 80133044 0012E564  55 04 8B FE */	srwi r4, r8, 0xf
/* 80133048 0012E568  39 29 30 C8 */	addi r9, r9, RemoteSpeakerAlarmProc__Q46nw4hbm3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext@l
/* 8013304C 0012E56C  7C 04 01 D6 */	mullw r0, r4, r0
/* 80133050 0012E570  38 E0 00 00 */	li r7, 0
/* 80133054 0012E574  7C 0A 00 16 */	mulhwu r0, r10, r0
/* 80133058 0012E578  54 08 BA 7E */	srwi r8, r0, 9
/* 8013305C 0012E57C  4B F5 D0 E9 */	bl OSSetPeriodicAlarm
/* 80133060 0012E580  38 00 00 01 */	li r0, 1
/* 80133064 0012E584  98 1F 00 00 */	stb r0, 0(r31)
.L_80133068:
/* 80133068 0012E588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013306C 0012E58C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80133070 0012E590  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80133074 0012E594  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80133078 0012E598  7C 08 03 A6 */	mtlr r0
/* 8013307C 0012E59C  38 21 00 20 */	addi r1, r1, 0x20
/* 80133080 0012E5A0  4E 80 00 20 */	blr 

glabel Shutdown__Q46nw4hbm3snd6detail20RemoteSpeakerManagerFv
/* 80133084 0012E5A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80133088 0012E5A8  7C 08 02 A6 */	mflr r0
/* 8013308C 0012E5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80133090 0012E5B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80133094 0012E5B4  7C 7F 1B 78 */	mr r31, r3
/* 80133098 0012E5B8  88 03 00 00 */	lbz r0, 0(r3)
/* 8013309C 0012E5BC  2C 00 00 00 */	cmpwi r0, 0
/* 801330A0 0012E5C0  41 82 00 14 */	beq .L_801330B4
/* 801330A4 0012E5C4  38 63 00 08 */	addi r3, r3, 8
/* 801330A8 0012E5C8  4B F5 D1 21 */	bl OSCancelAlarm
/* 801330AC 0012E5CC  38 00 00 00 */	li r0, 0
/* 801330B0 0012E5D0  98 1F 00 00 */	stb r0, 0(r31)
.L_801330B4:
/* 801330B4 0012E5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801330B8 0012E5D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801330BC 0012E5DC  7C 08 03 A6 */	mtlr r0
/* 801330C0 0012E5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801330C4 0012E5E4  4E 80 00 20 */	blr 

glabel RemoteSpeakerAlarmProc__Q46nw4hbm3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext
/* 801330C8 0012E5E8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801330CC 0012E5EC  7C 08 02 A6 */	mflr r0
/* 801330D0 0012E5F0  90 01 00 74 */	stw r0, 0x74(r1)
/* 801330D4 0012E5F4  39 61 00 70 */	addi r11, r1, 0x70
/* 801330D8 0012E5F8  48 02 98 6D */	bl _savegpr_27
/* 801330DC 0012E5FC  3C 80 80 24 */	lis r4, lbl_80238DD8@ha
/* 801330E0 0012E600  3F A0 80 1A */	lis r29, lbl_801A6E48@ha
/* 801330E4 0012E604  88 04 8D D8 */	lbz r0, lbl_80238DD8@l(r4)
/* 801330E8 0012E608  7C 7B 1B 78 */	mr r27, r3
/* 801330EC 0012E60C  3B BD 6E 48 */	addi r29, r29, lbl_801A6E48@l
/* 801330F0 0012E610  7C 00 07 75 */	extsb. r0, r0
/* 801330F4 0012E614  40 82 00 58 */	bne .L_8013314C
/* 801330F8 0012E618  3C 60 80 24 */	lis r3, lbl_80238DE0@ha
/* 801330FC 0012E61C  38 00 00 00 */	li r0, 0
/* 80133100 0012E620  3B C3 8D E0 */	addi r30, r3, lbl_80238DE0@l
/* 80133104 0012E624  98 03 8D E0 */	stb r0, -0x7220(r3)
/* 80133108 0012E628  3B 9E 00 38 */	addi r28, r30, 0x38
/* 8013310C 0012E62C  3B FE 02 B8 */	addi r31, r30, 0x2b8
.L_80133110:
/* 80133110 0012E630  7F 83 E3 78 */	mr r3, r28
/* 80133114 0012E634  4B FF F8 F5 */	bl __ct__Q36nw4hbm3snd13RemoteSpeakerFv
/* 80133118 0012E638  3B 9C 00 A0 */	addi r28, r28, 0xa0
/* 8013311C 0012E63C  7C 1C F8 40 */	cmplw r28, r31
/* 80133120 0012E640  41 80 FF F0 */	blt .L_80133110
/* 80133124 0012E644  38 C0 00 00 */	li r6, 0
/* 80133128 0012E648  38 A0 00 01 */	li r5, 1
/* 8013312C 0012E64C  38 80 00 02 */	li r4, 2
/* 80133130 0012E650  38 00 00 03 */	li r0, 3
/* 80133134 0012E654  3C 60 80 24 */	lis r3, lbl_80238DD8@ha
/* 80133138 0012E658  90 DE 00 64 */	stw r6, 0x64(r30)
/* 8013313C 0012E65C  90 BE 01 04 */	stw r5, 0x104(r30)
/* 80133140 0012E660  90 9E 01 A4 */	stw r4, 0x1a4(r30)
/* 80133144 0012E664  90 1E 02 44 */	stw r0, 0x244(r30)
/* 80133148 0012E668  98 A3 8D D8 */	stb r5, lbl_80238DD8@l(r3)
.L_8013314C:
/* 8013314C 0012E66C  3F C0 80 24 */	lis r30, lbl_80238DE0@ha
/* 80133150 0012E670  3B DE 8D E0 */	addi r30, r30, lbl_80238DE0@l
/* 80133154 0012E674  38 1E 00 08 */	addi r0, r30, 8
/* 80133158 0012E678  7C 00 D8 40 */	cmplw r0, r27
/* 8013315C 0012E67C  41 82 00 18 */	beq .L_80133174
/* 80133160 0012E680  38 7D 00 00 */	addi r3, r29, 0
/* 80133164 0012E684  38 BD 00 6C */	addi r5, r29, 0x6c
/* 80133168 0012E688  38 80 00 8D */	li r4, 0x8d
/* 8013316C 0012E68C  4C C6 31 82 */	crclr 6
/* 80133170 0012E690  4B FE 2C 51 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80133174:
/* 80133174 0012E694  4B F8 11 25 */	bl AXRmtGetSamplesLeft
/* 80133178 0012E698  2C 03 00 28 */	cmpwi r3, 0x28
/* 8013317C 0012E69C  41 80 00 6C */	blt .L_801331E8
/* 80133180 0012E6A0  3B 9E 00 38 */	addi r28, r30, 0x38
/* 80133184 0012E6A4  3B E0 00 00 */	li r31, 0
.L_80133188:
/* 80133188 0012E6A8  88 1E 00 39 */	lbz r0, 0x39(r30)
/* 8013318C 0012E6AC  2C 00 00 00 */	cmpwi r0, 0
/* 80133190 0012E6B0  41 82 00 3C */	beq .L_801331CC
/* 80133194 0012E6B4  7F E3 FB 78 */	mr r3, r31
/* 80133198 0012E6B8  38 81 00 08 */	addi r4, r1, 8
/* 8013319C 0012E6BC  38 A0 00 28 */	li r5, 0x28
/* 801331A0 0012E6C0  4B F8 11 25 */	bl AXRmtGetSamples
/* 801331A4 0012E6C4  2C 03 00 28 */	cmpwi r3, 0x28
/* 801331A8 0012E6C8  41 82 00 18 */	beq .L_801331C0
/* 801331AC 0012E6CC  38 7D 00 00 */	addi r3, r29, 0
/* 801331B0 0012E6D0  38 BD 00 AC */	addi r5, r29, 0xac
/* 801331B4 0012E6D4  38 80 00 9D */	li r4, 0x9d
/* 801331B8 0012E6D8  4C C6 31 82 */	crclr 6
/* 801331BC 0012E6DC  4B FE 2C 91 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
.L_801331C0:
/* 801331C0 0012E6E0  7F 83 E3 78 */	mr r3, r28
/* 801331C4 0012E6E4  38 81 00 08 */	addi r4, r1, 8
/* 801331C8 0012E6E8  4B FF F9 39 */	bl Update__Q36nw4hbm3snd13RemoteSpeakerFPCs
.L_801331CC:
/* 801331CC 0012E6EC  3B FF 00 01 */	addi r31, r31, 1
/* 801331D0 0012E6F0  3B 9C 00 A0 */	addi r28, r28, 0xa0
/* 801331D4 0012E6F4  2C 1F 00 04 */	cmpwi r31, 4
/* 801331D8 0012E6F8  3B DE 00 A0 */	addi r30, r30, 0xa0
/* 801331DC 0012E6FC  41 80 FF AC */	blt .L_80133188
/* 801331E0 0012E700  38 60 00 28 */	li r3, 0x28
/* 801331E4 0012E704  4B F8 11 A5 */	bl AXRmtAdvancePtr
.L_801331E8:
/* 801331E8 0012E708  39 61 00 70 */	addi r11, r1, 0x70
/* 801331EC 0012E70C  48 02 97 A5 */	bl _restgpr_27
/* 801331F0 0012E710  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801331F4 0012E714  7C 08 03 A6 */	mtlr r0
/* 801331F8 0012E718  38 21 00 70 */	addi r1, r1, 0x70
/* 801331FC 0012E71C  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80238DD8
	.skip 0x8

glabel lbl_80238DE0
	.skip 0x2B8
