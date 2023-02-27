.include "macros.inc"

.section .text, "ax"

glabel ESOpen
/* 8010762C 00102B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80107630 00102B50  7C 08 02 A6 */	mflr r0
/* 80107634 00102B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80107638 00102B58  80 0D 86 80 */	lwz r0, lbl_80246B00@sda21(r13)
/* 8010763C 00102B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80107640 00102B60  40 80 00 14 */	bge .L_80107654
/* 80107644 00102B64  38 6D 86 78 */	addi r3, r13, lbl_80246AF8@sda21
/* 80107648 00102B68  38 80 00 00 */	li r4, 0
/* 8010764C 00102B6C  4B FB 80 79 */	bl IOS_Open
/* 80107650 00102B70  90 6D 86 80 */	stw r3, lbl_80246B00@sda21(r13)
.L_80107654:
/* 80107654 00102B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80107658 00102B78  7C 08 03 A6 */	mtlr r0
/* 8010765C 00102B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80107660 00102B80  4E 80 00 20 */	blr

glabel contentInitHandleNAND
/* 80107664 00102B84  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80107668 00102B88  7C 2C 0B 78 */	mr r12, r1
/* 8010766C 00102B8C  21 6B F4 C0 */	subfic r11, r11, -2880
/* 80107670 00102B90  7C 21 59 6E */	stwux r1, r1, r11
/* 80107674 00102B94  7C 08 02 A6 */	mflr r0
/* 80107678 00102B98  7D 8B 63 78 */	mr r11, r12
/* 8010767C 00102B9C  90 0C 00 04 */	stw r0, 4(r12)
/* 80107680 00102BA0  48 05 52 BD */	bl _savegpr_25
/* 80107684 00102BA4  80 CD 86 80 */	lwz r6, lbl_80246B00@sda21(r13)
/* 80107688 00102BA8  7C 9C 23 78 */	mr r28, r4
/* 8010768C 00102BAC  7C BD 2B 78 */	mr r29, r5
/* 80107690 00102BB0  38 E1 01 28 */	addi r7, r1, 0x128
/* 80107694 00102BB4  2C 06 00 00 */	cmpwi r6, 0
/* 80107698 00102BB8  38 81 00 40 */	addi r4, r1, 0x40
/* 8010769C 00102BBC  40 80 00 0C */	bge .L_801076A8
/* 801076A0 00102BC0  3B E0 FC 07 */	li r31, -1017
/* 801076A4 00102BC4  48 00 00 2C */	b .L_801076D0
.L_801076A8:
/* 801076A8 00102BC8  38 00 00 04 */	li r0, 4
/* 801076AC 00102BCC  90 61 00 40 */	stw r3, 0x40(r1)
/* 801076B0 00102BD0  7C C3 33 78 */	mr r3, r6
/* 801076B4 00102BD4  38 A0 00 01 */	li r5, 1
/* 801076B8 00102BD8  90 81 01 28 */	stw r4, 0x128(r1)
/* 801076BC 00102BDC  38 80 00 09 */	li r4, 9
/* 801076C0 00102BE0  38 C0 00 00 */	li r6, 0
/* 801076C4 00102BE4  90 01 01 2C */	stw r0, 0x12c(r1)
/* 801076C8 00102BE8  4B FB 8C E5 */	bl IOS_IoCtlv
/* 801076CC 00102BEC  7C 7F 1B 78 */	mr r31, r3
.L_801076D0:
/* 801076D0 00102BF0  2C 1F 00 00 */	cmpwi r31, 0
/* 801076D4 00102BF4  40 80 00 98 */	bge .L_8010776C
/* 801076D8 00102BF8  3C 60 80 1A */	lis r3, lbl_801A0770@ha
/* 801076DC 00102BFC  38 00 00 4F */	li r0, 0x4f
/* 801076E0 00102C00  38 63 07 70 */	addi r3, r3, lbl_801A0770@l
/* 801076E4 00102C04  38 A1 08 A4 */	addi r5, r1, 0x8a4
/* 801076E8 00102C08  38 83 FF FC */	addi r4, r3, -4
/* 801076EC 00102C0C  7C 09 03 A6 */	mtctr r0
.L_801076F0:
/* 801076F0 00102C10  80 64 00 04 */	lwz r3, 4(r4)
/* 801076F4 00102C14  84 04 00 08 */	lwzu r0, 8(r4)
/* 801076F8 00102C18  90 65 00 04 */	stw r3, 4(r5)
/* 801076FC 00102C1C  94 05 00 08 */	stwu r0, 8(r5)
/* 80107700 00102C20  42 00 FF F0 */	bdnz .L_801076F0
/* 80107704 00102C24  2C 1F 00 00 */	cmpwi r31, 0
/* 80107708 00102C28  38 A0 00 00 */	li r5, 0
/* 8010770C 00102C2C  38 60 00 00 */	li r3, 0
/* 80107710 00102C30  41 80 00 08 */	blt .L_80107718
/* 80107714 00102C34  48 00 00 50 */	b .L_80107764
.L_80107718:
/* 80107718 00102C38  38 00 00 4F */	li r0, 0x4f
/* 8010771C 00102C3C  38 81 08 A8 */	addi r4, r1, 0x8a8
/* 80107720 00102C40  7C 09 03 A6 */	mtctr r0
.L_80107724:
/* 80107724 00102C44  7C 04 18 2E */	lwzx r0, r4, r3
/* 80107728 00102C48  7C 1F 00 00 */	cmpw r31, r0
/* 8010772C 00102C4C  40 82 00 14 */	bne .L_80107740
/* 80107730 00102C50  38 05 00 01 */	addi r0, r5, 1
/* 80107734 00102C54  54 00 10 3A */	slwi r0, r0, 2
/* 80107738 00102C58  7F E4 00 2E */	lwzx r31, r4, r0
/* 8010773C 00102C5C  48 00 00 28 */	b .L_80107764
.L_80107740:
/* 80107740 00102C60  38 A5 00 02 */	addi r5, r5, 2
/* 80107744 00102C64  38 63 00 08 */	addi r3, r3, 8
/* 80107748 00102C68  42 00 FF DC */	bdnz .L_80107724
/* 8010774C 00102C6C  3C 60 80 1A */	lis r3, lbl_801A0738@ha
/* 80107750 00102C70  7F E4 FB 78 */	mr r4, r31
/* 80107754 00102C74  38 63 07 38 */	addi r3, r3, lbl_801A0738@l
/* 80107758 00102C78  4C C6 31 82 */	crclr 6
/* 8010775C 00102C7C  4B F8 A1 51 */	bl OSReport
/* 80107760 00102C80  3B E0 EC 39 */	li r31, -5063
.L_80107764:
/* 80107764 00102C84  7F E3 FB 78 */	mr r3, r31
/* 80107768 00102C88  48 00 02 DC */	b .L_80107A44
.L_8010776C:
/* 8010776C 00102C8C  7F A3 EB 78 */	mr r3, r29
/* 80107770 00102C90  38 80 00 20 */	li r4, 0x20
/* 80107774 00102C94  4B FB 07 65 */	bl MEMAllocFromAllocator
/* 80107778 00102C98  3B 60 00 00 */	li r27, 0
/* 8010777C 00102C9C  7C 7A 1B 78 */	mr r26, r3
/* 80107780 00102CA0  7C 03 D8 40 */	cmplw r3, r27
/* 80107784 00102CA4  40 82 00 0C */	bne .L_80107790
/* 80107788 00102CA8  38 60 EC 77 */	li r3, -5001
/* 8010778C 00102CAC  48 00 02 B8 */	b .L_80107A44
.L_80107790:
/* 80107790 00102CB0  7F E3 FB 78 */	mr r3, r31
/* 80107794 00102CB4  7F 44 D3 78 */	mr r4, r26
/* 80107798 00102CB8  38 A0 00 20 */	li r5, 0x20
/* 8010779C 00102CBC  48 00 06 61 */	bl ES_ReadContent
/* 801077A0 00102CC0  2C 03 00 00 */	cmpwi r3, 0
/* 801077A4 00102CC4  7C 7E 1B 78 */	mr r30, r3
/* 801077A8 00102CC8  40 80 00 A4 */	bge .L_8010784C
/* 801077AC 00102CCC  7F A3 EB 78 */	mr r3, r29
/* 801077B0 00102CD0  7F 44 D3 78 */	mr r4, r26
/* 801077B4 00102CD4  4B FB 07 35 */	bl MEMFreeToAllocator
/* 801077B8 00102CD8  3C 60 80 1A */	lis r3, lbl_801A0770@ha
/* 801077BC 00102CDC  38 00 00 4F */	li r0, 0x4f
/* 801077C0 00102CE0  38 63 07 70 */	addi r3, r3, lbl_801A0770@l
/* 801077C4 00102CE4  38 A1 06 2C */	addi r5, r1, 0x62c
/* 801077C8 00102CE8  38 83 FF FC */	addi r4, r3, -4
/* 801077CC 00102CEC  7C 09 03 A6 */	mtctr r0
.L_801077D0:
/* 801077D0 00102CF0  80 64 00 04 */	lwz r3, 4(r4)
/* 801077D4 00102CF4  84 04 00 08 */	lwzu r0, 8(r4)
/* 801077D8 00102CF8  90 65 00 04 */	stw r3, 4(r5)
/* 801077DC 00102CFC  94 05 00 08 */	stwu r0, 8(r5)
/* 801077E0 00102D00  42 00 FF F0 */	bdnz .L_801077D0
/* 801077E4 00102D04  2C 1E 00 00 */	cmpwi r30, 0
/* 801077E8 00102D08  38 A0 00 00 */	li r5, 0
/* 801077EC 00102D0C  38 60 00 00 */	li r3, 0
/* 801077F0 00102D10  41 80 00 08 */	blt .L_801077F8
/* 801077F4 00102D14  48 00 00 50 */	b .L_80107844
.L_801077F8:
/* 801077F8 00102D18  38 00 00 4F */	li r0, 0x4f
/* 801077FC 00102D1C  38 81 06 30 */	addi r4, r1, 0x630
/* 80107800 00102D20  7C 09 03 A6 */	mtctr r0
.L_80107804:
/* 80107804 00102D24  7C 04 18 2E */	lwzx r0, r4, r3
/* 80107808 00102D28  7C 1E 00 00 */	cmpw r30, r0
/* 8010780C 00102D2C  40 82 00 14 */	bne .L_80107820
/* 80107810 00102D30  38 05 00 01 */	addi r0, r5, 1
/* 80107814 00102D34  54 00 10 3A */	slwi r0, r0, 2
/* 80107818 00102D38  7F C4 00 2E */	lwzx r30, r4, r0
/* 8010781C 00102D3C  48 00 00 28 */	b .L_80107844
.L_80107820:
/* 80107820 00102D40  38 A5 00 02 */	addi r5, r5, 2
/* 80107824 00102D44  38 63 00 08 */	addi r3, r3, 8
/* 80107828 00102D48  42 00 FF DC */	bdnz .L_80107804
/* 8010782C 00102D4C  3C 60 80 1A */	lis r3, lbl_801A0738@ha
/* 80107830 00102D50  7F C4 F3 78 */	mr r4, r30
/* 80107834 00102D54  38 63 07 38 */	addi r3, r3, lbl_801A0738@l
/* 80107838 00102D58  4C C6 31 82 */	crclr 6
/* 8010783C 00102D5C  4B F8 A0 71 */	bl OSReport
/* 80107840 00102D60  3B C0 EC 39 */	li r30, -5063
.L_80107844:
/* 80107844 00102D64  7F C3 F3 78 */	mr r3, r30
/* 80107848 00102D68  48 00 01 FC */	b .L_80107A44
.L_8010784C:
/* 8010784C 00102D6C  80 BA 00 0C */	lwz r5, 0xc(r26)
/* 80107850 00102D70  7F A3 EB 78 */	mr r3, r29
/* 80107854 00102D74  7F 44 D3 78 */	mr r4, r26
/* 80107858 00102D78  38 05 00 1F */	addi r0, r5, 0x1f
/* 8010785C 00102D7C  54 19 00 34 */	rlwinm r25, r0, 0, 0, 0x1a
/* 80107860 00102D80  4B FB 06 89 */	bl MEMFreeToAllocator
/* 80107864 00102D84  7F E3 FB 78 */	mr r3, r31
/* 80107868 00102D88  38 80 00 00 */	li r4, 0
/* 8010786C 00102D8C  38 A0 00 00 */	li r5, 0
/* 80107870 00102D90  48 00 06 2D */	bl ES_SeekContent
/* 80107874 00102D94  2C 03 00 00 */	cmpwi r3, 0
/* 80107878 00102D98  7C 7E 1B 78 */	mr r30, r3
/* 8010787C 00102D9C  40 80 00 98 */	bge .L_80107914
/* 80107880 00102DA0  3C 80 80 1A */	lis r4, lbl_801A0770@ha
/* 80107884 00102DA4  38 00 00 4F */	li r0, 0x4f
/* 80107888 00102DA8  38 84 07 70 */	addi r4, r4, lbl_801A0770@l
/* 8010788C 00102DAC  38 C1 03 B4 */	addi r6, r1, 0x3b4
/* 80107890 00102DB0  38 A4 FF FC */	addi r5, r4, -4
/* 80107894 00102DB4  7C 09 03 A6 */	mtctr r0
.L_80107898:
/* 80107898 00102DB8  80 85 00 04 */	lwz r4, 4(r5)
/* 8010789C 00102DBC  84 05 00 08 */	lwzu r0, 8(r5)
/* 801078A0 00102DC0  90 86 00 04 */	stw r4, 4(r6)
/* 801078A4 00102DC4  94 06 00 08 */	stwu r0, 8(r6)
/* 801078A8 00102DC8  42 00 FF F0 */	bdnz .L_80107898
/* 801078AC 00102DCC  2C 03 00 00 */	cmpwi r3, 0
/* 801078B0 00102DD0  38 C0 00 00 */	li r6, 0
/* 801078B4 00102DD4  38 80 00 00 */	li r4, 0
/* 801078B8 00102DD8  41 80 00 08 */	blt .L_801078C0
/* 801078BC 00102DDC  48 00 00 50 */	b .L_8010790C
.L_801078C0:
/* 801078C0 00102DE0  38 00 00 4F */	li r0, 0x4f
/* 801078C4 00102DE4  38 A1 03 B8 */	addi r5, r1, 0x3b8
/* 801078C8 00102DE8  7C 09 03 A6 */	mtctr r0
.L_801078CC:
/* 801078CC 00102DEC  7C 05 20 2E */	lwzx r0, r5, r4
/* 801078D0 00102DF0  7C 03 00 00 */	cmpw r3, r0
/* 801078D4 00102DF4  40 82 00 14 */	bne .L_801078E8
/* 801078D8 00102DF8  38 06 00 01 */	addi r0, r6, 1
/* 801078DC 00102DFC  54 00 10 3A */	slwi r0, r0, 2
/* 801078E0 00102E00  7F C5 00 2E */	lwzx r30, r5, r0
/* 801078E4 00102E04  48 00 00 28 */	b .L_8010790C
.L_801078E8:
/* 801078E8 00102E08  38 C6 00 02 */	addi r6, r6, 2
/* 801078EC 00102E0C  38 84 00 08 */	addi r4, r4, 8
/* 801078F0 00102E10  42 00 FF DC */	bdnz .L_801078CC
/* 801078F4 00102E14  3C 60 80 1A */	lis r3, lbl_801A0738@ha
/* 801078F8 00102E18  7F C4 F3 78 */	mr r4, r30
/* 801078FC 00102E1C  38 63 07 38 */	addi r3, r3, lbl_801A0738@l
/* 80107900 00102E20  4C C6 31 82 */	crclr 6
/* 80107904 00102E24  4B F8 9F A9 */	bl OSReport
/* 80107908 00102E28  3B C0 EC 39 */	li r30, -5063
.L_8010790C:
/* 8010790C 00102E2C  7F C3 F3 78 */	mr r3, r30
/* 80107910 00102E30  48 00 01 34 */	b .L_80107A44
.L_80107914:
/* 80107914 00102E34  38 19 00 1F */	addi r0, r25, 0x1f
/* 80107918 00102E38  7F A3 EB 78 */	mr r3, r29
/* 8010791C 00102E3C  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80107920 00102E40  4B FB 05 B9 */	bl MEMAllocFromAllocator
/* 80107924 00102E44  7C 03 D8 40 */	cmplw r3, r27
/* 80107928 00102E48  7C 7A 1B 78 */	mr r26, r3
/* 8010792C 00102E4C  40 82 00 0C */	bne .L_80107938
/* 80107930 00102E50  38 60 EC 77 */	li r3, -5001
/* 80107934 00102E54  48 00 01 10 */	b .L_80107A44
.L_80107938:
/* 80107938 00102E58  7F E3 FB 78 */	mr r3, r31
/* 8010793C 00102E5C  7F 44 D3 78 */	mr r4, r26
/* 80107940 00102E60  7F 25 CB 78 */	mr r5, r25
/* 80107944 00102E64  48 00 04 B9 */	bl ES_ReadContent
/* 80107948 00102E68  2C 03 00 00 */	cmpwi r3, 0
/* 8010794C 00102E6C  7C 7E 1B 78 */	mr r30, r3
/* 80107950 00102E70  40 80 00 A4 */	bge .L_801079F4
/* 80107954 00102E74  7F A3 EB 78 */	mr r3, r29
/* 80107958 00102E78  7F 44 D3 78 */	mr r4, r26
/* 8010795C 00102E7C  4B FB 05 8D */	bl MEMFreeToAllocator
/* 80107960 00102E80  3C 60 80 1A */	lis r3, lbl_801A0770@ha
/* 80107964 00102E84  38 00 00 4F */	li r0, 0x4f
/* 80107968 00102E88  38 63 07 70 */	addi r3, r3, lbl_801A0770@l
/* 8010796C 00102E8C  38 A1 01 3C */	addi r5, r1, 0x13c
/* 80107970 00102E90  38 83 FF FC */	addi r4, r3, -4
/* 80107974 00102E94  7C 09 03 A6 */	mtctr r0
.L_80107978:
/* 80107978 00102E98  80 64 00 04 */	lwz r3, 4(r4)
/* 8010797C 00102E9C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80107980 00102EA0  90 65 00 04 */	stw r3, 4(r5)
/* 80107984 00102EA4  94 05 00 08 */	stwu r0, 8(r5)
/* 80107988 00102EA8  42 00 FF F0 */	bdnz .L_80107978
/* 8010798C 00102EAC  2C 1E 00 00 */	cmpwi r30, 0
/* 80107990 00102EB0  38 A0 00 00 */	li r5, 0
/* 80107994 00102EB4  38 60 00 00 */	li r3, 0
/* 80107998 00102EB8  41 80 00 08 */	blt .L_801079A0
/* 8010799C 00102EBC  48 00 00 50 */	b .L_801079EC
.L_801079A0:
/* 801079A0 00102EC0  38 00 00 4F */	li r0, 0x4f
/* 801079A4 00102EC4  38 81 01 40 */	addi r4, r1, 0x140
/* 801079A8 00102EC8  7C 09 03 A6 */	mtctr r0
.L_801079AC:
/* 801079AC 00102ECC  7C 04 18 2E */	lwzx r0, r4, r3
/* 801079B0 00102ED0  7C 1E 00 00 */	cmpw r30, r0
/* 801079B4 00102ED4  40 82 00 14 */	bne .L_801079C8
/* 801079B8 00102ED8  38 05 00 01 */	addi r0, r5, 1
/* 801079BC 00102EDC  54 00 10 3A */	slwi r0, r0, 2
/* 801079C0 00102EE0  7F C4 00 2E */	lwzx r30, r4, r0
/* 801079C4 00102EE4  48 00 00 28 */	b .L_801079EC
.L_801079C8:
/* 801079C8 00102EE8  38 A5 00 02 */	addi r5, r5, 2
/* 801079CC 00102EEC  38 63 00 08 */	addi r3, r3, 8
/* 801079D0 00102EF0  42 00 FF DC */	bdnz .L_801079AC
/* 801079D4 00102EF4  3C 60 80 1A */	lis r3, lbl_801A0738@ha
/* 801079D8 00102EF8  7F C4 F3 78 */	mr r4, r30
/* 801079DC 00102EFC  38 63 07 38 */	addi r3, r3, lbl_801A0738@l
/* 801079E0 00102F00  4C C6 31 82 */	crclr 6
/* 801079E4 00102F04  4B F8 9E C9 */	bl OSReport
/* 801079E8 00102F08  3B C0 EC 39 */	li r30, -5063
.L_801079EC:
/* 801079EC 00102F0C  7F C3 F3 78 */	mr r3, r30
/* 801079F0 00102F10  48 00 00 54 */	b .L_80107A44
.L_801079F4:
/* 801079F4 00102F14  7F 43 D3 78 */	mr r3, r26
/* 801079F8 00102F18  38 81 00 20 */	addi r4, r1, 0x20
/* 801079FC 00102F1C  4B FB 6A 51 */	bl ARCInitHandle
/* 80107A00 00102F20  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80107A04 00102F24  38 60 00 00 */	li r3, 0
/* 80107A08 00102F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80107A0C 00102F2C  90 9C 00 00 */	stw r4, 0(r28)
/* 80107A10 00102F30  90 1C 00 04 */	stw r0, 4(r28)
/* 80107A14 00102F34  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80107A18 00102F38  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80107A1C 00102F3C  90 9C 00 08 */	stw r4, 8(r28)
/* 80107A20 00102F40  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80107A24 00102F44  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80107A28 00102F48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80107A2C 00102F4C  90 9C 00 10 */	stw r4, 0x10(r28)
/* 80107A30 00102F50  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80107A34 00102F54  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80107A38 00102F58  90 1C 00 18 */	stw r0, 0x18(r28)
/* 80107A3C 00102F5C  93 FC 00 1C */	stw r31, 0x1c(r28)
/* 80107A40 00102F60  93 BC 00 20 */	stw r29, 0x20(r28)
.L_80107A44:
/* 80107A44 00102F64  81 41 00 00 */	lwz r10, 0(r1)
/* 80107A48 00102F68  7D 4B 53 78 */	mr r11, r10
/* 80107A4C 00102F6C  48 05 4F 3D */	bl _restgpr_25
/* 80107A50 00102F70  80 0A 00 04 */	lwz r0, 4(r10)
/* 80107A54 00102F74  7C 08 03 A6 */	mtlr r0
/* 80107A58 00102F78  7D 41 53 78 */	mr r1, r10
/* 80107A5C 00102F7C  4E 80 00 20 */	blr

