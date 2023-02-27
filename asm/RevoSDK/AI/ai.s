.include "macros.inc"

.section .text, "ax"

glabel AIRegisterDMACallback
/* 800B1CF0 000AD210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B1CF4 000AD214  7C 08 02 A6 */	mflr r0
/* 800B1CF8 000AD218  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B1CFC 000AD21C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B1D00 000AD220  93 C1 00 08 */	stw r30, 8(r1)
/* 800B1D04 000AD224  7C 7E 1B 78 */	mr r30, r3
/* 800B1D08 000AD228  83 ED 90 20 */	lwz r31, lbl_802474A0@sda21(r13)
/* 800B1D0C 000AD22C  4B FE 35 A9 */	bl OSDisableInterrupts
/* 800B1D10 000AD230  93 CD 90 20 */	stw r30, lbl_802474A0@sda21(r13)
/* 800B1D14 000AD234  4B FE 35 C9 */	bl OSRestoreInterrupts
/* 800B1D18 000AD238  7F E3 FB 78 */	mr r3, r31
/* 800B1D1C 000AD23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B1D20 000AD240  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B1D24 000AD244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B1D28 000AD248  7C 08 03 A6 */	mtlr r0
/* 800B1D2C 000AD24C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B1D30 000AD250  4E 80 00 20 */	blr 

glabel AIInitDMA
/* 800B1D34 000AD254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B1D38 000AD258  7C 08 02 A6 */	mflr r0
/* 800B1D3C 000AD25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B1D40 000AD260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B1D44 000AD264  7C 9F 23 78 */	mr r31, r4
/* 800B1D48 000AD268  93 C1 00 08 */	stw r30, 8(r1)
/* 800B1D4C 000AD26C  7C 7E 1B 78 */	mr r30, r3
/* 800B1D50 000AD270  4B FE 35 65 */	bl OSDisableInterrupts
/* 800B1D54 000AD274  3C E0 CC 00 */	lis r7, 0xCC005030@ha
/* 800B1D58 000AD278  57 C5 84 3E */	srwi r5, r30, 0x10
/* 800B1D5C 000AD27C  A0 C7 50 30 */	lhz r6, 0xCC005030@l(r7)
/* 800B1D60 000AD280  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 800B1D64 000AD284  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 800B1D68 000AD288  54 C6 00 24 */	rlwinm r6, r6, 0, 0, 0x12
/* 800B1D6C 000AD28C  7C C5 2B 78 */	or r5, r6, r5
/* 800B1D70 000AD290  B0 A7 50 30 */	sth r5, 0x5030(r7)
/* 800B1D74 000AD294  A0 A7 50 32 */	lhz r5, 0x5032(r7)
/* 800B1D78 000AD298  54 A5 06 DE */	rlwinm r5, r5, 0, 0x1b, 0xf
/* 800B1D7C 000AD29C  7C A4 23 78 */	or r4, r5, r4
/* 800B1D80 000AD2A0  B0 87 50 32 */	sth r4, 0x5032(r7)
/* 800B1D84 000AD2A4  A0 87 50 36 */	lhz r4, 0x5036(r7)
/* 800B1D88 000AD2A8  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 800B1D8C 000AD2AC  7C 80 03 78 */	or r0, r4, r0
/* 800B1D90 000AD2B0  B0 07 50 36 */	sth r0, 0x5036(r7)
/* 800B1D94 000AD2B4  4B FE 35 49 */	bl OSRestoreInterrupts
/* 800B1D98 000AD2B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B1D9C 000AD2BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B1DA0 000AD2C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B1DA4 000AD2C4  7C 08 03 A6 */	mtlr r0
/* 800B1DA8 000AD2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B1DAC 000AD2CC  4E 80 00 20 */	blr 

glabel func_800B1DB0
/* 800B1DB0 000AD2D0  3C 60 CC 00 */	lis r3, 0xCC005036@ha
/* 800B1DB4 000AD2D4  A0 03 50 36 */	lhz r0, 0xCC005036@l(r3)
/* 800B1DB8 000AD2D8  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 800B1DBC 000AD2DC  4E 80 00 20 */	blr 

