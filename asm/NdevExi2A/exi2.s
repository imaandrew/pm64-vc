.include "macros.inc"

.section .text, "ax"

glabel __EXI2Imm
/* 8008772C 00082C4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80087730 00082C50  7C 08 02 A6 */	mflr r0
/* 80087734 00082C54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80087738 00082C58  39 61 00 20 */	addi r11, r1, 0x20
/* 8008773C 00082C5C  48 0D 52 05 */	bl _savegpr_26
/* 80087740 00082C60  2C 05 00 00 */	cmpwi r5, 0
/* 80087744 00082C64  41 82 01 5C */	beq .L_800878A0
/* 80087748 00082C68  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 8008774C 00082C6C  38 00 00 00 */	li r0, 0
/* 80087750 00082C70  38 E0 00 00 */	li r7, 0
/* 80087754 00082C74  40 85 01 44 */	ble cr1, .L_80087898
/* 80087758 00082C78  2C 04 00 08 */	cmpwi r4, 8
/* 8008775C 00082C7C  39 24 FF F8 */	addi r9, r4, -8
/* 80087760 00082C80  40 81 01 04 */	ble .L_80087864
/* 80087764 00082C84  39 00 00 00 */	li r8, 0
/* 80087768 00082C88  41 84 00 18 */	blt cr1, .L_80087780
/* 8008776C 00082C8C  3C C0 80 00 */	lis r6, 0x7FFFFFFE@ha
/* 80087770 00082C90  38 C6 FF FE */	addi r6, r6, 0x7FFFFFFE@l
/* 80087774 00082C94  7C 04 30 00 */	cmpw r4, r6
/* 80087778 00082C98  41 81 00 08 */	bgt .L_80087780
/* 8008777C 00082C9C  39 00 00 01 */	li r8, 1
.L_80087780:
/* 80087780 00082CA0  2C 08 00 00 */	cmpwi r8, 0
/* 80087784 00082CA4  41 82 00 E0 */	beq .L_80087864
/* 80087788 00082CA8  39 09 00 07 */	addi r8, r9, 7
/* 8008778C 00082CAC  7C 66 1B 78 */	mr r6, r3
/* 80087790 00082CB0  55 08 E8 FE */	srwi r8, r8, 3
/* 80087794 00082CB4  7D 09 03 A6 */	mtctr r8
/* 80087798 00082CB8  2C 09 00 00 */	cmpwi r9, 0
/* 8008779C 00082CBC  40 81 00 C8 */	ble .L_80087864
.L_800877A0:
/* 800877A0 00082CC0  21 27 00 03 */	subfic r9, r7, 3
/* 800877A4 00082CC4  39 07 00 01 */	addi r8, r7, 1
/* 800877A8 00082CC8  23 88 00 03 */	subfic r28, r8, 3
/* 800877AC 00082CCC  89 46 00 00 */	lbz r10, 0(r6)
/* 800877B0 00082CD0  39 07 00 02 */	addi r8, r7, 2
/* 800877B4 00082CD4  8B 66 00 01 */	lbz r27, 1(r6)
/* 800877B8 00082CD8  23 A8 00 03 */	subfic r29, r8, 3
/* 800877BC 00082CDC  57 9C 18 38 */	slwi r28, r28, 3
/* 800877C0 00082CE0  55 28 18 38 */	slwi r8, r9, 3
/* 800877C4 00082CE4  7D 87 00 D0 */	neg r12, r7
/* 800877C8 00082CE8  7D 5A 40 30 */	slw r26, r10, r8
/* 800877CC 00082CEC  57 BE 18 38 */	slwi r30, r29, 3
/* 800877D0 00082CF0  8B E6 00 02 */	lbz r31, 2(r6)
/* 800877D4 00082CF4  39 07 00 04 */	addi r8, r7, 4
/* 800877D8 00082CF8  21 68 00 03 */	subfic r11, r8, 3
/* 800877DC 00082CFC  7C 00 D3 78 */	or r0, r0, r26
/* 800877E0 00082D00  7F 7C E0 30 */	slw r28, r27, r28
/* 800877E4 00082D04  39 07 00 05 */	addi r8, r7, 5
/* 800877E8 00082D08  7F FF F0 30 */	slw r31, r31, r30
/* 800877EC 00082D0C  8B A6 00 03 */	lbz r29, 3(r6)
/* 800877F0 00082D10  55 8C 18 38 */	slwi r12, r12, 3
/* 800877F4 00082D14  7C 00 E3 78 */	or r0, r0, r28
/* 800877F8 00082D18  21 48 00 03 */	subfic r10, r8, 3
/* 800877FC 00082D1C  39 07 00 06 */	addi r8, r7, 6
/* 80087800 00082D20  7F BD 60 30 */	slw r29, r29, r12
/* 80087804 00082D24  7C 00 FB 78 */	or r0, r0, r31
/* 80087808 00082D28  21 28 00 03 */	subfic r9, r8, 3
/* 8008780C 00082D2C  39 07 00 07 */	addi r8, r7, 7
/* 80087810 00082D30  55 4C 18 38 */	slwi r12, r10, 3
/* 80087814 00082D34  8B E6 00 05 */	lbz r31, 5(r6)
/* 80087818 00082D38  21 08 00 03 */	subfic r8, r8, 3
/* 8008781C 00082D3C  55 2A 18 38 */	slwi r10, r9, 3
/* 80087820 00082D40  8B C6 00 04 */	lbz r30, 4(r6)
/* 80087824 00082D44  55 6B 18 38 */	slwi r11, r11, 3
/* 80087828 00082D48  7C 00 EB 78 */	or r0, r0, r29
/* 8008782C 00082D4C  89 26 00 07 */	lbz r9, 7(r6)
/* 80087830 00082D50  7F DE 58 30 */	slw r30, r30, r11
/* 80087834 00082D54  89 66 00 06 */	lbz r11, 6(r6)
/* 80087838 00082D58  55 08 18 38 */	slwi r8, r8, 3
/* 8008783C 00082D5C  7F EC 60 30 */	slw r12, r31, r12
/* 80087840 00082D60  7C 00 F3 78 */	or r0, r0, r30
/* 80087844 00082D64  7D 6A 50 30 */	slw r10, r11, r10
/* 80087848 00082D68  7C 00 63 78 */	or r0, r0, r12
/* 8008784C 00082D6C  7D 28 40 30 */	slw r8, r9, r8
/* 80087850 00082D70  7C 00 53 78 */	or r0, r0, r10
/* 80087854 00082D74  38 E7 00 08 */	addi r7, r7, 8
/* 80087858 00082D78  7C 00 43 78 */	or r0, r0, r8
/* 8008785C 00082D7C  38 C6 00 08 */	addi r6, r6, 8
/* 80087860 00082D80  42 00 FF 40 */	bdnz .L_800877A0
.L_80087864:
/* 80087864 00082D84  7C C7 20 50 */	subf r6, r7, r4
/* 80087868 00082D88  7D 23 3A 14 */	add r9, r3, r7
/* 8008786C 00082D8C  7C C9 03 A6 */	mtctr r6
/* 80087870 00082D90  7C 07 20 00 */	cmpw r7, r4
/* 80087874 00082D94  40 80 00 24 */	bge .L_80087898
.L_80087878:
/* 80087878 00082D98  20 C7 00 03 */	subfic r6, r7, 3
/* 8008787C 00082D9C  89 09 00 00 */	lbz r8, 0(r9)
/* 80087880 00082DA0  54 C6 18 38 */	slwi r6, r6, 3
/* 80087884 00082DA4  39 29 00 01 */	addi r9, r9, 1
/* 80087888 00082DA8  7D 06 30 30 */	slw r6, r8, r6
/* 8008788C 00082DAC  38 E7 00 01 */	addi r7, r7, 1
/* 80087890 00082DB0  7C 00 33 78 */	or r0, r0, r6
/* 80087894 00082DB4  42 00 FF E4 */	bdnz .L_80087878
.L_80087898:
/* 80087898 00082DB8  3C C0 CD 00 */	lis r6, 0xCD006838@ha
/* 8008789C 00082DBC  90 06 68 38 */	stw r0, 0xCD006838@l(r6)
.L_800878A0:
/* 800878A0 00082DC0  54 A6 10 3A */	slwi r6, r5, 2
/* 800878A4 00082DC4  38 04 FF FF */	addi r0, r4, -1
/* 800878A8 00082DC8  60 C7 00 01 */	ori r7, r6, 1
/* 800878AC 00082DCC  54 00 20 36 */	slwi r0, r0, 4
/* 800878B0 00082DD0  3C C0 CD 00 */	lis r6, 0xCD006834@ha
/* 800878B4 00082DD4  7C E0 03 78 */	or r0, r7, r0
/* 800878B8 00082DD8  90 06 68 34 */	stw r0, 0xCD006834@l(r6)
.L_800878BC:
/* 800878BC 00082DDC  80 06 68 34 */	lwz r0, 0x6834(r6)
/* 800878C0 00082DE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800878C4 00082DE4  40 82 FF F8 */	bne .L_800878BC
/* 800878C8 00082DE8  2C 05 00 00 */	cmpwi r5, 0
/* 800878CC 00082DEC  40 82 01 2C */	bne .L_800879F8
/* 800878D0 00082DF0  3C A0 CD 00 */	lis r5, 0xCD006838@ha
/* 800878D4 00082DF4  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 800878D8 00082DF8  80 05 68 38 */	lwz r0, 0xCD006838@l(r5)
/* 800878DC 00082DFC  38 A0 00 00 */	li r5, 0
/* 800878E0 00082E00  40 85 01 18 */	ble cr1, .L_800879F8
/* 800878E4 00082E04  2C 04 00 08 */	cmpwi r4, 8
/* 800878E8 00082E08  38 E4 FF F8 */	addi r7, r4, -8
/* 800878EC 00082E0C  40 81 00 E0 */	ble .L_800879CC
/* 800878F0 00082E10  39 00 00 00 */	li r8, 0
/* 800878F4 00082E14  41 84 00 18 */	blt cr1, .L_8008790C
/* 800878F8 00082E18  3C C0 80 00 */	lis r6, 0x7FFFFFFE@ha
/* 800878FC 00082E1C  38 C6 FF FE */	addi r6, r6, 0x7FFFFFFE@l
/* 80087900 00082E20  7C 04 30 00 */	cmpw r4, r6
/* 80087904 00082E24  41 81 00 08 */	bgt .L_8008790C
/* 80087908 00082E28  39 00 00 01 */	li r8, 1
.L_8008790C:
/* 8008790C 00082E2C  2C 08 00 00 */	cmpwi r8, 0
/* 80087910 00082E30  41 82 00 BC */	beq .L_800879CC
/* 80087914 00082E34  38 C7 00 07 */	addi r6, r7, 7
/* 80087918 00082E38  54 C6 E8 FE */	srwi r6, r6, 3
/* 8008791C 00082E3C  7C C9 03 A6 */	mtctr r6
/* 80087920 00082E40  2C 07 00 00 */	cmpwi r7, 0
/* 80087924 00082E44  40 81 00 A8 */	ble .L_800879CC
.L_80087928:
/* 80087928 00082E48  20 C5 00 03 */	subfic r6, r5, 3
/* 8008792C 00082E4C  38 E5 00 01 */	addi r7, r5, 1
/* 80087930 00082E50  54 C8 18 38 */	slwi r8, r6, 3
/* 80087934 00082E54  7C 09 44 30 */	srw r9, r0, r8
/* 80087938 00082E58  20 E7 00 03 */	subfic r7, r7, 3
/* 8008793C 00082E5C  54 E8 18 38 */	slwi r8, r7, 3
/* 80087940 00082E60  99 23 00 00 */	stb r9, 0(r3)
/* 80087944 00082E64  38 E5 00 02 */	addi r7, r5, 2
/* 80087948 00082E68  7C C5 00 D0 */	neg r6, r5
/* 8008794C 00082E6C  7C 09 44 30 */	srw r9, r0, r8
/* 80087950 00082E70  54 C8 18 38 */	slwi r8, r6, 3
/* 80087954 00082E74  20 E7 00 03 */	subfic r7, r7, 3
/* 80087958 00082E78  54 E6 18 38 */	slwi r6, r7, 3
/* 8008795C 00082E7C  99 23 00 01 */	stb r9, 1(r3)
/* 80087960 00082E80  7C 09 34 30 */	srw r9, r0, r6
/* 80087964 00082E84  7C 08 44 30 */	srw r8, r0, r8
/* 80087968 00082E88  38 C5 00 04 */	addi r6, r5, 4
/* 8008796C 00082E8C  99 23 00 02 */	stb r9, 2(r3)
/* 80087970 00082E90  20 E6 00 03 */	subfic r7, r6, 3
/* 80087974 00082E94  38 C5 00 05 */	addi r6, r5, 5
/* 80087978 00082E98  99 03 00 03 */	stb r8, 3(r3)
/* 8008797C 00082E9C  54 E7 18 38 */	slwi r7, r7, 3
/* 80087980 00082EA0  7C 09 3C 30 */	srw r9, r0, r7
/* 80087984 00082EA4  20 C6 00 03 */	subfic r6, r6, 3
/* 80087988 00082EA8  54 C8 18 38 */	slwi r8, r6, 3
/* 8008798C 00082EAC  99 23 00 04 */	stb r9, 4(r3)
/* 80087990 00082EB0  38 C5 00 06 */	addi r6, r5, 6
/* 80087994 00082EB4  20 E6 00 03 */	subfic r7, r6, 3
/* 80087998 00082EB8  7C 08 44 30 */	srw r8, r0, r8
/* 8008799C 00082EBC  38 C5 00 07 */	addi r6, r5, 7
/* 800879A0 00082EC0  99 03 00 05 */	stb r8, 5(r3)
/* 800879A4 00082EC4  54 E7 18 38 */	slwi r7, r7, 3
/* 800879A8 00082EC8  38 A5 00 08 */	addi r5, r5, 8
/* 800879AC 00082ECC  20 C6 00 03 */	subfic r6, r6, 3
/* 800879B0 00082ED0  7C 07 3C 30 */	srw r7, r0, r7
/* 800879B4 00082ED4  54 C6 18 38 */	slwi r6, r6, 3
/* 800879B8 00082ED8  98 E3 00 06 */	stb r7, 6(r3)
/* 800879BC 00082EDC  7C 06 34 30 */	srw r6, r0, r6
/* 800879C0 00082EE0  98 C3 00 07 */	stb r6, 7(r3)
/* 800879C4 00082EE4  38 63 00 08 */	addi r3, r3, 8
/* 800879C8 00082EE8  42 00 FF 60 */	bdnz .L_80087928
.L_800879CC:
/* 800879CC 00082EEC  7C C5 20 50 */	subf r6, r5, r4
/* 800879D0 00082EF0  7C C9 03 A6 */	mtctr r6
/* 800879D4 00082EF4  7C 05 20 00 */	cmpw r5, r4
/* 800879D8 00082EF8  40 80 00 20 */	bge .L_800879F8
.L_800879DC:
/* 800879DC 00082EFC  20 85 00 03 */	subfic r4, r5, 3
/* 800879E0 00082F00  38 A5 00 01 */	addi r5, r5, 1
/* 800879E4 00082F04  54 84 18 38 */	slwi r4, r4, 3
/* 800879E8 00082F08  7C 04 24 30 */	srw r4, r0, r4
/* 800879EC 00082F0C  98 83 00 00 */	stb r4, 0(r3)
/* 800879F0 00082F10  38 63 00 01 */	addi r3, r3, 1
/* 800879F4 00082F14  42 00 FF E8 */	bdnz .L_800879DC
.L_800879F8:
/* 800879F8 00082F18  39 61 00 20 */	addi r11, r1, 0x20
/* 800879FC 00082F1C  38 60 00 01 */	li r3, 1
/* 80087A00 00082F20  48 0D 4F 8D */	bl _restgpr_26
/* 80087A04 00082F24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087A08 00082F28  7C 08 03 A6 */	mtlr r0
/* 80087A0C 00082F2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80087A10 00082F30  4E 80 00 20 */	blr

