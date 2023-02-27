.include "macros.inc"

.section .text, "ax"

glabel PlayRecordAlarmCallback
/* 80099D78 00095298  38 60 00 00 */	li r3, 0
/* 80099D7C 0009529C  38 80 00 00 */	li r4, 0
/* 80099D80 000952A0  48 00 00 04 */	b PlayRecordCallback

glabel PlayRecordCallback
/* 80099D84 000952A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80099D88 000952A8  7C 08 02 A6 */	mflr r0
/* 80099D8C 000952AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80099D90 000952B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80099D94 000952B4  3F E0 80 1C */	lis r31, lbl_801C5420@ha
/* 80099D98 000952B8  3B FF 54 20 */	addi r31, r31, lbl_801C5420@l
/* 80099D9C 000952BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80099DA0 000952C0  3B C0 00 00 */	li r30, 0
/* 80099DA4 000952C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80099DA8 000952C8  80 0D 8D 58 */	lwz r0, lbl_802471D8@sda21(r13)
/* 80099DAC 000952CC  90 6D 8D 64 */	stw r3, lbl_802471E4@sda21(r13)
/* 80099DB0 000952D0  2C 00 00 00 */	cmpwi r0, 0
/* 80099DB4 000952D4  41 82 00 10 */	beq .L_80099DC4
/* 80099DB8 000952D8  38 00 00 01 */	li r0, 1
/* 80099DBC 000952DC  90 0D 8D 5C */	stw r0, lbl_802471DC@sda21(r13)
/* 80099DC0 000952E0  48 00 04 58 */	b .L_8009A218
.L_80099DC4:
/* 80099DC4 000952E4  80 0D 8D 60 */	lwz r0, lbl_802471E0@sda21(r13)
/* 80099DC8 000952E8  2C 00 00 00 */	cmpwi r0, 0
/* 80099DCC 000952EC  40 82 02 18 */	bne .L_80099FE4
/* 80099DD0 000952F0  80 0D 82 80 */	lwz r0, lbl_80246700@sda21(r13)
/* 80099DD4 000952F4  28 00 00 06 */	cmplwi r0, 6
/* 80099DD8 000952F8  41 81 01 F8 */	bgt .L_80099FD0
/* 80099DDC 000952FC  3C 80 80 19 */	lis r4, lbl_80190104@ha
/* 80099DE0 00095300  54 00 10 3A */	slwi r0, r0, 2
/* 80099DE4 00095304  38 84 01 04 */	addi r4, r4, lbl_80190104@l
/* 80099DE8 00095308  7C 84 00 2E */	lwzx r4, r4, r0
/* 80099DEC 0009530C  7C 89 03 A6 */	mtctr r4
/* 80099DF0 00095310  4E 80 04 20 */	bctr

glabel lbl_80099DF4
/* 80099DF4 00095314  38 00 00 01 */	li r0, 1
/* 80099DF8 00095318  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099DFC 0009531C  48 00 01 E8 */	b .L_80099FE4

glabel lbl_80099E00
/* 80099E00 00095320  2C 03 FF F6 */	cmpwi r3, -10
/* 80099E04 00095324  40 82 00 38 */	bne .L_80099E3C
/* 80099E08 00095328  38 00 00 01 */	li r0, 1
/* 80099E0C 0009532C  38 7F 00 80 */	addi r3, r31, 0x80
/* 80099E10 00095330  90 0D 8D 60 */	stw r0, lbl_802471E0@sda21(r13)
/* 80099E14 00095334  4B FF 60 61 */	bl OSCreateAlarm
/* 80099E18 00095338  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 80099E1C 0009533C  3C E0 80 0A */	lis r7, PlayRecordAlarmCallback@ha
/* 80099E20 00095340  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 80099E24 00095344  38 7F 00 80 */	addi r3, r31, 0x80
/* 80099E28 00095348  38 E7 9D 78 */	addi r7, r7, PlayRecordAlarmCallback@l
/* 80099E2C 0009534C  38 A0 00 00 */	li r5, 0
/* 80099E30 00095350  54 06 F0 BE */	srwi r6, r0, 2
/* 80099E34 00095354  4B FF 62 A1 */	bl OSSetAlarm
/* 80099E38 00095358  48 00 03 E0 */	b .L_8009A218
.L_80099E3C:
/* 80099E3C 0009535C  2C 03 00 00 */	cmpwi r3, 0
/* 80099E40 00095360  40 82 00 28 */	bne .L_80099E68
/* 80099E44 00095364  80 0D 8D 50 */	lwz r0, lbl_802471D0@sda21(r13)
/* 80099E48 00095368  2C 00 00 00 */	cmpwi r0, 0
/* 80099E4C 0009536C  40 82 00 10 */	bne .L_80099E5C
/* 80099E50 00095370  38 00 00 02 */	li r0, 2
/* 80099E54 00095374  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099E58 00095378  48 00 01 8C */	b .L_80099FE4
.L_80099E5C:
/* 80099E5C 0009537C  38 00 00 04 */	li r0, 4
/* 80099E60 00095380  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099E64 00095384  48 00 01 80 */	b .L_80099FE4
.L_80099E68:
/* 80099E68 00095388  38 60 00 01 */	li r3, 1
/* 80099E6C 0009538C  38 00 00 07 */	li r0, 7
/* 80099E70 00095390  90 6D 8D 54 */	stw r3, lbl_802471D4@sda21(r13)
/* 80099E74 00095394  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099E78 00095398  48 00 03 A0 */	b .L_8009A218

