.include "macros.inc"

.section .text, "ax"

glabel IsValidBinaryFile__Q26nw4hbm2utFPCQ36nw4hbm2ut16BinaryFileHeaderUlUsUs
/* 801466F0 00141C10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801466F4 00141C14  7C 08 02 A6 */	mflr r0
/* 801466F8 00141C18  90 01 00 34 */	stw r0, 0x34(r1)
/* 801466FC 00141C1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80146700 00141C20  48 01 62 45 */	bl _savegpr_27
/* 80146704 00141C24  54 6B 00 0E */	rlwinm r11, r3, 0, 0, 7
/* 80146708 00141C28  3F E0 80 1B */	lis r31, lbl_801AB548@ha
/* 8014670C 00141C2C  3C 0B 80 00 */	addis r0, r11, 0x8000
/* 80146710 00141C30  7C BD 2B 78 */	mr r29, r5
/* 80146714 00141C34  28 00 00 00 */	cmplwi r0, 0
/* 80146718 00141C38  7C DE 33 78 */	mr r30, r6
/* 8014671C 00141C3C  7C 7B 1B 78 */	mr r27, r3
/* 80146720 00141C40  7C 9C 23 78 */	mr r28, r4
/* 80146724 00141C44  3B FF B5 48 */	addi r31, r31, lbl_801AB548@l
/* 80146728 00141C48  38 A0 00 01 */	li r5, 1
/* 8014672C 00141C4C  38 C0 00 01 */	li r6, 1
/* 80146730 00141C50  38 E0 00 01 */	li r7, 1
/* 80146734 00141C54  39 00 00 01 */	li r8, 1
/* 80146738 00141C58  39 20 00 01 */	li r9, 1
/* 8014673C 00141C5C  39 40 00 01 */	li r10, 1
/* 80146740 00141C60  41 82 00 18 */	beq .L_80146758
/* 80146744 00141C64  54 64 00 10 */	rlwinm r4, r3, 0, 0, 8
/* 80146748 00141C68  3C 04 7F 00 */	addis r0, r4, 0x7f00
/* 8014674C 00141C6C  28 00 00 00 */	cmplwi r0, 0
/* 80146750 00141C70  41 82 00 08 */	beq .L_80146758
/* 80146754 00141C74  39 40 00 00 */	li r10, 0
.L_80146758:
/* 80146758 00141C78  2C 0A 00 00 */	cmpwi r10, 0
/* 8014675C 00141C7C  40 82 00 18 */	bne .L_80146774
/* 80146760 00141C80  54 64 00 08 */	rlwinm r4, r3, 0, 0, 4
/* 80146764 00141C84  3C 04 70 00 */	addis r0, r4, 0x7000
/* 80146768 00141C88  28 00 00 00 */	cmplwi r0, 0
/* 8014676C 00141C8C  41 82 00 08 */	beq .L_80146774
/* 80146770 00141C90  39 20 00 00 */	li r9, 0
.L_80146774:
/* 80146774 00141C94  2C 09 00 00 */	cmpwi r9, 0
/* 80146778 00141C98  40 82 00 14 */	bne .L_8014678C
/* 8014677C 00141C9C  3C 0B 40 00 */	addis r0, r11, 0x4000
/* 80146780 00141CA0  28 00 00 00 */	cmplwi r0, 0
/* 80146784 00141CA4  41 82 00 08 */	beq .L_8014678C
/* 80146788 00141CA8  39 00 00 00 */	li r8, 0
.L_8014678C:
/* 8014678C 00141CAC  2C 08 00 00 */	cmpwi r8, 0
/* 80146790 00141CB0  40 82 00 18 */	bne .L_801467A8
/* 80146794 00141CB4  54 64 00 10 */	rlwinm r4, r3, 0, 0, 8
/* 80146798 00141CB8  3C 04 3F 00 */	addis r0, r4, 0x3f00
/* 8014679C 00141CBC  28 00 00 00 */	cmplwi r0, 0
/* 801467A0 00141CC0  41 82 00 08 */	beq .L_801467A8
/* 801467A4 00141CC4  38 E0 00 00 */	li r7, 0
.L_801467A8:
/* 801467A8 00141CC8  2C 07 00 00 */	cmpwi r7, 0
/* 801467AC 00141CCC  40 82 00 18 */	bne .L_801467C4
/* 801467B0 00141CD0  54 64 00 08 */	rlwinm r4, r3, 0, 0, 4
/* 801467B4 00141CD4  3C 04 30 00 */	addis r0, r4, 0x3000
/* 801467B8 00141CD8  28 00 00 00 */	cmplwi r0, 0
/* 801467BC 00141CDC  41 82 00 08 */	beq .L_801467C4
/* 801467C0 00141CE0  38 C0 00 00 */	li r6, 0
.L_801467C4:
/* 801467C4 00141CE4  2C 06 00 00 */	cmpwi r6, 0
/* 801467C8 00141CE8  40 82 00 18 */	bne .L_801467E0
/* 801467CC 00141CEC  54 63 00 22 */	rlwinm r3, r3, 0, 0, 0x11
/* 801467D0 00141CF0  3C 03 20 00 */	addis r0, r3, 0x2000
/* 801467D4 00141CF4  28 00 00 00 */	cmplwi r0, 0
/* 801467D8 00141CF8  41 82 00 08 */	beq .L_801467E0
/* 801467DC 00141CFC  38 A0 00 00 */	li r5, 0
.L_801467E0:
/* 801467E0 00141D00  2C 05 00 00 */	cmpwi r5, 0
/* 801467E4 00141D04  40 82 00 1C */	bne .L_80146800
/* 801467E8 00141D08  7F 66 DB 78 */	mr r6, r27
/* 801467EC 00141D0C  38 7F 00 00 */	addi r3, r31, 0
/* 801467F0 00141D10  38 BF 00 18 */	addi r5, r31, 0x18
/* 801467F4 00141D14  38 80 00 30 */	li r4, 0x30
/* 801467F8 00141D18  4C C6 31 82 */	crclr 6
/* 801467FC 00141D1C  4B FC F5 C5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80146800:
/* 80146800 00141D20  80 BB 00 00 */	lwz r5, 0(r27)
/* 80146804 00141D24  7C 05 E0 40 */	cmplw r5, r28
/* 80146808 00141D28  41 82 00 6C */	beq .L_80146874
/* 8014680C 00141D2C  57 80 86 3E */	rlwinm r0, r28, 0x10, 0x18, 0x1f
/* 80146810 00141D30  57 83 C6 3E */	rlwinm r3, r28, 0x18, 0x18, 0x1f
/* 80146814 00141D34  7C 04 07 74 */	extsb r4, r0
/* 80146818 00141D38  54 A6 46 3E */	srwi r6, r5, 0x18
/* 8014681C 00141D3C  90 81 00 08 */	stw r4, 8(r1)
/* 80146820 00141D40  7C 63 07 74 */	extsb r3, r3
/* 80146824 00141D44  54 A7 86 3E */	rlwinm r7, r5, 0x10, 0x18, 0x1f
/* 80146828 00141D48  54 A8 C6 3E */	rlwinm r8, r5, 0x18, 0x18, 0x1f
/* 8014682C 00141D4C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80146830 00141D50  90 61 00 0C */	stw r3, 0xc(r1)
/* 80146834 00141D54  7C 03 07 74 */	extsb r3, r0
/* 80146838 00141D58  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 8014683C 00141D5C  57 80 46 3E */	srwi r0, r28, 0x18
/* 80146840 00141D60  90 61 00 10 */	stw r3, 0x10(r1)
/* 80146844 00141D64  7C 89 07 74 */	extsb r9, r4
/* 80146848 00141D68  38 7F 00 00 */	addi r3, r31, 0
/* 8014684C 00141D6C  38 BF 00 50 */	addi r5, r31, 0x50
/* 80146850 00141D70  7C C6 07 74 */	extsb r6, r6
/* 80146854 00141D74  7C E7 07 74 */	extsb r7, r7
/* 80146858 00141D78  7D 08 07 74 */	extsb r8, r8
/* 8014685C 00141D7C  7C 0A 07 74 */	extsb r10, r0
/* 80146860 00141D80  38 80 00 3C */	li r4, 0x3c
/* 80146864 00141D84  4C C6 31 82 */	crclr 6
/* 80146868 00141D88  4B FC F5 E5 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 8014686C 00141D8C  38 60 00 00 */	li r3, 0
/* 80146870 00141D90  48 00 00 C0 */	b .L_80146930
.L_80146874:
/* 80146874 00141D94  A0 1B 00 04 */	lhz r0, 4(r27)
/* 80146878 00141D98  28 00 FE FF */	cmplwi r0, 0xfeff
/* 8014687C 00141D9C  41 82 00 20 */	beq .L_8014689C
/* 80146880 00141DA0  38 7F 00 00 */	addi r3, r31, 0
/* 80146884 00141DA4  38 BF 00 88 */	addi r5, r31, 0x88
/* 80146888 00141DA8  38 80 00 41 */	li r4, 0x41
/* 8014688C 00141DAC  4C C6 31 82 */	crclr 6
/* 80146890 00141DB0  4B FC F5 BD */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 80146894 00141DB4  38 60 00 00 */	li r3, 0
/* 80146898 00141DB8  48 00 00 98 */	b .L_80146930
.L_8014689C:
/* 8014689C 00141DBC  A0 1B 00 06 */	lhz r0, 6(r27)
/* 801468A0 00141DC0  7C 00 E8 40 */	cmplw r0, r29
/* 801468A4 00141DC4  41 82 00 30 */	beq .L_801468D4
/* 801468A8 00141DC8  38 7F 00 00 */	addi r3, r31, 0
/* 801468AC 00141DCC  38 BF 00 A0 */	addi r5, r31, 0xa0
/* 801468B0 00141DD0  54 06 C6 3E */	rlwinm r6, r0, 0x18, 0x18, 0x1f
/* 801468B4 00141DD4  54 07 06 3E */	clrlwi r7, r0, 0x18
/* 801468B8 00141DD8  57 A8 C6 3E */	rlwinm r8, r29, 0x18, 0x18, 0x1f
/* 801468BC 00141DDC  57 A9 06 3E */	clrlwi r9, r29, 0x18
/* 801468C0 00141DE0  38 80 00 4B */	li r4, 0x4b
/* 801468C4 00141DE4  4C C6 31 82 */	crclr 6
/* 801468C8 00141DE8  4B FC F5 85 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 801468CC 00141DEC  38 60 00 00 */	li r3, 0
/* 801468D0 00141DF0  48 00 00 60 */	b .L_80146930
.L_801468D4:
/* 801468D4 00141DF4  57 C3 1B 78 */	rlwinm r3, r30, 3, 0xd, 0x1c
/* 801468D8 00141DF8  80 DB 00 08 */	lwz r6, 8(r27)
/* 801468DC 00141DFC  38 03 00 10 */	addi r0, r3, 0x10
/* 801468E0 00141E00  7C 06 00 40 */	cmplw r6, r0
/* 801468E4 00141E04  40 80 00 20 */	bge .L_80146904
/* 801468E8 00141E08  38 7F 00 00 */	addi r3, r31, 0
/* 801468EC 00141E0C  38 BF 00 D0 */	addi r5, r31, 0xd0
/* 801468F0 00141E10  38 80 00 50 */	li r4, 0x50
/* 801468F4 00141E14  4C C6 31 82 */	crclr 6
/* 801468F8 00141E18  4B FC F5 55 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 801468FC 00141E1C  38 60 00 00 */	li r3, 0
/* 80146900 00141E20  48 00 00 30 */	b .L_80146930
.L_80146904:
/* 80146904 00141E24  A0 DB 00 0E */	lhz r6, 0xe(r27)
/* 80146908 00141E28  7C 06 F0 40 */	cmplw r6, r30
/* 8014690C 00141E2C  40 80 00 20 */	bge .L_8014692C
/* 80146910 00141E30  38 7F 00 00 */	addi r3, r31, 0
/* 80146914 00141E34  38 BF 00 EC */	addi r5, r31, 0xec
/* 80146918 00141E38  38 80 00 55 */	li r4, 0x55
/* 8014691C 00141E3C  4C C6 31 82 */	crclr 6
/* 80146920 00141E40  4B FC F5 2D */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 80146924 00141E44  38 60 00 00 */	li r3, 0
/* 80146928 00141E48  48 00 00 08 */	b .L_80146930
.L_8014692C:
/* 8014692C 00141E4C  38 60 00 01 */	li r3, 1
.L_80146930:
/* 80146930 00141E50  39 61 00 30 */	addi r11, r1, 0x30
/* 80146934 00141E54  48 01 60 5D */	bl _restgpr_27
/* 80146938 00141E58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014693C 00141E5C  7C 08 03 A6 */	mtlr r0
/* 80146940 00141E60  38 21 00 30 */	addi r1, r1, 0x30
/* 80146944 00141E64  4E 80 00 20 */	blr
