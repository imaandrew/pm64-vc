.include "macros.inc"

.section .text, "ax"

glabel iosCreateHeap
/* 800C0570 000BBA90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C0574 000BBA94  7C 08 02 A6 */	mflr r0
/* 800C0578 000BBA98  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C057C 000BBA9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C0580 000BBAA0  3B E0 FF FC */	li r31, -4
/* 800C0584 000BBAA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C0588 000BBAA8  7C 9E 23 78 */	mr r30, r4
/* 800C058C 000BBAAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C0590 000BBAB0  7C 7D 1B 78 */	mr r29, r3
/* 800C0594 000BBAB4  4B FD 4D 21 */	bl OSDisableInterrupts
/* 800C0598 000BBAB8  57 A0 06 FF */	clrlwi. r0, r29, 0x1b
/* 800C059C 000BBABC  40 82 00 E0 */	bne .L_800C067C
/* 800C05A0 000BBAC0  3C 80 80 1F */	lis r4, lbl_801ED090@ha
/* 800C05A4 000BBAC4  84 04 D0 90 */	lwzu r0, lbl_801ED090@l(r4)
/* 800C05A8 000BBAC8  3B E0 00 00 */	li r31, 0
/* 800C05AC 000BBACC  2C 00 00 00 */	cmpwi r0, 0
/* 800C05B0 000BBAD0  41 82 00 78 */	beq .L_800C0628
/* 800C05B4 000BBAD4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800C05B8 000BBAD8  3B E0 00 01 */	li r31, 1
/* 800C05BC 000BBADC  2C 00 00 00 */	cmpwi r0, 0
/* 800C05C0 000BBAE0  41 82 00 68 */	beq .L_800C0628
/* 800C05C4 000BBAE4  80 04 00 20 */	lwz r0, 0x20(r4)
/* 800C05C8 000BBAE8  3B E0 00 02 */	li r31, 2
/* 800C05CC 000BBAEC  2C 00 00 00 */	cmpwi r0, 0
/* 800C05D0 000BBAF0  41 82 00 58 */	beq .L_800C0628
/* 800C05D4 000BBAF4  80 04 00 30 */	lwz r0, 0x30(r4)
/* 800C05D8 000BBAF8  3B E0 00 03 */	li r31, 3
/* 800C05DC 000BBAFC  2C 00 00 00 */	cmpwi r0, 0
/* 800C05E0 000BBB00  41 82 00 48 */	beq .L_800C0628
/* 800C05E4 000BBB04  80 04 00 40 */	lwz r0, 0x40(r4)
/* 800C05E8 000BBB08  3B E0 00 04 */	li r31, 4
/* 800C05EC 000BBB0C  2C 00 00 00 */	cmpwi r0, 0
/* 800C05F0 000BBB10  41 82 00 38 */	beq .L_800C0628
/* 800C05F4 000BBB14  80 04 00 50 */	lwz r0, 0x50(r4)
/* 800C05F8 000BBB18  3B E0 00 05 */	li r31, 5
/* 800C05FC 000BBB1C  2C 00 00 00 */	cmpwi r0, 0
/* 800C0600 000BBB20  41 82 00 28 */	beq .L_800C0628
/* 800C0604 000BBB24  80 04 00 60 */	lwz r0, 0x60(r4)
/* 800C0608 000BBB28  3B E0 00 06 */	li r31, 6
/* 800C060C 000BBB2C  2C 00 00 00 */	cmpwi r0, 0
/* 800C0610 000BBB30  41 82 00 18 */	beq .L_800C0628
/* 800C0614 000BBB34  80 04 00 70 */	lwz r0, 0x70(r4)
/* 800C0618 000BBB38  3B E0 00 07 */	li r31, 7
/* 800C061C 000BBB3C  2C 00 00 00 */	cmpwi r0, 0
/* 800C0620 000BBB40  41 82 00 08 */	beq .L_800C0628
/* 800C0624 000BBB44  3B E0 00 08 */	li r31, 8
.L_800C0628:
/* 800C0628 000BBB48  2C 1F 00 08 */	cmpwi r31, 8
/* 800C062C 000BBB4C  40 82 00 0C */	bne .L_800C0638
/* 800C0630 000BBB50  3B E0 FF FB */	li r31, -5
/* 800C0634 000BBB54  48 00 00 48 */	b .L_800C067C
.L_800C0638:
/* 800C0638 000BBB58  3C A0 80 1F */	lis r5, lbl_801ED090@ha
/* 800C063C 000BBB5C  57 E0 20 36 */	slwi r0, r31, 4
/* 800C0640 000BBB60  38 A5 D0 90 */	addi r5, r5, lbl_801ED090@l
/* 800C0644 000BBB64  3C 80 BA BE */	lis r4, 0xbabe
/* 800C0648 000BBB68  7C C5 02 14 */	add r6, r5, r0
/* 800C064C 000BBB6C  38 00 00 00 */	li r0, 0
/* 800C0650 000BBB70  93 A6 00 00 */	stw r29, 0(r6)
/* 800C0654 000BBB74  38 BE FF F0 */	addi r5, r30, -16
/* 800C0658 000BBB78  93 C6 00 08 */	stw r30, 8(r6)
/* 800C065C 000BBB7C  93 A6 00 0C */	stw r29, 0xc(r6)
/* 800C0660 000BBB80  90 9D 00 00 */	stw r4, 0(r29)
/* 800C0664 000BBB84  80 86 00 0C */	lwz r4, 0xc(r6)
/* 800C0668 000BBB88  90 A4 00 04 */	stw r5, 4(r4)
/* 800C066C 000BBB8C  80 86 00 0C */	lwz r4, 0xc(r6)
/* 800C0670 000BBB90  90 04 00 08 */	stw r0, 8(r4)
/* 800C0674 000BBB94  80 86 00 0C */	lwz r4, 0xc(r6)
/* 800C0678 000BBB98  90 04 00 0C */	stw r0, 0xc(r4)
.L_800C067C:
/* 800C067C 000BBB9C  4B FD 4C 61 */	bl OSRestoreInterrupts
/* 800C0680 000BBBA0  7F E3 FB 78 */	mr r3, r31
/* 800C0684 000BBBA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C0688 000BBBA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C068C 000BBBAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C0690 000BBBB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0694 000BBBB4  7C 08 03 A6 */	mtlr r0
/* 800C0698 000BBBB8  38 21 00 20 */	addi r1, r1, 0x20
/* 800C069C 000BBBBC  4E 80 00 20 */	blr

