.include "macros.inc"

.section .text, "ax"

glabel __DVDFSInit
/* 800AA3F0 000A5910  3C 60 80 00 */	lis r3, 0x80000038@ha
/* 800AA3F4 000A5914  90 6D 8F 0C */	stw r3, lbl_8024738C@sda21(r13)
/* 800AA3F8 000A5918  80 83 00 38 */	lwz r4, 0x80000038@l(r3)
/* 800AA3FC 000A591C  2C 04 00 00 */	cmpwi r4, 0
/* 800AA400 000A5920  90 8D 8F 08 */	stw r4, lbl_80247388@sda21(r13)
/* 800AA404 000A5924  4D 82 00 20 */	beqlr
/* 800AA408 000A5928  80 64 00 08 */	lwz r3, 8(r4)
/* 800AA40C 000A592C  1C 03 00 0C */	mulli r0, r3, 0xc
/* 800AA410 000A5930  90 6D 8F 00 */	stw r3, lbl_80247380@sda21(r13)
/* 800AA414 000A5934  7C 04 02 14 */	add r0, r4, r0
/* 800AA418 000A5938  90 0D 8F 04 */	stw r0, lbl_80247384@sda21(r13)
/* 800AA41C 000A593C  4E 80 00 20 */	blr

glabel DVDConvertPathToEntrynum
/* 800AA420 000A5940  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800AA424 000A5944  7C 08 02 A6 */	mflr r0
/* 800AA428 000A5948  90 01 00 34 */	stw r0, 0x34(r1)
/* 800AA42C 000A594C  39 61 00 30 */	addi r11, r1, 0x30
/* 800AA430 000A5950  48 0B 25 09 */	bl _savegpr_24
/* 800AA434 000A5954  7C 7A 1B 78 */	mr r26, r3
/* 800AA438 000A5958  3F E0 80 1B */	lis r31, _current_locale@ha
/* 800AA43C 000A595C  83 AD 8E F0 */	lwz r29, lbl_80247370@sda21(r13)
/* 800AA440 000A5960  7F 5C D3 78 */	mr r28, r26
/* 800AA444 000A5964  3B FF D8 D0 */	addi r31, r31, _current_locale@l
/* 800AA448 000A5968  3F C0 80 19 */	lis r30, lbl_80191618@ha
.L_800AA44C:
/* 800AA44C 000A596C  88 1A 00 00 */	lbz r0, 0(r26)
/* 800AA450 000A5970  7C 00 07 75 */	extsb. r0, r0
/* 800AA454 000A5974  40 82 00 0C */	bne .L_800AA460
/* 800AA458 000A5978  7F A3 EB 78 */	mr r3, r29
/* 800AA45C 000A597C  48 00 02 B4 */	b .L_800AA710
.L_800AA460:
/* 800AA460 000A5980  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800AA464 000A5984  40 82 00 10 */	bne .L_800AA474
/* 800AA468 000A5988  3B A0 00 00 */	li r29, 0
/* 800AA46C 000A598C  3B 5A 00 01 */	addi r26, r26, 1
/* 800AA470 000A5990  4B FF FF DC */	b .L_800AA44C
.L_800AA474:
/* 800AA474 000A5994  2C 00 00 2E */	cmpwi r0, 0x2e
/* 800AA478 000A5998  40 82 00 78 */	bne .L_800AA4F0
/* 800AA47C 000A599C  88 1A 00 01 */	lbz r0, 1(r26)
/* 800AA480 000A59A0  7C 00 07 74 */	extsb r0, r0
/* 800AA484 000A59A4  2C 00 00 2E */	cmpwi r0, 0x2e
/* 800AA488 000A59A8  40 82 00 48 */	bne .L_800AA4D0
/* 800AA48C 000A59AC  88 1A 00 02 */	lbz r0, 2(r26)
/* 800AA490 000A59B0  7C 00 07 74 */	extsb r0, r0
/* 800AA494 000A59B4  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800AA498 000A59B8  40 82 00 1C */	bne .L_800AA4B4
/* 800AA49C 000A59BC  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800AA4A0 000A59C0  80 6D 8F 08 */	lwz r3, lbl_80247388@sda21(r13)
/* 800AA4A4 000A59C4  3B 5A 00 03 */	addi r26, r26, 3
/* 800AA4A8 000A59C8  7C 63 02 14 */	add r3, r3, r0
/* 800AA4AC 000A59CC  83 A3 00 04 */	lwz r29, 4(r3)
/* 800AA4B0 000A59D0  4B FF FF 9C */	b .L_800AA44C
.L_800AA4B4:
/* 800AA4B4 000A59D4  2C 00 00 00 */	cmpwi r0, 0
/* 800AA4B8 000A59D8  40 82 00 38 */	bne .L_800AA4F0
/* 800AA4BC 000A59DC  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800AA4C0 000A59E0  80 6D 8F 08 */	lwz r3, lbl_80247388@sda21(r13)
/* 800AA4C4 000A59E4  7C 63 02 14 */	add r3, r3, r0
/* 800AA4C8 000A59E8  80 63 00 04 */	lwz r3, 4(r3)
/* 800AA4CC 000A59EC  48 00 02 44 */	b .L_800AA710
.L_800AA4D0:
/* 800AA4D0 000A59F0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800AA4D4 000A59F4  40 82 00 0C */	bne .L_800AA4E0
/* 800AA4D8 000A59F8  3B 5A 00 02 */	addi r26, r26, 2
/* 800AA4DC 000A59FC  4B FF FF 70 */	b .L_800AA44C
.L_800AA4E0:
/* 800AA4E0 000A5A00  2C 00 00 00 */	cmpwi r0, 0
/* 800AA4E4 000A5A04  40 82 00 0C */	bne .L_800AA4F0
/* 800AA4E8 000A5A08  7F A3 EB 78 */	mr r3, r29
/* 800AA4EC 000A5A0C  48 00 02 24 */	b .L_800AA710
.L_800AA4F0:
/* 800AA4F0 000A5A10  80 0D 83 40 */	lwz r0, lbl_802467C0@sda21(r13)
/* 800AA4F4 000A5A14  2C 00 00 00 */	cmpwi r0, 0
/* 800AA4F8 000A5A18  40 82 00 A8 */	bne .L_800AA5A0
/* 800AA4FC 000A5A1C  7F 58 D3 78 */	mr r24, r26
/* 800AA500 000A5A20  38 A0 00 00 */	li r5, 0
/* 800AA504 000A5A24  38 80 00 00 */	li r4, 0
/* 800AA508 000A5A28  48 00 00 48 */	b .L_800AA550
.L_800AA50C:
/* 800AA50C 000A5A2C  7C 60 07 74 */	extsb r0, r3
/* 800AA510 000A5A30  2C 00 00 2E */	cmpwi r0, 0x2e
/* 800AA514 000A5A34  40 82 00 2C */	bne .L_800AA540
/* 800AA518 000A5A38  7C 1A C0 50 */	subf r0, r26, r24
/* 800AA51C 000A5A3C  2C 00 00 08 */	cmpwi r0, 8
/* 800AA520 000A5A40  41 81 00 0C */	bgt .L_800AA52C
/* 800AA524 000A5A44  2C 05 00 01 */	cmpwi r5, 1
/* 800AA528 000A5A48  40 82 00 0C */	bne .L_800AA534
.L_800AA52C:
/* 800AA52C 000A5A4C  38 80 00 01 */	li r4, 1
/* 800AA530 000A5A50  48 00 00 34 */	b .L_800AA564
.L_800AA534:
/* 800AA534 000A5A54  3B 78 00 01 */	addi r27, r24, 1
/* 800AA538 000A5A58  38 A0 00 01 */	li r5, 1
/* 800AA53C 000A5A5C  48 00 00 10 */	b .L_800AA54C
.L_800AA540:
/* 800AA540 000A5A60  2C 00 00 20 */	cmpwi r0, 0x20
/* 800AA544 000A5A64  40 82 00 08 */	bne .L_800AA54C
/* 800AA548 000A5A68  38 80 00 01 */	li r4, 1
.L_800AA54C:
/* 800AA54C 000A5A6C  3B 18 00 01 */	addi r24, r24, 1
.L_800AA550:
/* 800AA550 000A5A70  88 78 00 00 */	lbz r3, 0(r24)
/* 800AA554 000A5A74  7C 60 07 75 */	extsb. r0, r3
/* 800AA558 000A5A78  41 82 00 0C */	beq .L_800AA564
/* 800AA55C 000A5A7C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800AA560 000A5A80  40 82 FF AC */	bne .L_800AA50C
.L_800AA564:
/* 800AA564 000A5A84  2C 05 00 01 */	cmpwi r5, 1
/* 800AA568 000A5A88  40 82 00 14 */	bne .L_800AA57C
/* 800AA56C 000A5A8C  7C 1B C0 50 */	subf r0, r27, r24
/* 800AA570 000A5A90  2C 00 00 03 */	cmpwi r0, 3
/* 800AA574 000A5A94  40 81 00 08 */	ble .L_800AA57C
/* 800AA578 000A5A98  38 80 00 01 */	li r4, 1
.L_800AA57C:
/* 800AA57C 000A5A9C  2C 04 00 00 */	cmpwi r4, 0
/* 800AA580 000A5AA0  41 82 00 40 */	beq .L_800AA5C0
/* 800AA584 000A5AA4  7F 86 E3 78 */	mr r6, r28
/* 800AA588 000A5AA8  38 BE 16 18 */	addi r5, r30, lbl_80191618@l
/* 800AA58C 000A5AAC  38 6D 83 48 */	addi r3, r13, lbl_802467C8@sda21
/* 800AA590 000A5AB0  38 80 01 BB */	li r4, 0x1bb
/* 800AA594 000A5AB4  4C C6 31 82 */	crclr 6
/* 800AA598 000A5AB8  4B FE 73 A5 */	bl OSPanic
/* 800AA59C 000A5ABC  48 00 00 24 */	b .L_800AA5C0
.L_800AA5A0:
/* 800AA5A0 000A5AC0  7F 58 D3 78 */	mr r24, r26
/* 800AA5A4 000A5AC4  48 00 00 08 */	b .L_800AA5AC
.L_800AA5A8:
/* 800AA5A8 000A5AC8  3B 18 00 01 */	addi r24, r24, 1
.L_800AA5AC:
/* 800AA5AC 000A5ACC  88 18 00 00 */	lbz r0, 0(r24)
/* 800AA5B0 000A5AD0  7C 00 07 75 */	extsb. r0, r0
/* 800AA5B4 000A5AD4  41 82 00 0C */	beq .L_800AA5C0
/* 800AA5B8 000A5AD8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800AA5BC 000A5ADC  40 82 FF EC */	bne .L_800AA5A8
.L_800AA5C0:
/* 800AA5C0 000A5AE0  88 78 00 00 */	lbz r3, 0(r24)
/* 800AA5C4 000A5AE4  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800AA5C8 000A5AE8  81 0D 8F 08 */	lwz r8, lbl_80247388@sda21(r13)
/* 800AA5CC 000A5AEC  7D 3A C0 50 */	subf r9, r26, r24
/* 800AA5D0 000A5AF0  7C 66 07 74 */	extsb r6, r3
/* 800AA5D4 000A5AF4  80 8D 8F 04 */	lwz r4, lbl_80247384@sda21(r13)
/* 800AA5D8 000A5AF8  7C A6 00 D0 */	neg r5, r6
/* 800AA5DC 000A5AFC  7C 68 02 14 */	add r3, r8, r0
/* 800AA5E0 000A5B00  81 9F 00 38 */	lwz r12, 0x38(r31)
/* 800AA5E4 000A5B04  7C A0 33 78 */	or r0, r5, r6
/* 800AA5E8 000A5B08  80 A3 00 08 */	lwz r5, 8(r3)
/* 800AA5EC 000A5B0C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800AA5F0 000A5B10  38 7D 00 01 */	addi r3, r29, 1
/* 800AA5F4 000A5B14  48 00 00 F0 */	b .L_800AA6E4
.L_800AA5F8:
/* 800AA5F8 000A5B18  1C C3 00 0C */	mulli r6, r3, 0xc
/* 800AA5FC 000A5B1C  7D 46 40 6E */	lwzux r10, r6, r8
/* 800AA600 000A5B20  55 47 00 0F */	rlwinm. r7, r10, 0, 0, 7
/* 800AA604 000A5B24  40 82 00 0C */	bne .L_800AA610
/* 800AA608 000A5B28  2C 00 00 01 */	cmpwi r0, 1
/* 800AA60C 000A5B2C  41 82 00 C4 */	beq .L_800AA6D0
.L_800AA610:
/* 800AA610 000A5B30  55 4A 02 3E */	clrlwi r10, r10, 8
/* 800AA614 000A5B34  7F 5D D3 78 */	mr r29, r26
/* 800AA618 000A5B38  7F 24 52 14 */	add r25, r4, r10
/* 800AA61C 000A5B3C  48 00 00 7C */	b .L_800AA698
.L_800AA620:
/* 800AA620 000A5B40  89 79 00 00 */	lbz r11, 0(r25)
/* 800AA624 000A5B44  39 40 00 00 */	li r10, 0
/* 800AA628 000A5B48  3B 39 00 01 */	addi r25, r25, 1
/* 800AA62C 000A5B4C  7D 78 07 75 */	extsb. r24, r11
/* 800AA630 000A5B50  41 80 00 0C */	blt .L_800AA63C
/* 800AA634 000A5B54  2C 18 01 00 */	cmpwi r24, 0x100
/* 800AA638 000A5B58  41 80 00 08 */	blt .L_800AA640
.L_800AA63C:
/* 800AA63C 000A5B5C  39 40 00 01 */	li r10, 1
.L_800AA640:
/* 800AA640 000A5B60  2C 0A 00 00 */	cmpwi r10, 0
/* 800AA644 000A5B64  41 82 00 08 */	beq .L_800AA64C
/* 800AA648 000A5B68  48 00 00 0C */	b .L_800AA654
.L_800AA64C:
/* 800AA64C 000A5B6C  81 4C 00 10 */	lwz r10, 0x10(r12)
/* 800AA650 000A5B70  7F 0A C0 AE */	lbzx r24, r10, r24
.L_800AA654:
/* 800AA654 000A5B74  89 7D 00 00 */	lbz r11, 0(r29)
/* 800AA658 000A5B78  39 40 00 00 */	li r10, 0
/* 800AA65C 000A5B7C  3B BD 00 01 */	addi r29, r29, 1
/* 800AA660 000A5B80  7D 6B 07 75 */	extsb. r11, r11
/* 800AA664 000A5B84  41 80 00 0C */	blt .L_800AA670
/* 800AA668 000A5B88  2C 0B 01 00 */	cmpwi r11, 0x100
/* 800AA66C 000A5B8C  41 80 00 08 */	blt .L_800AA674
.L_800AA670:
/* 800AA670 000A5B90  39 40 00 01 */	li r10, 1
.L_800AA674:
/* 800AA674 000A5B94  2C 0A 00 00 */	cmpwi r10, 0
/* 800AA678 000A5B98  41 82 00 08 */	beq .L_800AA680
/* 800AA67C 000A5B9C  48 00 00 0C */	b .L_800AA688
.L_800AA680:
/* 800AA680 000A5BA0  81 4C 00 10 */	lwz r10, 0x10(r12)
/* 800AA684 000A5BA4  7D 6A 58 AE */	lbzx r11, r10, r11
.L_800AA688:
/* 800AA688 000A5BA8  7C 0B C0 00 */	cmpw r11, r24
/* 800AA68C 000A5BAC  41 82 00 0C */	beq .L_800AA698
/* 800AA690 000A5BB0  39 40 00 00 */	li r10, 0
/* 800AA694 000A5BB4  48 00 00 34 */	b .L_800AA6C8
.L_800AA698:
/* 800AA698 000A5BB8  89 59 00 00 */	lbz r10, 0(r25)
/* 800AA69C 000A5BBC  7D 4A 07 75 */	extsb. r10, r10
/* 800AA6A0 000A5BC0  40 82 FF 80 */	bne .L_800AA620
/* 800AA6A4 000A5BC4  89 5D 00 00 */	lbz r10, 0(r29)
/* 800AA6A8 000A5BC8  7D 4A 07 74 */	extsb r10, r10
/* 800AA6AC 000A5BCC  2C 0A 00 2F */	cmpwi r10, 0x2f
/* 800AA6B0 000A5BD0  41 82 00 0C */	beq .L_800AA6BC
/* 800AA6B4 000A5BD4  2C 0A 00 00 */	cmpwi r10, 0
/* 800AA6B8 000A5BD8  40 82 00 0C */	bne .L_800AA6C4
.L_800AA6BC:
/* 800AA6BC 000A5BDC  39 40 00 01 */	li r10, 1
/* 800AA6C0 000A5BE0  48 00 00 08 */	b .L_800AA6C8
.L_800AA6C4:
/* 800AA6C4 000A5BE4  39 40 00 00 */	li r10, 0
.L_800AA6C8:
/* 800AA6C8 000A5BE8  2C 0A 00 01 */	cmpwi r10, 1
/* 800AA6CC 000A5BEC  41 82 00 28 */	beq .L_800AA6F4
.L_800AA6D0:
/* 800AA6D0 000A5BF0  2C 07 00 00 */	cmpwi r7, 0
/* 800AA6D4 000A5BF4  41 82 00 0C */	beq .L_800AA6E0
/* 800AA6D8 000A5BF8  80 66 00 08 */	lwz r3, 8(r6)
/* 800AA6DC 000A5BFC  48 00 00 08 */	b .L_800AA6E4
.L_800AA6E0:
/* 800AA6E0 000A5C00  38 63 00 01 */	addi r3, r3, 1
.L_800AA6E4:
/* 800AA6E4 000A5C04  7C 03 28 40 */	cmplw r3, r5
/* 800AA6E8 000A5C08  41 80 FF 10 */	blt .L_800AA5F8
/* 800AA6EC 000A5C0C  38 60 FF FF */	li r3, -1
/* 800AA6F0 000A5C10  48 00 00 20 */	b .L_800AA710
.L_800AA6F4:
/* 800AA6F4 000A5C14  2C 00 00 00 */	cmpwi r0, 0
/* 800AA6F8 000A5C18  40 82 00 08 */	bne .L_800AA700
/* 800AA6FC 000A5C1C  48 00 00 14 */	b .L_800AA710
.L_800AA700:
/* 800AA700 000A5C20  7C 89 D2 14 */	add r4, r9, r26
/* 800AA704 000A5C24  7C 7D 1B 78 */	mr r29, r3
/* 800AA708 000A5C28  3B 44 00 01 */	addi r26, r4, 1
/* 800AA70C 000A5C2C  4B FF FD 40 */	b .L_800AA44C
.L_800AA710:
/* 800AA710 000A5C30  39 61 00 30 */	addi r11, r1, 0x30
/* 800AA714 000A5C34  48 0B 22 71 */	bl _restgpr_24
/* 800AA718 000A5C38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800AA71C 000A5C3C  7C 08 03 A6 */	mtlr r0
/* 800AA720 000A5C40  38 21 00 30 */	addi r1, r1, 0x30
/* 800AA724 000A5C44  4E 80 00 20 */	blr