glabel __DBEXIInit
/* 80087A14 00082F34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80087A18 00082F38  7C 08 02 A6 */	mflr r0
/* 80087A1C 00082F3C  3C 60 00 02 */	lis r3, 0x00018000@ha
/* 80087A20 00082F40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80087A24 00082F44  38 63 80 00 */	addi r3, r3, 0x00018000@l
/* 80087A28 00082F48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80087A2C 00082F4C  48 00 DC 19 */	bl __OSMaskInterrupts
/* 80087A30 00082F50  3C 60 CD 00 */	lis r3, 0xCD006834@ha
.L_80087A34:
/* 80087A34 00082F54  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 80087A38 00082F58  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80087A3C 00082F5C  28 00 00 01 */	cmplwi r0, 1
/* 80087A40 00082F60  41 82 FF F4 */	beq .L_80087A34
/* 80087A44 00082F64  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 80087A48 00082F68  38 00 00 00 */	li r0, 0
/* 80087A4C 00082F6C  90 1F 68 28 */	stw r0, 0xCD006828@l(r31)
/* 80087A50 00082F70  3C 60 B4 00 */	lis r3, 0xb400
/* 80087A54 00082F74  3C 00 D4 00 */	lis r0, 0xd400
/* 80087A58 00082F78  38 80 00 04 */	li r4, 4
/* 80087A5C 00082F7C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80087A60 00082F80  38 61 00 0C */	addi r3, r1, 0xc
/* 80087A64 00082F84  38 A0 00 01 */	li r5, 1
/* 80087A68 00082F88  90 01 00 08 */	stw r0, 8(r1)
/* 80087A6C 00082F8C  80 1F 68 28 */	lwz r0, 0x6828(r31)
/* 80087A70 00082F90  70 00 04 05 */	andi. r0, r0, 0x405
/* 80087A74 00082F94  60 00 00 C0 */	ori r0, r0, 0xc0
/* 80087A78 00082F98  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 80087A7C 00082F9C  4B FF FC B1 */	bl __EXI2Imm
.L_80087A80:
/* 80087A80 00082FA0  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 80087A84 00082FA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087A88 00082FA8  40 82 FF F8 */	bne .L_80087A80
/* 80087A8C 00082FAC  38 61 00 08 */	addi r3, r1, 8
/* 80087A90 00082FB0  38 80 00 04 */	li r4, 4
/* 80087A94 00082FB4  38 A0 00 01 */	li r5, 1
/* 80087A98 00082FB8  4B FF FC 95 */	bl __EXI2Imm
/* 80087A9C 00082FBC  3C 60 CD 00 */	lis r3, 0xCD006834@ha
.L_80087AA0:
/* 80087AA0 00082FC0  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 80087AA4 00082FC4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087AA8 00082FC8  40 82 FF F8 */	bne .L_80087AA0
/* 80087AAC 00082FCC  3C 60 CD 00 */	lis r3, 0xCD006828@ha
/* 80087AB0 00082FD0  80 03 68 28 */	lwz r0, 0xCD006828@l(r3)
/* 80087AB4 00082FD4  70 00 04 05 */	andi. r0, r0, 0x405
/* 80087AB8 00082FD8  90 03 68 28 */	stw r0, 0x6828(r3)
/* 80087ABC 00082FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087AC0 00082FE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80087AC4 00082FE4  7C 08 03 A6 */	mtlr r0
/* 80087AC8 00082FE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80087ACC 00082FEC  4E 80 00 20 */	blr

