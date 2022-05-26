.include "macros.inc"

.section .text, "ax"

glabel __DVDClearWaitingQueue
/* 800AF3C0 000AA8E0  3C C0 80 1D */	lis r6, lbl_801CAE10@ha
/* 800AF3C4 000AA8E4  38 C6 AE 10 */	addi r6, r6, lbl_801CAE10@l
/* 800AF3C8 000AA8E8  38 A6 00 08 */	addi r5, r6, 8
/* 800AF3CC 000AA8EC  90 C6 00 00 */	stw r6, 0(r6)
/* 800AF3D0 000AA8F0  38 86 00 10 */	addi r4, r6, 0x10
/* 800AF3D4 000AA8F4  38 66 00 18 */	addi r3, r6, 0x18
/* 800AF3D8 000AA8F8  90 C6 00 04 */	stw r6, 4(r6)
/* 800AF3DC 000AA8FC  90 A6 00 08 */	stw r5, 8(r6)
/* 800AF3E0 000AA900  90 A6 00 0C */	stw r5, 0xc(r6)
/* 800AF3E4 000AA904  90 86 00 10 */	stw r4, 0x10(r6)
/* 800AF3E8 000AA908  90 86 00 14 */	stw r4, 0x14(r6)
/* 800AF3EC 000AA90C  90 66 00 18 */	stw r3, 0x18(r6)
/* 800AF3F0 000AA910  90 66 00 1C */	stw r3, 0x1c(r6)
/* 800AF3F4 000AA914  4E 80 00 20 */	blr 

glabel __DVDPushWaitingQueue
/* 800AF3F8 000AA918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AF3FC 000AA91C  7C 08 02 A6 */	mflr r0
/* 800AF400 000AA920  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AF404 000AA924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AF408 000AA928  7C 9F 23 78 */	mr r31, r4
/* 800AF40C 000AA92C  93 C1 00 08 */	stw r30, 8(r1)
/* 800AF410 000AA930  7C 7E 1B 78 */	mr r30, r3
/* 800AF414 000AA934  4B FE 5E A1 */	bl OSDisableInterrupts
/* 800AF418 000AA938  3C 80 80 1D */	lis r4, lbl_801CAE10@ha
/* 800AF41C 000AA93C  57 C0 18 38 */	slwi r0, r30, 3
/* 800AF420 000AA940  38 84 AE 10 */	addi r4, r4, lbl_801CAE10@l
/* 800AF424 000AA944  7C A4 02 14 */	add r5, r4, r0
/* 800AF428 000AA948  80 85 00 04 */	lwz r4, 4(r5)
/* 800AF42C 000AA94C  93 E4 00 00 */	stw r31, 0(r4)
/* 800AF430 000AA950  80 05 00 04 */	lwz r0, 4(r5)
/* 800AF434 000AA954  90 1F 00 04 */	stw r0, 4(r31)
/* 800AF438 000AA958  90 BF 00 00 */	stw r5, 0(r31)
/* 800AF43C 000AA95C  93 E5 00 04 */	stw r31, 4(r5)
/* 800AF440 000AA960  4B FE 5E 9D */	bl OSRestoreInterrupts
/* 800AF444 000AA964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AF448 000AA968  38 60 00 01 */	li r3, 1
/* 800AF44C 000AA96C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AF450 000AA970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AF454 000AA974  7C 08 03 A6 */	mtlr r0
/* 800AF458 000AA978  38 21 00 10 */	addi r1, r1, 0x10
/* 800AF45C 000AA97C  4E 80 00 20 */	blr 

