.include "macros.inc"

.section .text, "ax"

glabel __ct__Q46nw4hbm3snd6detail9StrmSoundFPQ46nw4hbm3snd6detail52SoundInstanceManager__Q46nw4hbm3snd6detail9StrmSound__
/* 8014201C 0013D53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80142020 0013D540  7C 08 02 A6 */	mflr r0
/* 80142024 0013D544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80142028 0013D548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014202C 0013D54C  7C 9F 23 78 */	mr r31, r4
/* 80142030 0013D550  93 C1 00 08 */	stw r30, 8(r1)
/* 80142034 0013D554  7C 7E 1B 78 */	mr r30, r3
/* 80142038 0013D558  4B FE A8 CD */	bl __ct__Q46nw4hbm3snd6detail10BasicSoundFv
/* 8014203C 0013D55C  3C 80 80 1B */	lis r4, lbl_801AA348@ha
/* 80142040 0013D560  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 80142044 0013D564  38 84 A3 48 */	addi r4, r4, lbl_801AA348@l
/* 80142048 0013D568  90 9E 00 00 */	stw r4, 0(r30)
/* 8014204C 0013D56C  4B FF D7 F1 */	bl __ct__Q46nw4hbm3snd6detail10StrmPlayerFv
/* 80142050 0013D570  38 00 00 00 */	li r0, 0
/* 80142054 0013D574  93 FE 05 F8 */	stw r31, 0x5f8(r30)
/* 80142058 0013D578  7F C3 F3 78 */	mr r3, r30
/* 8014205C 0013D57C  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80142060 0013D580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80142064 0013D584  83 C1 00 08 */	lwz r30, 8(r1)
/* 80142068 0013D588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014206C 0013D58C  7C 08 03 A6 */	mtlr r0
/* 80142070 0013D590  38 21 00 10 */	addi r1, r1, 0x10
/* 80142074 0013D594  4E 80 00 20 */	blr 