glabel __DBEXIReadReg
/* 80087AD0 00082FF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80087AD4 00082FF4  7C 08 02 A6 */	mflr r0
/* 80087AD8 00082FF8  38 C0 00 00 */	li r6, 0
/* 80087ADC 00082FFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80087AE0 00083000  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80087AE4 00083004  7C BF 2B 78 */	mr r31, r5
/* 80087AE8 00083008  38 A0 00 01 */	li r5, 1
/* 80087AEC 0008300C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80087AF0 00083010  7C 9E 23 78 */	mr r30, r4
/* 80087AF4 00083014  38 80 00 04 */	li r4, 4
/* 80087AF8 00083018  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80087AFC 0008301C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80087B00 00083020  3F 80 CD 00 */	lis r28, 0xCD006828@ha
/* 80087B04 00083024  90 61 00 08 */	stw r3, 8(r1)
/* 80087B08 00083028  38 61 00 08 */	addi r3, r1, 8
/* 80087B0C 0008302C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80087B10 00083030  80 1C 68 28 */	lwz r0, 0xCD006828@l(r28)
/* 80087B14 00083034  70 00 04 05 */	andi. r0, r0, 0x405
/* 80087B18 00083038  60 00 00 C0 */	ori r0, r0, 0xc0
/* 80087B1C 0008303C  90 1C 68 28 */	stw r0, 0x6828(r28)
/* 80087B20 00083040  4B FF FC 0D */	bl __EXI2Imm
/* 80087B24 00083044  7C 60 00 34 */	cntlzw r0, r3
/* 80087B28 00083048  54 1D D9 7E */	srwi r29, r0, 5
.L_80087B2C:
/* 80087B2C 0008304C  80 1C 68 34 */	lwz r0, 0x6834(r28)
/* 80087B30 00083050  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087B34 00083054  40 82 FF F8 */	bne .L_80087B2C
/* 80087B38 00083058  38 61 00 0C */	addi r3, r1, 0xc
/* 80087B3C 0008305C  38 80 00 04 */	li r4, 4
/* 80087B40 00083060  38 A0 00 00 */	li r5, 0
/* 80087B44 00083064  4B FF FB E9 */	bl __EXI2Imm
/* 80087B48 00083068  7C 60 00 34 */	cntlzw r0, r3
/* 80087B4C 0008306C  3C 60 CD 00 */	lis r3, 0xCD006834@ha
/* 80087B50 00083070  54 00 D9 7E */	srwi r0, r0, 5
/* 80087B54 00083074  7F A6 03 78 */	or r6, r29, r0
.L_80087B58:
/* 80087B58 00083078  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 80087B5C 0008307C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087B60 00083080  40 82 FF F8 */	bne .L_80087B58
/* 80087B64 00083084  3C 60 CD 00 */	lis r3, 0xCD006828@ha
/* 80087B68 00083088  2C 9F 00 02 */	cmpwi cr1, r31, 2
/* 80087B6C 0008308C  80 03 68 28 */	lwz r0, 0xCD006828@l(r3)
/* 80087B70 00083090  70 00 04 05 */	andi. r0, r0, 0x405
/* 80087B74 00083094  90 03 68 28 */	stw r0, 0x6828(r3)
/* 80087B78 00083098  41 86 00 24 */	beq cr1, .L_80087B9C
/* 80087B7C 0008309C  40 84 00 34 */	bge cr1, .L_80087BB0
/* 80087B80 000830A0  2C 1F 00 01 */	cmpwi r31, 1
/* 80087B84 000830A4  40 80 00 08 */	bge .L_80087B8C
/* 80087B88 000830A8  48 00 00 28 */	b .L_80087BB0
.L_80087B8C:
/* 80087B8C 000830AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80087B90 000830B0  54 00 46 3E */	srwi r0, r0, 0x18
/* 80087B94 000830B4  98 1E 00 00 */	stb r0, 0(r30)
/* 80087B98 000830B8  48 00 00 34 */	b .L_80087BCC
.L_80087B9C:
/* 80087B9C 000830BC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80087BA0 000830C0  54 60 C4 2E */	rlwinm r0, r3, 0x18, 0x10, 0x17
/* 80087BA4 000830C4  50 60 46 3E */	rlwimi r0, r3, 8, 0x18, 0x1f
/* 80087BA8 000830C8  B0 1E 00 00 */	sth r0, 0(r30)
/* 80087BAC 000830CC  48 00 00 20 */	b .L_80087BCC
.L_80087BB0:
/* 80087BB0 000830D0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80087BB4 000830D4  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 80087BB8 000830D8  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 80087BBC 000830DC  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 80087BC0 000830E0  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 80087BC4 000830E4  7C 60 03 78 */	or r0, r3, r0
/* 80087BC8 000830E8  90 1E 00 00 */	stw r0, 0(r30)
.L_80087BCC:
/* 80087BCC 000830EC  7C C0 00 34 */	cntlzw r0, r6
/* 80087BD0 000830F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80087BD4 000830F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80087BD8 000830F8  54 03 D9 7E */	srwi r3, r0, 5
/* 80087BDC 000830FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80087BE0 00083100  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80087BE4 00083104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087BE8 00083108  7C 08 03 A6 */	mtlr r0
/* 80087BEC 0008310C  38 21 00 20 */	addi r1, r1, 0x20
/* 80087BF0 00083110  4E 80 00 20 */	blr