glabel ARCGetFile
/* 80107A60 00102F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80107A64 00102F84  7C 08 02 A6 */	mflr r0
/* 80107A68 00102F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80107A6C 00102F8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80107A70 00102F90  7C BF 2B 78 */	mr r31, r5
/* 80107A74 00102F94  38 A1 00 08 */	addi r5, r1, 8
/* 80107A78 00102F98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80107A7C 00102F9C  7C 7E 1B 78 */	mr r30, r3
/* 80107A80 00102FA0  4B FB 6A 6D */	bl ARCOpen
/* 80107A84 00102FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80107A88 00102FA8  40 82 00 0C */	bne .L_80107A94
/* 80107A8C 00102FAC  38 60 EC 6F */	li r3, -5009
/* 80107A90 00102FB0  48 00 00 24 */	b .L_80107AB4
.L_80107A94:
/* 80107A94 00102FB4  93 DF 00 00 */	stw r30, 0(r31)
/* 80107A98 00102FB8  38 00 00 00 */	li r0, 0
/* 80107A9C 00102FBC  38 60 00 00 */	li r3, 0
/* 80107AA0 00102FC0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80107AA4 00102FC4  90 9F 00 04 */	stw r4, 4(r31)
/* 80107AA8 00102FC8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80107AAC 00102FCC  90 9F 00 08 */	stw r4, 8(r31)
/* 80107AB0 00102FD0  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80107AB4:
/* 80107AB4 00102FD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80107AB8 00102FD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80107ABC 00102FDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80107AC0 00102FE0  7C 08 03 A6 */	mtlr r0
/* 80107AC4 00102FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80107AC8 00102FE8  4E 80 00 20 */	blr