glabel DVDEntrynumIsDir
/* 800AA728 000A5C48  1C 03 00 0C */	mulli r0, r3, 0xc
/* 800AA72C 000A5C4C  80 6D 8F 08 */	lwz r3, lbl_80247388@sda21(r13)
/* 800AA730 000A5C50  7C 03 00 2E */	lwzx r0, r3, r0
/* 800AA734 000A5C54  54 03 00 0E */	rlwinm r3, r0, 0, 0, 7
/* 800AA738 000A5C58  7C 03 00 D0 */	neg r0, r3
/* 800AA73C 000A5C5C  7C 00 1B 78 */	or r0, r0, r3
/* 800AA740 000A5C60  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800AA744 000A5C64  4E 80 00 20 */	blr

glabel DVDFastOpen
/* 800AA748 000A5C68  2C 03 00 00 */	cmpwi r3, 0
/* 800AA74C 000A5C6C  41 80 00 24 */	blt .L_800AA770
/* 800AA750 000A5C70  80 0D 8F 00 */	lwz r0, lbl_80247380@sda21(r13)
/* 800AA754 000A5C74  7C 03 00 40 */	cmplw r3, r0
/* 800AA758 000A5C78  40 80 00 18 */	bge .L_800AA770
/* 800AA75C 000A5C7C  1C E3 00 0C */	mulli r7, r3, 0xc
/* 800AA760 000A5C80  80 6D 8F 08 */	lwz r3, lbl_80247388@sda21(r13)
/* 800AA764 000A5C84  7C 03 38 2E */	lwzx r0, r3, r7
/* 800AA768 000A5C88  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 800AA76C 000A5C8C  41 82 00 0C */	beq .L_800AA778
.L_800AA770:
/* 800AA770 000A5C90  38 60 00 00 */	li r3, 0
/* 800AA774 000A5C94  4E 80 00 20 */	blr
.L_800AA778:
/* 800AA778 000A5C98  7C 63 3A 14 */	add r3, r3, r7
/* 800AA77C 000A5C9C  80 AD 8F 48 */	lwz r5, lbl_802473C8@sda21(r13)
/* 800AA780 000A5CA0  80 C3 00 04 */	lwz r6, 4(r3)
/* 800AA784 000A5CA4  38 00 00 00 */	li r0, 0
/* 800AA788 000A5CA8  38 60 00 01 */	li r3, 1
/* 800AA78C 000A5CAC  7C C5 2C 30 */	srw r5, r6, r5
/* 800AA790 000A5CB0  90 A4 00 30 */	stw r5, 0x30(r4)
/* 800AA794 000A5CB4  80 AD 8F 08 */	lwz r5, lbl_80247388@sda21(r13)
/* 800AA798 000A5CB8  7C A5 3A 14 */	add r5, r5, r7
/* 800AA79C 000A5CBC  80 A5 00 08 */	lwz r5, 8(r5)
/* 800AA7A0 000A5CC0  90 A4 00 34 */	stw r5, 0x34(r4)
/* 800AA7A4 000A5CC4  90 04 00 38 */	stw r0, 0x38(r4)
/* 800AA7A8 000A5CC8  90 04 00 0C */	stw r0, 0xc(r4)
/* 800AA7AC 000A5CCC  4E 80 00 20 */	blr

