.include "macros.inc"

.section .text, "ax"

glabel __MIXSetPan
/* 800B8318 000B3838  80 0D 91 74 */	lwz r0, lbl_802475F4@sda21(r13)
/* 800B831C 000B383C  3C C0 80 19 */	lis r6, lbl_80195E00@ha
/* 800B8320 000B3840  80 83 00 18 */	lwz r4, 0x18(r3)
/* 800B8324 000B3844  38 C6 5E 00 */	addi r6, r6, lbl_80195E00@l
/* 800B8328 000B3848  28 00 00 03 */	cmplwi r0, 3
/* 800B832C 000B384C  81 43 00 1C */	lwz r10, 0x1c(r3)
/* 800B8330 000B3850  20 A4 00 7F */	subfic r5, r4, 0x7f
/* 800B8334 000B3854  21 6A 00 7F */	subfic r11, r10, 0x7f
/* 800B8338 000B3858  40 82 00 50 */	bne lbl_800B8388
/* 800B833C 000B385C  54 89 08 3C */	slwi r9, r4, 1
/* 800B8340 000B3860  38 E6 09 90 */	addi r7, r6, 0x990
/* 800B8344 000B3864  7C 87 4A AE */	lhax r4, r7, r9
/* 800B8348 000B3868  54 A8 08 3C */	slwi r8, r5, 1
/* 800B834C 000B386C  55 65 08 3C */	slwi r5, r11, 1
/* 800B8350 000B3870  55 40 08 3C */	slwi r0, r10, 1
/* 800B8354 000B3874  90 83 00 24 */	stw r4, 0x24(r3)
/* 800B8358 000B3878  38 86 0A 90 */	addi r4, r6, 0xa90
/* 800B835C 000B387C  7C C7 42 AE */	lhax r6, r7, r8
/* 800B8360 000B3880  90 C3 00 28 */	stw r6, 0x28(r3)
/* 800B8364 000B3884  7C A7 2A AE */	lhax r5, r7, r5
/* 800B8368 000B3888  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 800B836C 000B388C  7C 07 02 AE */	lhax r0, r7, r0
/* 800B8370 000B3890  90 03 00 30 */	stw r0, 0x30(r3)
/* 800B8374 000B3894  7C 04 42 AE */	lhax r0, r4, r8
/* 800B8378 000B3898  90 03 00 34 */	stw r0, 0x34(r3)
/* 800B837C 000B389C  7C 04 4A AE */	lhax r0, r4, r9
/* 800B8380 000B38A0  90 03 00 38 */	stw r0, 0x38(r3)
/* 800B8384 000B38A4  4E 80 00 20 */	blr 
lbl_800B8388:
/* 800B8388 000B38A8  54 80 10 3A */	slwi r0, r4, 2
/* 800B838C 000B38AC  38 E6 07 90 */	addi r7, r6, 0x790
/* 800B8390 000B38B0  7C 07 00 2E */	lwzx r0, r7, r0
/* 800B8394 000B38B4  54 A6 10 3A */	slwi r6, r5, 2
/* 800B8398 000B38B8  55 65 10 3A */	slwi r5, r11, 2
/* 800B839C 000B38BC  55 44 10 3A */	slwi r4, r10, 2
/* 800B83A0 000B38C0  90 03 00 24 */	stw r0, 0x24(r3)
/* 800B83A4 000B38C4  38 00 00 00 */	li r0, 0
/* 800B83A8 000B38C8  7C C7 30 2E */	lwzx r6, r7, r6
/* 800B83AC 000B38CC  90 C3 00 28 */	stw r6, 0x28(r3)
/* 800B83B0 000B38D0  7C A7 28 2E */	lwzx r5, r7, r5
/* 800B83B4 000B38D4  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 800B83B8 000B38D8  7C 87 20 2E */	lwzx r4, r7, r4
/* 800B83BC 000B38DC  90 83 00 30 */	stw r4, 0x30(r3)
/* 800B83C0 000B38E0  90 03 00 34 */	stw r0, 0x34(r3)
/* 800B83C4 000B38E4  90 03 00 38 */	stw r0, 0x38(r3)
/* 800B83C8 000B38E8  4E 80 00 20 */	blr 