glabel lbl_80099E7C
/* 80099E7C 0009539C  28 03 00 80 */	cmplwi r3, 0x80
/* 80099E80 000953A0  40 82 00 2C */	bne .L_80099EAC
/* 80099E84 000953A4  38 9F 00 00 */	addi r4, r31, 0
/* 80099E88 000953A8  38 A0 00 01 */	li r5, 1
/* 80099E8C 000953AC  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80099E90 000953B0  38 00 00 03 */	li r0, 3
/* 80099E94 000953B4  80 84 00 64 */	lwz r4, 0x64(r4)
/* 80099E98 000953B8  90 AD 8D 50 */	stw r5, lbl_802471D0@sda21(r13)
/* 80099E9C 000953BC  90 8D 8D 6C */	stw r4, lbl_802471EC@sda21(r13)
/* 80099EA0 000953C0  90 6D 8D 68 */	stw r3, lbl_802471E8@sda21(r13)
/* 80099EA4 000953C4  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099EA8 000953C8  48 00 01 3C */	b .L_80099FE4
.L_80099EAC:
/* 80099EAC 000953CC  38 60 00 01 */	li r3, 1
/* 80099EB0 000953D0  38 00 00 06 */	li r0, 6
/* 80099EB4 000953D4  90 6D 8D 54 */	stw r3, lbl_802471D4@sda21(r13)
/* 80099EB8 000953D8  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099EBC 000953DC  48 00 01 28 */	b .L_80099FE4

glabel lbl_80099EC0
/* 80099EC0 000953E0  2C 03 00 00 */	cmpwi r3, 0
/* 80099EC4 000953E4  40 82 00 10 */	bne .L_80099ED4
/* 80099EC8 000953E8  38 00 00 04 */	li r0, 4
/* 80099ECC 000953EC  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099ED0 000953F0  48 00 01 14 */	b .L_80099FE4
.L_80099ED4:
/* 80099ED4 000953F4  38 60 00 01 */	li r3, 1
/* 80099ED8 000953F8  38 00 00 06 */	li r0, 6
/* 80099EDC 000953FC  90 6D 8D 54 */	stw r3, lbl_802471D4@sda21(r13)
/* 80099EE0 00095400  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099EE4 00095404  48 00 01 00 */	b .L_80099FE4

glabel lbl_80099EE8
/* 80099EE8 00095408  38 00 00 05 */	li r0, 5
/* 80099EEC 0009540C  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099EF0 00095410  48 00 00 F4 */	b .L_80099FE4

glabel lbl_80099EF4
/* 80099EF4 00095414  28 03 00 80 */	cmplwi r3, 0x80
/* 80099EF8 00095418  40 82 00 70 */	bne .L_80099F68
/* 80099EFC 0009541C  4B FF EE CD */	bl OSGetTime
/* 80099F00 00095420  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 80099F04 00095424  81 0D 8D 6C */	lwz r8, lbl_802471EC@sda21(r13)
/* 80099F08 00095428  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 80099F0C 0009542C  38 A0 01 2C */	li r5, 0x12c
/* 80099F10 00095430  81 2D 8D 68 */	lwz r9, lbl_802471E8@sda21(r13)
/* 80099F14 00095434  7D 08 20 10 */	subfc r8, r8, r4
/* 80099F18 00095438  54 07 F0 BE */	srwi r7, r0, 2
/* 80099F1C 0009543C  38 C0 00 00 */	li r6, 0
/* 80099F20 00095440  7C 69 19 10 */	subfe r3, r9, r3
/* 80099F24 00095444  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80099F28 00095448  7C 07 28 16 */	mulhwu r0, r7, r5
/* 80099F2C 0009544C  7C 66 29 D6 */	mullw r3, r6, r5
/* 80099F30 00095450  7C 00 1A 14 */	add r0, r0, r3
/* 80099F34 00095454  1C A7 01 2C */	mulli r5, r7, 0x12c
/* 80099F38 00095458  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80099F3C 0009545C  7C 68 28 10 */	subfc r3, r8, r5
/* 80099F40 00095460  7C 84 01 10 */	subfe r4, r4, r0
/* 80099F44 00095464  7C 80 01 10 */	subfe r4, r0, r0
/* 80099F48 00095468  7C 84 00 D1 */	neg. r4, r4
/* 80099F4C 0009546C  41 82 00 10 */	beq .L_80099F5C
/* 80099F50 00095470  38 00 00 06 */	li r0, 6
/* 80099F54 00095474  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099F58 00095478  48 00 00 8C */	b .L_80099FE4
.L_80099F5C:
/* 80099F5C 0009547C  38 00 00 03 */	li r0, 3
/* 80099F60 00095480  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099F64 00095484  48 00 00 80 */	b .L_80099FE4
.L_80099F68:
/* 80099F68 00095488  38 60 00 01 */	li r3, 1
/* 80099F6C 0009548C  38 00 00 06 */	li r0, 6
/* 80099F70 00095490  90 6D 8D 54 */	stw r3, lbl_802471D4@sda21(r13)
/* 80099F74 00095494  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099F78 00095498  48 00 00 6C */	b .L_80099FE4