glabel DVDClose
/* 800AA7B0 000A5CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AA7B4 000A5CD4  7C 08 02 A6 */	mflr r0
/* 800AA7B8 000A5CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA7BC 000A5CDC  48 00 47 D9 */	bl DVDCancel
/* 800AA7C0 000A5CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AA7C4 000A5CE4  38 60 00 01 */	li r3, 1
/* 800AA7C8 000A5CE8  7C 08 03 A6 */	mtlr r0
/* 800AA7CC 000A5CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800AA7D0 000A5CF0  4E 80 00 20 */	blr

glabel func_800AA7D4
/* 800AA7D4 000A5CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AA7D8 000A5CF8  7C 08 02 A6 */	mflr r0
/* 800AA7DC 000A5CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AA7E0 000A5D00  39 61 00 20 */	addi r11, r1, 0x20
/* 800AA7E4 000A5D04  48 0B 21 61 */	bl _savegpr_27
/* 800AA7E8 000A5D08  2C 03 00 00 */	cmpwi r3, 0
/* 800AA7EC 000A5D0C  7C 9C 23 78 */	mr r28, r4
/* 800AA7F0 000A5D10  7C BD 2B 78 */	mr r29, r5
/* 800AA7F4 000A5D14  40 82 00 0C */	bne .L_800AA800
/* 800AA7F8 000A5D18  38 60 00 00 */	li r3, 0
/* 800AA7FC 000A5D1C  48 00 01 80 */	b .L_800AA97C
.L_800AA800:
/* 800AA800 000A5D20  81 0D 8F 08 */	lwz r8, lbl_80247388@sda21(r13)
/* 800AA804 000A5D24  1C 03 00 0C */	mulli r0, r3, 0xc
/* 800AA808 000A5D28  80 ED 8F 04 */	lwz r7, lbl_80247384@sda21(r13)
/* 800AA80C 000A5D2C  38 C8 00 04 */	addi r6, r8, 4
/* 800AA810 000A5D30  7C 66 00 2E */	lwzx r3, r6, r0
/* 800AA814 000A5D34  7C 08 00 2E */	lwzx r0, r8, r0
/* 800AA818 000A5D38  2C 03 00 00 */	cmpwi r3, 0
/* 800AA81C 000A5D3C  54 00 02 3E */	clrlwi r0, r0, 8
/* 800AA820 000A5D40  7F C7 02 14 */	add r30, r7, r0
/* 800AA824 000A5D44  40 82 00 0C */	bne .L_800AA830
/* 800AA828 000A5D48  38 80 00 00 */	li r4, 0
/* 800AA82C 000A5D4C  48 00 00 F4 */	b .L_800AA920
.L_800AA830:
/* 800AA830 000A5D50  1C 03 00 0C */	mulli r0, r3, 0xc
/* 800AA834 000A5D54  7C 66 00 2E */	lwzx r3, r6, r0
/* 800AA838 000A5D58  7C 08 00 2E */	lwzx r0, r8, r0
/* 800AA83C 000A5D5C  2C 03 00 00 */	cmpwi r3, 0
/* 800AA840 000A5D60  54 00 02 3E */	clrlwi r0, r0, 8
/* 800AA844 000A5D64  7F E7 02 14 */	add r31, r7, r0
/* 800AA848 000A5D68  40 82 00 0C */	bne .L_800AA854
/* 800AA84C 000A5D6C  38 80 00 00 */	li r4, 0
/* 800AA850 000A5D70  48 00 00 78 */	b .L_800AA8C8
.L_800AA854:
/* 800AA854 000A5D74  1C 63 00 0C */	mulli r3, r3, 0xc
/* 800AA858 000A5D78  7C 08 18 2E */	lwzx r0, r8, r3
/* 800AA85C 000A5D7C  7C 66 18 2E */	lwzx r3, r6, r3
/* 800AA860 000A5D80  54 00 02 3E */	clrlwi r0, r0, 8
/* 800AA864 000A5D84  7F 67 02 14 */	add r27, r7, r0
/* 800AA868 000A5D88  4B FF FF 6D */	bl func_800AA7D4
/* 800AA86C 000A5D8C  7C 03 E8 40 */	cmplw r3, r29
/* 800AA870 000A5D90  7C 64 1B 78 */	mr r4, r3
/* 800AA874 000A5D94  40 82 00 08 */	bne .L_800AA87C
/* 800AA878 000A5D98  48 00 00 50 */	b .L_800AA8C8
.L_800AA87C:
/* 800AA87C 000A5D9C  38 83 00 01 */	addi r4, r3, 1
/* 800AA880 000A5DA0  38 00 00 2F */	li r0, 0x2f
/* 800AA884 000A5DA4  7C C4 E8 50 */	subf r6, r4, r29
/* 800AA888 000A5DA8  7C 1C 19 AE */	stbx r0, r28, r3
/* 800AA88C 000A5DAC  7C 7C 22 14 */	add r3, r28, r4
/* 800AA890 000A5DB0  7C C5 33 78 */	mr r5, r6
/* 800AA894 000A5DB4  48 00 00 18 */	b .L_800AA8AC
.L_800AA898:
/* 800AA898 000A5DB8  88 1B 00 00 */	lbz r0, 0(r27)
/* 800AA89C 000A5DBC  38 A5 FF FF */	addi r5, r5, -1
/* 800AA8A0 000A5DC0  3B 7B 00 01 */	addi r27, r27, 1
/* 800AA8A4 000A5DC4  98 03 00 00 */	stb r0, 0(r3)
/* 800AA8A8 000A5DC8  38 63 00 01 */	addi r3, r3, 1
.L_800AA8AC:
/* 800AA8AC 000A5DCC  2C 05 00 00 */	cmpwi r5, 0
/* 800AA8B0 000A5DD0  41 82 00 10 */	beq .L_800AA8C0
/* 800AA8B4 000A5DD4  88 1B 00 00 */	lbz r0, 0(r27)
/* 800AA8B8 000A5DD8  7C 00 07 75 */	extsb. r0, r0
/* 800AA8BC 000A5DDC  40 82 FF DC */	bne .L_800AA898
.L_800AA8C0:
/* 800AA8C0 000A5DE0  7C 05 30 50 */	subf r0, r5, r6
/* 800AA8C4 000A5DE4  7C 84 02 14 */	add r4, r4, r0
.L_800AA8C8:
/* 800AA8C8 000A5DE8  7C 04 E8 40 */	cmplw r4, r29
/* 800AA8CC 000A5DEC  40 82 00 08 */	bne .L_800AA8D4
/* 800AA8D0 000A5DF0  48 00 00 50 */	b .L_800AA920
.L_800AA8D4:
/* 800AA8D4 000A5DF4  38 64 00 01 */	addi r3, r4, 1
/* 800AA8D8 000A5DF8  38 00 00 2F */	li r0, 0x2f
/* 800AA8DC 000A5DFC  7C C3 E8 50 */	subf r6, r3, r29
/* 800AA8E0 000A5E00  7C 1C 21 AE */	stbx r0, r28, r4
/* 800AA8E4 000A5E04  7C 9C 1A 14 */	add r4, r28, r3
/* 800AA8E8 000A5E08  7C C5 33 78 */	mr r5, r6
/* 800AA8EC 000A5E0C  48 00 00 18 */	b .L_800AA904
.L_800AA8F0:
/* 800AA8F0 000A5E10  88 1F 00 00 */	lbz r0, 0(r31)
/* 800AA8F4 000A5E14  38 A5 FF FF */	addi r5, r5, -1
/* 800AA8F8 000A5E18  3B FF 00 01 */	addi r31, r31, 1
/* 800AA8FC 000A5E1C  98 04 00 00 */	stb r0, 0(r4)
/* 800AA900 000A5E20  38 84 00 01 */	addi r4, r4, 1
.L_800AA904:
/* 800AA904 000A5E24  2C 05 00 00 */	cmpwi r5, 0
/* 800AA908 000A5E28  41 82 00 10 */	beq .L_800AA918
/* 800AA90C 000A5E2C  88 1F 00 00 */	lbz r0, 0(r31)
/* 800AA910 000A5E30  7C 00 07 75 */	extsb. r0, r0
/* 800AA914 000A5E34  40 82 FF DC */	bne .L_800AA8F0
.L_800AA918:
/* 800AA918 000A5E38  7C 05 30 50 */	subf r0, r5, r6
/* 800AA91C 000A5E3C  7C 83 02 14 */	add r4, r3, r0
.L_800AA920:
/* 800AA920 000A5E40  7C 04 E8 40 */	cmplw r4, r29
/* 800AA924 000A5E44  40 82 00 0C */	bne .L_800AA930
/* 800AA928 000A5E48  7C 83 23 78 */	mr r3, r4
/* 800AA92C 000A5E4C  48 00 00 50 */	b .L_800AA97C
.L_800AA930:
/* 800AA930 000A5E50  38 C4 00 01 */	addi r6, r4, 1
/* 800AA934 000A5E54  38 00 00 2F */	li r0, 0x2f
/* 800AA938 000A5E58  7C A6 E8 50 */	subf r5, r6, r29
/* 800AA93C 000A5E5C  7C 1C 21 AE */	stbx r0, r28, r4
/* 800AA940 000A5E60  7C 7C 32 14 */	add r3, r28, r6
/* 800AA944 000A5E64  7C A4 2B 78 */	mr r4, r5
/* 800AA948 000A5E68  48 00 00 18 */	b .L_800AA960
.L_800AA94C:
/* 800AA94C 000A5E6C  88 1E 00 00 */	lbz r0, 0(r30)
/* 800AA950 000A5E70  38 84 FF FF */	addi r4, r4, -1
/* 800AA954 000A5E74  3B DE 00 01 */	addi r30, r30, 1
/* 800AA958 000A5E78  98 03 00 00 */	stb r0, 0(r3)
/* 800AA95C 000A5E7C  38 63 00 01 */	addi r3, r3, 1
.L_800AA960:
/* 800AA960 000A5E80  2C 04 00 00 */	cmpwi r4, 0
/* 800AA964 000A5E84  41 82 00 10 */	beq .L_800AA974
/* 800AA968 000A5E88  88 1E 00 00 */	lbz r0, 0(r30)
/* 800AA96C 000A5E8C  7C 00 07 75 */	extsb. r0, r0
/* 800AA970 000A5E90  40 82 FF DC */	bne .L_800AA94C
.L_800AA974:
/* 800AA974 000A5E94  7C 04 28 50 */	subf r0, r4, r5
/* 800AA978 000A5E98  7C 66 02 14 */	add r3, r6, r0
.L_800AA97C:
/* 800AA97C 000A5E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 800AA980 000A5EA0  48 0B 20 11 */	bl _restgpr_27
/* 800AA984 000A5EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AA988 000A5EA8  7C 08 03 A6 */	mtlr r0
/* 800AA98C 000A5EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 800AA990 000A5EB0  4E 80 00 20 */	blr