glabel contentFastOpenNAND
/* 80107ACC 00102FEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80107AD0 00102FF0  7C 08 02 A6 */	mflr r0
/* 80107AD4 00102FF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80107AD8 00102FF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80107ADC 00102FFC  7C BF 2B 78 */	mr r31, r5
/* 80107AE0 00103000  38 A1 00 08 */	addi r5, r1, 8
/* 80107AE4 00103004  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80107AE8 00103008  7C 7E 1B 78 */	mr r30, r3
/* 80107AEC 0010300C  4B FB 6C A5 */	bl ARCFastOpen
/* 80107AF0 00103010  2C 03 00 00 */	cmpwi r3, 0
/* 80107AF4 00103014  40 82 00 0C */	bne .L_80107B00
/* 80107AF8 00103018  38 60 EC 76 */	li r3, -5002
/* 80107AFC 0010301C  48 00 00 24 */	b .L_80107B20
.L_80107B00:
/* 80107B00 00103020  93 DF 00 00 */	stw r30, 0(r31)
/* 80107B04 00103024  38 00 00 00 */	li r0, 0
/* 80107B08 00103028  38 60 00 00 */	li r3, 0
/* 80107B0C 0010302C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80107B10 00103030  90 9F 00 04 */	stw r4, 4(r31)
/* 80107B14 00103034  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80107B18 00103038  90 9F 00 08 */	stw r4, 8(r31)
/* 80107B1C 0010303C  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80107B20:
/* 80107B20 00103040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80107B24 00103044  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80107B28 00103048  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80107B2C 0010304C  7C 08 03 A6 */	mtlr r0
/* 80107B30 00103050  38 21 00 20 */	addi r1, r1, 0x20
/* 80107B34 00103054  4E 80 00 20 */	blr