glabel AIStartDMA
/* 800B1DC0 000AD2E0  3C 60 CC 00 */	lis r3, 0xCC005036@ha
/* 800B1DC4 000AD2E4  A0 03 50 36 */	lhz r0, 0xCC005036@l(r3)
/* 800B1DC8 000AD2E8  60 00 80 00 */	ori r0, r0, 0x8000
/* 800B1DCC 000AD2EC  B0 03 50 36 */	sth r0, 0x5036(r3)
/* 800B1DD0 000AD2F0  4E 80 00 20 */	blr 

glabel AIStopDMA
/* 800B1DD4 000AD2F4  3C 60 CC 00 */	lis r3, 0xCC005036@ha
/* 800B1DD8 000AD2F8  A0 03 50 36 */	lhz r0, 0xCC005036@l(r3)
/* 800B1DDC 000AD2FC  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 800B1DE0 000AD300  B0 03 50 36 */	sth r0, 0x5036(r3)
/* 800B1DE4 000AD304  4E 80 00 20 */	blr 

glabel AIGetDMABytesLeft
/* 800B1DE8 000AD308  3C 60 CC 00 */	lis r3, 0xCC00503A@ha
/* 800B1DEC 000AD30C  A0 03 50 3A */	lhz r0, 0xCC00503A@l(r3)
/* 800B1DF0 000AD310  54 03 2B 34 */	rlwinm r3, r0, 5, 0xc, 0x1a
/* 800B1DF4 000AD314  4E 80 00 20 */	blr 

glabel func_800B1DF8
/* 800B1DF8 000AD318  3C 60 CC 00 */	lis r3, 0xCC005030@ha
/* 800B1DFC 000AD31C  A0 83 50 30 */	lhz r4, 0xCC005030@l(r3)
/* 800B1E00 000AD320  A0 03 50 32 */	lhz r0, 0x5032(r3)
/* 800B1E04 000AD324  54 03 04 34 */	rlwinm r3, r0, 0, 0x10, 0x1a
/* 800B1E08 000AD328  50 83 80 DE */	rlwimi r3, r4, 0x10, 3, 0xf
/* 800B1E0C 000AD32C  4E 80 00 20 */	blr 

glabel func_800B1E10
/* 800B1E10 000AD330  80 6D 8F E8 */	lwz r3, lbl_80247468@sda21(r13)
/* 800B1E14 000AD334  4E 80 00 20 */	blr 

glabel func_800B1E18
/* 800B1E18 000AD338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B1E1C 000AD33C  7C 08 02 A6 */	mflr r0
/* 800B1E20 000AD340  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B1E24 000AD344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B1E28 000AD348  3F E0 CD 00 */	lis r31, 0xCD006C00@ha
/* 800B1E2C 000AD34C  93 C1 00 08 */	stw r30, 8(r1)
/* 800B1E30 000AD350  80 1F 6C 00 */	lwz r0, 0xCD006C00@l(r31)
/* 800B1E34 000AD354  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 800B1E38 000AD358  68 00 00 01 */	xori r0, r0, 1
/* 800B1E3C 000AD35C  7C 03 00 40 */	cmplw r3, r0
/* 800B1E40 000AD360  41 82 00 38 */	beq .L_800B1E78
/* 800B1E44 000AD364  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B1E48 000AD368  2C 03 00 00 */	cmpwi r3, 0
/* 800B1E4C 000AD36C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800B1E50 000AD370  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B1E54 000AD374  40 82 00 24 */	bne .L_800B1E78
/* 800B1E58 000AD378  4B FE 34 5D */	bl OSDisableInterrupts
/* 800B1E5C 000AD37C  7C 7E 1B 78 */	mr r30, r3
/* 800B1E60 000AD380  48 00 02 C9 */	bl __AI_SRC_INIT
/* 800B1E64 000AD384  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B1E68 000AD388  7F C3 F3 78 */	mr r3, r30
/* 800B1E6C 000AD38C  60 00 00 40 */	ori r0, r0, 0x40
/* 800B1E70 000AD390  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B1E74 000AD394  4B FE 34 69 */	bl OSRestoreInterrupts
.L_800B1E78:
/* 800B1E78 000AD398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B1E7C 000AD39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B1E80 000AD3A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B1E84 000AD3A4  7C 08 03 A6 */	mtlr r0
/* 800B1E88 000AD3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B1E8C 000AD3AC  4E 80 00 20 */	blr 