glabel DVDReadAsyncPrio
/* 800AA994 000A5EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AA998 000A5EB8  7C 08 02 A6 */	mflr r0
/* 800AA99C 000A5EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AA9A0 000A5EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 800AA9A4 000A5EC4  48 0B 1F 9D */	bl _savegpr_26
/* 800AA9A8 000A5EC8  2C 06 00 00 */	cmpwi r6, 0
/* 800AA9AC 000A5ECC  7C 7A 1B 78 */	mr r26, r3
/* 800AA9B0 000A5ED0  7C 9B 23 78 */	mr r27, r4
/* 800AA9B4 000A5ED4  7C BC 2B 78 */	mr r28, r5
/* 800AA9B8 000A5ED8  7C DD 33 78 */	mr r29, r6
/* 800AA9BC 000A5EDC  7C FE 3B 78 */	mr r30, r7
/* 800AA9C0 000A5EE0  7D 1F 43 78 */	mr r31, r8
/* 800AA9C4 000A5EE4  41 80 00 10 */	blt .L_800AA9D4
/* 800AA9C8 000A5EE8  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800AA9CC 000A5EEC  7C 06 00 40 */	cmplw r6, r0
/* 800AA9D0 000A5EF0  40 81 00 1C */	ble .L_800AA9EC
.L_800AA9D4:
/* 800AA9D4 000A5EF4  3C A0 80 19 */	lis r5, lbl_801916E0@ha
/* 800AA9D8 000A5EF8  38 6D 83 48 */	addi r3, r13, lbl_802467C8@sda21
/* 800AA9DC 000A5EFC  38 A5 16 E0 */	addi r5, r5, lbl_801916E0@l
/* 800AA9E0 000A5F00  38 80 03 37 */	li r4, 0x337
/* 800AA9E4 000A5F04  4C C6 31 82 */	crclr 6
/* 800AA9E8 000A5F08  4B FE 6F 55 */	bl OSPanic
.L_800AA9EC:
/* 800AA9EC 000A5F0C  7C 9D E2 15 */	add. r4, r29, r28
/* 800AA9F0 000A5F10  41 80 00 14 */	blt .L_800AAA04
/* 800AA9F4 000A5F14  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 800AA9F8 000A5F18  38 03 00 20 */	addi r0, r3, 0x20
/* 800AA9FC 000A5F1C  7C 04 00 40 */	cmplw r4, r0
/* 800AAA00 000A5F20  41 80 00 1C */	blt .L_800AAA1C
.L_800AAA04:
/* 800AAA04 000A5F24  3C A0 80 19 */	lis r5, lbl_801916E0@ha
/* 800AAA08 000A5F28  38 6D 83 48 */	addi r3, r13, lbl_802467C8@sda21
/* 800AAA0C 000A5F2C  38 A5 16 E0 */	addi r5, r5, lbl_801916E0@l
/* 800AAA10 000A5F30  38 80 03 3D */	li r4, 0x33d
/* 800AAA14 000A5F34  4C C6 31 82 */	crclr 6
/* 800AAA18 000A5F38  4B FE 6F 25 */	bl OSPanic
.L_800AAA1C:
/* 800AAA1C 000A5F3C  80 DA 00 30 */	lwz r6, 0x30(r26)
/* 800AAA20 000A5F40  7F A0 16 70 */	srawi r0, r29, 2
/* 800AAA24 000A5F44  3C E0 80 0B */	lis r7, .L_800AAA64@ha
/* 800AAA28 000A5F48  93 DA 00 38 */	stw r30, 0x38(r26)
/* 800AAA2C 000A5F4C  7F 43 D3 78 */	mr r3, r26
/* 800AAA30 000A5F50  7F 64 DB 78 */	mr r4, r27
/* 800AAA34 000A5F54  7F 85 E3 78 */	mr r5, r28
/* 800AAA38 000A5F58  7F E8 FB 78 */	mr r8, r31
/* 800AAA3C 000A5F5C  7C C6 02 14 */	add r6, r6, r0
/* 800AAA40 000A5F60  38 E7 AA 64 */	addi r7, r7, .L_800AAA64@l
/* 800AAA44 000A5F64  48 00 3E 7D */	bl DVDReadAbsAsyncPrio
/* 800AAA48 000A5F68  39 61 00 20 */	addi r11, r1, 0x20
/* 800AAA4C 000A5F6C  38 60 00 01 */	li r3, 1
/* 800AAA50 000A5F70  48 0B 1F 3D */	bl _restgpr_26
/* 800AAA54 000A5F74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AAA58 000A5F78  7C 08 03 A6 */	mtlr r0
/* 800AAA5C 000A5F7C  38 21 00 20 */	addi r1, r1, 0x20
/* 800AAA60 000A5F80  4E 80 00 20 */	blr
.L_800AAA64:
/* 800AAA64 000A5F84  81 84 00 38 */	lwz r12, 0x38(r4)
/* 800AAA68 000A5F88  2C 0C 00 00 */	cmpwi r12, 0
/* 800AAA6C 000A5F8C  4D 82 00 20 */	beqlr
/* 800AAA70 000A5F90  7D 89 03 A6 */	mtctr r12
/* 800AAA74 000A5F94  4E 80 04 20 */	bctr
/* 800AAA78 000A5F98  4E 80 00 20 */	blr