glabel contentConvertPathToEntrynumNAND
/* 80107B38 00103058  4B FB 6C A8 */	b ARCConvertPathToEntrynum

glabel contentGetLengthNAND
/* 80107B3C 0010305C  80 63 00 08 */	lwz r3, 8(r3)
/* 80107B40 00103060  4E 80 00 20 */	blr

glabel contentSeekNAND
/* 80107B44 00103064  2C 05 00 01 */	cmpwi r5, 1
/* 80107B48 00103068  41 82 00 24 */	beq .L_80107B6C
/* 80107B4C 0010306C  40 80 00 10 */	bge .L_80107B5C
/* 80107B50 00103070  2C 05 00 00 */	cmpwi r5, 0
/* 80107B54 00103074  40 80 00 38 */	bge .L_80107B8C
/* 80107B58 00103078  48 00 00 2C */	b .L_80107B84
.L_80107B5C:
/* 80107B5C 0010307C  2C 05 00 03 */	cmpwi r5, 3
/* 80107B60 00103080  40 80 00 24 */	bge .L_80107B84
/* 80107B64 00103084  48 00 00 14 */	b .L_80107B78
/* 80107B68 00103088  48 00 00 24 */	b .L_80107B8C
.L_80107B6C:
/* 80107B6C 0010308C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80107B70 00103090  7C 80 22 14 */	add r4, r0, r4
/* 80107B74 00103094  48 00 00 18 */	b .L_80107B8C
.L_80107B78:
/* 80107B78 00103098  80 03 00 08 */	lwz r0, 8(r3)
/* 80107B7C 0010309C  7C 80 22 14 */	add r4, r0, r4
/* 80107B80 001030A0  48 00 00 0C */	b .L_80107B8C
.L_80107B84:
/* 80107B84 001030A4  38 60 EC 6F */	li r3, -5009
/* 80107B88 001030A8  4E 80 00 20 */	blr
.L_80107B8C:
/* 80107B8C 001030AC  80 03 00 08 */	lwz r0, 8(r3)
/* 80107B90 001030B0  7C 04 00 40 */	cmplw r4, r0
/* 80107B94 001030B4  40 81 00 0C */	ble .L_80107BA0
/* 80107B98 001030B8  38 60 EC 6F */	li r3, -5009
/* 80107B9C 001030BC  4E 80 00 20 */	blr
.L_80107BA0:
/* 80107BA0 001030C0  90 83 00 0C */	stw r4, 0xc(r3)
/* 80107BA4 001030C4  38 60 00 00 */	li r3, 0
/* 80107BA8 001030C8  4E 80 00 20 */	blr