glabel __DVDPopWaitingQueue
/* 800AF460 000AA980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AF464 000AA984  7C 08 02 A6 */	mflr r0
/* 800AF468 000AA988  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AF46C 000AA98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AF470 000AA990  4B FE 5E 45 */	bl OSDisableInterrupts
/* 800AF474 000AA994  3C 80 80 1D */	lis r4, lbl_801CAE10@ha
/* 800AF478 000AA998  38 00 00 04 */	li r0, 4
/* 800AF47C 000AA99C  3B E0 00 00 */	li r31, 0
/* 800AF480 000AA9A0  38 84 AE 10 */	addi r4, r4, lbl_801CAE10@l
/* 800AF484 000AA9A4  7C 09 03 A6 */	mtctr r0
lbl_800AF488:
/* 800AF488 000AA9A8  80 04 00 00 */	lwz r0, 0(r4)
/* 800AF48C 000AA9AC  7C 00 20 40 */	cmplw r0, r4
/* 800AF490 000AA9B0  41 82 00 48 */	beq lbl_800AF4D8
/* 800AF494 000AA9B4  4B FE 5E 49 */	bl OSRestoreInterrupts
/* 800AF498 000AA9B8  4B FE 5E 1D */	bl OSDisableInterrupts
/* 800AF49C 000AA9BC  3C 80 80 1D */	lis r4, lbl_801CAE10@ha
/* 800AF4A0 000AA9C0  57 E0 18 38 */	slwi r0, r31, 3
/* 800AF4A4 000AA9C4  38 84 AE 10 */	addi r4, r4, lbl_801CAE10@l
/* 800AF4A8 000AA9C8  7F E4 00 2E */	lwzx r31, r4, r0
/* 800AF4AC 000AA9CC  7C A4 02 14 */	add r5, r4, r0
/* 800AF4B0 000AA9D0  80 1F 00 00 */	lwz r0, 0(r31)
/* 800AF4B4 000AA9D4  90 05 00 00 */	stw r0, 0(r5)
/* 800AF4B8 000AA9D8  80 9F 00 00 */	lwz r4, 0(r31)
/* 800AF4BC 000AA9DC  90 A4 00 04 */	stw r5, 4(r4)
/* 800AF4C0 000AA9E0  4B FE 5E 1D */	bl OSRestoreInterrupts
/* 800AF4C4 000AA9E4  38 00 00 00 */	li r0, 0
/* 800AF4C8 000AA9E8  7F E3 FB 78 */	mr r3, r31
/* 800AF4CC 000AA9EC  90 1F 00 00 */	stw r0, 0(r31)
/* 800AF4D0 000AA9F0  90 1F 00 04 */	stw r0, 4(r31)
/* 800AF4D4 000AA9F4  48 00 00 18 */	b lbl_800AF4EC
lbl_800AF4D8:
/* 800AF4D8 000AA9F8  38 84 00 08 */	addi r4, r4, 8
/* 800AF4DC 000AA9FC  3B FF 00 01 */	addi r31, r31, 1
/* 800AF4E0 000AAA00  42 00 FF A8 */	bdnz lbl_800AF488
/* 800AF4E4 000AAA04  4B FE 5D F9 */	bl OSRestoreInterrupts
/* 800AF4E8 000AAA08  38 60 00 00 */	li r3, 0
lbl_800AF4EC:
/* 800AF4EC 000AAA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AF4F0 000AAA10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AF4F4 000AAA14  7C 08 03 A6 */	mtlr r0
/* 800AF4F8 000AAA18  38 21 00 10 */	addi r1, r1, 0x10
/* 800AF4FC 000AAA1C  4E 80 00 20 */	blr 

glabel __DVDCheckWaitingQueue
/* 800AF500 000AAA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AF504 000AAA24  7C 08 02 A6 */	mflr r0
/* 800AF508 000AAA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AF50C 000AAA2C  4B FE 5D A9 */	bl OSDisableInterrupts
/* 800AF510 000AAA30  3C 80 80 1D */	lis r4, lbl_801CAE10@ha
/* 800AF514 000AAA34  38 00 00 04 */	li r0, 4
/* 800AF518 000AAA38  38 84 AE 10 */	addi r4, r4, lbl_801CAE10@l
/* 800AF51C 000AAA3C  7C 09 03 A6 */	mtctr r0
lbl_800AF520:
/* 800AF520 000AAA40  80 04 00 00 */	lwz r0, 0(r4)
/* 800AF524 000AAA44  7C 00 20 40 */	cmplw r0, r4
/* 800AF528 000AAA48  41 82 00 10 */	beq lbl_800AF538
/* 800AF52C 000AAA4C  4B FE 5D B1 */	bl OSRestoreInterrupts
/* 800AF530 000AAA50  38 60 00 01 */	li r3, 1
/* 800AF534 000AAA54  48 00 00 14 */	b lbl_800AF548
lbl_800AF538:
/* 800AF538 000AAA58  38 84 00 08 */	addi r4, r4, 8
/* 800AF53C 000AAA5C  42 00 FF E4 */	bdnz lbl_800AF520
/* 800AF540 000AAA60  4B FE 5D 9D */	bl OSRestoreInterrupts
/* 800AF544 000AAA64  38 60 00 00 */	li r3, 0
lbl_800AF548:
/* 800AF548 000AAA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AF54C 000AAA6C  7C 08 03 A6 */	mtlr r0
/* 800AF550 000AAA70  38 21 00 10 */	addi r1, r1, 0x10
/* 800AF554 000AAA74  4E 80 00 20 */	blr 