glabel Prepare__Q46nw4hbm3snd6detail9StrmSoundFPQ46nw4hbm3snd6detail14StrmBufferPoolQ56nw4hbm3snd6detail10StrmPlayer15StartOffsetTypeliPQ56nw4hbm3snd6detail10StrmPlayer12StrmCallbackUl
/* 80142078 0013D598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014207C 0013D59C  7C 08 02 A6 */	mflr r0
/* 80142080 0013D5A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80142084 0013D5A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80142088 0013D5A8  48 01 A8 B1 */	bl _savegpr_24
/* 8014208C 0013D5AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80142090 0013D5B0  3F E0 80 1B */	lis r31, lbl_801AA2D0@ha
/* 80142094 0013D5B4  7C 78 1B 78 */	mr r24, r3
/* 80142098 0013D5B8  7C 99 23 78 */	mr r25, r4
/* 8014209C 0013D5BC  2C 00 00 00 */	cmpwi r0, 0
/* 801420A0 0013D5C0  7C BA 2B 78 */	mr r26, r5
/* 801420A4 0013D5C4  7C DB 33 78 */	mr r27, r6
/* 801420A8 0013D5C8  7C FC 3B 78 */	mr r28, r7
/* 801420AC 0013D5CC  7D 1D 43 78 */	mr r29, r8
/* 801420B0 0013D5D0  7D 3E 4B 78 */	mr r30, r9
/* 801420B4 0013D5D4  3B FF A2 D0 */	addi r31, r31, lbl_801AA2D0@l
/* 801420B8 0013D5D8  40 82 00 18 */	bne .L_801420D0
/* 801420BC 0013D5DC  38 7F 00 00 */	addi r3, r31, 0
/* 801420C0 0013D5E0  38 BF 00 14 */	addi r5, r31, 0x14
/* 801420C4 0013D5E4  38 80 00 42 */	li r4, 0x42
/* 801420C8 0013D5E8  4C C6 31 82 */	crclr 6
/* 801420CC 0013D5EC  4B FD 3C F5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801420D0:
/* 801420D0 0013D5F0  2C 19 00 00 */	cmpwi r25, 0
/* 801420D4 0013D5F4  40 82 00 18 */	bne .L_801420EC
/* 801420D8 0013D5F8  38 7F 00 00 */	addi r3, r31, 0
/* 801420DC 0013D5FC  38 BF 00 48 */	addi r5, r31, 0x48
/* 801420E0 0013D600  38 80 00 43 */	li r4, 0x43
/* 801420E4 0013D604  4C C6 31 82 */	crclr 6
/* 801420E8 0013D608  4B FD 3C D9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801420EC:
/* 801420EC 0013D60C  2C 19 00 00 */	cmpwi r25, 0
/* 801420F0 0013D610  40 82 00 0C */	bne .L_801420FC
/* 801420F4 0013D614  38 60 00 00 */	li r3, 0
/* 801420F8 0013D618  48 00 00 38 */	b .L_80142130
.L_801420FC:
/* 801420FC 0013D61C  81 98 00 00 */	lwz r12, 0(r24)
/* 80142100 0013D620  7F 03 C3 78 */	mr r3, r24
/* 80142104 0013D624  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80142108 0013D628  7D 89 03 A6 */	mtctr r12
/* 8014210C 0013D62C  4E 80 04 21 */	bctrl 
/* 80142110 0013D630  7F 24 CB 78 */	mr r4, r25
/* 80142114 0013D634  7F 45 D3 78 */	mr r5, r26
/* 80142118 0013D638  7F 66 DB 78 */	mr r6, r27
/* 8014211C 0013D63C  7F 87 E3 78 */	mr r7, r28
/* 80142120 0013D640  7F A8 EB 78 */	mr r8, r29
/* 80142124 0013D644  7F C9 F3 78 */	mr r9, r30
/* 80142128 0013D648  38 78 00 D8 */	addi r3, r24, 0xd8
/* 8014212C 0013D64C  4B FF D8 75 */	bl Prepare__Q46nw4hbm3snd6detail10StrmPlayerFPQ46nw4hbm3snd6detail14StrmBufferPoolQ56nw4hbm3snd6detail10StrmPlayer15StartOffsetTypeliPQ56nw4hbm3snd6detail10StrmPlayer12StrmCallbackUl
.L_80142130:
/* 80142130 0013D650  39 61 00 30 */	addi r11, r1, 0x30
/* 80142134 0013D654  48 01 A8 51 */	bl _restgpr_24
/* 80142138 0013D658  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014213C 0013D65C  7C 08 03 A6 */	mtlr r0
/* 80142140 0013D660  38 21 00 30 */	addi r1, r1, 0x30
/* 80142144 0013D664  4E 80 00 20 */	blr 

