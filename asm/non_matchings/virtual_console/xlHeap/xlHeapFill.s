glabel xlHeapFill
/* 800869CC 00081EEC  2C 04 00 10 */	cmpwi r4, 0x10
/* 800869D0 00081EF0  38 E4 FF FF */	addi r7, r4, -1
/* 800869D4 00081EF4  54 E7 E1 3E */	srwi r7, r7, 4
/* 800869D8 00081EF8  40 81 00 F8 */	ble lbl_80086AD0
/* 800869DC 00081EFC  54 E6 F8 7F */	rlwinm. r6, r7, 0x1f, 1, 0x1f
/* 800869E0 00081F00  54 E0 20 36 */	slwi r0, r7, 4
/* 800869E4 00081F04  7C 00 00 D0 */	neg r0, r0
/* 800869E8 00081F08  7C C9 03 A6 */	mtctr r6
/* 800869EC 00081F0C  41 82 00 94 */	beq lbl_80086A80
lbl_800869F0:
/* 800869F0 00081F10  98 A3 00 00 */	stb r5, 0(r3)
/* 800869F4 00081F14  98 A3 00 01 */	stb r5, 1(r3)
/* 800869F8 00081F18  98 A3 00 02 */	stb r5, 2(r3)
/* 800869FC 00081F1C  98 A3 00 03 */	stb r5, 3(r3)
/* 80086A00 00081F20  98 A3 00 04 */	stb r5, 4(r3)
/* 80086A04 00081F24  98 A3 00 05 */	stb r5, 5(r3)
/* 80086A08 00081F28  98 A3 00 06 */	stb r5, 6(r3)
/* 80086A0C 00081F2C  98 A3 00 07 */	stb r5, 7(r3)
/* 80086A10 00081F30  98 A3 00 08 */	stb r5, 8(r3)
/* 80086A14 00081F34  98 A3 00 09 */	stb r5, 9(r3)
/* 80086A18 00081F38  98 A3 00 0A */	stb r5, 0xa(r3)
/* 80086A1C 00081F3C  98 A3 00 0B */	stb r5, 0xb(r3)
/* 80086A20 00081F40  98 A3 00 0C */	stb r5, 0xc(r3)
/* 80086A24 00081F44  98 A3 00 0D */	stb r5, 0xd(r3)
/* 80086A28 00081F48  98 A3 00 0E */	stb r5, 0xe(r3)
/* 80086A2C 00081F4C  98 A3 00 0F */	stb r5, 0xf(r3)
/* 80086A30 00081F50  98 A3 00 10 */	stb r5, 0x10(r3)
/* 80086A34 00081F54  98 A3 00 11 */	stb r5, 0x11(r3)
/* 80086A38 00081F58  98 A3 00 12 */	stb r5, 0x12(r3)
/* 80086A3C 00081F5C  98 A3 00 13 */	stb r5, 0x13(r3)
/* 80086A40 00081F60  98 A3 00 14 */	stb r5, 0x14(r3)
/* 80086A44 00081F64  98 A3 00 15 */	stb r5, 0x15(r3)
/* 80086A48 00081F68  98 A3 00 16 */	stb r5, 0x16(r3)
/* 80086A4C 00081F6C  98 A3 00 17 */	stb r5, 0x17(r3)
/* 80086A50 00081F70  98 A3 00 18 */	stb r5, 0x18(r3)
/* 80086A54 00081F74  98 A3 00 19 */	stb r5, 0x19(r3)
/* 80086A58 00081F78  98 A3 00 1A */	stb r5, 0x1a(r3)
/* 80086A5C 00081F7C  98 A3 00 1B */	stb r5, 0x1b(r3)
/* 80086A60 00081F80  98 A3 00 1C */	stb r5, 0x1c(r3)
/* 80086A64 00081F84  98 A3 00 1D */	stb r5, 0x1d(r3)
/* 80086A68 00081F88  98 A3 00 1E */	stb r5, 0x1e(r3)
/* 80086A6C 00081F8C  98 A3 00 1F */	stb r5, 0x1f(r3)
/* 80086A70 00081F90  38 63 00 20 */	addi r3, r3, 0x20
/* 80086A74 00081F94  42 00 FF 7C */	bdnz lbl_800869F0
/* 80086A78 00081F98  70 E7 00 01 */	andi. r7, r7, 1
/* 80086A7C 00081F9C  41 82 00 50 */	beq lbl_80086ACC
lbl_80086A80:
/* 80086A80 00081FA0  7C E9 03 A6 */	mtctr r7
lbl_80086A84:
/* 80086A84 00081FA4  98 A3 00 00 */	stb r5, 0(r3)
/* 80086A88 00081FA8  98 A3 00 01 */	stb r5, 1(r3)
/* 80086A8C 00081FAC  98 A3 00 02 */	stb r5, 2(r3)
/* 80086A90 00081FB0  98 A3 00 03 */	stb r5, 3(r3)
/* 80086A94 00081FB4  98 A3 00 04 */	stb r5, 4(r3)
/* 80086A98 00081FB8  98 A3 00 05 */	stb r5, 5(r3)
/* 80086A9C 00081FBC  98 A3 00 06 */	stb r5, 6(r3)
/* 80086AA0 00081FC0  98 A3 00 07 */	stb r5, 7(r3)
/* 80086AA4 00081FC4  98 A3 00 08 */	stb r5, 8(r3)
/* 80086AA8 00081FC8  98 A3 00 09 */	stb r5, 9(r3)
/* 80086AAC 00081FCC  98 A3 00 0A */	stb r5, 0xa(r3)
/* 80086AB0 00081FD0  98 A3 00 0B */	stb r5, 0xb(r3)
/* 80086AB4 00081FD4  98 A3 00 0C */	stb r5, 0xc(r3)
/* 80086AB8 00081FD8  98 A3 00 0D */	stb r5, 0xd(r3)
/* 80086ABC 00081FDC  98 A3 00 0E */	stb r5, 0xe(r3)
/* 80086AC0 00081FE0  98 A3 00 0F */	stb r5, 0xf(r3)
/* 80086AC4 00081FE4  38 63 00 10 */	addi r3, r3, 0x10
/* 80086AC8 00081FE8  42 00 FF BC */	bdnz lbl_80086A84
lbl_80086ACC:
/* 80086ACC 00081FEC  7C 84 02 14 */	add r4, r4, r0
lbl_80086AD0:
/* 80086AD0 00081FF0  2C 04 00 00 */	cmpwi r4, 0
/* 80086AD4 00081FF4  40 81 00 50 */	ble lbl_80086B24
/* 80086AD8 00081FF8  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 80086ADC 00081FFC  7C 09 03 A6 */	mtctr r0
/* 80086AE0 00082000  41 82 00 34 */	beq lbl_80086B14
lbl_80086AE4:
/* 80086AE4 00082004  98 A3 00 00 */	stb r5, 0(r3)
/* 80086AE8 00082008  98 A3 00 01 */	stb r5, 1(r3)
/* 80086AEC 0008200C  98 A3 00 02 */	stb r5, 2(r3)
/* 80086AF0 00082010  98 A3 00 03 */	stb r5, 3(r3)
/* 80086AF4 00082014  98 A3 00 04 */	stb r5, 4(r3)
/* 80086AF8 00082018  98 A3 00 05 */	stb r5, 5(r3)
/* 80086AFC 0008201C  98 A3 00 06 */	stb r5, 6(r3)
/* 80086B00 00082020  98 A3 00 07 */	stb r5, 7(r3)
/* 80086B04 00082024  38 63 00 08 */	addi r3, r3, 8
/* 80086B08 00082028  42 00 FF DC */	bdnz lbl_80086AE4
/* 80086B0C 0008202C  70 84 00 07 */	andi. r4, r4, 7
/* 80086B10 00082030  41 82 00 14 */	beq lbl_80086B24
lbl_80086B14:
/* 80086B14 00082034  7C 89 03 A6 */	mtctr r4
lbl_80086B18:
/* 80086B18 00082038  98 A3 00 00 */	stb r5, 0(r3)
/* 80086B1C 0008203C  38 63 00 01 */	addi r3, r3, 1
/* 80086B20 00082040  42 00 FF F8 */	bdnz lbl_80086B18
lbl_80086B24:
/* 80086B24 00082044  38 60 00 01 */	li r3, 1
/* 80086B28 00082048  4E 80 00 20 */	blr 