glabel AIInit
/* 800B1E90 000AD3B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B1E94 000AD3B4  7C 08 02 A6 */	mflr r0
/* 800B1E98 000AD3B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B1E9C 000AD3BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B1EA0 000AD3C0  7C 7F 1B 78 */	mr r31, r3
/* 800B1EA4 000AD3C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B1EA8 000AD3C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B1EAC 000AD3CC  80 0D 8F E8 */	lwz r0, lbl_80247468@sda21(r13)
/* 800B1EB0 000AD3D0  2C 00 00 01 */	cmpwi r0, 1
/* 800B1EB4 000AD3D4  41 82 01 40 */	beq .L_800B1FF4
/* 800B1EB8 000AD3D8  80 6D 83 78 */	lwz r3, lbl_802467F8@sda21(r13)
/* 800B1EBC 000AD3DC  4B FD DE E5 */	bl OSRegisterVersion
/* 800B1EC0 000AD3E0  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 800B1EC4 000AD3E4  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 800B1EC8 000AD3E8  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 800B1ECC 000AD3EC  38 E0 00 00 */	li r7, 0
/* 800B1ED0 000AD3F0  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 800B1ED4 000AD3F4  38 84 DE 83 */	addi r4, r4, 0x431BDE83@l
/* 800B1ED8 000AD3F8  54 06 F0 BE */	srwi r6, r0, 2
/* 800B1EDC 000AD3FC  3C 60 00 01 */	lis r3, 0x0000A428@ha
/* 800B1EE0 000AD400  7C C4 30 16 */	mulhwu r6, r4, r6
/* 800B1EE4 000AD404  39 25 4D D3 */	addi r9, r5, 0x10624DD3@l
/* 800B1EE8 000AD408  38 03 A4 28 */	addi r0, r3, 0x0000A428@l
/* 800B1EEC 000AD40C  90 ED 90 10 */	stw r7, lbl_80247490@sda21(r13)
/* 800B1EF0 000AD410  38 83 A4 10 */	addi r4, r3, -23536
/* 800B1EF4 000AD414  38 63 F6 18 */	addi r3, r3, -2536
/* 800B1EF8 000AD418  54 CA 8B FE */	srwi r10, r6, 0xf
/* 800B1EFC 000AD41C  90 ED 90 08 */	stw r7, lbl_80247488@sda21(r13)
/* 800B1F00 000AD420  7C CA 01 D6 */	mullw r6, r10, r0
/* 800B1F04 000AD424  3F C0 CD 00 */	lis r30, 0xCD006C00@ha
/* 800B1F08 000AD428  90 ED 90 00 */	stw r7, lbl_80247480@sda21(r13)
/* 800B1F0C 000AD42C  38 00 FF EA */	li r0, -22
/* 800B1F10 000AD430  90 ED 8F F8 */	stw r7, lbl_80247478@sda21(r13)
/* 800B1F14 000AD434  7C AA 21 D6 */	mullw r5, r10, r4
/* 800B1F18 000AD438  90 ED 8F F0 */	stw r7, lbl_80247470@sda21(r13)
/* 800B1F1C 000AD43C  7C 8A 19 D6 */	mullw r4, r10, r3
/* 800B1F20 000AD440  1D 0A 7B 24 */	mulli r8, r10, 0x7b24
/* 800B1F24 000AD444  1C 6A 0B B8 */	mulli r3, r10, 0xbb8
/* 800B1F28 000AD448  7D 09 40 16 */	mulhwu r8, r9, r8
/* 800B1F2C 000AD44C  7C C9 30 16 */	mulhwu r6, r9, r6
/* 800B1F30 000AD450  55 08 BA 7E */	srwi r8, r8, 9
/* 800B1F34 000AD454  91 0D 90 14 */	stw r8, lbl_80247494@sda21(r13)
/* 800B1F38 000AD458  7C A9 28 16 */	mulhwu r5, r9, r5
/* 800B1F3C 000AD45C  54 C6 BA 7E */	srwi r6, r6, 9
/* 800B1F40 000AD460  90 CD 90 0C */	stw r6, lbl_8024748C@sda21(r13)
/* 800B1F44 000AD464  7C 89 20 16 */	mulhwu r4, r9, r4
/* 800B1F48 000AD468  54 A5 BA 7E */	srwi r5, r5, 9
/* 800B1F4C 000AD46C  90 AD 90 04 */	stw r5, lbl_80247484@sda21(r13)
/* 800B1F50 000AD470  7C 69 18 16 */	mulhwu r3, r9, r3
/* 800B1F54 000AD474  54 84 BA 7E */	srwi r4, r4, 9
/* 800B1F58 000AD478  90 8D 8F FC */	stw r4, lbl_8024747C@sda21(r13)
/* 800B1F5C 000AD47C  54 63 BA 7E */	srwi r3, r3, 9
/* 800B1F60 000AD480  90 6D 8F F4 */	stw r3, lbl_80247474@sda21(r13)
/* 800B1F64 000AD484  80 7E 6C 00 */	lwz r3, 0xCD006C00@l(r30)
/* 800B1F68 000AD488  7C 60 00 38 */	and r0, r3, r0
/* 800B1F6C 000AD48C  90 1E 6C 00 */	stw r0, 0x6c00(r30)
/* 800B1F70 000AD490  90 FE 6C 04 */	stw r7, 0x6c04(r30)
/* 800B1F74 000AD494  90 FE 6C 0C */	stw r7, 0x6c0c(r30)
/* 800B1F78 000AD498  80 1E 6C 00 */	lwz r0, 0x6c00(r30)
/* 800B1F7C 000AD49C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800B1F80 000AD4A0  60 00 00 20 */	ori r0, r0, 0x20
/* 800B1F84 000AD4A4  90 1E 6C 00 */	stw r0, 0x6c00(r30)
/* 800B1F88 000AD4A8  80 1E 6C 00 */	lwz r0, 0x6c00(r30)
/* 800B1F8C 000AD4AC  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 800B1F90 000AD4B0  68 00 00 01 */	xori r0, r0, 1
/* 800B1F94 000AD4B4  2C 00 00 00 */	cmpwi r0, 0
/* 800B1F98 000AD4B8  41 82 00 30 */	beq .L_800B1FC8
/* 800B1F9C 000AD4BC  80 1E 6C 00 */	lwz r0, 0x6c00(r30)
/* 800B1FA0 000AD4C0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800B1FA4 000AD4C4  90 1E 6C 00 */	stw r0, 0x6c00(r30)
/* 800B1FA8 000AD4C8  4B FE 33 0D */	bl OSDisableInterrupts
/* 800B1FAC 000AD4CC  7C 7D 1B 78 */	mr r29, r3
/* 800B1FB0 000AD4D0  48 00 01 79 */	bl __AI_SRC_INIT
/* 800B1FB4 000AD4D4  80 1E 6C 00 */	lwz r0, 0x6c00(r30)
/* 800B1FB8 000AD4D8  7F A3 EB 78 */	mr r3, r29
/* 800B1FBC 000AD4DC  60 00 00 40 */	ori r0, r0, 0x40
/* 800B1FC0 000AD4E0  90 1E 6C 00 */	stw r0, 0x6c00(r30)
/* 800B1FC4 000AD4E4  4B FE 33 19 */	bl OSRestoreInterrupts
.L_800B1FC8:
/* 800B1FC8 000AD4E8  38 00 00 00 */	li r0, 0
/* 800B1FCC 000AD4EC  3C 80 80 0B */	lis r4, __AIDHandler@ha
/* 800B1FD0 000AD4F0  90 0D 90 20 */	stw r0, lbl_802474A0@sda21(r13)
/* 800B1FD4 000AD4F4  38 84 20 1C */	addi r4, r4, __AIDHandler@l
/* 800B1FD8 000AD4F8  38 60 00 05 */	li r3, 5
/* 800B1FDC 000AD4FC  93 ED 90 1C */	stw r31, lbl_8024749C@sda21(r13)
/* 800B1FE0 000AD500  4B FE 33 21 */	bl __OSSetInterruptHandler
/* 800B1FE4 000AD504  3C 60 04 00 */	lis r3, 0x400
/* 800B1FE8 000AD508  4B FE 36 DD */	bl __OSUnmaskInterrupts
/* 800B1FEC 000AD50C  38 00 00 01 */	li r0, 1
/* 800B1FF0 000AD510  90 0D 8F E8 */	stw r0, lbl_80247468@sda21(r13)
.L_800B1FF4:
/* 800B1FF4 000AD514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B1FF8 000AD518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B1FFC 000AD51C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B2000 000AD520  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B2004 000AD524  7C 08 03 A6 */	mtlr r0
/* 800B2008 000AD528  38 21 00 20 */	addi r1, r1, 0x20
/* 800B200C 000AD52C  4E 80 00 20 */	blr 