glabel Shutdown__Q46nw4hbm3snd6detail9StrmSoundFv
/* 80142148 0013D668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014214C 0013D66C  7C 08 02 A6 */	mflr r0
/* 80142150 0013D670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80142154 0013D674  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80142158 0013D678  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014215C 0013D67C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80142160 0013D680  7C 7D 1B 78 */	mr r29, r3
/* 80142164 0013D684  4B FE B6 1D */	bl Shutdown__Q46nw4hbm3snd6detail10BasicSoundFv
/* 80142168 0013D688  2C 1D 00 00 */	cmpwi r29, 0
/* 8014216C 0013D68C  83 DD 05 F8 */	lwz r30, 0x5f8(r29)
/* 80142170 0013D690  40 82 00 20 */	bne .L_80142190
/* 80142174 0013D694  3C 60 80 1B */	lis r3, lbl_801AA438@ha
/* 80142178 0013D698  3C A0 80 1B */	lis r5, lbl_801AA410@ha
/* 8014217C 0013D69C  38 63 A4 38 */	addi r3, r3, lbl_801AA438@l
/* 80142180 0013D6A0  38 80 00 86 */	li r4, 0x86
/* 80142184 0013D6A4  38 A5 A4 10 */	addi r5, r5, lbl_801AA410@l
/* 80142188 0013D6A8  4C C6 31 82 */	crclr 6
/* 8014218C 0013D6AC  4B FD 3C 35 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80142190:
/* 80142190 0013D6B0  4B F5 31 25 */	bl OSDisableInterrupts
/* 80142194 0013D6B4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80142198 0013D6B8  7C 7F 1B 78 */	mr r31, r3
/* 8014219C 0013D6BC  2C 00 00 00 */	cmpwi r0, 0
/* 801421A0 0013D6C0  40 82 00 0C */	bne .L_801421AC
/* 801421A4 0013D6C4  4B F5 31 39 */	bl OSRestoreInterrupts
/* 801421A8 0013D6C8  48 00 00 60 */	b .L_80142208
.L_801421AC:
/* 801421AC 0013D6CC  2C 1D 00 00 */	cmpwi r29, 0
/* 801421B0 0013D6D0  40 82 00 20 */	bne .L_801421D0
/* 801421B4 0013D6D4  3C 60 80 1B */	lis r3, lbl_801A8EB4@ha
/* 801421B8 0013D6D8  3C A0 80 1B */	lis r5, lbl_801A8E90@ha
/* 801421BC 0013D6DC  38 63 8E B4 */	addi r3, r3, lbl_801A8EB4@l
/* 801421C0 0013D6E0  38 80 02 33 */	li r4, 0x233
/* 801421C4 0013D6E4  38 A5 8E 90 */	addi r5, r5, lbl_801A8E90@l
/* 801421C8 0013D6E8  4C C6 31 82 */	crclr 6
/* 801421CC 0013D6EC  4B FD 3B F5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801421D0:
/* 801421D0 0013D6F0  38 7E 00 04 */	addi r3, r30, 4
/* 801421D4 0013D6F4  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 801421D8 0013D6F8  48 00 A1 A5 */	bl Erase__Q46nw4hbm2ut6detail12LinkListImplFPQ36nw4hbm2ut12LinkListNode
/* 801421DC 0013D6FC  81 9D 00 00 */	lwz r12, 0(r29)
/* 801421E0 0013D700  7F A3 EB 78 */	mr r3, r29
/* 801421E4 0013D704  38 80 FF FF */	li r4, -1
/* 801421E8 0013D708  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801421EC 0013D70C  7D 89 03 A6 */	mtctr r12
/* 801421F0 0013D710  4E 80 04 21 */	bctrl 
/* 801421F4 0013D714  7F C3 F3 78 */	mr r3, r30
/* 801421F8 0013D718  7F A4 EB 78 */	mr r4, r29
/* 801421FC 0013D71C  4B FE E7 1D */	bl FreeImpl__Q46nw4hbm3snd6detail8PoolImplFPv
/* 80142200 0013D720  7F E3 FB 78 */	mr r3, r31
/* 80142204 0013D724  4B F5 30 D9 */	bl OSRestoreInterrupts
.L_80142208:
/* 80142208 0013D728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014220C 0013D72C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80142210 0013D730  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80142214 0013D734  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80142218 0013D738  7C 08 03 A6 */	mtlr r0
/* 8014221C 0013D73C  38 21 00 20 */	addi r1, r1, 0x20
/* 80142220 0013D740  4E 80 00 20 */	blr 