glabel DVDReadPrio
/* 800AAA7C 000A5F9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AAA80 000A5FA0  7C 08 02 A6 */	mflr r0
/* 800AAA84 000A5FA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AAA88 000A5FA8  39 61 00 20 */	addi r11, r1, 0x20
/* 800AAA8C 000A5FAC  48 0B 1E B9 */	bl _savegpr_27
/* 800AAA90 000A5FB0  2C 06 00 00 */	cmpwi r6, 0
/* 800AAA94 000A5FB4  7C 7B 1B 78 */	mr r27, r3
/* 800AAA98 000A5FB8  7C 9C 23 78 */	mr r28, r4
/* 800AAA9C 000A5FBC  7C BD 2B 78 */	mr r29, r5
/* 800AAAA0 000A5FC0  7C DF 33 78 */	mr r31, r6
/* 800AAAA4 000A5FC4  7C FE 3B 78 */	mr r30, r7
/* 800AAAA8 000A5FC8  41 80 00 10 */	blt .L_800AAAB8
/* 800AAAAC 000A5FCC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800AAAB0 000A5FD0  7C 06 00 40 */	cmplw r6, r0
/* 800AAAB4 000A5FD4  40 81 00 1C */	ble .L_800AAAD0
.L_800AAAB8:
/* 800AAAB8 000A5FD8  3C A0 80 19 */	lis r5, lbl_80191714@ha
/* 800AAABC 000A5FDC  38 6D 83 48 */	addi r3, r13, lbl_802467C8@sda21
/* 800AAAC0 000A5FE0  38 A5 17 14 */	addi r5, r5, lbl_80191714@l
/* 800AAAC4 000A5FE4  38 80 03 7D */	li r4, 0x37d
/* 800AAAC8 000A5FE8  4C C6 31 82 */	crclr 6
/* 800AAACC 000A5FEC  4B FE 6E 71 */	bl OSPanic
.L_800AAAD0:
/* 800AAAD0 000A5FF0  7C 9F EA 15 */	add. r4, r31, r29
/* 800AAAD4 000A5FF4  41 80 00 14 */	blt .L_800AAAE8
/* 800AAAD8 000A5FF8  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 800AAADC 000A5FFC  38 03 00 20 */	addi r0, r3, 0x20
/* 800AAAE0 000A6000  7C 04 00 40 */	cmplw r4, r0
/* 800AAAE4 000A6004  41 80 00 1C */	blt .L_800AAB00
.L_800AAAE8:
/* 800AAAE8 000A6008  3C A0 80 19 */	lis r5, lbl_80191714@ha
/* 800AAAEC 000A600C  38 6D 83 48 */	addi r3, r13, lbl_802467C8@sda21
/* 800AAAF0 000A6010  38 A5 17 14 */	addi r5, r5, lbl_80191714@l
/* 800AAAF4 000A6014  38 80 03 83 */	li r4, 0x383
/* 800AAAF8 000A6018  4C C6 31 82 */	crclr 6
/* 800AAAFC 000A601C  4B FE 6E 41 */	bl OSPanic
.L_800AAB00:
/* 800AAB00 000A6020  80 DB 00 30 */	lwz r6, 0x30(r27)
/* 800AAB04 000A6024  7F E0 16 70 */	srawi r0, r31, 2
/* 800AAB08 000A6028  3C E0 80 0B */	lis r7, .L_800AABA4@ha
/* 800AAB0C 000A602C  7F 63 DB 78 */	mr r3, r27
/* 800AAB10 000A6030  7F 84 E3 78 */	mr r4, r28
/* 800AAB14 000A6034  7F A5 EB 78 */	mr r5, r29
/* 800AAB18 000A6038  7F C8 F3 78 */	mr r8, r30
/* 800AAB1C 000A603C  7C C6 02 14 */	add r6, r6, r0
/* 800AAB20 000A6040  38 E7 AB A4 */	addi r7, r7, .L_800AABA4@l
/* 800AAB24 000A6044  48 00 3D 9D */	bl DVDReadAbsAsyncPrio
/* 800AAB28 000A6048  2C 03 00 00 */	cmpwi r3, 0
/* 800AAB2C 000A604C  40 82 00 0C */	bne .L_800AAB38
/* 800AAB30 000A6050  38 60 FF FF */	li r3, -1
/* 800AAB34 000A6054  48 00 00 58 */	b .L_800AAB8C
.L_800AAB38:
/* 800AAB38 000A6058  4B FE A7 7D */	bl OSDisableInterrupts
/* 800AAB3C 000A605C  7C 7F 1B 78 */	mr r31, r3
.L_800AAB40:
/* 800AAB40 000A6060  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 800AAB44 000A6064  2C 00 00 00 */	cmpwi r0, 0
/* 800AAB48 000A6068  40 82 00 0C */	bne .L_800AAB54
/* 800AAB4C 000A606C  83 DB 00 20 */	lwz r30, 0x20(r27)
/* 800AAB50 000A6070  48 00 00 30 */	b .L_800AAB80
.L_800AAB54:
/* 800AAB54 000A6074  2C 00 FF FF */	cmpwi r0, -1
/* 800AAB58 000A6078  40 82 00 0C */	bne .L_800AAB64
/* 800AAB5C 000A607C  3B C0 FF FF */	li r30, -1
/* 800AAB60 000A6080  48 00 00 20 */	b .L_800AAB80
.L_800AAB64:
/* 800AAB64 000A6084  2C 00 00 0A */	cmpwi r0, 0xa
/* 800AAB68 000A6088  40 82 00 0C */	bne .L_800AAB74
/* 800AAB6C 000A608C  3B C0 FF FD */	li r30, -3
/* 800AAB70 000A6090  48 00 00 10 */	b .L_800AAB80
.L_800AAB74:
/* 800AAB74 000A6094  38 6D 8E F8 */	addi r3, r13, lbl_80247378@sda21
/* 800AAB78 000A6098  4B FE E0 71 */	bl OSSleepThread
/* 800AAB7C 000A609C  4B FF FF C4 */	b .L_800AAB40
.L_800AAB80:
/* 800AAB80 000A60A0  7F E3 FB 78 */	mr r3, r31
/* 800AAB84 000A60A4  4B FE A7 59 */	bl OSRestoreInterrupts
/* 800AAB88 000A60A8  7F C3 F3 78 */	mr r3, r30
.L_800AAB8C:
/* 800AAB8C 000A60AC  39 61 00 20 */	addi r11, r1, 0x20
/* 800AAB90 000A60B0  48 0B 1E 01 */	bl _restgpr_27
/* 800AAB94 000A60B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AAB98 000A60B8  7C 08 03 A6 */	mtlr r0
/* 800AAB9C 000A60BC  38 21 00 20 */	addi r1, r1, 0x20
/* 800AABA0 000A60C0  4E 80 00 20 */	blr
.L_800AABA4:
/* 800AABA4 000A60C4  38 6D 8E F8 */	addi r3, r13, lbl_80247378@sda21
/* 800AABA8 000A60C8  4B FE E1 2C */	b OSWakeupThread