glabel lbl_80099F7C
/* 80099F7C 0009549C  80 0D 8D 54 */	lwz r0, lbl_802471D4@sda21(r13)
/* 80099F80 000954A0  2C 00 00 00 */	cmpwi r0, 0
/* 80099F84 000954A4  41 82 00 10 */	beq .L_80099F94
/* 80099F88 000954A8  38 00 00 07 */	li r0, 7
/* 80099F8C 000954AC  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099F90 000954B0  48 00 02 88 */	b .L_8009A218
.L_80099F94:
/* 80099F94 000954B4  2C 03 00 00 */	cmpwi r3, 0
/* 80099F98 000954B8  40 82 00 24 */	bne .L_80099FBC
/* 80099F9C 000954BC  38 9F 00 00 */	addi r4, r31, 0
/* 80099FA0 000954C0  38 00 00 01 */	li r0, 1
/* 80099FA4 000954C4  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80099FA8 000954C8  80 84 00 64 */	lwz r4, 0x64(r4)
/* 80099FAC 000954CC  90 6D 8D 68 */	stw r3, lbl_802471E8@sda21(r13)
/* 80099FB0 000954D0  90 8D 8D 6C */	stw r4, lbl_802471EC@sda21(r13)
/* 80099FB4 000954D4  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 80099FB8 000954D8  48 00 00 2C */	b .L_80099FE4
.L_80099FBC:
/* 80099FBC 000954DC  38 60 00 07 */	li r3, 7
/* 80099FC0 000954E0  38 00 00 01 */	li r0, 1
/* 80099FC4 000954E4  90 6D 82 80 */	stw r3, lbl_80246700@sda21(r13)
/* 80099FC8 000954E8  90 0D 8D 54 */	stw r0, lbl_802471D4@sda21(r13)
/* 80099FCC 000954EC  48 00 02 4C */	b .L_8009A218
.L_80099FD0:
/* 80099FD0 000954F0  38 60 00 07 */	li r3, 7
/* 80099FD4 000954F4  38 00 00 01 */	li r0, 1
/* 80099FD8 000954F8  90 6D 82 80 */	stw r3, lbl_80246700@sda21(r13)
/* 80099FDC 000954FC  90 0D 8D 54 */	stw r0, lbl_802471D4@sda21(r13)
/* 80099FE0 00095500  48 00 02 38 */	b .L_8009A218
.L_80099FE4:
/* 80099FE4 00095504  80 0D 82 80 */	lwz r0, lbl_80246700@sda21(r13)
/* 80099FE8 00095508  3B A0 00 00 */	li r29, 0
/* 80099FEC 0009550C  93 AD 8D 60 */	stw r29, lbl_802471E0@sda21(r13)
/* 80099FF0 00095510  2C 00 00 04 */	cmpwi r0, 4
/* 80099FF4 00095514  41 82 00 A0 */	beq .L_8009A094
/* 80099FF8 00095518  40 80 00 1C */	bge .L_8009A014
/* 80099FFC 0009551C  2C 00 00 02 */	cmpwi r0, 2
/* 8009A000 00095520  41 82 00 4C */	beq .L_8009A04C
/* 8009A004 00095524  40 80 00 6C */	bge .L_8009A070
/* 8009A008 00095528  2C 00 00 01 */	cmpwi r0, 1
/* 8009A00C 0009552C  40 80 00 18 */	bge .L_8009A024
/* 8009A010 00095530  48 00 01 30 */	b .L_8009A140
.L_8009A014:
/* 8009A014 00095534  2C 00 00 06 */	cmpwi r0, 6
/* 8009A018 00095538  41 82 01 10 */	beq .L_8009A128
/* 8009A01C 0009553C  40 80 01 24 */	bge .L_8009A140
/* 8009A020 00095540  48 00 00 B0 */	b .L_8009A0D0
.L_8009A024:
/* 8009A024 00095544  3C 60 80 19 */	lis r3, lbl_801900D8@ha
/* 8009A028 00095548  3C C0 80 0A */	lis r6, PlayRecordCallback@ha
/* 8009A02C 0009554C  38 63 00 D8 */	addi r3, r3, lbl_801900D8@l
/* 8009A030 00095550  38 9F 00 B0 */	addi r4, r31, 0xb0
/* 8009A034 00095554  38 C6 9D 84 */	addi r6, r6, PlayRecordCallback@l
/* 8009A038 00095558  38 FF 01 40 */	addi r7, r31, 0x140
/* 8009A03C 0009555C  38 A0 00 03 */	li r5, 3
/* 8009A040 00095560  48 02 01 21 */	bl NANDOpenAsync
/* 8009A044 00095564  7C 7E 1B 78 */	mr r30, r3
/* 8009A048 00095568  48 00 00 F8 */	b .L_8009A140
.L_8009A04C:
/* 8009A04C 0009556C  3C C0 80 0A */	lis r6, PlayRecordCallback@ha
/* 8009A050 00095570  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8009A054 00095574  38 9F 00 00 */	addi r4, r31, 0
/* 8009A058 00095578  38 FF 01 40 */	addi r7, r31, 0x140
/* 8009A05C 0009557C  38 C6 9D 84 */	addi r6, r6, PlayRecordCallback@l
/* 8009A060 00095580  38 A0 00 80 */	li r5, 0x80
/* 8009A064 00095584  48 01 F4 A5 */	bl NANDReadAsync
/* 8009A068 00095588  7C 7E 1B 78 */	mr r30, r3
/* 8009A06C 0009558C  48 00 00 D4 */	b .L_8009A140
.L_8009A070:
/* 8009A070 00095590  3C C0 80 0A */	lis r6, PlayRecordCallback@ha
/* 8009A074 00095594  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8009A078 00095598  38 C6 9D 84 */	addi r6, r6, PlayRecordCallback@l
/* 8009A07C 0009559C  38 FF 01 40 */	addi r7, r31, 0x140
/* 8009A080 000955A0  38 80 00 00 */	li r4, 0
/* 8009A084 000955A4  38 A0 00 00 */	li r5, 0
/* 8009A088 000955A8  48 01 F6 79 */	bl NANDSeekAsync
/* 8009A08C 000955AC  7C 7E 1B 78 */	mr r30, r3
/* 8009A090 000955B0  48 00 00 B0 */	b .L_8009A140
.L_8009A094:
/* 8009A094 000955B4  38 7F 00 80 */	addi r3, r31, 0x80
/* 8009A098 000955B8  4B FF 5D DD */	bl OSCreateAlarm
/* 8009A09C 000955BC  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8009A0A0 000955C0  38 00 00 3C */	li r0, 0x3c
/* 8009A0A4 000955C4  80 63 00 F8 */	lwz r3, 0x800000F8@l(r3)
/* 8009A0A8 000955C8  3C E0 80 0A */	lis r7, PlayRecordAlarmCallback@ha
/* 8009A0AC 000955CC  7C 9D 01 D6 */	mullw r4, r29, r0
/* 8009A0B0 000955D0  54 65 F0 BE */	srwi r5, r3, 2
/* 8009A0B4 000955D4  38 7F 00 80 */	addi r3, r31, 0x80
/* 8009A0B8 000955D8  38 E7 9D 78 */	addi r7, r7, PlayRecordAlarmCallback@l
/* 8009A0BC 000955DC  7C 05 00 16 */	mulhwu r0, r5, r0
/* 8009A0C0 000955E0  1C C5 00 3C */	mulli r6, r5, 0x3c
/* 8009A0C4 000955E4  7C A0 22 14 */	add r5, r0, r4
/* 8009A0C8 000955E8  4B FF 60 0D */	bl OSSetAlarm
/* 8009A0CC 000955EC  48 00 00 74 */	b .L_8009A140
.L_8009A0D0:
/* 8009A0D0 000955F0  4B FF EC F9 */	bl OSGetTime
/* 8009A0D4 000955F4  38 BF 00 00 */	addi r5, r31, 0
/* 8009A0D8 000955F8  38 00 00 1F */	li r0, 0x1f
/* 8009A0DC 000955FC  90 85 00 64 */	stw r4, 0x64(r5)
/* 8009A0E0 00095600  38 C5 00 04 */	addi r6, r5, 4
/* 8009A0E4 00095604  38 80 00 00 */	li r4, 0
/* 8009A0E8 00095608  90 65 00 60 */	stw r3, 0x60(r5)
/* 8009A0EC 0009560C  7C 09 03 A6 */	mtctr r0
.L_8009A0F0:
/* 8009A0F0 00095610  80 06 00 00 */	lwz r0, 0(r6)
/* 8009A0F4 00095614  38 C6 00 04 */	addi r6, r6, 4
/* 8009A0F8 00095618  7C 84 02 14 */	add r4, r4, r0
/* 8009A0FC 0009561C  42 00 FF F4 */	bdnz .L_8009A0F0
/* 8009A100 00095620  3C C0 80 0A */	lis r6, PlayRecordCallback@ha
/* 8009A104 00095624  90 9F 00 00 */	stw r4, 0(r31)
/* 8009A108 00095628  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8009A10C 0009562C  38 9F 00 00 */	addi r4, r31, 0
/* 8009A110 00095630  38 C6 9D 84 */	addi r6, r6, PlayRecordCallback@l
/* 8009A114 00095634  38 FF 01 40 */	addi r7, r31, 0x140
/* 8009A118 00095638  38 A0 00 80 */	li r5, 0x80
/* 8009A11C 0009563C  48 01 F4 CD */	bl NANDWriteAsync
/* 8009A120 00095640  7C 7E 1B 78 */	mr r30, r3
/* 8009A124 00095644  48 00 00 1C */	b .L_8009A140
.L_8009A128:
/* 8009A128 00095648  3C 80 80 0A */	lis r4, PlayRecordCallback@ha
/* 8009A12C 0009564C  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8009A130 00095650  38 84 9D 84 */	addi r4, r4, PlayRecordCallback@l
/* 8009A134 00095654  38 BF 01 40 */	addi r5, r31, 0x140
/* 8009A138 00095658  48 02 01 FD */	bl NANDCloseAsync
/* 8009A13C 0009565C  7C 7E 1B 78 */	mr r30, r3
.L_8009A140:
/* 8009A140 00095660  2C 1E 00 00 */	cmpwi r30, 0
/* 8009A144 00095664  41 82 00 D0 */	beq .L_8009A214
/* 8009A148 00095668  2C 1E FF FD */	cmpwi r30, -3
/* 8009A14C 0009566C  40 82 00 38 */	bne .L_8009A184
/* 8009A150 00095670  38 7F 00 80 */	addi r3, r31, 0x80
/* 8009A154 00095674  4B FF 5D 21 */	bl OSCreateAlarm
/* 8009A158 00095678  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8009A15C 0009567C  3C E0 80 0A */	lis r7, PlayRecordAlarmCallback@ha
/* 8009A160 00095680  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8009A164 00095684  38 7F 00 80 */	addi r3, r31, 0x80
/* 8009A168 00095688  38 E7 9D 78 */	addi r7, r7, PlayRecordAlarmCallback@l
/* 8009A16C 0009568C  38 A0 00 00 */	li r5, 0
/* 8009A170 00095690  54 06 F0 BE */	srwi r6, r0, 2
/* 8009A174 00095694  4B FF 5F 61 */	bl OSSetAlarm
/* 8009A178 00095698  38 00 00 01 */	li r0, 1
/* 8009A17C 0009569C  90 0D 8D 60 */	stw r0, lbl_802471E0@sda21(r13)
/* 8009A180 000956A0  48 00 00 94 */	b .L_8009A214
.L_8009A184:
/* 8009A184 000956A4  80 0D 82 80 */	lwz r0, lbl_80246700@sda21(r13)
/* 8009A188 000956A8  38 60 00 01 */	li r3, 1
/* 8009A18C 000956AC  90 6D 8D 54 */	stw r3, lbl_802471D4@sda21(r13)
/* 8009A190 000956B0  2C 00 00 04 */	cmpwi r0, 4
/* 8009A194 000956B4  41 82 00 78 */	beq .L_8009A20C
/* 8009A198 000956B8  40 80 00 10 */	bge .L_8009A1A8
/* 8009A19C 000956BC  2C 00 00 02 */	cmpwi r0, 2
/* 8009A1A0 000956C0  40 80 00 10 */	bge .L_8009A1B0
/* 8009A1A4 000956C4  48 00 00 68 */	b .L_8009A20C
.L_8009A1A8:
/* 8009A1A8 000956C8  2C 00 00 06 */	cmpwi r0, 6
/* 8009A1AC 000956CC  40 80 00 60 */	bge .L_8009A20C
.L_8009A1B0:
/* 8009A1B0 000956D0  38 00 00 06 */	li r0, 6
/* 8009A1B4 000956D4  3C 80 80 0A */	lis r4, PlayRecordCallback@ha
/* 8009A1B8 000956D8  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 8009A1BC 000956DC  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8009A1C0 000956E0  38 84 9D 84 */	addi r4, r4, PlayRecordCallback@l
/* 8009A1C4 000956E4  38 BF 01 40 */	addi r5, r31, 0x140
/* 8009A1C8 000956E8  48 02 01 6D */	bl NANDCloseAsync
/* 8009A1CC 000956EC  2C 03 FF FD */	cmpwi r3, -3
/* 8009A1D0 000956F0  7C 7E 1B 78 */	mr r30, r3
/* 8009A1D4 000956F4  40 82 00 40 */	bne .L_8009A214
/* 8009A1D8 000956F8  38 00 00 01 */	li r0, 1
/* 8009A1DC 000956FC  38 7F 00 80 */	addi r3, r31, 0x80
/* 8009A1E0 00095700  90 0D 8D 60 */	stw r0, lbl_802471E0@sda21(r13)
/* 8009A1E4 00095704  4B FF 5C 91 */	bl OSCreateAlarm
/* 8009A1E8 00095708  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8009A1EC 0009570C  3C E0 80 0A */	lis r7, PlayRecordAlarmCallback@ha
/* 8009A1F0 00095710  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8009A1F4 00095714  38 7F 00 80 */	addi r3, r31, 0x80
/* 8009A1F8 00095718  38 E7 9D 78 */	addi r7, r7, PlayRecordAlarmCallback@l
/* 8009A1FC 0009571C  38 A0 00 00 */	li r5, 0
/* 8009A200 00095720  54 06 F0 BE */	srwi r6, r0, 2
/* 8009A204 00095724  4B FF 5E D1 */	bl OSSetAlarm
/* 8009A208 00095728  48 00 00 0C */	b .L_8009A214
.L_8009A20C:
/* 8009A20C 0009572C  38 00 00 07 */	li r0, 7
/* 8009A210 00095730  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
.L_8009A214:
/* 8009A214 00095734  93 CD 8D 64 */	stw r30, lbl_802471E4@sda21(r13)
.L_8009A218:
/* 8009A218 00095738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009A21C 0009573C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009A220 00095740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8009A224 00095744  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8009A228 00095748  7C 08 03 A6 */	mtlr r0
/* 8009A22C 0009574C  38 21 00 20 */	addi r1, r1, 0x20
/* 8009A230 00095750  4E 80 00 20 */	blr