glabel __dt__Q46nw4hbm3snd6detail9StrmSoundFv
/* 80142224 0013D744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80142228 0013D748  7C 08 02 A6 */	mflr r0
/* 8014222C 0013D74C  2C 03 00 00 */	cmpwi r3, 0
/* 80142230 0013D750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80142234 0013D754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80142238 0013D758  7C 9F 23 78 */	mr r31, r4
/* 8014223C 0013D75C  93 C1 00 08 */	stw r30, 8(r1)
/* 80142240 0013D760  7C 7E 1B 78 */	mr r30, r3
/* 80142244 0013D764  41 82 00 54 */	beq .L_80142298
/* 80142248 0013D768  34 03 00 D8 */	addic. r0, r3, 0xd8
/* 8014224C 0013D76C  41 82 00 3C */	beq .L_80142288
/* 80142250 0013D770  3C 80 80 14 */	lis r4, __dt__Q56nw4hbm3snd6detail10StrmPlayer11LoadCommandFv@ha
/* 80142254 0013D774  38 A0 00 1C */	li r5, 0x1c
/* 80142258 0013D778  38 84 F9 60 */	addi r4, r4, __dt__Q56nw4hbm3snd6detail10StrmPlayer11LoadCommandFv@l
/* 8014225C 0013D77C  38 C0 00 20 */	li r6, 0x20
/* 80142260 0013D780  38 63 01 84 */	addi r3, r3, 0x184
/* 80142264 0013D784  48 01 A4 DD */	bl __destroy_arr
/* 80142268 0013D788  34 7E 01 78 */	addic. r3, r30, 0x178
/* 8014226C 0013D78C  41 82 00 0C */	beq .L_80142278
/* 80142270 0013D790  38 80 00 00 */	li r4, 0
/* 80142274 0013D794  48 00 9C 99 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_80142278:
/* 80142278 0013D798  34 7E 01 6C */	addic. r3, r30, 0x16c
/* 8014227C 0013D79C  41 82 00 0C */	beq .L_80142288
/* 80142280 0013D7A0  38 80 00 00 */	li r4, 0
/* 80142284 0013D7A4  48 00 9C 89 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_80142288:
/* 80142288 0013D7A8  2C 1F 00 00 */	cmpwi r31, 0
/* 8014228C 0013D7AC  40 81 00 0C */	ble .L_80142298
/* 80142290 0013D7B0  7F C3 F3 78 */	mr r3, r30
/* 80142294 0013D7B4  48 01 9F 7D */	bl operator_delete
.L_80142298:
/* 80142298 0013D7B8  7F C3 F3 78 */	mr r3, r30
/* 8014229C 0013D7BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801422A0 0013D7C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801422A4 0013D7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801422A8 0013D7C8  7C 08 03 A6 */	mtlr r0
/* 801422AC 0013D7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801422B0 0013D7D0  4E 80 00 20 */	blr 