glabel func_800B2010
/* 800B2010 000AD530  38 00 00 00 */	li r0, 0
/* 800B2014 000AD534  90 0D 8F E8 */	stw r0, lbl_80247468@sda21(r13)
/* 800B2018 000AD538  4E 80 00 20 */	blr 

glabel __AIDHandler
/* 800B201C 000AD53C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800B2020 000AD540  7C 08 02 A6 */	mflr r0
/* 800B2024 000AD544  3C C0 CC 00 */	lis r6, 0xCC00500A@ha
/* 800B2028 000AD548  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800B202C 000AD54C  38 00 FF 5F */	li r0, -161
/* 800B2030 000AD550  38 61 00 08 */	addi r3, r1, 8
/* 800B2034 000AD554  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800B2038 000AD558  7C 9F 23 78 */	mr r31, r4
/* 800B203C 000AD55C  A0 A6 50 0A */	lhz r5, 0xCC00500A@l(r6)
/* 800B2040 000AD560  7C A0 00 38 */	and r0, r5, r0
/* 800B2044 000AD564  60 00 00 08 */	ori r0, r0, 8
/* 800B2048 000AD568  B0 06 50 0A */	sth r0, 0x500a(r6)
/* 800B204C 000AD56C  4B FD F4 55 */	bl OSClearContext
/* 800B2050 000AD570  38 61 00 08 */	addi r3, r1, 8
/* 800B2054 000AD574  4B FD F2 25 */	bl OSSetCurrentContext
/* 800B2058 000AD578  80 6D 90 20 */	lwz r3, lbl_802474A0@sda21(r13)
/* 800B205C 000AD57C  2C 03 00 00 */	cmpwi r3, 0
/* 800B2060 000AD580  41 82 00 40 */	beq .L_800B20A0
/* 800B2064 000AD584  80 0D 8F EC */	lwz r0, lbl_8024746C@sda21(r13)
/* 800B2068 000AD588  2C 00 00 00 */	cmpwi r0, 0
/* 800B206C 000AD58C  40 82 00 34 */	bne .L_800B20A0
/* 800B2070 000AD590  80 0D 90 1C */	lwz r0, lbl_8024749C@sda21(r13)
/* 800B2074 000AD594  38 80 00 01 */	li r4, 1
/* 800B2078 000AD598  90 8D 8F EC */	stw r4, lbl_8024746C@sda21(r13)
/* 800B207C 000AD59C  2C 00 00 00 */	cmpwi r0, 0
/* 800B2080 000AD5A0  41 82 00 0C */	beq .L_800B208C
/* 800B2084 000AD5A4  48 00 00 41 */	bl __AICallbackStackSwitch
/* 800B2088 000AD5A8  48 00 00 10 */	b .L_800B2098
.L_800B208C:
/* 800B208C 000AD5AC  7C 6C 1B 78 */	mr r12, r3
/* 800B2090 000AD5B0  7D 89 03 A6 */	mtctr r12
/* 800B2094 000AD5B4  4E 80 04 21 */	bctrl 
.L_800B2098:
/* 800B2098 000AD5B8  38 00 00 00 */	li r0, 0
/* 800B209C 000AD5BC  90 0D 8F EC */	stw r0, lbl_8024746C@sda21(r13)
.L_800B20A0:
/* 800B20A0 000AD5C0  38 61 00 08 */	addi r3, r1, 8
/* 800B20A4 000AD5C4  4B FD F3 FD */	bl OSClearContext
/* 800B20A8 000AD5C8  7F E3 FB 78 */	mr r3, r31
/* 800B20AC 000AD5CC  4B FD F1 CD */	bl OSSetCurrentContext
/* 800B20B0 000AD5D0  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800B20B4 000AD5D4  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800B20B8 000AD5D8  7C 08 03 A6 */	mtlr r0
/* 800B20BC 000AD5DC  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800B20C0 000AD5E0  4E 80 00 20 */	blr 