glabel __DVDGetNextWaitingQueue
/* 800AF558 000AAA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AF55C 000AAA7C  7C 08 02 A6 */	mflr r0
/* 800AF560 000AAA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AF564 000AAA84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AF568 000AAA88  4B FE 5D 4D */	bl OSDisableInterrupts
/* 800AF56C 000AAA8C  3C 80 80 1D */	lis r4, lbl_801CAE10@ha
/* 800AF570 000AAA90  38 00 00 04 */	li r0, 4
/* 800AF574 000AAA94  38 84 AE 10 */	addi r4, r4, lbl_801CAE10@l
/* 800AF578 000AAA98  7C 09 03 A6 */	mtctr r0
lbl_800AF57C:
/* 800AF57C 000AAA9C  83 E4 00 00 */	lwz r31, 0(r4)
/* 800AF580 000AAAA0  7C 1F 20 40 */	cmplw r31, r4
/* 800AF584 000AAAA4  41 82 00 10 */	beq lbl_800AF594
/* 800AF588 000AAAA8  4B FE 5D 55 */	bl OSRestoreInterrupts
/* 800AF58C 000AAAAC  7F E3 FB 78 */	mr r3, r31
/* 800AF590 000AAAB0  48 00 00 14 */	b lbl_800AF5A4
lbl_800AF594:
/* 800AF594 000AAAB4  38 84 00 08 */	addi r4, r4, 8
/* 800AF598 000AAAB8  42 00 FF E4 */	bdnz lbl_800AF57C
/* 800AF59C 000AAABC  4B FE 5D 41 */	bl OSRestoreInterrupts
/* 800AF5A0 000AAAC0  38 60 00 00 */	li r3, 0
lbl_800AF5A4:
/* 800AF5A4 000AAAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AF5A8 000AAAC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AF5AC 000AAACC  7C 08 03 A6 */	mtlr r0
/* 800AF5B0 000AAAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 800AF5B4 000AAAD4  4E 80 00 20 */	blr 

glabel __DVDDequeueWaitingQueue
/* 800AF5B8 000AAAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AF5BC 000AAADC  7C 08 02 A6 */	mflr r0
/* 800AF5C0 000AAAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AF5C4 000AAAE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AF5C8 000AAAE8  7C 7F 1B 78 */	mr r31, r3
/* 800AF5CC 000AAAEC  4B FE 5C E9 */	bl OSDisableInterrupts
/* 800AF5D0 000AAAF0  80 9F 00 04 */	lwz r4, 4(r31)
/* 800AF5D4 000AAAF4  80 BF 00 00 */	lwz r5, 0(r31)
/* 800AF5D8 000AAAF8  2C 04 00 00 */	cmpwi r4, 0
/* 800AF5DC 000AAAFC  41 82 00 0C */	beq lbl_800AF5E8
/* 800AF5E0 000AAB00  2C 05 00 00 */	cmpwi r5, 0
/* 800AF5E4 000AAB04  40 82 00 10 */	bne lbl_800AF5F4
lbl_800AF5E8:
/* 800AF5E8 000AAB08  4B FE 5C F5 */	bl OSRestoreInterrupts
/* 800AF5EC 000AAB0C  38 60 00 00 */	li r3, 0
/* 800AF5F0 000AAB10  48 00 00 14 */	b lbl_800AF604
lbl_800AF5F4:
/* 800AF5F4 000AAB14  90 A4 00 00 */	stw r5, 0(r4)
/* 800AF5F8 000AAB18  90 85 00 04 */	stw r4, 4(r5)
/* 800AF5FC 000AAB1C  4B FE 5C E1 */	bl OSRestoreInterrupts
/* 800AF600 000AAB20  38 60 00 01 */	li r3, 1
lbl_800AF604:
/* 800AF604 000AAB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AF608 000AAB28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AF60C 000AAB2C  7C 08 03 A6 */	mtlr r0
/* 800AF610 000AAB30  38 21 00 10 */	addi r1, r1, 0x10
/* 800AF614 000AAB34  4E 80 00 20 */	blr 