glabel contentReadNAND
/* 80107BAC 001030CC  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 80107BB0 001030D0  7C 08 02 A6 */	mflr r0
/* 80107BB4 001030D4  90 01 02 94 */	stw r0, 0x294(r1)
/* 80107BB8 001030D8  93 E1 02 8C */	stw r31, 0x28c(r1)
/* 80107BBC 001030DC  7C BF 2B 78 */	mr r31, r5
/* 80107BC0 001030E0  93 C1 02 88 */	stw r30, 0x288(r1)
/* 80107BC4 001030E4  7C 9E 23 78 */	mr r30, r4
/* 80107BC8 001030E8  93 A1 02 84 */	stw r29, 0x284(r1)
/* 80107BCC 001030EC  7C 7D 1B 78 */	mr r29, r3
/* 80107BD0 001030F0  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 80107BD4 001030F4  80 03 00 08 */	lwz r0, 8(r3)
/* 80107BD8 001030F8  7C 87 32 14 */	add r4, r7, r6
/* 80107BDC 001030FC  7C 04 00 40 */	cmplw r4, r0
/* 80107BE0 00103100  40 81 00 0C */	ble .L_80107BEC
/* 80107BE4 00103104  38 60 EC 6F */	li r3, -5009
/* 80107BE8 00103108  48 00 00 D0 */	b .L_80107CB8
.L_80107BEC:
/* 80107BEC 0010310C  80 63 00 00 */	lwz r3, 0(r3)
/* 80107BF0 00103110  38 A0 00 00 */	li r5, 0
/* 80107BF4 00103114  80 1D 00 04 */	lwz r0, 4(r29)
/* 80107BF8 00103118  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80107BFC 0010311C  7C 80 22 14 */	add r4, r0, r4
/* 80107C00 00103120  48 00 02 9D */	bl ES_SeekContent
/* 80107C04 00103124  2C 03 00 00 */	cmpwi r3, 0
/* 80107C08 00103128  40 80 00 0C */	bge .L_80107C14
/* 80107C0C 0010312C  38 60 EC 74 */	li r3, -5004
/* 80107C10 00103130  48 00 00 A8 */	b .L_80107CB8
.L_80107C14:
/* 80107C14 00103134  80 7D 00 00 */	lwz r3, 0(r29)
/* 80107C18 00103138  7F C4 F3 78 */	mr r4, r30
/* 80107C1C 0010313C  7F E5 FB 78 */	mr r5, r31
/* 80107C20 00103140  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80107C24 00103144  48 00 01 D9 */	bl ES_ReadContent
/* 80107C28 00103148  3C A0 80 1A */	lis r5, lbl_801A0770@ha
/* 80107C2C 0010314C  38 00 00 4F */	li r0, 0x4f
/* 80107C30 00103150  38 A5 07 70 */	addi r5, r5, lbl_801A0770@l
/* 80107C34 00103154  7C 64 1B 78 */	mr r4, r3
/* 80107C38 00103158  38 E1 00 04 */	addi r7, r1, 4
/* 80107C3C 0010315C  38 C5 FF FC */	addi r6, r5, -4
/* 80107C40 00103160  7C 09 03 A6 */	mtctr r0
.L_80107C44:
/* 80107C44 00103164  80 A6 00 04 */	lwz r5, 4(r6)
/* 80107C48 00103168  84 06 00 08 */	lwzu r0, 8(r6)
/* 80107C4C 0010316C  90 A7 00 04 */	stw r5, 4(r7)
/* 80107C50 00103170  94 07 00 08 */	stwu r0, 8(r7)
/* 80107C54 00103174  42 00 FF F0 */	bdnz .L_80107C44
/* 80107C58 00103178  2C 03 00 00 */	cmpwi r3, 0
/* 80107C5C 0010317C  38 A0 00 00 */	li r5, 0
/* 80107C60 00103180  41 80 00 08 */	blt .L_80107C68
/* 80107C64 00103184  48 00 00 50 */	b .L_80107CB4
.L_80107C68:
/* 80107C68 00103188  38 00 00 4F */	li r0, 0x4f
/* 80107C6C 0010318C  38 C1 00 08 */	addi r6, r1, 8
/* 80107C70 00103190  7C 09 03 A6 */	mtctr r0
.L_80107C74:
/* 80107C74 00103194  80 06 00 00 */	lwz r0, 0(r6)
/* 80107C78 00103198  7C 03 00 00 */	cmpw r3, r0
/* 80107C7C 0010319C  40 82 00 18 */	bne .L_80107C94
/* 80107C80 001031A0  38 05 00 01 */	addi r0, r5, 1
/* 80107C84 001031A4  38 61 00 08 */	addi r3, r1, 8
/* 80107C88 001031A8  54 00 10 3A */	slwi r0, r0, 2
/* 80107C8C 001031AC  7C 83 00 2E */	lwzx r4, r3, r0
/* 80107C90 001031B0  48 00 00 24 */	b .L_80107CB4
.L_80107C94:
/* 80107C94 001031B4  38 C6 00 08 */	addi r6, r6, 8
/* 80107C98 001031B8  38 A5 00 02 */	addi r5, r5, 2
/* 80107C9C 001031BC  42 00 FF D8 */	bdnz .L_80107C74
/* 80107CA0 001031C0  3C 60 80 1A */	lis r3, lbl_801A0738@ha
/* 80107CA4 001031C4  38 63 07 38 */	addi r3, r3, lbl_801A0738@l
/* 80107CA8 001031C8  4C C6 31 82 */	crclr 6
/* 80107CAC 001031CC  4B F8 9C 01 */	bl OSReport
/* 80107CB0 001031D0  38 80 EC 39 */	li r4, -5063
.L_80107CB4:
/* 80107CB4 001031D4  7C 83 23 78 */	mr r3, r4
.L_80107CB8:
/* 80107CB8 001031D8  80 01 02 94 */	lwz r0, 0x294(r1)
/* 80107CBC 001031DC  83 E1 02 8C */	lwz r31, 0x28c(r1)
/* 80107CC0 001031E0  83 C1 02 88 */	lwz r30, 0x288(r1)
/* 80107CC4 001031E4  83 A1 02 84 */	lwz r29, 0x284(r1)
/* 80107CC8 001031E8  7C 08 03 A6 */	mtlr r0
/* 80107CCC 001031EC  38 21 02 90 */	addi r1, r1, 0x290
/* 80107CD0 001031F0  4E 80 00 20 */	blr

