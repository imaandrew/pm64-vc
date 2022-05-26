.include "macros.inc"

.section .text, "ax"

glabel __ct__Q46nw4hbm3snd6detail14WaveFileReaderFPCQ56nw4hbm3snd6detail8WaveFile8WaveInfo
/* 80143250 0013E770  90 83 00 00 */	stw r4, 0(r3)
/* 80143254 0013E774  4E 80 00 20 */	blr 

glabel ReadWaveParam__Q46nw4hbm3snd6detail14WaveFileReaderCFPQ46nw4hbm3snd6detail8WaveDataPCv
/* 80143258 0013E778  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014325C 0013E77C  7C 08 02 A6 */	mflr r0
/* 80143260 0013E780  80 C3 00 00 */	lwz r6, 0(r3)
/* 80143264 0013E784  90 01 00 24 */	stw r0, 0x24(r1)
/* 80143268 0013E788  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014326C 0013E78C  7C BF 2B 78 */	mr r31, r5
/* 80143270 0013E790  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80143274 0013E794  7C 7E 1B 78 */	mr r30, r3
/* 80143278 0013E798  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014327C 0013E79C  7C 9D 23 78 */	mr r29, r4
/* 80143280 0013E7A0  88 06 00 00 */	lbz r0, 0(r6)
/* 80143284 0013E7A4  98 04 00 00 */	stb r0, 0(r4)
/* 80143288 0013E7A8  88 06 00 02 */	lbz r0, 2(r6)
/* 8014328C 0013E7AC  98 04 00 02 */	stb r0, 2(r4)
/* 80143290 0013E7B0  88 66 00 03 */	lbz r3, 3(r6)
/* 80143294 0013E7B4  A0 06 00 04 */	lhz r0, 4(r6)
/* 80143298 0013E7B8  54 63 80 1E */	slwi r3, r3, 0x10
/* 8014329C 0013E7BC  7C 03 02 14 */	add r0, r3, r0
/* 801432A0 0013E7C0  90 04 00 04 */	stw r0, 4(r4)
/* 801432A4 0013E7C4  88 06 00 01 */	lbz r0, 1(r6)
/* 801432A8 0013E7C8  98 04 00 01 */	stb r0, 1(r4)
/* 801432AC 0013E7CC  88 06 00 00 */	lbz r0, 0(r6)
/* 801432B0 0013E7D0  28 00 00 01 */	cmplwi r0, 1
/* 801432B4 0013E7D4  40 82 00 0C */	bne lbl_801432C0
/* 801432B8 0013E7D8  38 A0 00 0A */	li r5, 0xa
/* 801432BC 0013E7DC  48 00 00 14 */	b lbl_801432D0
lbl_801432C0:
/* 801432C0 0013E7E0  2C 00 00 00 */	cmpwi r0, 0
/* 801432C4 0013E7E4  38 A0 00 00 */	li r5, 0
/* 801432C8 0013E7E8  40 82 00 08 */	bne lbl_801432D0
/* 801432CC 0013E7EC  38 A0 00 19 */	li r5, 0x19
lbl_801432D0:
/* 801432D0 0013E7F0  80 86 00 08 */	lwz r4, 8(r6)
/* 801432D4 0013E7F4  38 60 00 00 */	li r3, 0
/* 801432D8 0013E7F8  4B FE 7E 19 */	bl GetSampleByDspAddress__Q46nw4hbm3snd6detail7AxVoiceFPCvUlQ56nw4hbm3snd6detail7AxVoice6Format
/* 801432DC 0013E7FC  90 7D 00 08 */	stw r3, 8(r29)
/* 801432E0 0013E800  80 7E 00 00 */	lwz r3, 0(r30)
/* 801432E4 0013E804  88 03 00 00 */	lbz r0, 0(r3)
/* 801432E8 0013E808  28 00 00 01 */	cmplwi r0, 1
/* 801432EC 0013E80C  40 82 00 0C */	bne lbl_801432F8
/* 801432F0 0013E810  38 A0 00 0A */	li r5, 0xa
/* 801432F4 0013E814  48 00 00 14 */	b lbl_80143308
lbl_801432F8:
/* 801432F8 0013E818  2C 00 00 00 */	cmpwi r0, 0
/* 801432FC 0013E81C  38 A0 00 00 */	li r5, 0
/* 80143300 0013E820  40 82 00 08 */	bne lbl_80143308
/* 80143304 0013E824  38 A0 00 19 */	li r5, 0x19
lbl_80143308:
/* 80143308 0013E828  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8014330C 0013E82C  38 60 00 00 */	li r3, 0
/* 80143310 0013E830  4B FE 7D E1 */	bl GetSampleByDspAddress__Q46nw4hbm3snd6detail7AxVoiceFPCvUlQ56nw4hbm3snd6detail7AxVoice6Format
/* 80143314 0013E834  38 03 00 01 */	addi r0, r3, 1
/* 80143318 0013E838  80 7E 00 00 */	lwz r3, 0(r30)
/* 8014331C 0013E83C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80143320 0013E840  38 9D 00 10 */	addi r4, r29, 0x10
/* 80143324 0013E844  38 C0 00 00 */	li r6, 0
/* 80143328 0013E848  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8014332C 0013E84C  7C A0 1A 14 */	add r5, r0, r3
/* 80143330 0013E850  48 00 01 20 */	b lbl_80143450
lbl_80143334:
/* 80143334 0013E854  80 05 00 00 */	lwz r0, 0(r5)
/* 80143338 0013E858  7C E0 1A 14 */	add r7, r0, r3
/* 8014333C 0013E85C  80 07 00 08 */	lwz r0, 8(r7)
/* 80143340 0013E860  90 04 00 04 */	stw r0, 4(r4)
/* 80143344 0013E864  80 07 00 0C */	lwz r0, 0xc(r7)
/* 80143348 0013E868  90 04 00 08 */	stw r0, 8(r4)
/* 8014334C 0013E86C  80 07 00 10 */	lwz r0, 0x10(r7)
/* 80143350 0013E870  90 04 00 0C */	stw r0, 0xc(r4)
/* 80143354 0013E874  80 07 00 14 */	lwz r0, 0x14(r7)
/* 80143358 0013E878  90 04 00 10 */	stw r0, 0x10(r4)
/* 8014335C 0013E87C  80 67 00 04 */	lwz r3, 4(r7)
/* 80143360 0013E880  2C 03 00 00 */	cmpwi r3, 0
/* 80143364 0013E884  41 82 00 C8 */	beq lbl_8014342C
/* 80143368 0013E888  80 1E 00 00 */	lwz r0, 0(r30)
/* 8014336C 0013E88C  7D 03 02 6E */	lhzux r8, r3, r0
/* 80143370 0013E890  A0 03 00 02 */	lhz r0, 2(r3)
/* 80143374 0013E894  B1 04 00 14 */	sth r8, 0x14(r4)
/* 80143378 0013E898  B0 04 00 16 */	sth r0, 0x16(r4)
/* 8014337C 0013E89C  A1 03 00 04 */	lhz r8, 4(r3)
/* 80143380 0013E8A0  A0 03 00 06 */	lhz r0, 6(r3)
/* 80143384 0013E8A4  B1 04 00 18 */	sth r8, 0x18(r4)
/* 80143388 0013E8A8  B0 04 00 1A */	sth r0, 0x1a(r4)
/* 8014338C 0013E8AC  A1 03 00 08 */	lhz r8, 8(r3)
/* 80143390 0013E8B0  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80143394 0013E8B4  B1 04 00 1C */	sth r8, 0x1c(r4)
/* 80143398 0013E8B8  B0 04 00 1E */	sth r0, 0x1e(r4)
/* 8014339C 0013E8BC  A1 03 00 0C */	lhz r8, 0xc(r3)
/* 801433A0 0013E8C0  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 801433A4 0013E8C4  B1 04 00 20 */	sth r8, 0x20(r4)
/* 801433A8 0013E8C8  B0 04 00 22 */	sth r0, 0x22(r4)
/* 801433AC 0013E8CC  A1 03 00 10 */	lhz r8, 0x10(r3)
/* 801433B0 0013E8D0  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 801433B4 0013E8D4  B1 04 00 24 */	sth r8, 0x24(r4)
/* 801433B8 0013E8D8  B0 04 00 26 */	sth r0, 0x26(r4)
/* 801433BC 0013E8DC  A1 03 00 14 */	lhz r8, 0x14(r3)
/* 801433C0 0013E8E0  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 801433C4 0013E8E4  B1 04 00 28 */	sth r8, 0x28(r4)
/* 801433C8 0013E8E8  B0 04 00 2A */	sth r0, 0x2a(r4)
/* 801433CC 0013E8EC  A1 03 00 18 */	lhz r8, 0x18(r3)
/* 801433D0 0013E8F0  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 801433D4 0013E8F4  B1 04 00 2C */	sth r8, 0x2c(r4)
/* 801433D8 0013E8F8  B0 04 00 2E */	sth r0, 0x2e(r4)
/* 801433DC 0013E8FC  A1 03 00 1C */	lhz r8, 0x1c(r3)
/* 801433E0 0013E900  A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 801433E4 0013E904  B1 04 00 30 */	sth r8, 0x30(r4)
/* 801433E8 0013E908  B0 04 00 32 */	sth r0, 0x32(r4)
/* 801433EC 0013E90C  A1 03 00 20 */	lhz r8, 0x20(r3)
/* 801433F0 0013E910  A0 03 00 22 */	lhz r0, 0x22(r3)
/* 801433F4 0013E914  B1 04 00 34 */	sth r8, 0x34(r4)
/* 801433F8 0013E918  B0 04 00 36 */	sth r0, 0x36(r4)
/* 801433FC 0013E91C  A1 03 00 24 */	lhz r8, 0x24(r3)
/* 80143400 0013E920  A0 03 00 26 */	lhz r0, 0x26(r3)
/* 80143404 0013E924  B1 04 00 38 */	sth r8, 0x38(r4)
/* 80143408 0013E928  B0 04 00 3A */	sth r0, 0x3a(r4)
/* 8014340C 0013E92C  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 80143410 0013E930  B0 04 00 3C */	sth r0, 0x3c(r4)
/* 80143414 0013E934  A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 80143418 0013E938  B0 04 00 3E */	sth r0, 0x3e(r4)
/* 8014341C 0013E93C  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 80143420 0013E940  B0 04 00 40 */	sth r0, 0x40(r4)
/* 80143424 0013E944  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80143428 0013E948  B0 04 00 42 */	sth r0, 0x42(r4)
lbl_8014342C:
/* 8014342C 0013E94C  81 1E 00 00 */	lwz r8, 0(r30)
/* 80143430 0013E950  38 A5 00 04 */	addi r5, r5, 4
/* 80143434 0013E954  80 67 00 00 */	lwz r3, 0(r7)
/* 80143438 0013E958  38 C6 00 01 */	addi r6, r6, 1
/* 8014343C 0013E95C  80 08 00 14 */	lwz r0, 0x14(r8)
/* 80143440 0013E960  7C 00 FA 14 */	add r0, r0, r31
/* 80143444 0013E964  7C 03 02 14 */	add r0, r3, r0
/* 80143448 0013E968  90 04 00 00 */	stw r0, 0(r4)
/* 8014344C 0013E96C  38 84 00 44 */	addi r4, r4, 0x44
lbl_80143450:
/* 80143450 0013E970  80 7E 00 00 */	lwz r3, 0(r30)
/* 80143454 0013E974  88 03 00 02 */	lbz r0, 2(r3)
/* 80143458 0013E978  7C 06 00 00 */	cmpw r6, r0
/* 8014345C 0013E97C  41 80 FE D8 */	blt lbl_80143334
/* 80143460 0013E980  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80143464 0013E984  38 60 00 01 */	li r3, 1
/* 80143468 0013E988  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014346C 0013E98C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80143470 0013E990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80143474 0013E994  7C 08 03 A6 */	mtlr r0
/* 80143478 0013E998  38 21 00 20 */	addi r1, r1, 0x20
/* 8014347C 0013E99C  4E 80 00 20 */	blr 