glabel __DBEXIWriteReg
/* 80087BF4 00083114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80087BF8 00083118  7C 08 02 A6 */	mflr r0
/* 80087BFC 0008311C  2C 05 00 02 */	cmpwi r5, 2
/* 80087C00 00083120  90 01 00 24 */	stw r0, 0x24(r1)
/* 80087C04 00083124  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80087C08 00083128  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80087C0C 0008312C  90 61 00 08 */	stw r3, 8(r1)
/* 80087C10 00083130  41 82 00 24 */	beq .L_80087C34
/* 80087C14 00083134  40 80 00 34 */	bge .L_80087C48
/* 80087C18 00083138  2C 05 00 01 */	cmpwi r5, 1
/* 80087C1C 0008313C  40 80 00 08 */	bge .L_80087C24
/* 80087C20 00083140  48 00 00 28 */	b .L_80087C48
.L_80087C24:
/* 80087C24 00083144  88 04 00 00 */	lbz r0, 0(r4)
/* 80087C28 00083148  54 00 C0 0E */	slwi r0, r0, 0x18
/* 80087C2C 0008314C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80087C30 00083150  48 00 00 34 */	b .L_80087C64
.L_80087C34:
/* 80087C34 00083154  A0 64 00 00 */	lhz r3, 0(r4)
/* 80087C38 00083158  54 60 42 1E */	rlwinm r0, r3, 8, 8, 0xf
/* 80087C3C 0008315C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 80087C40 00083160  90 01 00 0C */	stw r0, 0xc(r1)
/* 80087C44 00083164  48 00 00 20 */	b .L_80087C64
.L_80087C48:
/* 80087C48 00083168  80 84 00 00 */	lwz r4, 0(r4)
/* 80087C4C 0008316C  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 80087C50 00083170  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 80087C54 00083174  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 80087C58 00083178  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 80087C5C 0008317C  7C 60 03 78 */	or r0, r3, r0
/* 80087C60 00083180  90 01 00 0C */	stw r0, 0xc(r1)
.L_80087C64:
/* 80087C64 00083184  3F C0 CD 00 */	lis r30, 0xCD006828@ha
/* 80087C68 00083188  38 61 00 08 */	addi r3, r1, 8
/* 80087C6C 0008318C  80 1E 68 28 */	lwz r0, 0xCD006828@l(r30)
/* 80087C70 00083190  38 80 00 04 */	li r4, 4
/* 80087C74 00083194  38 A0 00 01 */	li r5, 1
/* 80087C78 00083198  70 00 04 05 */	andi. r0, r0, 0x405
/* 80087C7C 0008319C  60 00 00 C0 */	ori r0, r0, 0xc0
/* 80087C80 000831A0  90 1E 68 28 */	stw r0, 0x6828(r30)
/* 80087C84 000831A4  4B FF FA A9 */	bl __EXI2Imm
/* 80087C88 000831A8  7C 60 00 34 */	cntlzw r0, r3
/* 80087C8C 000831AC  54 1F D9 7E */	srwi r31, r0, 5
.L_80087C90:
/* 80087C90 000831B0  80 1E 68 34 */	lwz r0, 0x6834(r30)
/* 80087C94 000831B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087C98 000831B8  40 82 FF F8 */	bne .L_80087C90
/* 80087C9C 000831BC  38 61 00 0C */	addi r3, r1, 0xc
/* 80087CA0 000831C0  38 80 00 04 */	li r4, 4
/* 80087CA4 000831C4  38 A0 00 01 */	li r5, 1
/* 80087CA8 000831C8  4B FF FA 85 */	bl __EXI2Imm
/* 80087CAC 000831CC  7C 60 00 34 */	cntlzw r0, r3
/* 80087CB0 000831D0  3C 60 CD 00 */	lis r3, 0xCD006834@ha
/* 80087CB4 000831D4  54 00 D9 7E */	srwi r0, r0, 5
/* 80087CB8 000831D8  7F E5 03 78 */	or r5, r31, r0
.L_80087CBC:
/* 80087CBC 000831DC  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 80087CC0 000831E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087CC4 000831E4  40 82 FF F8 */	bne .L_80087CBC
/* 80087CC8 000831E8  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 80087CCC 000831EC  7C A0 00 34 */	cntlzw r0, r5
/* 80087CD0 000831F0  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 80087CD4 000831F4  54 03 D9 7E */	srwi r3, r0, 5
/* 80087CD8 000831F8  70 A0 04 05 */	andi. r0, r5, 0x405
/* 80087CDC 000831FC  90 04 68 28 */	stw r0, 0x6828(r4)
/* 80087CE0 00083200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087CE4 00083204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80087CE8 00083208  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80087CEC 0008320C  7C 08 03 A6 */	mtlr r0
/* 80087CF0 00083210  38 21 00 20 */	addi r1, r1, 0x20
/* 80087CF4 00083214  4E 80 00 20 */	blr