glabel __iosAlloc
/* 800C06A0 000BBBC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C06A4 000BBBC4  7C 08 02 A6 */	mflr r0
/* 800C06A8 000BBBC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C06AC 000BBBCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C06B0 000BBBD0  3B E0 00 00 */	li r31, 0
/* 800C06B4 000BBBD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C06B8 000BBBD8  7C BE 2B 78 */	mr r30, r5
/* 800C06BC 000BBBDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C06C0 000BBBE0  7C 9D 23 78 */	mr r29, r4
/* 800C06C4 000BBBE4  93 81 00 10 */	stw r28, 0x10(r1)
/* 800C06C8 000BBBE8  7C 7C 1B 78 */	mr r28, r3
/* 800C06CC 000BBBEC  4B FD 4B E9 */	bl OSDisableInterrupts
/* 800C06D0 000BBBF0  2C 1D 00 00 */	cmpwi r29, 0
/* 800C06D4 000BBBF4  41 82 01 A8 */	beq .L_800C087C
/* 800C06D8 000BBBF8  2C 1E 00 00 */	cmpwi r30, 0
/* 800C06DC 000BBBFC  41 82 01 A0 */	beq .L_800C087C
/* 800C06E0 000BBC00  38 1E FF FF */	addi r0, r30, -1
/* 800C06E4 000BBC04  7F C0 00 39 */	and. r0, r30, r0
/* 800C06E8 000BBC08  40 82 01 94 */	bne .L_800C087C
/* 800C06EC 000BBC0C  28 1E 00 20 */	cmplwi r30, 0x20
/* 800C06F0 000BBC10  40 80 00 08 */	bge .L_800C06F8
/* 800C06F4 000BBC14  3B C0 00 20 */	li r30, 0x20
.L_800C06F8:
/* 800C06F8 000BBC18  2C 1C 00 00 */	cmpwi r28, 0
/* 800C06FC 000BBC1C  38 1D 00 1F */	addi r0, r29, 0x1f
/* 800C0700 000BBC20  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 800C0704 000BBC24  41 80 00 24 */	blt .L_800C0728
/* 800C0708 000BBC28  2C 1C 00 08 */	cmpwi r28, 8
/* 800C070C 000BBC2C  40 80 00 1C */	bge .L_800C0728
/* 800C0710 000BBC30  3C 80 80 1F */	lis r4, lbl_801ED090@ha
/* 800C0714 000BBC34  57 80 20 36 */	slwi r0, r28, 4
/* 800C0718 000BBC38  38 84 D0 90 */	addi r4, r4, lbl_801ED090@l
/* 800C071C 000BBC3C  7C 04 00 6E */	lwzux r0, r4, r0
/* 800C0720 000BBC40  2C 00 00 00 */	cmpwi r0, 0
/* 800C0724 000BBC44  40 82 00 0C */	bne .L_800C0730
.L_800C0728:
/* 800C0728 000BBC48  3B E0 00 00 */	li r31, 0
/* 800C072C 000BBC4C  48 00 01 50 */	b .L_800C087C
.L_800C0730:
/* 800C0730 000BBC50  81 04 00 0C */	lwz r8, 0xc(r4)
/* 800C0734 000BBC54  38 DE FF FF */	addi r6, r30, -1
/* 800C0738 000BBC58  38 A0 00 00 */	li r5, 0
/* 800C073C 000BBC5C  48 00 00 58 */	b .L_800C0794
.L_800C0740:
/* 800C0740 000BBC60  80 E8 00 04 */	lwz r7, 4(r8)
/* 800C0744 000BBC64  38 08 00 10 */	addi r0, r8, 0x10
/* 800C0748 000BBC68  7C 00 30 38 */	and r0, r0, r6
/* 800C074C 000BBC6C  7C 07 E8 40 */	cmplw r7, r29
/* 800C0750 000BBC70  7C 00 F0 50 */	subf r0, r0, r30
/* 800C0754 000BBC74  7C C0 00 38 */	and r0, r6, r0
/* 800C0758 000BBC78  40 82 00 14 */	bne .L_800C076C
/* 800C075C 000BBC7C  2C 00 00 00 */	cmpwi r0, 0
/* 800C0760 000BBC80  40 82 00 0C */	bne .L_800C076C
/* 800C0764 000BBC84  7D 05 43 78 */	mr r5, r8
/* 800C0768 000BBC88  48 00 00 34 */	b .L_800C079C
.L_800C076C:
/* 800C076C 000BBC8C  7C 1D 02 14 */	add r0, r29, r0
/* 800C0770 000BBC90  7C 07 00 40 */	cmplw r7, r0
/* 800C0774 000BBC94  41 80 00 1C */	blt .L_800C0790
/* 800C0778 000BBC98  2C 05 00 00 */	cmpwi r5, 0
/* 800C077C 000BBC9C  41 82 00 10 */	beq .L_800C078C
/* 800C0780 000BBCA0  80 05 00 04 */	lwz r0, 4(r5)
/* 800C0784 000BBCA4  7C 07 00 40 */	cmplw r7, r0
/* 800C0788 000BBCA8  40 80 00 08 */	bge .L_800C0790
.L_800C078C:
/* 800C078C 000BBCAC  7D 05 43 78 */	mr r5, r8
.L_800C0790:
/* 800C0790 000BBCB0  81 08 00 0C */	lwz r8, 0xc(r8)
.L_800C0794:
/* 800C0794 000BBCB4  2C 08 00 00 */	cmpwi r8, 0
/* 800C0798 000BBCB8  40 82 FF A8 */	bne .L_800C0740
.L_800C079C:
/* 800C079C 000BBCBC  2C 05 00 00 */	cmpwi r5, 0
/* 800C07A0 000BBCC0  41 82 00 DC */	beq .L_800C087C
/* 800C07A4 000BBCC4  38 FE FF FF */	addi r7, r30, -1
/* 800C07A8 000BBCC8  38 05 00 10 */	addi r0, r5, 0x10
/* 800C07AC 000BBCCC  7C 00 38 38 */	and r0, r0, r7
/* 800C07B0 000BBCD0  80 C5 00 04 */	lwz r6, 4(r5)
/* 800C07B4 000BBCD4  7C 00 F0 50 */	subf r0, r0, r30
/* 800C07B8 000BBCD8  7C E8 00 38 */	and r8, r7, r0
/* 800C07BC 000BBCDC  7C FD 42 14 */	add r7, r29, r8
/* 800C07C0 000BBCE0  38 07 00 10 */	addi r0, r7, 0x10
/* 800C07C4 000BBCE4  7C 06 00 40 */	cmplw r6, r0
/* 800C07C8 000BBCE8  40 81 00 48 */	ble .L_800C0810
/* 800C07CC 000BBCEC  7C C5 EA 14 */	add r6, r5, r29
/* 800C07D0 000BBCF0  3C 00 BA BE */	lis r0, 0xbabe
/* 800C07D4 000BBCF4  7D 28 32 14 */	add r9, r8, r6
/* 800C07D8 000BBCF8  90 09 00 10 */	stw r0, 0x10(r9)
/* 800C07DC 000BBCFC  80 05 00 04 */	lwz r0, 4(r5)
/* 800C07E0 000BBD00  7C 1D 00 50 */	subf r0, r29, r0
/* 800C07E4 000BBD04  7C C8 00 50 */	subf r6, r8, r0
/* 800C07E8 000BBD08  38 06 FF F0 */	addi r0, r6, -16
/* 800C07EC 000BBD0C  90 09 00 14 */	stw r0, 0x14(r9)
/* 800C07F0 000BBD10  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 800C07F4 000BBD14  2C 06 00 00 */	cmpwi r6, 0
/* 800C07F8 000BBD18  90 C9 00 1C */	stw r6, 0x1c(r9)
/* 800C07FC 000BBD1C  39 29 00 10 */	addi r9, r9, 0x10
/* 800C0800 000BBD20  41 82 00 08 */	beq .L_800C0808
/* 800C0804 000BBD24  91 26 00 08 */	stw r9, 8(r6)
.L_800C0808:
/* 800C0808 000BBD28  91 25 00 0C */	stw r9, 0xc(r5)
/* 800C080C 000BBD2C  90 E5 00 04 */	stw r7, 4(r5)
.L_800C0810:
/* 800C0810 000BBD30  3C C0 BA BE */	lis r6, 0xBABE0001@ha
/* 800C0814 000BBD34  38 06 00 01 */	addi r0, r6, 0xBABE0001@l
/* 800C0818 000BBD38  90 05 00 00 */	stw r0, 0(r5)
/* 800C081C 000BBD3C  80 C5 00 08 */	lwz r6, 8(r5)
/* 800C0820 000BBD40  2C 06 00 00 */	cmpwi r6, 0
/* 800C0824 000BBD44  41 82 00 10 */	beq .L_800C0834
/* 800C0828 000BBD48  80 05 00 0C */	lwz r0, 0xc(r5)
/* 800C082C 000BBD4C  90 06 00 0C */	stw r0, 0xc(r6)
/* 800C0830 000BBD50  48 00 00 0C */	b .L_800C083C
.L_800C0834:
/* 800C0834 000BBD54  80 05 00 0C */	lwz r0, 0xc(r5)
/* 800C0838 000BBD58  90 04 00 0C */	stw r0, 0xc(r4)
.L_800C083C:
/* 800C083C 000BBD5C  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800C0840 000BBD60  2C 04 00 00 */	cmpwi r4, 0
/* 800C0844 000BBD64  41 82 00 0C */	beq .L_800C0850
/* 800C0848 000BBD68  80 05 00 08 */	lwz r0, 8(r5)
/* 800C084C 000BBD6C  90 04 00 08 */	stw r0, 8(r4)
.L_800C0850:
/* 800C0850 000BBD70  38 00 00 00 */	li r0, 0
/* 800C0854 000BBD74  7F E5 42 14 */	add r31, r5, r8
/* 800C0858 000BBD78  90 05 00 0C */	stw r0, 0xc(r5)
/* 800C085C 000BBD7C  2C 08 00 00 */	cmpwi r8, 0
/* 800C0860 000BBD80  3B FF 00 10 */	addi r31, r31, 0x10
/* 800C0864 000BBD84  90 05 00 08 */	stw r0, 8(r5)
/* 800C0868 000BBD88  41 82 00 14 */	beq .L_800C087C
/* 800C086C 000BBD8C  3C 80 BA BE */	lis r4, 0xBABE0002@ha
/* 800C0870 000BBD90  38 04 00 02 */	addi r0, r4, 0xBABE0002@l
/* 800C0874 000BBD94  90 1F FF F0 */	stw r0, -0x10(r31)
/* 800C0878 000BBD98  90 BF FF F8 */	stw r5, -8(r31)
.L_800C087C:
/* 800C087C 000BBD9C  4B FD 4A 61 */	bl OSRestoreInterrupts
/* 800C0880 000BBDA0  7F E3 FB 78 */	mr r3, r31
/* 800C0884 000BBDA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C0888 000BBDA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C088C 000BBDAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C0890 000BBDB0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800C0894 000BBDB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0898 000BBDB8  7C 08 03 A6 */	mtlr r0
/* 800C089C 000BBDBC  38 21 00 20 */	addi r1, r1, 0x20
/* 800C08A0 000BBDC0  4E 80 00 20 */	blr

