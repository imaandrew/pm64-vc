glabel xlListMake
/* 80085430 00080950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80085434 00080954  7C 08 02 A6 */	mflr r0
/* 80085438 00080958  90 01 00 24 */	stw r0, 0x24(r1)
/* 8008543C 0008095C  38 04 00 03 */	addi r0, r4, 3
/* 80085440 00080960  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80085444 00080964  54 1F 00 3A */	rlwinm r31, r0, 0, 0, 0x1d
/* 80085448 00080968  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8008544C 0008096C  7C 7E 1B 78 */	mr r30, r3
/* 80085450 00080970  38 61 00 08 */	addi r3, r1, 8
/* 80085454 00080974  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80085458 00080978  3F A0 80 1B */	lis r29, lbl_801B0778@ha
/* 8008545C 0008097C  80 9D 07 78 */	lwz r4, lbl_801B0778@l(r29)
/* 80085460 00080980  38 84 00 04 */	addi r4, r4, 4
/* 80085464 00080984  48 00 0A E5 */	bl xlHeapTake
/* 80085468 00080988  2C 03 00 00 */	cmpwi r3, 0
/* 8008546C 0008098C  40 82 00 0C */	bne lbl_80085478
/* 80085470 00080990  38 A0 00 00 */	li r5, 0
/* 80085474 00080994  48 00 00 68 */	b lbl_800854DC
lbl_80085478:
/* 80085478 00080998  80 81 00 08 */	lwz r4, 8(r1)
/* 8008547C 0008099C  38 00 00 00 */	li r0, 0
/* 80085480 000809A0  38 7D 07 78 */	addi r3, r29, 0x778
/* 80085484 000809A4  90 04 00 00 */	stw r0, 0(r4)
/* 80085488 000809A8  38 C3 00 08 */	addi r6, r3, 8
/* 8008548C 000809AC  80 61 00 08 */	lwz r3, 8(r1)
/* 80085490 000809B0  38 03 00 04 */	addi r0, r3, 4
/* 80085494 000809B4  90 1E 00 00 */	stw r0, 0(r30)
/* 80085498 000809B8  48 00 00 38 */	b lbl_800854D0
lbl_8008549C:
/* 8008549C 000809BC  80 06 00 00 */	lwz r0, 0(r6)
/* 800854A0 000809C0  2C 00 00 00 */	cmpwi r0, 0
/* 800854A4 000809C4  40 82 00 28 */	bne lbl_800854CC
/* 800854A8 000809C8  80 01 00 08 */	lwz r0, 8(r1)
/* 800854AC 000809CC  3C 80 80 1B */	lis r4, lbl_801B0778@ha
/* 800854B0 000809D0  38 84 07 78 */	addi r4, r4, lbl_801B0778@l
/* 800854B4 000809D4  38 A0 00 01 */	li r5, 1
/* 800854B8 000809D8  90 06 00 00 */	stw r0, 0(r6)
/* 800854BC 000809DC  80 64 00 04 */	lwz r3, 4(r4)
/* 800854C0 000809E0  38 03 00 01 */	addi r0, r3, 1
/* 800854C4 000809E4  90 04 00 04 */	stw r0, 4(r4)
/* 800854C8 000809E8  48 00 00 14 */	b lbl_800854DC
lbl_800854CC:
/* 800854CC 000809EC  7C 06 03 78 */	mr r6, r0
lbl_800854D0:
/* 800854D0 000809F0  2C 06 00 00 */	cmpwi r6, 0
/* 800854D4 000809F4  40 82 FF C8 */	bne lbl_8008549C
/* 800854D8 000809F8  38 A0 00 00 */	li r5, 0
lbl_800854DC:
/* 800854DC 000809FC  2C 05 00 00 */	cmpwi r5, 0
/* 800854E0 00080A00  41 82 00 30 */	beq lbl_80085510
/* 800854E4 00080A04  80 9E 00 00 */	lwz r4, 0(r30)
/* 800854E8 00080A08  38 00 00 00 */	li r0, 0
/* 800854EC 00080A0C  38 60 00 01 */	li r3, 1
/* 800854F0 00080A10  90 04 00 04 */	stw r0, 4(r4)
/* 800854F4 00080A14  80 9E 00 00 */	lwz r4, 0(r30)
/* 800854F8 00080A18  93 E4 00 00 */	stw r31, 0(r4)
/* 800854FC 00080A1C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80085500 00080A20  90 04 00 0C */	stw r0, 0xc(r4)
/* 80085504 00080A24  80 9E 00 00 */	lwz r4, 0(r30)
/* 80085508 00080A28  90 04 00 08 */	stw r0, 8(r4)
/* 8008550C 00080A2C  48 00 00 08 */	b lbl_80085514
lbl_80085510:
/* 80085510 00080A30  38 60 00 00 */	li r3, 0
lbl_80085514:
/* 80085514 00080A34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80085518 00080A38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008551C 00080A3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80085520 00080A40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80085524 00080A44  7C 08 03 A6 */	mtlr r0
/* 80085528 00080A48  38 21 00 20 */	addi r1, r1, 0x20
/* 8008552C 00080A4C  4E 80 00 20 */	blr 