glabel contentCloseNAND
/* 80107CD4 001031F4  38 60 00 00 */	li r3, 0
/* 80107CD8 001031F8  4E 80 00 20 */	blr

glabel contentReleaseHandleNAND
/* 80107CDC 001031FC  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80107CE0 00103200  7C 2C 0B 78 */	mr r12, r1
/* 80107CE4 00103204  21 6B FC 40 */	subfic r11, r11, -960
/* 80107CE8 00103208  7C 21 59 6E */	stwux r1, r1, r11
/* 80107CEC 0010320C  7C 08 02 A6 */	mflr r0
/* 80107CF0 00103210  90 0C 00 04 */	stw r0, 4(r12)
/* 80107CF4 00103214  93 EC FF FC */	stw r31, -4(r12)
/* 80107CF8 00103218  7C 7F 1B 78 */	mr r31, r3
/* 80107CFC 0010321C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80107D00 00103220  80 9F 00 00 */	lwz r4, 0(r31)
/* 80107D04 00103224  4B FB 01 E5 */	bl MEMFreeToAllocator
/* 80107D08 00103228  80 6D 86 80 */	lwz r3, lbl_80246B00@sda21(r13)
/* 80107D0C 0010322C  38 E1 01 08 */	addi r7, r1, 0x108
/* 80107D10 00103230  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80107D14 00103234  38 A1 00 20 */	addi r5, r1, 0x20
/* 80107D18 00103238  2C 03 00 00 */	cmpwi r3, 0
/* 80107D1C 0010323C  41 80 00 0C */	blt .L_80107D28
/* 80107D20 00103240  2C 04 00 00 */	cmpwi r4, 0
/* 80107D24 00103244  40 80 00 0C */	bge .L_80107D30
.L_80107D28:
/* 80107D28 00103248  38 60 FC 07 */	li r3, -1017
/* 80107D2C 0010324C  48 00 00 24 */	b .L_80107D50
.L_80107D30:
/* 80107D30 00103250  38 00 00 04 */	li r0, 4
/* 80107D34 00103254  90 81 00 20 */	stw r4, 0x20(r1)
/* 80107D38 00103258  38 80 00 0B */	li r4, 0xb
/* 80107D3C 0010325C  38 C0 00 00 */	li r6, 0
/* 80107D40 00103260  90 A1 01 08 */	stw r5, 0x108(r1)
/* 80107D44 00103264  38 A0 00 01 */	li r5, 1
/* 80107D48 00103268  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80107D4C 0010326C  4B FB 86 61 */	bl IOS_IoCtlv
.L_80107D50:
/* 80107D50 00103270  3C A0 80 1A */	lis r5, lbl_801A0770@ha
/* 80107D54 00103274  38 00 00 4F */	li r0, 0x4f
/* 80107D58 00103278  38 A5 07 70 */	addi r5, r5, lbl_801A0770@l
/* 80107D5C 0010327C  7C 64 1B 78 */	mr r4, r3
/* 80107D60 00103280  38 E1 01 1C */	addi r7, r1, 0x11c
/* 80107D64 00103284  38 C5 FF FC */	addi r6, r5, -4
/* 80107D68 00103288  7C 09 03 A6 */	mtctr r0
.L_80107D6C:
/* 80107D6C 0010328C  80 A6 00 04 */	lwz r5, 4(r6)
/* 80107D70 00103290  84 06 00 08 */	lwzu r0, 8(r6)
/* 80107D74 00103294  90 A7 00 04 */	stw r5, 4(r7)
/* 80107D78 00103298  94 07 00 08 */	stwu r0, 8(r7)
/* 80107D7C 0010329C  42 00 FF F0 */	bdnz .L_80107D6C
/* 80107D80 001032A0  2C 03 00 00 */	cmpwi r3, 0
/* 80107D84 001032A4  38 E0 00 00 */	li r7, 0
/* 80107D88 001032A8  38 A0 00 00 */	li r5, 0
/* 80107D8C 001032AC  41 80 00 08 */	blt .L_80107D94
/* 80107D90 001032B0  48 00 00 4C */	b .L_80107DDC
.L_80107D94:
/* 80107D94 001032B4  38 00 00 4F */	li r0, 0x4f
/* 80107D98 001032B8  38 C1 01 20 */	addi r6, r1, 0x120
/* 80107D9C 001032BC  7C 09 03 A6 */	mtctr r0
.L_80107DA0:
/* 80107DA0 001032C0  7C 06 28 2E */	lwzx r0, r6, r5
/* 80107DA4 001032C4  7C 03 00 00 */	cmpw r3, r0
/* 80107DA8 001032C8  40 82 00 14 */	bne .L_80107DBC
/* 80107DAC 001032CC  38 07 00 01 */	addi r0, r7, 1
/* 80107DB0 001032D0  54 00 10 3A */	slwi r0, r0, 2
/* 80107DB4 001032D4  7C 86 00 2E */	lwzx r4, r6, r0
/* 80107DB8 001032D8  48 00 00 24 */	b .L_80107DDC
.L_80107DBC:
/* 80107DBC 001032DC  38 E7 00 02 */	addi r7, r7, 2
/* 80107DC0 001032E0  38 A5 00 08 */	addi r5, r5, 8
/* 80107DC4 001032E4  42 00 FF DC */	bdnz .L_80107DA0
/* 80107DC8 001032E8  3C 60 80 1A */	lis r3, lbl_801A0738@ha
/* 80107DCC 001032EC  38 63 07 38 */	addi r3, r3, lbl_801A0738@l
/* 80107DD0 001032F0  4C C6 31 82 */	crclr 6
/* 80107DD4 001032F4  4B F8 9A D9 */	bl OSReport
/* 80107DD8 001032F8  38 80 EC 39 */	li r4, -5063
.L_80107DDC:
/* 80107DDC 001032FC  7C 83 23 78 */	mr r3, r4
/* 80107DE0 00103300  81 41 00 00 */	lwz r10, 0(r1)
/* 80107DE4 00103304  83 EA FF FC */	lwz r31, -4(r10)
/* 80107DE8 00103308  80 0A 00 04 */	lwz r0, 4(r10)
/* 80107DEC 0010330C  7C 08 03 A6 */	mtlr r0
/* 80107DF0 00103310  7D 41 53 78 */	mr r1, r10
/* 80107DF4 00103314  4E 80 00 20 */	blr