glabel DVDOpenDir
/* 800AABAC 000A60CC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800AABB0 000A60D0  7C 08 02 A6 */	mflr r0
/* 800AABB4 000A60D4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800AABB8 000A60D8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800AABBC 000A60DC  48 0B 1D 89 */	bl _savegpr_27
/* 800AABC0 000A60E0  7C 7C 1B 78 */	mr r28, r3
/* 800AABC4 000A60E4  7C 9B 23 78 */	mr r27, r4
/* 800AABC8 000A60E8  4B FF F8 59 */	bl DVDConvertPathToEntrynum
/* 800AABCC 000A60EC  2C 03 00 00 */	cmpwi r3, 0
/* 800AABD0 000A60F0  40 80 02 20 */	bge .L_800AADF0
/* 800AABD4 000A60F4  83 AD 8E F0 */	lwz r29, lbl_80247370@sda21(r13)
/* 800AABD8 000A60F8  2C 1D 00 00 */	cmpwi r29, 0
/* 800AABDC 000A60FC  40 82 00 0C */	bne .L_800AABE8
/* 800AABE0 000A6100  38 80 00 00 */	li r4, 0
/* 800AABE4 000A6104  48 00 01 90 */	b .L_800AAD74
.L_800AABE8:
/* 800AABE8 000A6108  81 0D 8F 08 */	lwz r8, lbl_80247388@sda21(r13)
/* 800AABEC 000A610C  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800AABF0 000A6110  80 ED 8F 04 */	lwz r7, lbl_80247384@sda21(r13)
/* 800AABF4 000A6114  38 C8 00 04 */	addi r6, r8, 4
/* 800AABF8 000A6118  7C 66 00 2E */	lwzx r3, r6, r0
/* 800AABFC 000A611C  7C 08 00 2E */	lwzx r0, r8, r0
/* 800AAC00 000A6120  2C 03 00 00 */	cmpwi r3, 0
/* 800AAC04 000A6124  54 00 02 3E */	clrlwi r0, r0, 8
/* 800AAC08 000A6128  7F C7 02 14 */	add r30, r7, r0
/* 800AAC0C 000A612C  40 82 00 0C */	bne .L_800AAC18
/* 800AAC10 000A6130  38 80 00 00 */	li r4, 0
/* 800AAC14 000A6134  48 00 01 04 */	b .L_800AAD18
.L_800AAC18:
/* 800AAC18 000A6138  1C 03 00 0C */	mulli r0, r3, 0xc
/* 800AAC1C 000A613C  7C 66 00 2E */	lwzx r3, r6, r0
/* 800AAC20 000A6140  7C 08 00 2E */	lwzx r0, r8, r0
/* 800AAC24 000A6144  2C 03 00 00 */	cmpwi r3, 0
/* 800AAC28 000A6148  54 00 02 3E */	clrlwi r0, r0, 8
/* 800AAC2C 000A614C  7F E7 02 14 */	add r31, r7, r0
/* 800AAC30 000A6150  40 82 00 0C */	bne .L_800AAC3C
/* 800AAC34 000A6154  38 80 00 00 */	li r4, 0
/* 800AAC38 000A6158  48 00 00 84 */	b .L_800AACBC
.L_800AAC3C:
/* 800AAC3C 000A615C  1C 63 00 0C */	mulli r3, r3, 0xc
/* 800AAC40 000A6160  38 81 00 08 */	addi r4, r1, 8
/* 800AAC44 000A6164  38 A0 00 80 */	li r5, 0x80
/* 800AAC48 000A6168  7C 08 18 2E */	lwzx r0, r8, r3
/* 800AAC4C 000A616C  7C 66 18 2E */	lwzx r3, r6, r3
/* 800AAC50 000A6170  54 00 02 3E */	clrlwi r0, r0, 8
/* 800AAC54 000A6174  7F 67 02 14 */	add r27, r7, r0
/* 800AAC58 000A6178  4B FF FB 7D */	bl func_800AA7D4
/* 800AAC5C 000A617C  28 03 00 80 */	cmplwi r3, 0x80
/* 800AAC60 000A6180  7C 64 1B 78 */	mr r4, r3
/* 800AAC64 000A6184  40 82 00 08 */	bne .L_800AAC6C
/* 800AAC68 000A6188  48 00 00 54 */	b .L_800AACBC
.L_800AAC6C:
/* 800AAC6C 000A618C  38 83 00 01 */	addi r4, r3, 1
/* 800AAC70 000A6190  38 A1 00 08 */	addi r5, r1, 8
/* 800AAC74 000A6194  38 00 00 2F */	li r0, 0x2f
/* 800AAC78 000A6198  7C 05 19 AE */	stbx r0, r5, r3
/* 800AAC7C 000A619C  20 C4 00 80 */	subfic r6, r4, 0x80
/* 800AAC80 000A61A0  7C C3 33 78 */	mr r3, r6
/* 800AAC84 000A61A4  7C A5 22 14 */	add r5, r5, r4
/* 800AAC88 000A61A8  48 00 00 18 */	b .L_800AACA0
.L_800AAC8C:
/* 800AAC8C 000A61AC  88 1B 00 00 */	lbz r0, 0(r27)
/* 800AAC90 000A61B0  38 63 FF FF */	addi r3, r3, -1
/* 800AAC94 000A61B4  3B 7B 00 01 */	addi r27, r27, 1
/* 800AAC98 000A61B8  98 05 00 00 */	stb r0, 0(r5)
/* 800AAC9C 000A61BC  38 A5 00 01 */	addi r5, r5, 1
.L_800AACA0:
/* 800AACA0 000A61C0  2C 03 00 00 */	cmpwi r3, 0
/* 800AACA4 000A61C4  41 82 00 10 */	beq .L_800AACB4
/* 800AACA8 000A61C8  88 1B 00 00 */	lbz r0, 0(r27)
/* 800AACAC 000A61CC  7C 00 07 75 */	extsb. r0, r0
/* 800AACB0 000A61D0  40 82 FF DC */	bne .L_800AAC8C
.L_800AACB4:
/* 800AACB4 000A61D4  7C 03 30 50 */	subf r0, r3, r6
/* 800AACB8 000A61D8  7C 84 02 14 */	add r4, r4, r0
.L_800AACBC:
/* 800AACBC 000A61DC  28 04 00 80 */	cmplwi r4, 0x80
/* 800AACC0 000A61E0  40 82 00 08 */	bne .L_800AACC8
/* 800AACC4 000A61E4  48 00 00 54 */	b .L_800AAD18
.L_800AACC8:
/* 800AACC8 000A61E8  38 A4 00 01 */	addi r5, r4, 1
/* 800AACCC 000A61EC  38 61 00 08 */	addi r3, r1, 8
/* 800AACD0 000A61F0  38 00 00 2F */	li r0, 0x2f
/* 800AACD4 000A61F4  7C 03 21 AE */	stbx r0, r3, r4
/* 800AACD8 000A61F8  20 C5 00 80 */	subfic r6, r5, 0x80
/* 800AACDC 000A61FC  7C C4 33 78 */	mr r4, r6
/* 800AACE0 000A6200  7C 63 2A 14 */	add r3, r3, r5
/* 800AACE4 000A6204  48 00 00 18 */	b .L_800AACFC
.L_800AACE8:
/* 800AACE8 000A6208  88 1F 00 00 */	lbz r0, 0(r31)
/* 800AACEC 000A620C  38 84 FF FF */	addi r4, r4, -1
/* 800AACF0 000A6210  3B FF 00 01 */	addi r31, r31, 1
/* 800AACF4 000A6214  98 03 00 00 */	stb r0, 0(r3)
/* 800AACF8 000A6218  38 63 00 01 */	addi r3, r3, 1
.L_800AACFC:
/* 800AACFC 000A621C  2C 04 00 00 */	cmpwi r4, 0
/* 800AAD00 000A6220  41 82 00 10 */	beq .L_800AAD10
/* 800AAD04 000A6224  88 1F 00 00 */	lbz r0, 0(r31)
/* 800AAD08 000A6228  7C 00 07 75 */	extsb. r0, r0
/* 800AAD0C 000A622C  40 82 FF DC */	bne .L_800AACE8
.L_800AAD10:
/* 800AAD10 000A6230  7C 04 30 50 */	subf r0, r4, r6
/* 800AAD14 000A6234  7C 85 02 14 */	add r4, r5, r0
.L_800AAD18:
/* 800AAD18 000A6238  28 04 00 80 */	cmplwi r4, 0x80
/* 800AAD1C 000A623C  40 82 00 08 */	bne .L_800AAD24
/* 800AAD20 000A6240  48 00 00 54 */	b .L_800AAD74
.L_800AAD24:
/* 800AAD24 000A6244  38 A4 00 01 */	addi r5, r4, 1
/* 800AAD28 000A6248  38 61 00 08 */	addi r3, r1, 8
/* 800AAD2C 000A624C  38 00 00 2F */	li r0, 0x2f
/* 800AAD30 000A6250  7C 03 21 AE */	stbx r0, r3, r4
/* 800AAD34 000A6254  20 C5 00 80 */	subfic r6, r5, 0x80
/* 800AAD38 000A6258  7C C4 33 78 */	mr r4, r6
/* 800AAD3C 000A625C  7C 63 2A 14 */	add r3, r3, r5
/* 800AAD40 000A6260  48 00 00 18 */	b .L_800AAD58
.L_800AAD44:
/* 800AAD44 000A6264  88 1E 00 00 */	lbz r0, 0(r30)
/* 800AAD48 000A6268  38 84 FF FF */	addi r4, r4, -1
/* 800AAD4C 000A626C  3B DE 00 01 */	addi r30, r30, 1
/* 800AAD50 000A6270  98 03 00 00 */	stb r0, 0(r3)
/* 800AAD54 000A6274  38 63 00 01 */	addi r3, r3, 1
.L_800AAD58:
/* 800AAD58 000A6278  2C 04 00 00 */	cmpwi r4, 0
/* 800AAD5C 000A627C  41 82 00 10 */	beq .L_800AAD6C
/* 800AAD60 000A6280  88 1E 00 00 */	lbz r0, 0(r30)
/* 800AAD64 000A6284  7C 00 07 75 */	extsb. r0, r0
/* 800AAD68 000A6288  40 82 FF DC */	bne .L_800AAD44
.L_800AAD6C:
/* 800AAD6C 000A628C  7C 04 30 50 */	subf r0, r4, r6
/* 800AAD70 000A6290  7C 85 02 14 */	add r4, r5, r0
.L_800AAD74:
/* 800AAD74 000A6294  28 04 00 80 */	cmplwi r4, 0x80
/* 800AAD78 000A6298  40 82 00 10 */	bne .L_800AAD88
/* 800AAD7C 000A629C  38 00 00 00 */	li r0, 0
/* 800AAD80 000A62A0  98 01 00 87 */	stb r0, 0x87(r1)
/* 800AAD84 000A62A4  48 00 00 4C */	b .L_800AADD0
.L_800AAD88:
/* 800AAD88 000A62A8  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800AAD8C 000A62AC  80 6D 8F 08 */	lwz r3, lbl_80247388@sda21(r13)
/* 800AAD90 000A62B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 800AAD94 000A62B4  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 800AAD98 000A62B8  41 82 00 2C */	beq .L_800AADC4
/* 800AAD9C 000A62BC  28 04 00 7F */	cmplwi r4, 0x7f
/* 800AADA0 000A62C0  40 82 00 14 */	bne .L_800AADB4
/* 800AADA4 000A62C4  38 61 00 08 */	addi r3, r1, 8
/* 800AADA8 000A62C8  38 00 00 00 */	li r0, 0
/* 800AADAC 000A62CC  7C 03 21 AE */	stbx r0, r3, r4
/* 800AADB0 000A62D0  48 00 00 20 */	b .L_800AADD0
.L_800AADB4:
/* 800AADB4 000A62D4  38 61 00 08 */	addi r3, r1, 8
/* 800AADB8 000A62D8  38 00 00 2F */	li r0, 0x2f
/* 800AADBC 000A62DC  7C 03 21 AE */	stbx r0, r3, r4
/* 800AADC0 000A62E0  38 84 00 01 */	addi r4, r4, 1
.L_800AADC4:
/* 800AADC4 000A62E4  38 61 00 08 */	addi r3, r1, 8
/* 800AADC8 000A62E8  38 00 00 00 */	li r0, 0
/* 800AADCC 000A62EC  7C 03 21 AE */	stbx r0, r3, r4
.L_800AADD0:
/* 800AADD0 000A62F0  3C 60 80 19 */	lis r3, lbl_80191744@ha
/* 800AADD4 000A62F4  7F 84 E3 78 */	mr r4, r28
/* 800AADD8 000A62F8  38 63 17 44 */	addi r3, r3, lbl_80191744@l
/* 800AADDC 000A62FC  38 A1 00 08 */	addi r5, r1, 8
/* 800AADE0 000A6300  4C C6 31 82 */	crclr 6
/* 800AADE4 000A6304  4B FE 6A C9 */	bl OSReport
/* 800AADE8 000A6308  38 60 00 00 */	li r3, 0
/* 800AADEC 000A630C  48 00 00 40 */	b .L_800AAE2C
.L_800AADF0:
/* 800AADF0 000A6310  1C A3 00 0C */	mulli r5, r3, 0xc
/* 800AADF4 000A6314  80 8D 8F 08 */	lwz r4, lbl_80247388@sda21(r13)
/* 800AADF8 000A6318  7C 04 28 2E */	lwzx r0, r4, r5
/* 800AADFC 000A631C  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 800AAE00 000A6320  40 82 00 0C */	bne .L_800AAE0C
/* 800AAE04 000A6324  38 60 00 00 */	li r3, 0
/* 800AAE08 000A6328  48 00 00 24 */	b .L_800AAE2C
.L_800AAE0C:
/* 800AAE0C 000A632C  38 03 00 01 */	addi r0, r3, 1
/* 800AAE10 000A6330  90 7B 00 00 */	stw r3, 0(r27)
/* 800AAE14 000A6334  38 60 00 01 */	li r3, 1
/* 800AAE18 000A6338  90 1B 00 04 */	stw r0, 4(r27)
/* 800AAE1C 000A633C  80 0D 8F 08 */	lwz r0, lbl_80247388@sda21(r13)
/* 800AAE20 000A6340  7C 80 2A 14 */	add r4, r0, r5
/* 800AAE24 000A6344  80 04 00 08 */	lwz r0, 8(r4)
/* 800AAE28 000A6348  90 1B 00 08 */	stw r0, 8(r27)
.L_800AAE2C:
/* 800AAE2C 000A634C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800AAE30 000A6350  48 0B 1B 61 */	bl _restgpr_27
/* 800AAE34 000A6354  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800AAE38 000A6358  7C 08 03 A6 */	mtlr r0
/* 800AAE3C 000A635C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800AAE40 000A6360  4E 80 00 20 */	blr

