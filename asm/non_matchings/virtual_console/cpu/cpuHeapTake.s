glabel cpuHeapTake
/* 8003D720 00038C40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003D724 00038C44  7C 08 02 A6 */	mflr r0
/* 8003D728 00038C48  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003D72C 00038C4C  39 61 00 40 */	addi r11, r1, 0x40
/* 8003D730 00038C50  48 11 F1 FD */	bl __save_registersr21
/* 8003D734 00038C54  3C E0 66 66 */	lis r7, 0x66666667@ha
/* 8003D738 00038C58  39 06 01 FF */	addi r8, r6, 0x1ff
/* 8003D73C 00038C5C  38 06 09 FF */	addi r0, r6, 0x9ff
/* 8003D740 00038C60  3B A0 00 00 */	li r29, 0
/* 8003D744 00038C64  38 E7 66 67 */	addi r7, r7, 0x66666667@l
/* 8003D748 00038C68  7D 08 4E 70 */	srawi r8, r8, 9
/* 8003D74C 00038C6C  7C 07 00 96 */	mulhw r0, r7, r0
/* 8003D750 00038C70  3B 80 00 00 */	li r28, 0
/* 8003D754 00038C74  7F E8 01 94 */	addze r31, r8
/* 8003D758 00038C78  39 00 00 01 */	li r8, 1
/* 8003D75C 00038C7C  39 20 00 02 */	li r9, 2
/* 8003D760 00038C80  7C 00 56 70 */	srawi r0, r0, 0xa
/* 8003D764 00038C84  54 07 0F FE */	srwi r7, r0, 0x1f
/* 8003D768 00038C88  7F C0 3A 14 */	add r30, r0, r7
lbl_8003D76C:
/* 8003D76C 00038C8C  80 05 00 30 */	lwz r0, 0x30(r5)
/* 8003D770 00038C90  2C 00 FF FF */	cmpwi r0, -1
/* 8003D774 00038C94  40 82 00 1C */	bne lbl_8003D790
/* 8003D778 00038C98  2C 06 32 00 */	cmpwi r6, 0x3200
/* 8003D77C 00038C9C  40 81 00 0C */	ble lbl_8003D788
/* 8003D780 00038CA0  91 25 00 30 */	stw r9, 0x30(r5)
/* 8003D784 00038CA4  48 00 00 30 */	b lbl_8003D7B4
lbl_8003D788:
/* 8003D788 00038CA8  91 05 00 30 */	stw r8, 0x30(r5)
/* 8003D78C 00038CAC  48 00 00 28 */	b lbl_8003D7B4
lbl_8003D790:
/* 8003D790 00038CB0  2C 00 00 01 */	cmpwi r0, 1
/* 8003D794 00038CB4  40 82 00 10 */	bne lbl_8003D7A4
/* 8003D798 00038CB8  91 25 00 30 */	stw r9, 0x30(r5)
/* 8003D79C 00038CBC  3B 80 00 01 */	li r28, 1
/* 8003D7A0 00038CC0  48 00 00 14 */	b lbl_8003D7B4
lbl_8003D7A4:
/* 8003D7A4 00038CC4  2C 00 00 02 */	cmpwi r0, 2
/* 8003D7A8 00038CC8  40 82 00 0C */	bne lbl_8003D7B4
/* 8003D7AC 00038CCC  91 05 00 30 */	stw r8, 0x30(r5)
/* 8003D7B0 00038CD0  3B 80 00 01 */	li r28, 1
lbl_8003D7B4:
/* 8003D7B4 00038CD4  80 05 00 30 */	lwz r0, 0x30(r5)
/* 8003D7B8 00038CD8  2C 00 00 01 */	cmpwi r0, 1
/* 8003D7BC 00038CDC  40 82 00 50 */	bne lbl_8003D80C
/* 8003D7C0 00038CE0  2C 1C 00 00 */	cmpwi r28, 0
/* 8003D7C4 00038CE4  3F 64 00 10 */	addis r27, r4, 0x10
/* 8003D7C8 00038CE8  91 05 00 30 */	stw r8, 0x30(r5)
/* 8003D7CC 00038CEC  7F F9 FB 78 */	mr r25, r31
/* 8003D7D0 00038CF0  3B 40 01 40 */	li r26, 0x140
/* 8003D7D4 00038CF4  3B 7B 0F 68 */	addi r27, r27, 0xf68
/* 8003D7D8 00038CF8  41 82 00 50 */	beq lbl_8003D828
/* 8003D7DC 00038CFC  2C 1F 00 20 */	cmpwi r31, 0x20
/* 8003D7E0 00038D00  41 80 00 48 */	blt lbl_8003D828
/* 8003D7E4 00038D04  38 80 00 03 */	li r4, 3
/* 8003D7E8 00038D08  38 00 FF FF */	li r0, -1
/* 8003D7EC 00038D0C  90 85 00 30 */	stw r4, 0x30(r5)
/* 8003D7F0 00038D10  7C C4 33 78 */	mr r4, r6
/* 8003D7F4 00038D14  90 05 00 34 */	stw r0, 0x34(r5)
/* 8003D7F8 00038D18  48 04 87 51 */	bl xlHeapTake
/* 8003D7FC 00038D1C  7C 03 00 D0 */	neg r0, r3
/* 8003D800 00038D20  7C 00 1B 78 */	or r0, r0, r3
/* 8003D804 00038D24  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8003D808 00038D28  48 00 01 44 */	b lbl_8003D94C
lbl_8003D80C:
/* 8003D80C 00038D2C  2C 00 00 02 */	cmpwi r0, 2
/* 8003D810 00038D30  40 82 00 18 */	bne lbl_8003D828
/* 8003D814 00038D34  3F 64 00 10 */	addis r27, r4, 0x10
/* 8003D818 00038D38  91 25 00 30 */	stw r9, 0x30(r5)
/* 8003D81C 00038D3C  7F D9 F3 78 */	mr r25, r30
/* 8003D820 00038D40  3B 40 00 0D */	li r26, 0xd
/* 8003D824 00038D44  3B 7B 14 68 */	addi r27, r27, 0x1468
lbl_8003D828:
/* 8003D828 00038D48  2C 19 00 20 */	cmpwi r25, 0x20
/* 8003D82C 00038D4C  41 80 00 2C */	blt lbl_8003D858
/* 8003D830 00038D50  38 80 00 03 */	li r4, 3
/* 8003D834 00038D54  38 00 FF FF */	li r0, -1
/* 8003D838 00038D58  90 85 00 30 */	stw r4, 0x30(r5)
/* 8003D83C 00038D5C  7C C4 33 78 */	mr r4, r6
/* 8003D840 00038D60  90 05 00 34 */	stw r0, 0x34(r5)
/* 8003D844 00038D64  48 04 87 05 */	bl xlHeapTake
/* 8003D848 00038D68  7C 03 00 D0 */	neg r0, r3
/* 8003D84C 00038D6C  7C 00 1B 78 */	or r0, r0, r3
/* 8003D850 00038D70  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8003D854 00038D74  48 00 00 F8 */	b lbl_8003D94C
lbl_8003D858:
/* 8003D858 00038D78  7D 07 C8 30 */	slw r7, r8, r25
/* 8003D85C 00038D7C  7F 6A DB 78 */	mr r10, r27
/* 8003D860 00038D80  22 F9 00 21 */	subfic r23, r25, 0x21
/* 8003D864 00038D84  57 2C 80 1E */	slwi r12, r25, 0x10
/* 8003D868 00038D88  3A A7 FF FF */	addi r21, r7, -1
/* 8003D86C 00038D8C  39 60 00 00 */	li r11, 0
/* 8003D870 00038D90  7F 49 03 A6 */	mtctr r26
/* 8003D874 00038D94  2C 1A 00 00 */	cmpwi r26, 0
/* 8003D878 00038D98  40 81 00 68 */	ble lbl_8003D8E0
lbl_8003D87C:
/* 8003D87C 00038D9C  80 EA 00 00 */	lwz r7, 0(r10)
/* 8003D880 00038DA0  3C 07 00 01 */	addis r0, r7, 1
/* 8003D884 00038DA4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8003D888 00038DA8  41 82 00 44 */	beq lbl_8003D8CC
/* 8003D88C 00038DAC  7E B6 AB 78 */	mr r22, r21
/* 8003D890 00038DB0  7E F8 BB 78 */	mr r24, r23
lbl_8003D894:
/* 8003D894 00038DB4  7C E0 B0 39 */	and. r0, r7, r22
/* 8003D898 00038DB8  40 82 00 28 */	bne lbl_8003D8C0
/* 8003D89C 00038DBC  80 EA 00 00 */	lwz r7, 0(r10)
/* 8003D8A0 00038DC0  7C 18 B8 50 */	subf r0, r24, r23
/* 8003D8A4 00038DC4  7C 0B 02 14 */	add r0, r11, r0
/* 8003D8A8 00038DC8  3B A0 00 01 */	li r29, 1
/* 8003D8AC 00038DCC  7C E7 B3 78 */	or r7, r7, r22
/* 8003D8B0 00038DD0  90 EA 00 00 */	stw r7, 0(r10)
/* 8003D8B4 00038DD4  7D 80 03 78 */	or r0, r12, r0
/* 8003D8B8 00038DD8  90 05 00 34 */	stw r0, 0x34(r5)
/* 8003D8BC 00038DDC  48 00 00 10 */	b lbl_8003D8CC
lbl_8003D8C0:
/* 8003D8C0 00038DE0  37 18 FF FF */	addic. r24, r24, -1
/* 8003D8C4 00038DE4  56 D6 08 3C */	slwi r22, r22, 1
/* 8003D8C8 00038DE8  40 82 FF CC */	bne lbl_8003D894
lbl_8003D8CC:
/* 8003D8CC 00038DEC  2C 1D 00 00 */	cmpwi r29, 0
/* 8003D8D0 00038DF0  40 82 00 10 */	bne lbl_8003D8E0
/* 8003D8D4 00038DF4  39 4A 00 04 */	addi r10, r10, 4
/* 8003D8D8 00038DF8  39 6B 00 20 */	addi r11, r11, 0x20
/* 8003D8DC 00038DFC  42 00 FF A0 */	bdnz lbl_8003D87C
lbl_8003D8E0:
/* 8003D8E0 00038E00  2C 1D 00 00 */	cmpwi r29, 0
/* 8003D8E4 00038E04  40 82 00 20 */	bne lbl_8003D904
/* 8003D8E8 00038E08  2C 1C 00 00 */	cmpwi r28, 0
/* 8003D8EC 00038E0C  41 82 FE 80 */	beq lbl_8003D76C
/* 8003D8F0 00038E10  38 00 FF FF */	li r0, -1
/* 8003D8F4 00038E14  38 60 00 00 */	li r3, 0
/* 8003D8F8 00038E18  90 05 00 30 */	stw r0, 0x30(r5)
/* 8003D8FC 00038E1C  90 05 00 34 */	stw r0, 0x34(r5)
/* 8003D900 00038E20  48 00 00 4C */	b lbl_8003D94C
lbl_8003D904:
/* 8003D904 00038E24  80 05 00 30 */	lwz r0, 0x30(r5)
/* 8003D908 00038E28  2C 00 00 01 */	cmpwi r0, 1
/* 8003D90C 00038E2C  40 82 00 20 */	bne lbl_8003D92C
/* 8003D910 00038E30  3C 84 00 10 */	addis r4, r4, 0x10
/* 8003D914 00038E34  80 05 00 34 */	lwz r0, 0x34(r5)
/* 8003D918 00038E38  80 84 0F 60 */	lwz r4, 0xf60(r4)
/* 8003D91C 00038E3C  54 00 49 EC */	rlwinm r0, r0, 9, 7, 0x16
/* 8003D920 00038E40  7C 04 02 14 */	add r0, r4, r0
/* 8003D924 00038E44  90 03 00 00 */	stw r0, 0(r3)
/* 8003D928 00038E48  48 00 00 20 */	b lbl_8003D948
lbl_8003D92C:
/* 8003D92C 00038E4C  80 05 00 34 */	lwz r0, 0x34(r5)
/* 8003D930 00038E50  3C 84 00 10 */	addis r4, r4, 0x10
/* 8003D934 00038E54  80 84 0F 64 */	lwz r4, 0xf64(r4)
/* 8003D938 00038E58  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8003D93C 00038E5C  1C 00 0A 00 */	mulli r0, r0, 0xa00
/* 8003D940 00038E60  7C 04 02 14 */	add r0, r4, r0
/* 8003D944 00038E64  90 03 00 00 */	stw r0, 0(r3)
lbl_8003D948:
/* 8003D948 00038E68  38 60 00 01 */	li r3, 1
lbl_8003D94C:
/* 8003D94C 00038E6C  39 61 00 40 */	addi r11, r1, 0x40
/* 8003D950 00038E70  48 11 F0 29 */	bl __restore_registersr21
/* 8003D954 00038E74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003D958 00038E78  7C 08 03 A6 */	mtlr r0
/* 8003D95C 00038E7C  38 21 00 40 */	addi r1, r1, 0x40
/* 8003D960 00038E80  4E 80 00 20 */	blr 