glabel contentOpenDirNAND
/* 80107DF8 00103318  4B FB 6E B8 */	b ARCOpenDir

glabel ES_ReadContent
/* 80107DFC 0010331C  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80107E00 00103320  7C 2C 0B 78 */	mr r12, r1
/* 80107E04 00103324  21 6B FE E0 */	subfic r11, r11, -288
/* 80107E08 00103328  7C 21 59 6E */	stwux r1, r1, r11
/* 80107E0C 0010332C  7C 08 02 A6 */	mflr r0
/* 80107E10 00103330  90 0C 00 04 */	stw r0, 4(r12)
/* 80107E14 00103334  38 E1 01 08 */	addi r7, r1, 0x108
/* 80107E18 00103338  39 01 00 20 */	addi r8, r1, 0x20
/* 80107E1C 0010333C  80 CD 86 80 */	lwz r6, lbl_80246B00@sda21(r13)
/* 80107E20 00103340  2C 06 00 00 */	cmpwi r6, 0
/* 80107E24 00103344  41 80 00 20 */	blt .L_80107E44
/* 80107E28 00103348  2C 03 00 00 */	cmpwi r3, 0
/* 80107E2C 0010334C  41 80 00 18 */	blt .L_80107E44
/* 80107E30 00103350  38 00 00 00 */	li r0, 0
/* 80107E34 00103354  7C 04 00 40 */	cmplw r4, r0
/* 80107E38 00103358  41 82 00 0C */	beq .L_80107E44
/* 80107E3C 0010335C  2C 05 00 00 */	cmpwi r5, 0
/* 80107E40 00103360  40 82 00 0C */	bne .L_80107E4C
.L_80107E44:
/* 80107E44 00103364  38 60 FC 07 */	li r3, -1017
/* 80107E48 00103368  48 00 00 40 */	b .L_80107E88
.L_80107E4C:
/* 80107E4C 0010336C  54 80 06 FF */	clrlwi. r0, r4, 0x1b
/* 80107E50 00103370  41 82 00 0C */	beq .L_80107E5C
/* 80107E54 00103374  38 60 FC 07 */	li r3, -1017
/* 80107E58 00103378  48 00 00 30 */	b .L_80107E88
.L_80107E5C:
/* 80107E5C 0010337C  38 00 00 04 */	li r0, 4
/* 80107E60 00103380  90 61 00 20 */	stw r3, 0x20(r1)
/* 80107E64 00103384  7C C3 33 78 */	mr r3, r6
/* 80107E68 00103388  38 C0 00 01 */	li r6, 1
/* 80107E6C 0010338C  90 81 01 10 */	stw r4, 0x110(r1)
/* 80107E70 00103390  38 80 00 0A */	li r4, 0xa
/* 80107E74 00103394  90 A1 01 14 */	stw r5, 0x114(r1)
/* 80107E78 00103398  38 A0 00 01 */	li r5, 1
/* 80107E7C 0010339C  91 01 01 08 */	stw r8, 0x108(r1)
/* 80107E80 001033A0  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80107E84 001033A4  4B FB 85 29 */	bl IOS_IoCtlv
.L_80107E88:
/* 80107E88 001033A8  81 41 00 00 */	lwz r10, 0(r1)
/* 80107E8C 001033AC  80 0A 00 04 */	lwz r0, 4(r10)
/* 80107E90 001033B0  7C 08 03 A6 */	mtlr r0
/* 80107E94 001033B4  7D 41 53 78 */	mr r1, r10
/* 80107E98 001033B8  4E 80 00 20 */	blr