glabel __AICallbackStackSwitch
/* 800B20C4 000AD5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B20C8 000AD5E8  7C 08 02 A6 */	mflr r0
/* 800B20CC 000AD5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B20D0 000AD5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B20D4 000AD5F4  7C 3F 0B 78 */	mr r31, r1
/* 800B20D8 000AD5F8  7C 7F 1B 78 */	mr r31, r3
/* 800B20DC 000AD5FC  3C A0 80 24 */	lis r5, lbl_80247498@ha
/* 800B20E0 000AD600  38 A5 74 98 */	addi r5, r5, lbl_80247498@l
/* 800B20E4 000AD604  90 25 00 00 */	stw r1, 0(r5)
/* 800B20E8 000AD608  3C A0 80 24 */	lis r5, lbl_8024749C@ha
/* 800B20EC 000AD60C  38 A5 74 9C */	addi r5, r5, lbl_8024749C@l
/* 800B20F0 000AD610  80 25 00 00 */	lwz r1, 0(r5)
/* 800B20F4 000AD614  38 21 FF F8 */	addi r1, r1, -8
/* 800B20F8 000AD618  7F E8 03 A6 */	mtlr r31
/* 800B20FC 000AD61C  4E 80 00 21 */	blrl 
/* 800B2100 000AD620  3C A0 80 24 */	lis r5, lbl_80247498@ha
/* 800B2104 000AD624  38 A5 74 98 */	addi r5, r5, lbl_80247498@l
/* 800B2108 000AD628  80 25 00 00 */	lwz r1, 0(r5)
/* 800B210C 000AD62C  7C 2A 0B 78 */	mr r10, r1
/* 800B2110 000AD630  83 EA 00 0C */	lwz r31, 0xc(r10)
/* 800B2114 000AD634  81 41 00 00 */	lwz r10, 0(r1)
/* 800B2118 000AD638  80 0A 00 04 */	lwz r0, 4(r10)
/* 800B211C 000AD63C  7D 41 53 78 */	mr r1, r10
/* 800B2120 000AD640  7C 08 03 A6 */	mtlr r0
/* 800B2124 000AD644  4E 80 00 20 */	blr 