glabel __OSStartPlayRecord
/* 8009A234 00095754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A238 00095758  7C 08 02 A6 */	mflr r0
/* 8009A23C 0009575C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A240 00095760  48 02 0C ED */	bl ESSetHomeDir
/* 8009A244 00095764  2C 03 00 00 */	cmpwi r3, 0
/* 8009A248 00095768  40 82 00 30 */	bne .L_8009A278
/* 8009A24C 0009576C  38 00 00 00 */	li r0, 0
/* 8009A250 00095770  38 60 00 00 */	li r3, 0
/* 8009A254 00095774  90 0D 8D 58 */	stw r0, lbl_802471D8@sda21(r13)
/* 8009A258 00095778  38 80 00 00 */	li r4, 0
/* 8009A25C 0009577C  90 0D 8D 50 */	stw r0, lbl_802471D0@sda21(r13)
/* 8009A260 00095780  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 8009A264 00095784  90 0D 8D 54 */	stw r0, lbl_802471D4@sda21(r13)
/* 8009A268 00095788  90 0D 8D 60 */	stw r0, lbl_802471E0@sda21(r13)
/* 8009A26C 0009578C  90 0D 8D 5C */	stw r0, lbl_802471DC@sda21(r13)
/* 8009A270 00095790  90 0D 8D 64 */	stw r0, lbl_802471E4@sda21(r13)
/* 8009A274 00095794  4B FF FB 11 */	bl PlayRecordCallback
.L_8009A278:
/* 8009A278 00095798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A27C 0009579C  7C 08 03 A6 */	mtlr r0
/* 8009A280 000957A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A284 000957A4  4E 80 00 20 */	blr