glabel SetPlayerPriority__Q46nw4hbm3snd6detail9StrmSoundFi
/* 801422B4 0013D7D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801422B8 0013D7D8  7C 08 02 A6 */	mflr r0
/* 801422BC 0013D7DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801422C0 0013D7E0  39 61 00 30 */	addi r11, r1, 0x30
/* 801422C4 0013D7E4  48 01 A6 75 */	bl _savegpr_24
/* 801422C8 0013D7E8  7C 78 1B 78 */	mr r24, r3
/* 801422CC 0013D7EC  4B FE B6 39 */	bl SetPlayerPriority__Q46nw4hbm3snd6detail10BasicSoundFi
/* 801422D0 0013D7F0  88 78 00 74 */	lbz r3, 0x74(r24)
/* 801422D4 0013D7F4  80 18 00 40 */	lwz r0, 0x40(r24)
/* 801422D8 0013D7F8  7C 63 02 14 */	add r3, r3, r0
/* 801422DC 0013D7FC  2C 03 00 7F */	cmpwi r3, 0x7f
/* 801422E0 0013D800  40 81 00 0C */	ble .L_801422EC
/* 801422E4 0013D804  3B 40 00 7F */	li r26, 0x7f
/* 801422E8 0013D808  48 00 00 0C */	b .L_801422F4
.L_801422EC:
/* 801422EC 0013D80C  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 801422F0 0013D810  7C 7A 00 78 */	andc r26, r3, r0
.L_801422F4:
/* 801422F4 0013D814  2C 18 00 00 */	cmpwi r24, 0
/* 801422F8 0013D818  83 78 05 F8 */	lwz r27, 0x5f8(r24)
/* 801422FC 0013D81C  40 82 00 20 */	bne .L_8014231C
/* 80142300 0013D820  3C 60 80 1B */	lis r3, lbl_801A8EB4@ha
/* 80142304 0013D824  3C A0 80 1B */	lis r5, lbl_801A8E90@ha
/* 80142308 0013D828  38 63 8E B4 */	addi r3, r3, lbl_801A8EB4@l
/* 8014230C 0013D82C  38 80 02 33 */	li r4, 0x233
/* 80142310 0013D830  38 A5 8E 90 */	addi r5, r5, lbl_801A8E90@l
/* 80142314 0013D834  4C C6 31 82 */	crclr 6
/* 80142318 0013D838  4B FD 3A A9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014231C:
/* 8014231C 0013D83C  3B 38 00 B8 */	addi r25, r24, 0xb8
/* 80142320 0013D840  38 7B 00 04 */	addi r3, r27, 4
/* 80142324 0013D844  7F 24 CB 78 */	mr r4, r25
/* 80142328 0013D848  48 00 A0 55 */	bl Erase__Q46nw4hbm2ut6detail12LinkListImplFPQ36nw4hbm2ut12LinkListNode
/* 8014232C 0013D84C  83 FB 00 08 */	lwz r31, 8(r27)
/* 80142330 0013D850  3B DB 00 08 */	addi r30, r27, 8
/* 80142334 0013D854  3F 80 80 1B */	lis r28, lbl_801A8EE4@ha
/* 80142338 0013D858  3F A0 80 1B */	lis r29, lbl_801A8EC0@ha
/* 8014233C 0013D85C  48 00 00 50 */	b .L_8014238C
.L_80142340:
/* 80142340 0013D860  2C 1F 00 00 */	cmpwi r31, 0
/* 80142344 0013D864  40 82 00 18 */	bne .L_8014235C
/* 80142348 0013D868  38 7C 8E E4 */	addi r3, r28, lbl_801A8EE4@l
/* 8014234C 0013D86C  38 BD 8E C0 */	addi r5, r29, lbl_801A8EC0@l
/* 80142350 0013D870  38 80 02 3D */	li r4, 0x23d
/* 80142354 0013D874  4C C6 31 82 */	crclr 6
/* 80142358 0013D878  4B FD 3A 69 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014235C:
/* 8014235C 0013D87C  88 7F FF BC */	lbz r3, -0x44(r31)
/* 80142360 0013D880  80 1F FF 88 */	lwz r0, -0x78(r31)
/* 80142364 0013D884  7C 63 02 14 */	add r3, r3, r0
/* 80142368 0013D888  2C 03 00 7F */	cmpwi r3, 0x7f
/* 8014236C 0013D88C  40 81 00 0C */	ble .L_80142378
/* 80142370 0013D890  38 00 00 7F */	li r0, 0x7f
/* 80142374 0013D894  48 00 00 0C */	b .L_80142380
.L_80142378:
/* 80142378 0013D898  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 8014237C 0013D89C  7C 60 00 78 */	andc r0, r3, r0
.L_80142380:
/* 80142380 0013D8A0  7C 1A 00 00 */	cmpw r26, r0
/* 80142384 0013D8A4  41 80 00 10 */	blt .L_80142394
/* 80142388 0013D8A8  83 FF 00 00 */	lwz r31, 0(r31)
.L_8014238C:
/* 8014238C 0013D8AC  7C 1F F0 40 */	cmplw r31, r30
/* 80142390 0013D8B0  40 82 FF B0 */	bne .L_80142340
.L_80142394:
/* 80142394 0013D8B4  2C 18 00 00 */	cmpwi r24, 0
/* 80142398 0013D8B8  40 82 00 20 */	bne .L_801423B8
/* 8014239C 0013D8BC  3C 60 80 1B */	lis r3, lbl_801A8EB4@ha
/* 801423A0 0013D8C0  3C A0 80 1B */	lis r5, lbl_801A8E90@ha
/* 801423A4 0013D8C4  38 63 8E B4 */	addi r3, r3, lbl_801A8EB4@l
/* 801423A8 0013D8C8  38 80 02 33 */	li r4, 0x233
/* 801423AC 0013D8CC  38 A5 8E 90 */	addi r5, r5, lbl_801A8E90@l
/* 801423B0 0013D8D0  4C C6 31 82 */	crclr 6
/* 801423B4 0013D8D4  4B FD 3A 0D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801423B8:
/* 801423B8 0013D8D8  93 E1 00 08 */	stw r31, 8(r1)
/* 801423BC 0013D8DC  7F 25 CB 78 */	mr r5, r25
/* 801423C0 0013D8E0  38 7B 00 04 */	addi r3, r27, 4
/* 801423C4 0013D8E4  38 81 00 08 */	addi r4, r1, 8
/* 801423C8 0013D8E8  48 00 9E B9 */	bl Insert__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8IteratorPQ36nw4hbm2ut12LinkListNode
/* 801423CC 0013D8EC  39 61 00 30 */	addi r11, r1, 0x30
/* 801423D0 0013D8F0  48 01 A5 B5 */	bl _restgpr_24
/* 801423D4 0013D8F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801423D8 0013D8F8  7C 08 03 A6 */	mtlr r0
/* 801423DC 0013D8FC  38 21 00 30 */	addi r1, r1, 0x30
/* 801423E0 0013D900  4E 80 00 20 */	blr 