glabel ES_SeekContent
/* 80107E9C 001033BC  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 80107EA0 001033C0  7C 2C 0B 78 */	mr r12, r1
/* 80107EA4 001033C4  21 6B FE E0 */	subfic r11, r11, -288
/* 80107EA8 001033C8  7C 21 59 6E */	stwux r1, r1, r11
/* 80107EAC 001033CC  7C 08 02 A6 */	mflr r0
/* 80107EB0 001033D0  90 0C 00 04 */	stw r0, 4(r12)
/* 80107EB4 001033D4  38 E1 01 08 */	addi r7, r1, 0x108
/* 80107EB8 001033D8  39 01 00 20 */	addi r8, r1, 0x20
/* 80107EBC 001033DC  39 21 00 40 */	addi r9, r1, 0x40
/* 80107EC0 001033E0  80 CD 86 80 */	lwz r6, lbl_80246B00@sda21(r13)
/* 80107EC4 001033E4  39 41 00 60 */	addi r10, r1, 0x60
/* 80107EC8 001033E8  2C 06 00 00 */	cmpwi r6, 0
/* 80107ECC 001033EC  40 80 00 0C */	bge .L_80107ED8
/* 80107ED0 001033F0  38 60 FC 07 */	li r3, -1017
/* 80107ED4 001033F4  48 00 00 40 */	b .L_80107F14
.L_80107ED8:
/* 80107ED8 001033F8  38 00 00 04 */	li r0, 4
/* 80107EDC 001033FC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80107EE0 00103400  7C C3 33 78 */	mr r3, r6
/* 80107EE4 00103404  38 C0 00 00 */	li r6, 0
/* 80107EE8 00103408  90 81 00 40 */	stw r4, 0x40(r1)
/* 80107EEC 0010340C  38 80 00 23 */	li r4, 0x23
/* 80107EF0 00103410  90 A1 00 60 */	stw r5, 0x60(r1)
/* 80107EF4 00103414  38 A0 00 03 */	li r5, 3
/* 80107EF8 00103418  91 01 01 08 */	stw r8, 0x108(r1)
/* 80107EFC 0010341C  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80107F00 00103420  91 21 01 10 */	stw r9, 0x110(r1)
/* 80107F04 00103424  90 01 01 14 */	stw r0, 0x114(r1)
/* 80107F08 00103428  91 41 01 18 */	stw r10, 0x118(r1)
/* 80107F0C 0010342C  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80107F10 00103430  4B FB 84 9D */	bl IOS_IoCtlv
.L_80107F14:
/* 80107F14 00103434  81 41 00 00 */	lwz r10, 0(r1)
/* 80107F18 00103438  80 0A 00 04 */	lwz r0, 4(r10)
/* 80107F1C 0010343C  7C 08 03 A6 */	mtlr r0
/* 80107F20 00103440  7D 41 53 78 */	mr r1, r10
/* 80107F24 00103444  4E 80 00 20 */	blr