glabel iosAllocAligned
/* 800C08A4 000BBDC4  4B FF FD FC */	b __iosAlloc

glabel iosFree
/* 800C08A8 000BBDC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C08AC 000BBDCC  7C 08 02 A6 */	mflr r0
/* 800C08B0 000BBDD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C08B4 000BBDD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C08B8 000BBDD8  3B E0 FF FC */	li r31, -4
/* 800C08BC 000BBDDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C08C0 000BBDE0  7C 9E 23 78 */	mr r30, r4
/* 800C08C4 000BBDE4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C08C8 000BBDE8  7C 7D 1B 78 */	mr r29, r3
/* 800C08CC 000BBDEC  4B FD 49 E9 */	bl OSDisableInterrupts
/* 800C08D0 000BBDF0  2C 1E 00 00 */	cmpwi r30, 0
/* 800C08D4 000BBDF4  41 82 01 9C */	beq .L_800C0A70
/* 800C08D8 000BBDF8  2C 1D 00 00 */	cmpwi r29, 0
/* 800C08DC 000BBDFC  41 80 00 28 */	blt .L_800C0904
/* 800C08E0 000BBE00  2C 1D 00 08 */	cmpwi r29, 8
/* 800C08E4 000BBE04  40 80 00 20 */	bge .L_800C0904
/* 800C08E8 000BBE08  3C 80 80 1F */	lis r4, lbl_801ED090@ha
/* 800C08EC 000BBE0C  57 A0 20 36 */	slwi r0, r29, 4
/* 800C08F0 000BBE10  38 84 D0 90 */	addi r4, r4, lbl_801ED090@l
/* 800C08F4 000BBE14  7C A4 02 14 */	add r5, r4, r0
/* 800C08F8 000BBE18  7C 84 00 2E */	lwzx r4, r4, r0
/* 800C08FC 000BBE1C  2C 04 00 00 */	cmpwi r4, 0
/* 800C0900 000BBE20  40 82 00 0C */	bne .L_800C090C
.L_800C0904:
/* 800C0904 000BBE24  3B E0 FF FC */	li r31, -4
/* 800C0908 000BBE28  48 00 01 68 */	b .L_800C0A70
.L_800C090C:
/* 800C090C 000BBE2C  38 04 00 10 */	addi r0, r4, 0x10
/* 800C0910 000BBE30  7C 1E 00 40 */	cmplw r30, r0
/* 800C0914 000BBE34  41 80 01 5C */	blt .L_800C0A70
/* 800C0918 000BBE38  80 05 00 08 */	lwz r0, 8(r5)
/* 800C091C 000BBE3C  7C 04 02 14 */	add r0, r4, r0
/* 800C0920 000BBE40  7C 1E 00 40 */	cmplw r30, r0
/* 800C0924 000BBE44  41 81 01 4C */	bgt .L_800C0A70
/* 800C0928 000BBE48  80 9E FF F0 */	lwz r4, -0x10(r30)
/* 800C092C 000BBE4C  38 DE FF F0 */	addi r6, r30, -16
/* 800C0930 000BBE50  3C 04 45 42 */	addis r0, r4, 0x4542
/* 800C0934 000BBE54  28 00 00 02 */	cmplwi r0, 2
/* 800C0938 000BBE58  40 82 00 08 */	bne .L_800C0940
/* 800C093C 000BBE5C  80 C6 00 08 */	lwz r6, 8(r6)
.L_800C0940:
/* 800C0940 000BBE60  80 86 00 00 */	lwz r4, 0(r6)
/* 800C0944 000BBE64  3C 04 45 42 */	addis r0, r4, 0x4542
/* 800C0948 000BBE68  28 00 00 01 */	cmplwi r0, 1
/* 800C094C 000BBE6C  40 82 01 24 */	bne .L_800C0A70
/* 800C0950 000BBE70  3C 00 BA BE */	lis r0, 0xbabe
/* 800C0954 000BBE74  90 06 00 00 */	stw r0, 0(r6)
/* 800C0958 000BBE78  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800C095C 000BBE7C  7C 87 23 78 */	mr r7, r4
/* 800C0960 000BBE80  48 00 00 1C */	b .L_800C097C
.L_800C0964:
/* 800C0964 000BBE84  80 07 00 0C */	lwz r0, 0xc(r7)
/* 800C0968 000BBE88  2C 00 00 00 */	cmpwi r0, 0
/* 800C096C 000BBE8C  41 82 00 18 */	beq .L_800C0984
/* 800C0970 000BBE90  7C 00 30 40 */	cmplw r0, r6
/* 800C0974 000BBE94  41 81 00 10 */	bgt .L_800C0984
/* 800C0978 000BBE98  7C 07 03 78 */	mr r7, r0
.L_800C097C:
/* 800C097C 000BBE9C  2C 07 00 00 */	cmpwi r7, 0
/* 800C0980 000BBEA0  40 82 FF E4 */	bne .L_800C0964
.L_800C0984:
/* 800C0984 000BBEA4  2C 07 00 00 */	cmpwi r7, 0
/* 800C0988 000BBEA8  41 82 00 30 */	beq .L_800C09B8
/* 800C098C 000BBEAC  7C 06 38 40 */	cmplw r6, r7
/* 800C0990 000BBEB0  40 81 00 28 */	ble .L_800C09B8
/* 800C0994 000BBEB4  90 E6 00 08 */	stw r7, 8(r6)
/* 800C0998 000BBEB8  80 07 00 0C */	lwz r0, 0xc(r7)
/* 800C099C 000BBEBC  90 06 00 0C */	stw r0, 0xc(r6)
/* 800C09A0 000BBEC0  90 C7 00 0C */	stw r6, 0xc(r7)
/* 800C09A4 000BBEC4  80 86 00 0C */	lwz r4, 0xc(r6)
/* 800C09A8 000BBEC8  2C 04 00 00 */	cmpwi r4, 0
/* 800C09AC 000BBECC  41 82 00 2C */	beq .L_800C09D8
/* 800C09B0 000BBED0  90 C4 00 08 */	stw r6, 8(r4)
/* 800C09B4 000BBED4  48 00 00 24 */	b .L_800C09D8
.L_800C09B8:
/* 800C09B8 000BBED8  90 86 00 0C */	stw r4, 0xc(r6)
/* 800C09BC 000BBEDC  38 00 00 00 */	li r0, 0
/* 800C09C0 000BBEE0  90 C5 00 0C */	stw r6, 0xc(r5)
/* 800C09C4 000BBEE4  90 06 00 08 */	stw r0, 8(r6)
/* 800C09C8 000BBEE8  80 86 00 0C */	lwz r4, 0xc(r6)
/* 800C09CC 000BBEEC  2C 04 00 00 */	cmpwi r4, 0
/* 800C09D0 000BBEF0  41 82 00 08 */	beq .L_800C09D8
/* 800C09D4 000BBEF4  90 C4 00 08 */	stw r6, 8(r4)
.L_800C09D8:
/* 800C09D8 000BBEF8  2C 06 00 00 */	cmpwi r6, 0
/* 800C09DC 000BBEFC  41 82 00 44 */	beq .L_800C0A20
/* 800C09E0 000BBF00  80 06 00 04 */	lwz r0, 4(r6)
/* 800C09E4 000BBF04  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 800C09E8 000BBF08  7C 86 02 14 */	add r4, r6, r0
/* 800C09EC 000BBF0C  38 04 00 10 */	addi r0, r4, 0x10
/* 800C09F0 000BBF10  7C 05 00 40 */	cmplw r5, r0
/* 800C09F4 000BBF14  40 82 00 2C */	bne .L_800C0A20
/* 800C09F8 000BBF18  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800C09FC 000BBF1C  2C 04 00 00 */	cmpwi r4, 0
/* 800C0A00 000BBF20  90 86 00 0C */	stw r4, 0xc(r6)
/* 800C0A04 000BBF24  41 82 00 08 */	beq .L_800C0A0C
/* 800C0A08 000BBF28  90 C4 00 08 */	stw r6, 8(r4)
.L_800C0A0C:
/* 800C0A0C 000BBF2C  80 86 00 04 */	lwz r4, 4(r6)
/* 800C0A10 000BBF30  80 05 00 04 */	lwz r0, 4(r5)
/* 800C0A14 000BBF34  7C 80 22 14 */	add r4, r0, r4
/* 800C0A18 000BBF38  38 04 00 10 */	addi r0, r4, 0x10
/* 800C0A1C 000BBF3C  90 06 00 04 */	stw r0, 4(r6)
.L_800C0A20:
/* 800C0A20 000BBF40  80 A6 00 08 */	lwz r5, 8(r6)
/* 800C0A24 000BBF44  2C 05 00 00 */	cmpwi r5, 0
/* 800C0A28 000BBF48  41 82 00 44 */	beq .L_800C0A6C
/* 800C0A2C 000BBF4C  80 05 00 04 */	lwz r0, 4(r5)
/* 800C0A30 000BBF50  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 800C0A34 000BBF54  7C 85 02 14 */	add r4, r5, r0
/* 800C0A38 000BBF58  38 04 00 10 */	addi r0, r4, 0x10
/* 800C0A3C 000BBF5C  7C 06 00 40 */	cmplw r6, r0
/* 800C0A40 000BBF60  40 82 00 2C */	bne .L_800C0A6C
/* 800C0A44 000BBF64  80 86 00 0C */	lwz r4, 0xc(r6)
/* 800C0A48 000BBF68  2C 04 00 00 */	cmpwi r4, 0
/* 800C0A4C 000BBF6C  90 85 00 0C */	stw r4, 0xc(r5)
/* 800C0A50 000BBF70  41 82 00 08 */	beq .L_800C0A58
/* 800C0A54 000BBF74  90 A4 00 08 */	stw r5, 8(r4)
.L_800C0A58:
/* 800C0A58 000BBF78  80 85 00 04 */	lwz r4, 4(r5)
/* 800C0A5C 000BBF7C  80 06 00 04 */	lwz r0, 4(r6)
/* 800C0A60 000BBF80  7C 80 22 14 */	add r4, r0, r4
/* 800C0A64 000BBF84  38 04 00 10 */	addi r0, r4, 0x10
/* 800C0A68 000BBF88  90 05 00 04 */	stw r0, 4(r5)
.L_800C0A6C:
/* 800C0A6C 000BBF8C  3B E0 00 00 */	li r31, 0
.L_800C0A70:
/* 800C0A70 000BBF90  4B FD 48 6D */	bl OSRestoreInterrupts
/* 800C0A74 000BBF94  7F E3 FB 78 */	mr r3, r31
/* 800C0A78 000BBF98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C0A7C 000BBF9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C0A80 000BBFA0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C0A84 000BBFA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C0A88 000BBFA8  7C 08 03 A6 */	mtlr r0
/* 800C0A8C 000BBFAC  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0A90 000BBFB0  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_801ED090
	.skip 0x80