glabel __DBEXIReadRam
/* 80087CF8 00083218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80087CFC 0008321C  7C 08 02 A6 */	mflr r0
/* 80087D00 00083220  90 01 00 24 */	stw r0, 0x24(r1)
/* 80087D04 00083224  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80087D08 00083228  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 80087D0C 0008322C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80087D10 00083230  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80087D14 00083234  7C 9D 23 78 */	mr r29, r4
/* 80087D18 00083238  38 80 00 04 */	li r4, 4
/* 80087D1C 0008323C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80087D20 00083240  7C BC 2B 78 */	mr r28, r5
/* 80087D24 00083244  38 A0 00 01 */	li r5, 1
/* 80087D28 00083248  90 61 00 08 */	stw r3, 8(r1)
/* 80087D2C 0008324C  38 61 00 08 */	addi r3, r1, 8
/* 80087D30 00083250  80 1F 68 28 */	lwz r0, 0xCD006828@l(r31)
/* 80087D34 00083254  70 00 04 05 */	andi. r0, r0, 0x405
/* 80087D38 00083258  60 00 00 C0 */	ori r0, r0, 0xc0
/* 80087D3C 0008325C  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 80087D40 00083260  4B FF F9 ED */	bl __EXI2Imm
/* 80087D44 00083264  7C 60 00 34 */	cntlzw r0, r3
/* 80087D48 00083268  54 1E D9 7E */	srwi r30, r0, 5
.L_80087D4C:
/* 80087D4C 0008326C  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 80087D50 00083270  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087D54 00083274  40 82 FF F8 */	bne .L_80087D4C
/* 80087D58 00083278  3F E0 CD 00 */	lis r31, 0xcd00
/* 80087D5C 0008327C  48 00 00 3C */	b .L_80087D98
.L_80087D60:
/* 80087D60 00083280  38 61 00 0C */	addi r3, r1, 0xc
/* 80087D64 00083284  38 80 00 04 */	li r4, 4
/* 80087D68 00083288  38 A0 00 00 */	li r5, 0
/* 80087D6C 0008328C  4B FF F9 C1 */	bl __EXI2Imm
/* 80087D70 00083290  7C 60 00 34 */	cntlzw r0, r3
/* 80087D74 00083294  54 00 D9 7E */	srwi r0, r0, 5
/* 80087D78 00083298  7F DE 03 78 */	or r30, r30, r0
.L_80087D7C:
/* 80087D7C 0008329C  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 80087D80 000832A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087D84 000832A4  40 82 FF F8 */	bne .L_80087D7C
/* 80087D88 000832A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80087D8C 000832AC  3B 9C FF FC */	addi r28, r28, -4
/* 80087D90 000832B0  90 1D 00 00 */	stw r0, 0(r29)
/* 80087D94 000832B4  3B BD 00 04 */	addi r29, r29, 4
.L_80087D98:
/* 80087D98 000832B8  2C 1C 00 00 */	cmpwi r28, 0
/* 80087D9C 000832BC  41 81 FF C4 */	bgt .L_80087D60
/* 80087DA0 000832C0  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 80087DA4 000832C4  7F C0 00 34 */	cntlzw r0, r30
/* 80087DA8 000832C8  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 80087DAC 000832CC  54 03 D9 7E */	srwi r3, r0, 5
/* 80087DB0 000832D0  70 A0 04 05 */	andi. r0, r5, 0x405
/* 80087DB4 000832D4  90 04 68 28 */	stw r0, 0x6828(r4)
/* 80087DB8 000832D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087DBC 000832DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80087DC0 000832E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80087DC4 000832E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80087DC8 000832E8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80087DCC 000832EC  7C 08 03 A6 */	mtlr r0
/* 80087DD0 000832F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80087DD4 000832F4  4E 80 00 20 */	blr

