.include "macros.inc"

.section .text, "ax"

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

glabel xlListFree
/* 80085530 00080A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80085534 00080A54  7C 08 02 A6 */	mflr r0
/* 80085538 00080A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8008553C 00080A5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80085540 00080A60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80085544 00080A64  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80085548 00080A68  7C 7D 1B 78 */	mr r29, r3
/* 8008554C 00080A6C  83 E3 00 00 */	lwz r31, 0(r3)
/* 80085550 00080A70  83 DF 00 08 */	lwz r30, 8(r31)
/* 80085554 00080A74  93 C1 00 08 */	stw r30, 8(r1)
/* 80085558 00080A78  48 00 00 24 */	b lbl_8008557C
lbl_8008555C:
/* 8008555C 00080A7C  83 DE 00 00 */	lwz r30, 0(r30)
/* 80085560 00080A80  38 61 00 08 */	addi r3, r1, 8
/* 80085564 00080A84  48 00 0C 51 */	bl xlHeapFree
/* 80085568 00080A88  2C 03 00 00 */	cmpwi r3, 0
/* 8008556C 00080A8C  40 82 00 0C */	bne lbl_80085578
/* 80085570 00080A90  38 60 00 00 */	li r3, 0
/* 80085574 00080A94  48 00 00 24 */	b lbl_80085598
lbl_80085578:
/* 80085578 00080A98  93 C1 00 08 */	stw r30, 8(r1)
lbl_8008557C:
/* 8008557C 00080A9C  2C 1E 00 00 */	cmpwi r30, 0
/* 80085580 00080AA0  40 82 FF DC */	bne lbl_8008555C
/* 80085584 00080AA4  38 00 00 00 */	li r0, 0
/* 80085588 00080AA8  38 60 00 01 */	li r3, 1
/* 8008558C 00080AAC  90 1F 00 04 */	stw r0, 4(r31)
/* 80085590 00080AB0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80085594 00080AB4  90 1F 00 08 */	stw r0, 8(r31)
lbl_80085598:
/* 80085598 00080AB8  2C 03 00 00 */	cmpwi r3, 0
/* 8008559C 00080ABC  40 82 00 0C */	bne lbl_800855A8
/* 800855A0 00080AC0  38 60 00 00 */	li r3, 0
/* 800855A4 00080AC4  48 00 00 20 */	b lbl_800855C4
lbl_800855A8:
/* 800855A8 00080AC8  3C 60 80 1B */	lis r3, lbl_801B0778@ha
/* 800855AC 00080ACC  7F A4 EB 78 */	mr r4, r29
/* 800855B0 00080AD0  38 63 07 78 */	addi r3, r3, lbl_801B0778@l
/* 800855B4 00080AD4  48 00 00 D9 */	bl xlListFreeItem
/* 800855B8 00080AD8  7C 03 00 D0 */	neg r0, r3
/* 800855BC 00080ADC  7C 00 1B 78 */	or r0, r0, r3
/* 800855C0 00080AE0  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_800855C4:
/* 800855C4 00080AE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800855C8 00080AE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800855CC 00080AEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800855D0 00080AF0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800855D4 00080AF4  7C 08 03 A6 */	mtlr r0
/* 800855D8 00080AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 800855DC 00080AFC  4E 80 00 20 */	blr 