glabel DVDReadDir
/* 800AAE44 000A6364  81 03 00 04 */	lwz r8, 4(r3)
/* 800AAE48 000A6368  80 03 00 00 */	lwz r0, 0(r3)
/* 800AAE4C 000A636C  7C 08 00 40 */	cmplw r8, r0
/* 800AAE50 000A6370  40 81 00 10 */	ble .L_800AAE60
/* 800AAE54 000A6374  80 03 00 08 */	lwz r0, 8(r3)
/* 800AAE58 000A6378  7C 00 40 40 */	cmplw r0, r8
/* 800AAE5C 000A637C  41 81 00 0C */	bgt .L_800AAE68
.L_800AAE60:
/* 800AAE60 000A6380  38 60 00 00 */	li r3, 0
/* 800AAE64 000A6384  4E 80 00 20 */	blr
.L_800AAE68:
/* 800AAE68 000A6388  91 04 00 00 */	stw r8, 0(r4)
/* 800AAE6C 000A638C  1C E8 00 0C */	mulli r7, r8, 0xc
/* 800AAE70 000A6390  80 AD 8F 08 */	lwz r5, lbl_80247388@sda21(r13)
/* 800AAE74 000A6394  7C 05 38 2E */	lwzx r0, r5, r7
/* 800AAE78 000A6398  54 05 00 0E */	rlwinm r5, r0, 0, 0, 7
/* 800AAE7C 000A639C  7C 05 00 D0 */	neg r0, r5
/* 800AAE80 000A63A0  7C 00 2B 78 */	or r0, r0, r5
/* 800AAE84 000A63A4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800AAE88 000A63A8  90 04 00 04 */	stw r0, 4(r4)
/* 800AAE8C 000A63AC  80 AD 8F 08 */	lwz r5, lbl_80247388@sda21(r13)
/* 800AAE90 000A63B0  80 CD 8F 04 */	lwz r6, lbl_80247384@sda21(r13)
/* 800AAE94 000A63B4  7C 05 38 2E */	lwzx r0, r5, r7
/* 800AAE98 000A63B8  54 00 02 3E */	clrlwi r0, r0, 8
/* 800AAE9C 000A63BC  7C 06 02 14 */	add r0, r6, r0
/* 800AAEA0 000A63C0  90 04 00 08 */	stw r0, 8(r4)
/* 800AAEA4 000A63C4  80 8D 8F 08 */	lwz r4, lbl_80247388@sda21(r13)
/* 800AAEA8 000A63C8  7C 04 38 2E */	lwzx r0, r4, r7
/* 800AAEAC 000A63CC  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 800AAEB0 000A63D0  41 82 00 10 */	beq .L_800AAEC0
/* 800AAEB4 000A63D4  7C 84 3A 14 */	add r4, r4, r7
/* 800AAEB8 000A63D8  80 04 00 08 */	lwz r0, 8(r4)
/* 800AAEBC 000A63DC  48 00 00 08 */	b .L_800AAEC4
.L_800AAEC0:
/* 800AAEC0 000A63E0  38 08 00 01 */	addi r0, r8, 1
.L_800AAEC4:
/* 800AAEC4 000A63E4  90 03 00 04 */	stw r0, 4(r3)
/* 800AAEC8 000A63E8  38 60 00 01 */	li r3, 1
/* 800AAECC 000A63EC  4E 80 00 20 */	blr

glabel DVDCloseDir
/* 800AAED0 000A63F0  38 60 00 01 */	li r3, 1
/* 800AAED4 000A63F4  4E 80 00 20 */	blr

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247370
	.skip 0x8

glabel lbl_80247378
	.skip 0x8

glabel lbl_80247380
	.skip 0x4

glabel lbl_80247384
	.skip 0x4

glabel lbl_80247388
	.skip 0x4

glabel lbl_8024738C
	.skip 0x4