glabel MIXInit
/* 800B83CC 000B38EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B83D0 000B38F0  7C 08 02 A6 */	mflr r0
/* 800B83D4 000B38F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B83D8 000B38F8  39 61 00 30 */	addi r11, r1, 0x30
/* 800B83DC 000B38FC  48 0A 45 61 */	bl _savegpr_25
/* 800B83E0 000B3900  4B FF 9F A9 */	bl func_800B2388
/* 800B83E4 000B3904  2C 03 00 00 */	cmpwi r3, 0
/* 800B83E8 000B3908  41 82 00 D4 */	beq lbl_800B84BC
/* 800B83EC 000B390C  4B FF DA 41 */	bl AXGetMaxVoices
/* 800B83F0 000B3910  3C A0 80 1E */	lis r5, lbl_801E0AC8@ha
/* 800B83F4 000B3914  3C 80 80 1E */	lis r4, lbl_801E34C8@ha
/* 800B83F8 000B3918  38 A5 0A C8 */	addi r5, r5, lbl_801E0AC8@l
/* 800B83FC 000B391C  90 6D 91 70 */	stw r3, lbl_802475F0@sda21(r13)
/* 800B8400 000B3920  38 84 34 C8 */	addi r4, r4, lbl_801E34C8@l
/* 800B8404 000B3924  3B 20 00 00 */	li r25, 0
/* 800B8408 000B3928  90 AD 91 68 */	stw r5, lbl_802475E8@sda21(r13)
/* 800B840C 000B392C  3B 40 00 00 */	li r26, 0
/* 800B8410 000B3930  3B 60 00 00 */	li r27, 0
/* 800B8414 000B3934  3F 80 50 00 */	lis r28, 0x5000
/* 800B8418 000B3938  90 8D 91 78 */	stw r4, lbl_802475F8@sda21(r13)
/* 800B841C 000B393C  3B A0 FC 40 */	li r29, -960
/* 800B8420 000B3940  3B C0 00 40 */	li r30, 0x40
/* 800B8424 000B3944  3B E0 00 7F */	li r31, 0x7f
/* 800B8428 000B3948  48 00 00 7C */	b lbl_800B84A4
lbl_800B842C:
/* 800B842C 000B394C  80 6D 91 68 */	lwz r3, lbl_802475E8@sda21(r13)
/* 800B8430 000B3950  7F 63 D1 2E */	stwx r27, r3, r26
/* 800B8434 000B3954  80 0D 91 68 */	lwz r0, lbl_802475E8@sda21(r13)
/* 800B8438 000B3958  7C 60 D2 14 */	add r3, r0, r26
/* 800B843C 000B395C  93 83 00 04 */	stw r28, 4(r3)
/* 800B8440 000B3960  93 63 00 08 */	stw r27, 8(r3)
/* 800B8444 000B3964  93 A3 00 0C */	stw r29, 0xc(r3)
/* 800B8448 000B3968  93 A3 00 10 */	stw r29, 0x10(r3)
/* 800B844C 000B396C  93 A3 00 14 */	stw r29, 0x14(r3)
/* 800B8450 000B3970  93 63 00 20 */	stw r27, 0x20(r3)
/* 800B8454 000B3974  93 C3 00 18 */	stw r30, 0x18(r3)
/* 800B8458 000B3978  93 E3 00 1C */	stw r31, 0x1c(r3)
/* 800B845C 000B397C  B3 63 00 6C */	sth r27, 0x6c(r3)
/* 800B8460 000B3980  B3 63 00 68 */	sth r27, 0x68(r3)
/* 800B8464 000B3984  B3 63 00 64 */	sth r27, 0x64(r3)
/* 800B8468 000B3988  B3 63 00 60 */	sth r27, 0x60(r3)
/* 800B846C 000B398C  B3 63 00 5C */	sth r27, 0x5c(r3)
/* 800B8470 000B3990  B3 63 00 58 */	sth r27, 0x58(r3)
/* 800B8474 000B3994  B3 63 00 54 */	sth r27, 0x54(r3)
/* 800B8478 000B3998  B3 63 00 50 */	sth r27, 0x50(r3)
/* 800B847C 000B399C  B3 63 00 4C */	sth r27, 0x4c(r3)
/* 800B8480 000B39A0  B3 63 00 48 */	sth r27, 0x48(r3)
/* 800B8484 000B39A4  B3 63 00 44 */	sth r27, 0x44(r3)
/* 800B8488 000B39A8  B3 63 00 40 */	sth r27, 0x40(r3)
/* 800B848C 000B39AC  B3 63 00 3C */	sth r27, 0x3c(r3)
/* 800B8490 000B39B0  4B FF FE 89 */	bl __MIXSetPan
/* 800B8494 000B39B4  7F 23 CB 78 */	mr r3, r25
/* 800B8498 000B39B8  48 00 00 59 */	bl __MIXRmtResetChannel
/* 800B849C 000B39BC  3B 5A 00 70 */	addi r26, r26, 0x70
/* 800B84A0 000B39C0  3B 39 00 01 */	addi r25, r25, 1
lbl_800B84A4:
/* 800B84A4 000B39C4  80 0D 91 70 */	lwz r0, lbl_802475F0@sda21(r13)
/* 800B84A8 000B39C8  7C 19 00 40 */	cmplw r25, r0
/* 800B84AC 000B39CC  41 80 FF 80 */	blt lbl_800B842C
/* 800B84B0 000B39D0  38 00 00 01 */	li r0, 1
/* 800B84B4 000B39D4  90 0D 91 74 */	stw r0, lbl_802475F4@sda21(r13)
/* 800B84B8 000B39D8  90 0D 91 6C */	stw r0, lbl_802475EC@sda21(r13)
lbl_800B84BC:
/* 800B84BC 000B39DC  39 61 00 30 */	addi r11, r1, 0x30
/* 800B84C0 000B39E0  48 0A 44 C9 */	bl _restgpr_25
/* 800B84C4 000B39E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B84C8 000B39E8  7C 08 03 A6 */	mtlr r0
/* 800B84CC 000B39EC  38 21 00 30 */	addi r1, r1, 0x30
/* 800B84D0 000B39F0  4E 80 00 20 */	blr 

glabel MIXQuit
/* 800B84D4 000B39F4  38 00 00 00 */	li r0, 0
/* 800B84D8 000B39F8  90 0D 91 68 */	stw r0, lbl_802475E8@sda21(r13)
/* 800B84DC 000B39FC  90 0D 91 78 */	stw r0, lbl_802475F8@sda21(r13)
/* 800B84E0 000B3A00  90 0D 91 6C */	stw r0, lbl_802475EC@sda21(r13)
/* 800B84E4 000B3A04  4E 80 00 20 */	blr 

glabel MIXSetSoundMode
/* 800B84E8 000B3A08  90 6D 91 74 */	stw r3, lbl_802475F4@sda21(r13)
/* 800B84EC 000B3A0C  4E 80 00 20 */	blr 