glabel xlListMakeItem
/* 800855E0 00080B00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800855E4 00080B04  7C 08 02 A6 */	mflr r0
/* 800855E8 00080B08  90 01 00 24 */	stw r0, 0x24(r1)
/* 800855EC 00080B0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800855F0 00080B10  7C 9F 23 78 */	mr r31, r4
/* 800855F4 00080B14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800855F8 00080B18  7C 7E 1B 78 */	mr r30, r3
/* 800855FC 00080B1C  80 83 00 00 */	lwz r4, 0(r3)
/* 80085600 00080B20  38 61 00 08 */	addi r3, r1, 8
/* 80085604 00080B24  38 84 00 04 */	addi r4, r4, 4
/* 80085608 00080B28  48 00 09 41 */	bl xlHeapTake
/* 8008560C 00080B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80085610 00080B30  40 82 00 0C */	bne lbl_8008561C
/* 80085614 00080B34  38 60 00 00 */	li r3, 0
/* 80085618 00080B38  48 00 00 5C */	b lbl_80085674
lbl_8008561C:
/* 8008561C 00080B3C  80 61 00 08 */	lwz r3, 8(r1)
/* 80085620 00080B40  38 00 00 00 */	li r0, 0
/* 80085624 00080B44  38 9E 00 08 */	addi r4, r30, 8
/* 80085628 00080B48  90 03 00 00 */	stw r0, 0(r3)
/* 8008562C 00080B4C  80 61 00 08 */	lwz r3, 8(r1)
/* 80085630 00080B50  38 03 00 04 */	addi r0, r3, 4
/* 80085634 00080B54  90 1F 00 00 */	stw r0, 0(r31)
/* 80085638 00080B58  48 00 00 30 */	b lbl_80085668
lbl_8008563C:
/* 8008563C 00080B5C  80 04 00 00 */	lwz r0, 0(r4)
/* 80085640 00080B60  2C 00 00 00 */	cmpwi r0, 0
/* 80085644 00080B64  40 82 00 20 */	bne lbl_80085664
/* 80085648 00080B68  80 01 00 08 */	lwz r0, 8(r1)
/* 8008564C 00080B6C  38 60 00 01 */	li r3, 1
/* 80085650 00080B70  90 04 00 00 */	stw r0, 0(r4)
/* 80085654 00080B74  80 9E 00 04 */	lwz r4, 4(r30)
/* 80085658 00080B78  38 04 00 01 */	addi r0, r4, 1
/* 8008565C 00080B7C  90 1E 00 04 */	stw r0, 4(r30)
/* 80085660 00080B80  48 00 00 14 */	b lbl_80085674
lbl_80085664:
/* 80085664 00080B84  7C 04 03 78 */	mr r4, r0
lbl_80085668:
/* 80085668 00080B88  2C 04 00 00 */	cmpwi r4, 0
/* 8008566C 00080B8C  40 82 FF D0 */	bne lbl_8008563C
/* 80085670 00080B90  38 60 00 00 */	li r3, 0
lbl_80085674:
/* 80085674 00080B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80085678 00080B98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008567C 00080B9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80085680 00080BA0  7C 08 03 A6 */	mtlr r0
/* 80085684 00080BA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80085688 00080BA8  4E 80 00 20 */	blr 

glabel xlListFreeItem
/* 8008568C 00080BAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80085690 00080BB0  7C 08 02 A6 */	mflr r0
/* 80085694 00080BB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80085698 00080BB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8008569C 00080BBC  7C 7F 1B 78 */	mr r31, r3
/* 800856A0 00080BC0  80 03 00 08 */	lwz r0, 8(r3)
/* 800856A4 00080BC4  2C 00 00 00 */	cmpwi r0, 0
/* 800856A8 00080BC8  40 82 00 0C */	bne lbl_800856B4
/* 800856AC 00080BCC  38 60 00 00 */	li r3, 0
/* 800856B0 00080BD0  48 00 00 70 */	b lbl_80085720
lbl_800856B4:
/* 800856B4 00080BD4  38 C3 00 08 */	addi r6, r3, 8
/* 800856B8 00080BD8  48 00 00 5C */	b lbl_80085714
lbl_800856BC:
/* 800856BC 00080BDC  80 A6 00 00 */	lwz r5, 0(r6)
/* 800856C0 00080BE0  90 A1 00 08 */	stw r5, 8(r1)
/* 800856C4 00080BE4  38 05 00 04 */	addi r0, r5, 4
/* 800856C8 00080BE8  80 64 00 00 */	lwz r3, 0(r4)
/* 800856CC 00080BEC  7C 03 00 40 */	cmplw r3, r0
/* 800856D0 00080BF0  40 82 00 40 */	bne lbl_80085710
/* 800856D4 00080BF4  80 A5 00 00 */	lwz r5, 0(r5)
/* 800856D8 00080BF8  38 00 00 00 */	li r0, 0
/* 800856DC 00080BFC  38 61 00 08 */	addi r3, r1, 8
/* 800856E0 00080C00  90 A6 00 00 */	stw r5, 0(r6)
/* 800856E4 00080C04  90 04 00 00 */	stw r0, 0(r4)
/* 800856E8 00080C08  48 00 0A CD */	bl xlHeapFree
/* 800856EC 00080C0C  2C 03 00 00 */	cmpwi r3, 0
/* 800856F0 00080C10  40 82 00 0C */	bne lbl_800856FC
/* 800856F4 00080C14  38 60 00 00 */	li r3, 0
/* 800856F8 00080C18  48 00 00 28 */	b lbl_80085720
lbl_800856FC:
/* 800856FC 00080C1C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80085700 00080C20  38 60 00 01 */	li r3, 1
/* 80085704 00080C24  38 04 FF FF */	addi r0, r4, -1
/* 80085708 00080C28  90 1F 00 04 */	stw r0, 4(r31)
/* 8008570C 00080C2C  48 00 00 14 */	b lbl_80085720
lbl_80085710:
/* 80085710 00080C30  7C A6 2B 78 */	mr r6, r5
lbl_80085714:
/* 80085714 00080C34  2C 06 00 00 */	cmpwi r6, 0
/* 80085718 00080C38  40 82 FF A4 */	bne lbl_800856BC
/* 8008571C 00080C3C  38 60 00 00 */	li r3, 0
lbl_80085720:
/* 80085720 00080C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80085724 00080C44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80085728 00080C48  7C 08 03 A6 */	mtlr r0
/* 8008572C 00080C4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80085730 00080C50  4E 80 00 20 */	blr 