glabel IsAttachedTempSpecialHandle__Q46nw4hbm3snd6detail9StrmSoundFv
/* 801423E4 0013D904  80 63 05 F4 */	lwz r3, 0x5f4(r3)
/* 801423E8 0013D908  7C 03 00 D0 */	neg r0, r3
/* 801423EC 0013D90C  7C 00 1B 78 */	or r0, r0, r3
/* 801423F0 0013D910  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801423F4 0013D914  4E 80 00 20 */	blr 

glabel DetachTempSpecialHandle__Q46nw4hbm3snd6detail9StrmSoundFv
/* 801423F8 0013D918  80 63 05 F4 */	lwz r3, 0x5f4(r3)
/* 801423FC 0013D91C  48 00 00 34 */	b DetachSound__Q36nw4hbm3snd15StrmSoundHandleFv

glabel GetBasicPlayer__Q46nw4hbm3snd6detail9StrmSoundFv
/* 80142400 0013D920  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80142404 0013D924  4E 80 00 20 */	blr 

glabel GetBasicPlayer__Q46nw4hbm3snd6detail9StrmSoundCFv
/* 80142408 0013D928  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8014240C 0013D92C  4E 80 00 20 */	blr 

glabel GetRuntimeTypeInfo__Q46nw4hbm3snd6detail9StrmSoundCFv
/* 80142410 0013D930  3C 60 80 24 */	lis r3, lbl_8023F700@ha
/* 80142414 0013D934  38 63 F7 00 */	addi r3, r3, lbl_8023F700@l
/* 80142418 0013D938  4E 80 00 20 */	blr 

glabel __sinit_snd_StrmSound_cpp
/* 8014241C 0013D93C  3C 80 80 23 */	lis r4, lbl_80233580@ha
/* 80142420 0013D940  3C 60 80 24 */	lis r3, lbl_8023F700@ha
/* 80142424 0013D944  38 84 35 80 */	addi r4, r4, lbl_80233580@l
/* 80142428 0013D948  90 83 F7 00 */	stw r4, lbl_8023F700@l(r3)
/* 8014242C 0013D94C  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_8023F700
	.skip 0x20