glabel __OSStopPlayRecord
/* 8009A288 000957A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009A28C 000957AC  7C 08 02 A6 */	mflr r0
/* 8009A290 000957B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009A294 000957B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8009A298 000957B8  48 0C 26 A9 */	bl _savegpr_26
/* 8009A29C 000957BC  3F A0 80 1C */	lis r29, lbl_801C5420@ha
/* 8009A2A0 000957C0  3B BD 54 20 */	addi r29, r29, lbl_801C5420@l
/* 8009A2A4 000957C4  4B FF B0 11 */	bl OSDisableInterrupts
/* 8009A2A8 000957C8  80 0D 82 80 */	lwz r0, lbl_80246700@sda21(r13)
/* 8009A2AC 000957CC  38 80 00 01 */	li r4, 1
/* 8009A2B0 000957D0  90 8D 8D 58 */	stw r4, lbl_802471D8@sda21(r13)
/* 8009A2B4 000957D4  7C 7A 1B 78 */	mr r26, r3
/* 8009A2B8 000957D8  2C 00 00 07 */	cmpwi r0, 7
/* 8009A2BC 000957DC  41 82 00 1C */	beq .L_8009A2D8
/* 8009A2C0 000957E0  2C 00 00 00 */	cmpwi r0, 0
/* 8009A2C4 000957E4  41 82 00 14 */	beq .L_8009A2D8
/* 8009A2C8 000957E8  2C 00 00 09 */	cmpwi r0, 9
/* 8009A2CC 000957EC  41 82 00 0C */	beq .L_8009A2D8
/* 8009A2D0 000957F0  2C 00 00 08 */	cmpwi r0, 8
/* 8009A2D4 000957F4  40 82 00 10 */	bne .L_8009A2E4
.L_8009A2D8:
/* 8009A2D8 000957F8  7F 43 D3 78 */	mr r3, r26
/* 8009A2DC 000957FC  4B FF B0 01 */	bl OSRestoreInterrupts
/* 8009A2E0 00095800  48 00 01 70 */	b .L_8009A450
.L_8009A2E4:
/* 8009A2E4 00095804  2C 00 00 04 */	cmpwi r0, 4
/* 8009A2E8 00095808  40 82 00 64 */	bne .L_8009A34C
/* 8009A2EC 0009580C  38 7D 00 80 */	addi r3, r29, 0x80
/* 8009A2F0 00095810  4B FF 5E D9 */	bl OSCancelAlarm
/* 8009A2F4 00095814  7F 43 D3 78 */	mr r3, r26
/* 8009A2F8 00095818  4B FF AF E5 */	bl OSRestoreInterrupts
/* 8009A2FC 0009581C  4B FF EA CD */	bl OSGetTime
/* 8009A300 00095820  38 BD 00 00 */	addi r5, r29, 0
/* 8009A304 00095824  38 00 00 1F */	li r0, 0x1f
/* 8009A308 00095828  90 85 00 64 */	stw r4, 0x64(r5)
/* 8009A30C 0009582C  38 C5 00 04 */	addi r6, r5, 4
/* 8009A310 00095830  38 80 00 00 */	li r4, 0
/* 8009A314 00095834  90 65 00 60 */	stw r3, 0x60(r5)
/* 8009A318 00095838  7C 09 03 A6 */	mtctr r0
.L_8009A31C:
/* 8009A31C 0009583C  80 06 00 00 */	lwz r0, 0(r6)
/* 8009A320 00095840  38 C6 00 04 */	addi r6, r6, 4
/* 8009A324 00095844  7C 84 02 14 */	add r4, r4, r0
/* 8009A328 00095848  42 00 FF F4 */	bdnz .L_8009A31C
/* 8009A32C 0009584C  90 9D 00 00 */	stw r4, 0(r29)
/* 8009A330 00095850  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8009A334 00095854  38 9D 00 00 */	addi r4, r29, 0
/* 8009A338 00095858  38 A0 00 80 */	li r5, 0x80
/* 8009A33C 0009585C  48 01 F2 45 */	bl NANDWrite
/* 8009A340 00095860  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8009A344 00095864  48 01 FF 85 */	bl NANDClose
/* 8009A348 00095868  48 00 01 08 */	b .L_8009A450
.L_8009A34C:
/* 8009A34C 0009586C  80 0D 8D 60 */	lwz r0, lbl_802471E0@sda21(r13)
/* 8009A350 00095870  2C 00 00 00 */	cmpwi r0, 0
/* 8009A354 00095874  41 82 00 18 */	beq .L_8009A36C
/* 8009A358 00095878  38 7D 00 80 */	addi r3, r29, 0x80
/* 8009A35C 0009587C  4B FF 5E 6D */	bl OSCancelAlarm
/* 8009A360 00095880  7F 43 D3 78 */	mr r3, r26
/* 8009A364 00095884  4B FF AF 79 */	bl OSRestoreInterrupts
/* 8009A368 00095888  48 00 00 78 */	b .L_8009A3E0
.L_8009A36C:
/* 8009A36C 0009588C  4B FF AF 71 */	bl OSRestoreInterrupts
/* 8009A370 00095890  4B FF EA 59 */	bl OSGetTime
/* 8009A374 00095894  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 8009A378 00095898  38 00 00 00 */	li r0, 0
/* 8009A37C 0009589C  7C 9E 23 78 */	mr r30, r4
/* 8009A380 000958A0  7C 7F 1B 78 */	mr r31, r3
/* 8009A384 000958A4  3B 45 4D D3 */	addi r26, r5, 0x10624DD3@l
/* 8009A388 000958A8  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 8009A38C 000958AC  3F 60 80 00 */	lis r27, 0x8000
.L_8009A390:
/* 8009A390 000958B0  80 0D 8D 5C */	lwz r0, lbl_802471DC@sda21(r13)
/* 8009A394 000958B4  2C 00 00 00 */	cmpwi r0, 0
/* 8009A398 000958B8  40 82 00 48 */	bne .L_8009A3E0
/* 8009A39C 000958BC  4B FF EA 2D */	bl OSGetTime
/* 8009A3A0 000958C0  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 8009A3A4 000958C4  7C 9E 20 10 */	subfc r4, r30, r4
/* 8009A3A8 000958C8  7C 7F 19 10 */	subfe r3, r31, r3
/* 8009A3AC 000958CC  54 00 F0 BE */	srwi r0, r0, 2
/* 8009A3B0 000958D0  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 8009A3B4 000958D4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8009A3B8 000958D8  54 00 D1 BE */	srwi r0, r0, 6
/* 8009A3BC 000958DC  1C 00 01 F4 */	mulli r0, r0, 0x1f4
/* 8009A3C0 000958E0  7C 04 00 10 */	subfc r0, r4, r0
/* 8009A3C4 000958E4  7C 63 E1 10 */	subfe r3, r3, r28
/* 8009A3C8 000958E8  7C 7C E1 10 */	subfe r3, r28, r28
/* 8009A3CC 000958EC  7C 63 00 D1 */	neg. r3, r3
/* 8009A3D0 000958F0  41 82 FF C0 */	beq .L_8009A390
/* 8009A3D4 000958F4  38 00 00 08 */	li r0, 8
/* 8009A3D8 000958F8  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
/* 8009A3DC 000958FC  48 00 00 7C */	b .L_8009A458
.L_8009A3E0:
/* 8009A3E0 00095900  80 0D 82 80 */	lwz r0, lbl_80246700@sda21(r13)
/* 8009A3E4 00095904  2C 00 00 04 */	cmpwi r0, 4
/* 8009A3E8 00095908  41 82 00 68 */	beq .L_8009A450
/* 8009A3EC 0009590C  40 80 00 14 */	bge .L_8009A400
/* 8009A3F0 00095910  2C 00 00 01 */	cmpwi r0, 1
/* 8009A3F4 00095914  41 82 00 24 */	beq .L_8009A418
/* 8009A3F8 00095918  40 80 00 14 */	bge .L_8009A40C
/* 8009A3FC 0009591C  48 00 00 54 */	b .L_8009A450
.L_8009A400:
/* 8009A400 00095920  2C 00 00 06 */	cmpwi r0, 6
/* 8009A404 00095924  41 82 00 38 */	beq .L_8009A43C
/* 8009A408 00095928  40 80 00 48 */	bge .L_8009A450
.L_8009A40C:
/* 8009A40C 0009592C  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8009A410 00095930  48 01 FE B9 */	bl NANDClose
/* 8009A414 00095934  48 00 00 3C */	b .L_8009A450
.L_8009A418:
/* 8009A418 00095938  80 0D 8D 64 */	lwz r0, lbl_802471E4@sda21(r13)
/* 8009A41C 0009593C  2C 00 00 00 */	cmpwi r0, 0
/* 8009A420 00095940  40 82 00 30 */	bne .L_8009A450
/* 8009A424 00095944  80 0D 8D 60 */	lwz r0, lbl_802471E0@sda21(r13)
/* 8009A428 00095948  2C 00 00 00 */	cmpwi r0, 0
/* 8009A42C 0009594C  40 82 00 24 */	bne .L_8009A450
/* 8009A430 00095950  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8009A434 00095954  48 01 FE 95 */	bl NANDClose
/* 8009A438 00095958  48 00 00 18 */	b .L_8009A450
.L_8009A43C:
/* 8009A43C 0009595C  80 0D 8D 60 */	lwz r0, lbl_802471E0@sda21(r13)
/* 8009A440 00095960  2C 00 00 00 */	cmpwi r0, 0
/* 8009A444 00095964  41 82 00 0C */	beq .L_8009A450
/* 8009A448 00095968  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8009A44C 0009596C  48 01 FE 7D */	bl NANDClose
.L_8009A450:
/* 8009A450 00095970  38 00 00 09 */	li r0, 9
/* 8009A454 00095974  90 0D 82 80 */	stw r0, lbl_80246700@sda21(r13)
.L_8009A458:
/* 8009A458 00095978  39 61 00 20 */	addi r11, r1, 0x20
/* 8009A45C 0009597C  48 0C 25 31 */	bl _restgpr_26
/* 8009A460 00095980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009A464 00095984  7C 08 03 A6 */	mtlr r0
/* 8009A468 00095988  38 21 00 20 */	addi r1, r1, 0x20
/* 8009A46C 0009598C  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_801C5420
	.skip 0x200

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_802471D0
	.skip 0x4

glabel lbl_802471D4
	.skip 0x4

glabel lbl_802471D8
	.skip 0x4

glabel lbl_802471DC
	.skip 0x4

glabel lbl_802471E0
	.skip 0x4

glabel lbl_802471E4
	.skip 0x4

glabel lbl_802471E8
	.skip 0x4

glabel lbl_802471EC
	.skip 0x4