glabel xlListTestItem
/* 80085734 00080C54  3C A0 80 1B */	lis r5, lbl_801B0778@ha
/* 80085738 00080C58  38 A5 07 78 */	addi r5, r5, lbl_801B0778@l
/* 8008573C 00080C5C  7C 03 28 40 */	cmplw r3, r5
/* 80085740 00080C60  40 82 00 0C */	bne lbl_8008574C
/* 80085744 00080C64  38 00 00 01 */	li r0, 1
/* 80085748 00080C68  48 00 00 30 */	b lbl_80085778
lbl_8008574C:
/* 8008574C 00080C6C  80 A5 00 08 */	lwz r5, 8(r5)
/* 80085750 00080C70  48 00 00 1C */	b lbl_8008576C
lbl_80085754:
/* 80085754 00080C74  38 05 00 04 */	addi r0, r5, 4
/* 80085758 00080C78  7C 03 00 40 */	cmplw r3, r0
/* 8008575C 00080C7C  40 82 00 0C */	bne lbl_80085768
/* 80085760 00080C80  38 00 00 01 */	li r0, 1
/* 80085764 00080C84  48 00 00 14 */	b lbl_80085778
lbl_80085768:
/* 80085768 00080C88  80 A5 00 00 */	lwz r5, 0(r5)
lbl_8008576C:
/* 8008576C 00080C8C  2C 05 00 00 */	cmpwi r5, 0
/* 80085770 00080C90  40 82 FF E4 */	bne lbl_80085754
/* 80085774 00080C94  38 00 00 00 */	li r0, 0
lbl_80085778:
/* 80085778 00080C98  2C 00 00 00 */	cmpwi r0, 0
/* 8008577C 00080C9C  41 82 00 0C */	beq lbl_80085788
/* 80085780 00080CA0  2C 04 00 00 */	cmpwi r4, 0
/* 80085784 00080CA4  40 82 00 0C */	bne lbl_80085790
lbl_80085788:
/* 80085788 00080CA8  38 60 00 00 */	li r3, 0
/* 8008578C 00080CAC  4E 80 00 20 */	blr 
lbl_80085790:
/* 80085790 00080CB0  80 63 00 08 */	lwz r3, 8(r3)
/* 80085794 00080CB4  48 00 00 1C */	b lbl_800857B0
lbl_80085798:
/* 80085798 00080CB8  38 03 00 04 */	addi r0, r3, 4
/* 8008579C 00080CBC  7C 04 00 40 */	cmplw r4, r0
/* 800857A0 00080CC0  40 82 00 0C */	bne lbl_800857AC
/* 800857A4 00080CC4  38 60 00 01 */	li r3, 1
/* 800857A8 00080CC8  4E 80 00 20 */	blr 
lbl_800857AC:
/* 800857AC 00080CCC  80 63 00 00 */	lwz r3, 0(r3)
lbl_800857B0:
/* 800857B0 00080CD0  2C 03 00 00 */	cmpwi r3, 0
/* 800857B4 00080CD4  40 82 FF E4 */	bne lbl_80085798
/* 800857B8 00080CD8  38 60 00 00 */	li r3, 0
/* 800857BC 00080CDC  4E 80 00 20 */	blr 

glabel xlListSetup
/* 800857C0 00080CE0  3C A0 80 1B */	lis r5, lbl_801B0778@ha
/* 800857C4 00080CE4  38 00 00 10 */	li r0, 0x10
/* 800857C8 00080CE8  38 85 07 78 */	addi r4, r5, lbl_801B0778@l
/* 800857CC 00080CEC  38 C0 00 00 */	li r6, 0
/* 800857D0 00080CF0  90 C4 00 04 */	stw r6, 4(r4)
/* 800857D4 00080CF4  38 60 00 01 */	li r3, 1
/* 800857D8 00080CF8  90 05 07 78 */	stw r0, 0x778(r5)
/* 800857DC 00080CFC  90 C4 00 0C */	stw r6, 0xc(r4)
/* 800857E0 00080D00  90 C4 00 08 */	stw r6, 8(r4)
/* 800857E4 00080D04  4E 80 00 20 */	blr 

glabel xlListReset
/* 800857E8 00080D08  38 60 00 01 */	li r3, 1
/* 800857EC 00080D0C  4E 80 00 20 */	blr 