glabel __AI_SRC_INIT
/* 800B2128 000AD648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B212C 000AD64C  7C 08 02 A6 */	mflr r0
/* 800B2130 000AD650  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B2134 000AD654  39 61 00 20 */	addi r11, r1, 0x20
/* 800B2138 000AD658  48 0A A8 0D */	bl _savegpr_27
/* 800B213C 000AD65C  38 80 00 00 */	li r4, 0
/* 800B2140 000AD660  38 60 00 00 */	li r3, 0
/* 800B2144 000AD664  38 00 00 00 */	li r0, 0
/* 800B2148 000AD668  3B A0 00 00 */	li r29, 0
/* 800B214C 000AD66C  3B C0 00 00 */	li r30, 0
/* 800B2150 000AD670  3F E0 CD 00 */	lis r31, 0xcd00
/* 800B2154 000AD674  48 00 01 50 */	b .L_800B22A4
.L_800B2158:
/* 800B2158 000AD678  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B215C 000AD67C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800B2160 000AD680  60 00 00 20 */	ori r0, r0, 0x20
/* 800B2164 000AD684  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B2168 000AD688  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B216C 000AD68C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800B2170 000AD690  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B2174 000AD694  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B2178 000AD698  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800B217C 000AD69C  60 00 00 01 */	ori r0, r0, 1
/* 800B2180 000AD6A0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B2184 000AD6A4  80 1F 6C 08 */	lwz r0, 0x6c08(r31)
/* 800B2188 000AD6A8  54 03 00 7E */	clrlwi r3, r0, 1
.L_800B218C:
/* 800B218C 000AD6AC  80 1F 6C 08 */	lwz r0, 0x6c08(r31)
/* 800B2190 000AD6B0  54 00 00 7E */	clrlwi r0, r0, 1
/* 800B2194 000AD6B4  7C 03 00 40 */	cmplw r3, r0
/* 800B2198 000AD6B8  41 82 FF F4 */	beq .L_800B218C
/* 800B219C 000AD6BC  4B FE 6C 2D */	bl OSGetTime
/* 800B21A0 000AD6C0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B21A4 000AD6C4  7C 9B 23 78 */	mr r27, r4
/* 800B21A8 000AD6C8  7C 7C 1B 78 */	mr r28, r3
/* 800B21AC 000AD6CC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800B21B0 000AD6D0  60 00 00 02 */	ori r0, r0, 2
/* 800B21B4 000AD6D4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B21B8 000AD6D8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B21BC 000AD6DC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800B21C0 000AD6E0  60 00 00 01 */	ori r0, r0, 1
/* 800B21C4 000AD6E4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B21C8 000AD6E8  80 1F 6C 08 */	lwz r0, 0x6c08(r31)
/* 800B21CC 000AD6EC  54 03 00 7E */	clrlwi r3, r0, 1
.L_800B21D0:
/* 800B21D0 000AD6F0  80 1F 6C 08 */	lwz r0, 0x6c08(r31)
/* 800B21D4 000AD6F4  54 00 00 7E */	clrlwi r0, r0, 1
/* 800B21D8 000AD6F8  7C 03 00 40 */	cmplw r3, r0
/* 800B21DC 000AD6FC  41 82 FF F4 */	beq .L_800B21D0
/* 800B21E0 000AD700  4B FE 6B E9 */	bl OSGetTime
/* 800B21E4 000AD704  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B21E8 000AD708  7D 1B 20 10 */	subfc r8, r27, r4
/* 800B21EC 000AD70C  7C BC 19 10 */	subfe r5, r28, r3
/* 800B21F0 000AD710  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800B21F4 000AD714  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B21F8 000AD718  6C A7 80 00 */	xoris r7, r5, 0x8000
/* 800B21FC 000AD71C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 800B2200 000AD720  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800B2204 000AD724  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 800B2208 000AD728  81 4D 8F F4 */	lwz r10, lbl_80247474@sda21(r13)
/* 800B220C 000AD72C  81 8D 90 14 */	lwz r12, lbl_80247494@sda21(r13)
/* 800B2210 000AD730  81 2D 8F F0 */	lwz r9, lbl_80247470@sda21(r13)
/* 800B2214 000AD734  81 6D 90 10 */	lwz r11, lbl_80247490@sda21(r13)
/* 800B2218 000AD738  7C CA 60 10 */	subfc r6, r10, r12
/* 800B221C 000AD73C  7C 09 59 10 */	subfe r0, r9, r11
/* 800B2220 000AD740  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800B2224 000AD744  7C 06 40 10 */	subfc r0, r6, r8
/* 800B2228 000AD748  7C A5 39 10 */	subfe r5, r5, r7
/* 800B222C 000AD74C  7C A7 39 10 */	subfe r5, r7, r7
/* 800B2230 000AD750  7C A5 00 D1 */	neg. r5, r5
/* 800B2234 000AD754  41 82 00 14 */	beq .L_800B2248
/* 800B2238 000AD758  83 CD 90 00 */	lwz r30, lbl_80247480@sda21(r13)
/* 800B223C 000AD75C  38 00 00 01 */	li r0, 1
/* 800B2240 000AD760  83 AD 90 04 */	lwz r29, lbl_80247484@sda21(r13)
/* 800B2244 000AD764  48 00 00 60 */	b .L_800B22A4
.L_800B2248:
/* 800B2248 000AD768  7C CC 50 14 */	addc r6, r12, r10
/* 800B224C 000AD76C  7C 0B 49 14 */	adde r0, r11, r9
/* 800B2250 000AD770  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800B2254 000AD774  7C 06 40 10 */	subfc r0, r6, r8
/* 800B2258 000AD778  7C A5 39 10 */	subfe r5, r5, r7
/* 800B225C 000AD77C  7C A7 39 10 */	subfe r5, r7, r7
/* 800B2260 000AD780  7C A5 00 D1 */	neg. r5, r5
/* 800B2264 000AD784  40 82 00 3C */	bne .L_800B22A0
/* 800B2268 000AD788  80 AD 90 0C */	lwz r5, lbl_8024748C@sda21(r13)
/* 800B226C 000AD78C  80 0D 90 08 */	lwz r0, lbl_80247488@sda21(r13)
/* 800B2270 000AD790  7C CA 28 10 */	subfc r6, r10, r5
/* 800B2274 000AD794  7C 09 01 10 */	subfe r0, r9, r0
/* 800B2278 000AD798  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800B227C 000AD79C  7C 06 40 10 */	subfc r0, r6, r8
/* 800B2280 000AD7A0  7C A5 39 10 */	subfe r5, r5, r7
/* 800B2284 000AD7A4  7C A7 39 10 */	subfe r5, r7, r7
/* 800B2288 000AD7A8  7C A5 00 D1 */	neg. r5, r5
/* 800B228C 000AD7AC  41 82 00 14 */	beq .L_800B22A0
/* 800B2290 000AD7B0  83 CD 8F F8 */	lwz r30, lbl_80247478@sda21(r13)
/* 800B2294 000AD7B4  38 00 00 01 */	li r0, 1
/* 800B2298 000AD7B8  83 AD 8F FC */	lwz r29, lbl_8024747C@sda21(r13)
/* 800B229C 000AD7BC  48 00 00 08 */	b .L_800B22A4
.L_800B22A0:
/* 800B22A0 000AD7C0  38 00 00 00 */	li r0, 0
.L_800B22A4:
/* 800B22A4 000AD7C4  2C 00 00 00 */	cmpwi r0, 0
/* 800B22A8 000AD7C8  41 82 FE B0 */	beq .L_800B2158
/* 800B22AC 000AD7CC  7F E4 E8 14 */	addc r31, r4, r29
/* 800B22B0 000AD7D0  7F A3 F1 14 */	adde r29, r3, r30
.L_800B22B4:
/* 800B22B4 000AD7D4  4B FE 6B 15 */	bl OSGetTime
/* 800B22B8 000AD7D8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800B22BC 000AD7DC  6F A5 80 00 */	xoris r5, r29, 0x8000
/* 800B22C0 000AD7E0  7C 7F 20 10 */	subfc r3, r31, r4
/* 800B22C4 000AD7E4  7C A5 01 10 */	subfe r5, r5, r0
/* 800B22C8 000AD7E8  7C A0 01 10 */	subfe r5, r0, r0
/* 800B22CC 000AD7EC  7C A5 00 D1 */	neg. r5, r5
/* 800B22D0 000AD7F0  40 82 FF E4 */	bne .L_800B22B4
/* 800B22D4 000AD7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 800B22D8 000AD7F8  48 0A A6 B9 */	bl _restgpr_27
/* 800B22DC 000AD7FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B22E0 000AD800  7C 08 03 A6 */	mtlr r0
/* 800B22E4 000AD804  38 21 00 20 */	addi r1, r1, 0x20
/* 800B22E8 000AD808  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247468
	.skip 0x4

glabel lbl_8024746C
	.skip 0x4

glabel lbl_80247470
	.skip 0x4

glabel lbl_80247474
	.skip 0x4

glabel lbl_80247478
	.skip 0x4

glabel lbl_8024747C
	.skip 0x4

glabel lbl_80247480
	.skip 0x4

glabel lbl_80247484
	.skip 0x4

glabel lbl_80247488
	.skip 0x4

glabel lbl_8024748C
	.skip 0x4

glabel lbl_80247490
	.skip 0x4

glabel lbl_80247494
	.skip 0x4

glabel lbl_80247498
	.skip 0x4

glabel lbl_8024749C
	.skip 0x4

glabel lbl_802474A0
	.skip 0x8