glabel __DBEXIWriteRam
/* 80087DD8 000832F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80087DDC 000832FC  7C 08 02 A6 */	mflr r0
/* 80087DE0 00083300  90 01 00 24 */	stw r0, 0x24(r1)
/* 80087DE4 00083304  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80087DE8 00083308  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 80087DEC 0008330C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80087DF0 00083310  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80087DF4 00083314  7C 9D 23 78 */	mr r29, r4
/* 80087DF8 00083318  38 80 00 04 */	li r4, 4
/* 80087DFC 0008331C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80087E00 00083320  7C BC 2B 78 */	mr r28, r5
/* 80087E04 00083324  38 A0 00 01 */	li r5, 1
/* 80087E08 00083328  90 61 00 08 */	stw r3, 8(r1)
/* 80087E0C 0008332C  38 61 00 08 */	addi r3, r1, 8
/* 80087E10 00083330  80 1F 68 28 */	lwz r0, 0xCD006828@l(r31)
/* 80087E14 00083334  70 00 04 05 */	andi. r0, r0, 0x405
/* 80087E18 00083338  60 00 00 C0 */	ori r0, r0, 0xc0
/* 80087E1C 0008333C  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 80087E20 00083340  4B FF F9 0D */	bl __EXI2Imm
/* 80087E24 00083344  7C 60 00 34 */	cntlzw r0, r3
/* 80087E28 00083348  54 1E D9 7E */	srwi r30, r0, 5
.L_80087E2C:
/* 80087E2C 0008334C  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 80087E30 00083350  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087E34 00083354  40 82 FF F8 */	bne .L_80087E2C
/* 80087E38 00083358  3F E0 CD 00 */	lis r31, 0xcd00
/* 80087E3C 0008335C  48 00 00 3C */	b .L_80087E78
.L_80087E40:
/* 80087E40 00083360  80 1D 00 00 */	lwz r0, 0(r29)
/* 80087E44 00083364  38 61 00 0C */	addi r3, r1, 0xc
/* 80087E48 00083368  38 80 00 04 */	li r4, 4
/* 80087E4C 0008336C  38 A0 00 01 */	li r5, 1
/* 80087E50 00083370  90 01 00 0C */	stw r0, 0xc(r1)
/* 80087E54 00083374  3B BD 00 04 */	addi r29, r29, 4
/* 80087E58 00083378  4B FF F8 D5 */	bl __EXI2Imm
/* 80087E5C 0008337C  7C 60 00 34 */	cntlzw r0, r3
/* 80087E60 00083380  54 00 D9 7E */	srwi r0, r0, 5
/* 80087E64 00083384  7F DE 03 78 */	or r30, r30, r0
.L_80087E68:
/* 80087E68 00083388  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 80087E6C 0008338C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80087E70 00083390  40 82 FF F8 */	bne .L_80087E68
/* 80087E74 00083394  3B 9C FF FC */	addi r28, r28, -4
.L_80087E78:
/* 80087E78 00083398  2C 1C 00 00 */	cmpwi r28, 0
/* 80087E7C 0008339C  41 81 FF C4 */	bgt .L_80087E40
/* 80087E80 000833A0  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 80087E84 000833A4  7F C0 00 34 */	cntlzw r0, r30
/* 80087E88 000833A8  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 80087E8C 000833AC  54 03 D9 7E */	srwi r3, r0, 5
/* 80087E90 000833B0  70 A0 04 05 */	andi. r0, r5, 0x405
/* 80087E94 000833B4  90 04 68 28 */	stw r0, 0x6828(r4)
/* 80087E98 000833B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087E9C 000833BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80087EA0 000833C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80087EA4 000833C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80087EA8 000833C8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80087EAC 000833CC  7C 08 03 A6 */	mtlr r0
/* 80087EB0 000833D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80087EB4 000833D4  4E 80 00 20 */	blr
