.include "macros.inc"

.section .text, "ax"

glabel WaitMicroTime
/* 800A0D78 0009C298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A0D7C 0009C29C  7C 08 02 A6 */	mflr r0
/* 800A0D80 0009C2A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A0D84 0009C2A4  39 61 00 20 */	addi r11, r1, 0x20
/* 800A0D88 0009C2A8  48 0B BB BD */	bl _savegpr_27
/* 800A0D8C 0009C2AC  7C 7B 1B 78 */	mr r27, r3
/* 800A0D90 0009C2B0  4B FF 80 59 */	bl __OSGetSystemTime
/* 800A0D94 0009C2B4  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800A0D98 0009C2B8  7C 9C 23 78 */	mr r28, r4
/* 800A0D9C 0009C2BC  7C 7D 1B 78 */	mr r29, r3
/* 800A0DA0 0009C2C0  3F E0 80 00 */	lis r31, 0x8000
/* 800A0DA4 0009C2C4  3B C5 DE 83 */	addi r30, r5, 0x431BDE83@l
.L_800A0DA8:
/* 800A0DA8 0009C2C8  4B FF 80 41 */	bl __OSGetSystemTime
/* 800A0DAC 0009C2CC  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 800A0DB0 0009C2D0  7C DC 20 10 */	subfc r6, r28, r4
/* 800A0DB4 0009C2D4  7C 7D 19 10 */	subfe r3, r29, r3
/* 800A0DB8 0009C2D8  38 A0 00 00 */	li r5, 0
/* 800A0DBC 0009C2DC  54 00 F0 BE */	srwi r0, r0, 2
/* 800A0DC0 0009C2E0  54 C4 18 38 */	slwi r4, r6, 3
/* 800A0DC4 0009C2E4  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 800A0DC8 0009C2E8  54 63 18 38 */	slwi r3, r3, 3
/* 800A0DCC 0009C2EC  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A0DD0 0009C2F0  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A0DD4 0009C2F4  48 0B BC C1 */	bl __div2i
/* 800A0DD8 0009C2F8  7F 65 FE 70 */	srawi r5, r27, 0x1f
/* 800A0DDC 0009C2FC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A0DE0 0009C300  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 800A0DE4 0009C304  7C 7B 20 10 */	subfc r3, r27, r4
/* 800A0DE8 0009C308  7C A5 01 10 */	subfe r5, r5, r0
/* 800A0DEC 0009C30C  7C A0 01 10 */	subfe r5, r0, r0
/* 800A0DF0 0009C310  7C A5 00 D1 */	neg. r5, r5
/* 800A0DF4 0009C314  40 82 FF B4 */	bne .L_800A0DA8
/* 800A0DF8 0009C318  39 61 00 20 */	addi r11, r1, 0x20
/* 800A0DFC 0009C31C  48 0B BB 95 */	bl _restgpr_27
/* 800A0E00 0009C320  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A0E04 0009C324  7C 08 03 A6 */	mtlr r0
/* 800A0E08 0009C328  38 21 00 20 */	addi r1, r1, 0x20
/* 800A0E0C 0009C32C  4E 80 00 20 */	blr

glabel sendSlaveAddr
/* 800A0E10 0009C330  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A0E14 0009C334  7C 08 02 A6 */	mflr r0
/* 800A0E18 0009C338  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A0E1C 0009C33C  39 61 00 30 */	addi r11, r1, 0x30
/* 800A0E20 0009C340  48 0B BB 15 */	bl _savegpr_23
/* 800A0E24 0009C344  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A0E28 0009C348  7C 7D 1B 78 */	mr r29, r3
/* 800A0E2C 0009C34C  2C 00 00 00 */	cmpwi r0, 0
/* 800A0E30 0009C350  40 82 00 1C */	bne .L_800A0E4C
/* 800A0E34 0009C354  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800A0E38 0009C358  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800A0E3C 0009C35C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A0E40 0009C360  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A0E44 0009C364  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800A0E48 0009C368  48 00 00 14 */	b .L_800A0E5C
.L_800A0E4C:
/* 800A0E4C 0009C36C  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800A0E50 0009C370  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800A0E54 0009C374  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A0E58 0009C378  90 03 00 C0 */	stw r0, 0xc0(r3)
.L_800A0E5C:
/* 800A0E5C 0009C37C  4B FF 7F 8D */	bl __OSGetSystemTime
/* 800A0E60 0009C380  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800A0E64 0009C384  7C 9C 23 78 */	mr r28, r4
/* 800A0E68 0009C388  7C 7B 1B 78 */	mr r27, r3
/* 800A0E6C 0009C38C  3F 20 80 00 */	lis r25, 0x8000
/* 800A0E70 0009C390  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 800A0E74 0009C394  3B 00 00 02 */	li r24, 2
/* 800A0E78 0009C398  3A E0 00 00 */	li r23, 0
.L_800A0E7C:
/* 800A0E7C 0009C39C  4B FF 7F 6D */	bl __OSGetSystemTime
/* 800A0E80 0009C3A0  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 800A0E84 0009C3A4  7C DC 20 10 */	subfc r6, r28, r4
/* 800A0E88 0009C3A8  7C 7B 19 10 */	subfe r3, r27, r3
/* 800A0E8C 0009C3AC  38 A0 00 00 */	li r5, 0
/* 800A0E90 0009C3B0  54 00 F0 BE */	srwi r0, r0, 2
/* 800A0E94 0009C3B4  54 C4 18 38 */	slwi r4, r6, 3
/* 800A0E98 0009C3B8  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 800A0E9C 0009C3BC  54 63 18 38 */	slwi r3, r3, 3
/* 800A0EA0 0009C3C0  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A0EA4 0009C3C4  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A0EA8 0009C3C8  48 0B BB ED */	bl __div2i
/* 800A0EAC 0009C3CC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A0EB0 0009C3D0  6E E5 80 00 */	xoris r5, r23, 0x8000
/* 800A0EB4 0009C3D4  7C 78 20 10 */	subfc r3, r24, r4
/* 800A0EB8 0009C3D8  7C A5 01 10 */	subfe r5, r5, r0
/* 800A0EBC 0009C3DC  7C A0 01 10 */	subfe r5, r0, r0
/* 800A0EC0 0009C3E0  7C A5 00 D1 */	neg. r5, r5
/* 800A0EC4 0009C3E4  40 82 FF B8 */	bne .L_800A0E7C
/* 800A0EC8 0009C3E8  3F E0 CD 80 */	lis r31, 0xCD8000C0@ha
/* 800A0ECC 0009C3EC  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 800A0ED0 0009C3F0  80 1F 00 C0 */	lwz r0, 0xCD8000C0@l(r31)
/* 800A0ED4 0009C3F4  3B 23 DE 83 */	addi r25, r3, 0x431BDE83@l
/* 800A0ED8 0009C3F8  3B C0 00 00 */	li r30, 0
/* 800A0EDC 0009C3FC  3F 80 80 00 */	lis r28, 0x8000
/* 800A0EE0 0009C400  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A0EE4 0009C404  3B 60 00 02 */	li r27, 2
/* 800A0EE8 0009C408  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800A0EEC 0009C40C  3B 40 00 00 */	li r26, 0
.L_800A0EF0:
/* 800A0EF0 0009C410  57 A0 06 31 */	rlwinm. r0, r29, 0, 0x18, 0x18
/* 800A0EF4 0009C414  41 82 00 34 */	beq .L_800A0F28
/* 800A0EF8 0009C418  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A0EFC 0009C41C  2C 00 00 00 */	cmpwi r0, 0
/* 800A0F00 0009C420  40 82 00 14 */	bne .L_800A0F14
/* 800A0F04 0009C424  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800A0F08 0009C428  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A0F0C 0009C42C  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800A0F10 0009C430  48 00 00 44 */	b .L_800A0F54
.L_800A0F14:
/* 800A0F14 0009C434  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800A0F18 0009C438  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A0F1C 0009C43C  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A0F20 0009C440  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800A0F24 0009C444  48 00 00 30 */	b .L_800A0F54
.L_800A0F28:
/* 800A0F28 0009C448  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A0F2C 0009C44C  2C 00 00 00 */	cmpwi r0, 0
/* 800A0F30 0009C450  40 82 00 18 */	bne .L_800A0F48
/* 800A0F34 0009C454  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800A0F38 0009C458  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A0F3C 0009C45C  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A0F40 0009C460  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800A0F44 0009C464  48 00 00 10 */	b .L_800A0F54
.L_800A0F48:
/* 800A0F48 0009C468  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800A0F4C 0009C46C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A0F50 0009C470  90 1F 00 C0 */	stw r0, 0xc0(r31)
.L_800A0F54:
/* 800A0F54 0009C474  4B FF 7E 95 */	bl __OSGetSystemTime
/* 800A0F58 0009C478  7C 98 23 78 */	mr r24, r4
/* 800A0F5C 0009C47C  7C 77 1B 78 */	mr r23, r3
.L_800A0F60:
/* 800A0F60 0009C480  4B FF 7E 89 */	bl __OSGetSystemTime
/* 800A0F64 0009C484  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 800A0F68 0009C488  7C D8 20 10 */	subfc r6, r24, r4
/* 800A0F6C 0009C48C  7C 77 19 10 */	subfe r3, r23, r3
/* 800A0F70 0009C490  38 A0 00 00 */	li r5, 0
/* 800A0F74 0009C494  54 00 F0 BE */	srwi r0, r0, 2
/* 800A0F78 0009C498  54 C4 18 38 */	slwi r4, r6, 3
/* 800A0F7C 0009C49C  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800A0F80 0009C4A0  54 63 18 38 */	slwi r3, r3, 3
/* 800A0F84 0009C4A4  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A0F88 0009C4A8  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A0F8C 0009C4AC  48 0B BB 09 */	bl __div2i
/* 800A0F90 0009C4B0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A0F94 0009C4B4  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 800A0F98 0009C4B8  7C 7B 20 10 */	subfc r3, r27, r4
/* 800A0F9C 0009C4BC  7C A5 01 10 */	subfe r5, r5, r0
/* 800A0FA0 0009C4C0  7C A0 01 10 */	subfe r5, r0, r0
/* 800A0FA4 0009C4C4  7C A5 00 D1 */	neg. r5, r5
/* 800A0FA8 0009C4C8  40 82 FF B8 */	bne .L_800A0F60
/* 800A0FAC 0009C4CC  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800A0FB0 0009C4D0  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A0FB4 0009C4D4  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A0FB8 0009C4D8  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800A0FBC 0009C4DC  4B FF 7E 2D */	bl __OSGetSystemTime
/* 800A0FC0 0009C4E0  7C 97 23 78 */	mr r23, r4
/* 800A0FC4 0009C4E4  7C 78 1B 78 */	mr r24, r3
.L_800A0FC8:
/* 800A0FC8 0009C4E8  4B FF 7E 21 */	bl __OSGetSystemTime
/* 800A0FCC 0009C4EC  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 800A0FD0 0009C4F0  7C D7 20 10 */	subfc r6, r23, r4
/* 800A0FD4 0009C4F4  7C 78 19 10 */	subfe r3, r24, r3
/* 800A0FD8 0009C4F8  38 A0 00 00 */	li r5, 0
/* 800A0FDC 0009C4FC  54 00 F0 BE */	srwi r0, r0, 2
/* 800A0FE0 0009C500  54 C4 18 38 */	slwi r4, r6, 3
/* 800A0FE4 0009C504  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800A0FE8 0009C508  54 63 18 38 */	slwi r3, r3, 3
/* 800A0FEC 0009C50C  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A0FF0 0009C510  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A0FF4 0009C514  48 0B BA A1 */	bl __div2i
/* 800A0FF8 0009C518  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A0FFC 0009C51C  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 800A1000 0009C520  7C 7B 20 10 */	subfc r3, r27, r4
/* 800A1004 0009C524  7C A5 01 10 */	subfe r5, r5, r0
/* 800A1008 0009C528  7C A0 01 10 */	subfe r5, r0, r0
/* 800A100C 0009C52C  7C A5 00 D1 */	neg. r5, r5
/* 800A1010 0009C530  40 82 FF B8 */	bne .L_800A0FC8
/* 800A1014 0009C534  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800A1018 0009C538  3B DE 00 01 */	addi r30, r30, 1
/* 800A101C 0009C53C  2C 1E 00 08 */	cmpwi r30, 8
/* 800A1020 0009C540  57 BD 0E 3C */	rlwinm r29, r29, 1, 0x18, 0x1e
/* 800A1024 0009C544  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A1028 0009C548  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800A102C 0009C54C  41 80 FE C4 */	blt .L_800A0EF0
/* 800A1030 0009C550  3C 60 CD 80 */	lis r3, 0xCD8000C4@ha
/* 800A1034 0009C554  80 03 00 C4 */	lwz r0, 0xCD8000C4@l(r3)
/* 800A1038 0009C558  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A103C 0009C55C  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A1040 0009C560  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 800A1044 0009C564  4B FF 7D A5 */	bl __OSGetSystemTime
/* 800A1048 0009C568  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800A104C 0009C56C  7C 9F 23 78 */	mr r31, r4
/* 800A1050 0009C570  7C 7E 1B 78 */	mr r30, r3
/* 800A1054 0009C574  3F 80 80 00 */	lis r28, 0x8000
/* 800A1058 0009C578  3B A5 DE 83 */	addi r29, r5, 0x431BDE83@l
/* 800A105C 0009C57C  3B 60 00 02 */	li r27, 2
/* 800A1060 0009C580  3B 40 00 00 */	li r26, 0
.L_800A1064:
/* 800A1064 0009C584  4B FF 7D 85 */	bl __OSGetSystemTime
/* 800A1068 0009C588  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 800A106C 0009C58C  7C DF 20 10 */	subfc r6, r31, r4
/* 800A1070 0009C590  7C 7E 19 10 */	subfe r3, r30, r3
/* 800A1074 0009C594  38 A0 00 00 */	li r5, 0
/* 800A1078 0009C598  54 00 F0 BE */	srwi r0, r0, 2
/* 800A107C 0009C59C  54 C4 18 38 */	slwi r4, r6, 3
/* 800A1080 0009C5A0  7C 1D 00 16 */	mulhwu r0, r29, r0
/* 800A1084 0009C5A4  54 63 18 38 */	slwi r3, r3, 3
/* 800A1088 0009C5A8  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A108C 0009C5AC  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A1090 0009C5B0  48 0B BA 05 */	bl __div2i
/* 800A1094 0009C5B4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A1098 0009C5B8  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 800A109C 0009C5BC  7C 7B 20 10 */	subfc r3, r27, r4
/* 800A10A0 0009C5C0  7C A5 01 10 */	subfe r5, r5, r0
/* 800A10A4 0009C5C4  7C A0 01 10 */	subfe r5, r0, r0
/* 800A10A8 0009C5C8  7C A5 00 D1 */	neg. r5, r5
/* 800A10AC 0009C5CC  40 82 FF B8 */	bne .L_800A1064
/* 800A10B0 0009C5D0  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800A10B4 0009C5D4  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800A10B8 0009C5D8  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A10BC 0009C5DC  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A10C0 0009C5E0  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800A10C4 0009C5E4  4B FF 7D 25 */	bl __OSGetSystemTime
/* 800A10C8 0009C5E8  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800A10CC 0009C5EC  7C 9A 23 78 */	mr r26, r4
/* 800A10D0 0009C5F0  7C 7B 1B 78 */	mr r27, r3
/* 800A10D4 0009C5F4  3F E0 80 00 */	lis r31, 0x8000
/* 800A10D8 0009C5F8  3B 85 DE 83 */	addi r28, r5, 0x431BDE83@l
/* 800A10DC 0009C5FC  3B C0 00 02 */	li r30, 2
/* 800A10E0 0009C600  3B A0 00 00 */	li r29, 0
.L_800A10E4:
/* 800A10E4 0009C604  4B FF 7D 05 */	bl __OSGetSystemTime
/* 800A10E8 0009C608  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 800A10EC 0009C60C  7C DA 20 10 */	subfc r6, r26, r4
/* 800A10F0 0009C610  7C 7B 19 10 */	subfe r3, r27, r3
/* 800A10F4 0009C614  38 A0 00 00 */	li r5, 0
/* 800A10F8 0009C618  54 00 F0 BE */	srwi r0, r0, 2
/* 800A10FC 0009C61C  54 C4 18 38 */	slwi r4, r6, 3
/* 800A1100 0009C620  7C 1C 00 16 */	mulhwu r0, r28, r0
/* 800A1104 0009C624  54 63 18 38 */	slwi r3, r3, 3
/* 800A1108 0009C628  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A110C 0009C62C  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A1110 0009C630  48 0B B9 85 */	bl __div2i
/* 800A1114 0009C634  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A1118 0009C638  6F A5 80 00 */	xoris r5, r29, 0x8000
/* 800A111C 0009C63C  7C 7E 20 10 */	subfc r3, r30, r4
/* 800A1120 0009C640  7C A5 01 10 */	subfe r5, r5, r0
/* 800A1124 0009C644  7C A0 01 10 */	subfe r5, r0, r0
/* 800A1128 0009C648  7C A5 00 D1 */	neg. r5, r5
/* 800A112C 0009C64C  40 82 FF B8 */	bne .L_800A10E4
/* 800A1130 0009C650  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A1134 0009C654  28 00 00 01 */	cmplwi r0, 1
/* 800A1138 0009C658  40 82 00 1C */	bne .L_800A1154
/* 800A113C 0009C65C  3C 60 CD 80 */	lis r3, 0xCD8000C8@ha
/* 800A1140 0009C660  80 03 00 C8 */	lwz r0, 0xCD8000C8@l(r3)
/* 800A1144 0009C664  54 00 8F FF */	rlwinm. r0, r0, 0x11, 0x1f, 0x1f
/* 800A1148 0009C668  41 82 00 0C */	beq .L_800A1154
/* 800A114C 0009C66C  38 60 00 00 */	li r3, 0
/* 800A1150 0009C670  48 00 00 5C */	b .L_800A11AC
.L_800A1154:
/* 800A1154 0009C674  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A1158 0009C678  2C 00 00 00 */	cmpwi r0, 0
/* 800A115C 0009C67C  40 82 00 1C */	bne .L_800A1178
/* 800A1160 0009C680  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800A1164 0009C684  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800A1168 0009C688  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A116C 0009C68C  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A1170 0009C690  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800A1174 0009C694  48 00 00 14 */	b .L_800A1188
.L_800A1178:
/* 800A1178 0009C698  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800A117C 0009C69C  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800A1180 0009C6A0  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A1184 0009C6A4  90 03 00 C0 */	stw r0, 0xc0(r3)
.L_800A1188:
/* 800A1188 0009C6A8  3C 80 CD 80 */	lis r4, 0xCD8000C4@ha
/* 800A118C 0009C6AC  38 60 00 01 */	li r3, 1
/* 800A1190 0009C6B0  80 04 00 C4 */	lwz r0, 0xCD8000C4@l(r4)
/* 800A1194 0009C6B4  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A1198 0009C6B8  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800A119C 0009C6BC  90 04 00 C4 */	stw r0, 0xc4(r4)
/* 800A11A0 0009C6C0  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800A11A4 0009C6C4  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A11A8 0009C6C8  90 04 00 C0 */	stw r0, 0xc0(r4)
.L_800A11AC:
/* 800A11AC 0009C6CC  39 61 00 30 */	addi r11, r1, 0x30
/* 800A11B0 0009C6D0  48 0B B7 D1 */	bl _restgpr_23
/* 800A11B4 0009C6D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A11B8 0009C6D8  7C 08 03 A6 */	mtlr r0
/* 800A11BC 0009C6DC  38 21 00 30 */	addi r1, r1, 0x30
/* 800A11C0 0009C6E0  4E 80 00 20 */	blr

glabel __VISendI2CData
/* 800A11C4 0009C6E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800A11C8 0009C6E8  7C 08 02 A6 */	mflr r0
/* 800A11CC 0009C6EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 800A11D0 0009C6F0  39 61 00 40 */	addi r11, r1, 0x40
/* 800A11D4 0009C6F4  48 0B B7 55 */	bl _savegpr_20
/* 800A11D8 0009C6F8  80 0D 8E 70 */	lwz r0, lbl_802472F0@sda21(r13)
/* 800A11DC 0009C6FC  7C 74 1B 78 */	mr r20, r3
/* 800A11E0 0009C700  7C 9D 23 78 */	mr r29, r4
/* 800A11E4 0009C704  7C BE 2B 78 */	mr r30, r5
/* 800A11E8 0009C708  2C 00 00 00 */	cmpwi r0, 0
/* 800A11EC 0009C70C  40 82 00 10 */	bne .L_800A11FC
/* 800A11F0 0009C710  38 00 00 01 */	li r0, 1
/* 800A11F4 0009C714  90 0D 82 C0 */	stw r0, lbl_80246740@sda21(r13)
/* 800A11F8 0009C718  90 0D 8E 70 */	stw r0, lbl_802472F0@sda21(r13)
.L_800A11FC:
/* 800A11FC 0009C71C  4B FF 40 B9 */	bl OSDisableInterrupts
/* 800A1200 0009C720  3C 80 CD 80 */	lis r4, 0xCD8000C4@ha
/* 800A1204 0009C724  7C 7F 1B 78 */	mr r31, r3
/* 800A1208 0009C728  80 04 00 C4 */	lwz r0, 0xCD8000C4@l(r4)
/* 800A120C 0009C72C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A1210 0009C730  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800A1214 0009C734  90 04 00 C4 */	stw r0, 0xc4(r4)
/* 800A1218 0009C738  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800A121C 0009C73C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A1220 0009C740  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A1224 0009C744  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 800A1228 0009C748  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A122C 0009C74C  2C 00 00 00 */	cmpwi r0, 0
/* 800A1230 0009C750  40 82 00 14 */	bne .L_800A1244
/* 800A1234 0009C754  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800A1238 0009C758  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A123C 0009C75C  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 800A1240 0009C760  48 00 00 14 */	b .L_800A1254
.L_800A1244:
/* 800A1244 0009C764  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800A1248 0009C768  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A124C 0009C76C  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A1250 0009C770  90 04 00 C0 */	stw r0, 0xc0(r4)
.L_800A1254:
/* 800A1254 0009C774  4B FF 7B 95 */	bl __OSGetSystemTime
/* 800A1258 0009C778  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800A125C 0009C77C  7C 97 23 78 */	mr r23, r4
/* 800A1260 0009C780  7C 76 1B 78 */	mr r22, r3
/* 800A1264 0009C784  3F 20 80 00 */	lis r25, 0x8000
/* 800A1268 0009C788  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 800A126C 0009C78C  3B 00 00 02 */	li r24, 2
/* 800A1270 0009C790  3A A0 00 00 */	li r21, 0
.L_800A1274:
/* 800A1274 0009C794  4B FF 7B 75 */	bl __OSGetSystemTime
/* 800A1278 0009C798  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 800A127C 0009C79C  7C D7 20 10 */	subfc r6, r23, r4
/* 800A1280 0009C7A0  7C 76 19 10 */	subfe r3, r22, r3
/* 800A1284 0009C7A4  38 A0 00 00 */	li r5, 0
/* 800A1288 0009C7A8  54 00 F0 BE */	srwi r0, r0, 2
/* 800A128C 0009C7AC  54 C4 18 38 */	slwi r4, r6, 3
/* 800A1290 0009C7B0  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 800A1294 0009C7B4  54 63 18 38 */	slwi r3, r3, 3
/* 800A1298 0009C7B8  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A129C 0009C7BC  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A12A0 0009C7C0  48 0B B7 F5 */	bl __div2i
/* 800A12A4 0009C7C4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A12A8 0009C7C8  6E A5 80 00 */	xoris r5, r21, 0x8000
/* 800A12AC 0009C7CC  7C 78 20 10 */	subfc r3, r24, r4
/* 800A12B0 0009C7D0  7C A5 01 10 */	subfe r5, r5, r0
/* 800A12B4 0009C7D4  7C A0 01 10 */	subfe r5, r0, r0
/* 800A12B8 0009C7D8  7C A5 00 D1 */	neg. r5, r5
/* 800A12BC 0009C7DC  40 82 FF B8 */	bne .L_800A1274
/* 800A12C0 0009C7E0  4B FF 7B 29 */	bl __OSGetSystemTime
/* 800A12C4 0009C7E4  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800A12C8 0009C7E8  7C 97 23 78 */	mr r23, r4
/* 800A12CC 0009C7EC  7C 76 1B 78 */	mr r22, r3
/* 800A12D0 0009C7F0  3F 20 80 00 */	lis r25, 0x8000
/* 800A12D4 0009C7F4  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 800A12D8 0009C7F8  3B 00 00 02 */	li r24, 2
/* 800A12DC 0009C7FC  3A A0 00 00 */	li r21, 0
.L_800A12E0:
/* 800A12E0 0009C800  4B FF 7B 09 */	bl __OSGetSystemTime
/* 800A12E4 0009C804  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 800A12E8 0009C808  7C D7 20 10 */	subfc r6, r23, r4
/* 800A12EC 0009C80C  7C 76 19 10 */	subfe r3, r22, r3
/* 800A12F0 0009C810  38 A0 00 00 */	li r5, 0
/* 800A12F4 0009C814  54 00 F0 BE */	srwi r0, r0, 2
/* 800A12F8 0009C818  54 C4 18 38 */	slwi r4, r6, 3
/* 800A12FC 0009C81C  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 800A1300 0009C820  54 63 18 38 */	slwi r3, r3, 3
/* 800A1304 0009C824  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A1308 0009C828  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A130C 0009C82C  48 0B B7 89 */	bl __div2i
/* 800A1310 0009C830  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A1314 0009C834  6E A5 80 00 */	xoris r5, r21, 0x8000
/* 800A1318 0009C838  7C 78 20 10 */	subfc r3, r24, r4
/* 800A131C 0009C83C  7C A5 01 10 */	subfe r5, r5, r0
/* 800A1320 0009C840  7C A0 01 10 */	subfe r5, r0, r0
/* 800A1324 0009C844  7C A5 00 D1 */	neg. r5, r5
/* 800A1328 0009C848  40 82 FF B8 */	bne .L_800A12E0
/* 800A132C 0009C84C  7E 83 A3 78 */	mr r3, r20
/* 800A1330 0009C850  4B FF FA E1 */	bl sendSlaveAddr
/* 800A1334 0009C854  2C 03 00 00 */	cmpwi r3, 0
/* 800A1338 0009C858  40 82 00 14 */	bne .L_800A134C
/* 800A133C 0009C85C  7F E3 FB 78 */	mr r3, r31
/* 800A1340 0009C860  4B FF 3F 9D */	bl OSRestoreInterrupts
/* 800A1344 0009C864  38 60 00 00 */	li r3, 0
/* 800A1348 0009C868  48 00 04 34 */	b .L_800A177C
.L_800A134C:
/* 800A134C 0009C86C  3E C0 CD 80 */	lis r22, 0xCD8000C4@ha
/* 800A1350 0009C870  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 800A1354 0009C874  80 16 00 C4 */	lwz r0, 0xCD8000C4@l(r22)
/* 800A1358 0009C878  3B 23 DE 83 */	addi r25, r3, 0x431BDE83@l
/* 800A135C 0009C87C  3F 40 80 00 */	lis r26, 0x8000
/* 800A1360 0009C880  3B 60 00 02 */	li r27, 2
/* 800A1364 0009C884  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A1368 0009C888  3B 80 00 00 */	li r28, 0
/* 800A136C 0009C88C  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800A1370 0009C890  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 800A1374 0009C894  48 00 02 94 */	b .L_800A1608
.L_800A1378:
/* 800A1378 0009C898  8A 9D 00 00 */	lbz r20, 0(r29)
/* 800A137C 0009C89C  3A A0 00 00 */	li r21, 0
/* 800A1380 0009C8A0  3B BD 00 01 */	addi r29, r29, 1
.L_800A1384:
/* 800A1384 0009C8A4  56 80 06 31 */	rlwinm. r0, r20, 0, 0x18, 0x18
/* 800A1388 0009C8A8  41 82 00 34 */	beq .L_800A13BC
/* 800A138C 0009C8AC  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A1390 0009C8B0  2C 00 00 00 */	cmpwi r0, 0
/* 800A1394 0009C8B4  40 82 00 14 */	bne .L_800A13A8
/* 800A1398 0009C8B8  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A139C 0009C8BC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A13A0 0009C8C0  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800A13A4 0009C8C4  48 00 00 44 */	b .L_800A13E8
.L_800A13A8:
/* 800A13A8 0009C8C8  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A13AC 0009C8CC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A13B0 0009C8D0  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A13B4 0009C8D4  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800A13B8 0009C8D8  48 00 00 30 */	b .L_800A13E8
.L_800A13BC:
/* 800A13BC 0009C8DC  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A13C0 0009C8E0  2C 00 00 00 */	cmpwi r0, 0
/* 800A13C4 0009C8E4  40 82 00 18 */	bne .L_800A13DC
/* 800A13C8 0009C8E8  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A13CC 0009C8EC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A13D0 0009C8F0  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A13D4 0009C8F4  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800A13D8 0009C8F8  48 00 00 10 */	b .L_800A13E8
.L_800A13DC:
/* 800A13DC 0009C8FC  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A13E0 0009C900  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A13E4 0009C904  90 16 00 C0 */	stw r0, 0xc0(r22)
.L_800A13E8:
/* 800A13E8 0009C908  4B FF 7A 01 */	bl __OSGetSystemTime
/* 800A13EC 0009C90C  7C 98 23 78 */	mr r24, r4
/* 800A13F0 0009C910  7C 77 1B 78 */	mr r23, r3
.L_800A13F4:
/* 800A13F4 0009C914  4B FF 79 F5 */	bl __OSGetSystemTime
/* 800A13F8 0009C918  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800A13FC 0009C91C  7C D8 20 10 */	subfc r6, r24, r4
/* 800A1400 0009C920  7C 77 19 10 */	subfe r3, r23, r3
/* 800A1404 0009C924  38 A0 00 00 */	li r5, 0
/* 800A1408 0009C928  54 00 F0 BE */	srwi r0, r0, 2
/* 800A140C 0009C92C  54 C4 18 38 */	slwi r4, r6, 3
/* 800A1410 0009C930  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800A1414 0009C934  54 63 18 38 */	slwi r3, r3, 3
/* 800A1418 0009C938  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A141C 0009C93C  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A1420 0009C940  48 0B B6 75 */	bl __div2i
/* 800A1424 0009C944  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A1428 0009C948  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 800A142C 0009C94C  7C 7B 20 10 */	subfc r3, r27, r4
/* 800A1430 0009C950  7C A5 01 10 */	subfe r5, r5, r0
/* 800A1434 0009C954  7C A0 01 10 */	subfe r5, r0, r0
/* 800A1438 0009C958  7C A5 00 D1 */	neg. r5, r5
/* 800A143C 0009C95C  40 82 FF B8 */	bne .L_800A13F4
/* 800A1440 0009C960  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A1444 0009C964  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A1448 0009C968  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A144C 0009C96C  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800A1450 0009C970  4B FF 79 99 */	bl __OSGetSystemTime
/* 800A1454 0009C974  7C 98 23 78 */	mr r24, r4
/* 800A1458 0009C978  7C 77 1B 78 */	mr r23, r3
.L_800A145C:
/* 800A145C 0009C97C  4B FF 79 8D */	bl __OSGetSystemTime
/* 800A1460 0009C980  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800A1464 0009C984  7C D8 20 10 */	subfc r6, r24, r4
/* 800A1468 0009C988  7C 77 19 10 */	subfe r3, r23, r3
/* 800A146C 0009C98C  38 A0 00 00 */	li r5, 0
/* 800A1470 0009C990  54 00 F0 BE */	srwi r0, r0, 2
/* 800A1474 0009C994  54 C4 18 38 */	slwi r4, r6, 3
/* 800A1478 0009C998  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800A147C 0009C99C  54 63 18 38 */	slwi r3, r3, 3
/* 800A1480 0009C9A0  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A1484 0009C9A4  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A1488 0009C9A8  48 0B B6 0D */	bl __div2i
/* 800A148C 0009C9AC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A1490 0009C9B0  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 800A1494 0009C9B4  7C 7B 20 10 */	subfc r3, r27, r4
/* 800A1498 0009C9B8  7C A5 01 10 */	subfe r5, r5, r0
/* 800A149C 0009C9BC  7C A0 01 10 */	subfe r5, r0, r0
/* 800A14A0 0009C9C0  7C A5 00 D1 */	neg. r5, r5
/* 800A14A4 0009C9C4  40 82 FF B8 */	bne .L_800A145C
/* 800A14A8 0009C9C8  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A14AC 0009C9CC  3A B5 00 01 */	addi r21, r21, 1
/* 800A14B0 0009C9D0  2C 15 00 08 */	cmpwi r21, 8
/* 800A14B4 0009C9D4  56 94 0E 3C */	rlwinm r20, r20, 1, 0x18, 0x1e
/* 800A14B8 0009C9D8  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A14BC 0009C9DC  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800A14C0 0009C9E0  41 80 FE C4 */	blt .L_800A1384
/* 800A14C4 0009C9E4  80 16 00 C4 */	lwz r0, 0xc4(r22)
/* 800A14C8 0009C9E8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A14CC 0009C9EC  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A14D0 0009C9F0  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 800A14D4 0009C9F4  4B FF 79 15 */	bl __OSGetSystemTime
/* 800A14D8 0009C9F8  7C 98 23 78 */	mr r24, r4
/* 800A14DC 0009C9FC  7C 77 1B 78 */	mr r23, r3
.L_800A14E0:
/* 800A14E0 0009CA00  4B FF 79 09 */	bl __OSGetSystemTime
/* 800A14E4 0009CA04  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800A14E8 0009CA08  7C D8 20 10 */	subfc r6, r24, r4
/* 800A14EC 0009CA0C  7C 77 19 10 */	subfe r3, r23, r3
/* 800A14F0 0009CA10  38 A0 00 00 */	li r5, 0
/* 800A14F4 0009CA14  54 00 F0 BE */	srwi r0, r0, 2
/* 800A14F8 0009CA18  54 C4 18 38 */	slwi r4, r6, 3
/* 800A14FC 0009CA1C  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800A1500 0009CA20  54 63 18 38 */	slwi r3, r3, 3
/* 800A1504 0009CA24  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A1508 0009CA28  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A150C 0009CA2C  48 0B B5 89 */	bl __div2i
/* 800A1510 0009CA30  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A1514 0009CA34  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 800A1518 0009CA38  7C 7B 20 10 */	subfc r3, r27, r4
/* 800A151C 0009CA3C  7C A5 01 10 */	subfe r5, r5, r0
/* 800A1520 0009CA40  7C A0 01 10 */	subfe r5, r0, r0
/* 800A1524 0009CA44  7C A5 00 D1 */	neg. r5, r5
/* 800A1528 0009CA48  40 82 FF B8 */	bne .L_800A14E0
/* 800A152C 0009CA4C  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A1530 0009CA50  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A1534 0009CA54  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A1538 0009CA58  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800A153C 0009CA5C  4B FF 78 AD */	bl __OSGetSystemTime
/* 800A1540 0009CA60  7C 97 23 78 */	mr r23, r4
/* 800A1544 0009CA64  7C 78 1B 78 */	mr r24, r3
.L_800A1548:
/* 800A1548 0009CA68  4B FF 78 A1 */	bl __OSGetSystemTime
/* 800A154C 0009CA6C  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800A1550 0009CA70  7C D7 20 10 */	subfc r6, r23, r4
/* 800A1554 0009CA74  7C 78 19 10 */	subfe r3, r24, r3
/* 800A1558 0009CA78  38 A0 00 00 */	li r5, 0
/* 800A155C 0009CA7C  54 00 F0 BE */	srwi r0, r0, 2
/* 800A1560 0009CA80  54 C4 18 38 */	slwi r4, r6, 3
/* 800A1564 0009CA84  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800A1568 0009CA88  54 63 18 38 */	slwi r3, r3, 3
/* 800A156C 0009CA8C  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A1570 0009CA90  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A1574 0009CA94  48 0B B5 21 */	bl __div2i
/* 800A1578 0009CA98  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A157C 0009CA9C  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 800A1580 0009CAA0  7C 7B 20 10 */	subfc r3, r27, r4
/* 800A1584 0009CAA4  7C A5 01 10 */	subfe r5, r5, r0
/* 800A1588 0009CAA8  7C A0 01 10 */	subfe r5, r0, r0
/* 800A158C 0009CAAC  7C A5 00 D1 */	neg. r5, r5
/* 800A1590 0009CAB0  40 82 FF B8 */	bne .L_800A1548
/* 800A1594 0009CAB4  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A1598 0009CAB8  28 00 00 01 */	cmplwi r0, 1
/* 800A159C 0009CABC  40 82 00 20 */	bne .L_800A15BC
/* 800A15A0 0009CAC0  80 16 00 C8 */	lwz r0, 0xc8(r22)
/* 800A15A4 0009CAC4  54 00 8F FF */	rlwinm. r0, r0, 0x11, 0x1f, 0x1f
/* 800A15A8 0009CAC8  41 82 00 14 */	beq .L_800A15BC
/* 800A15AC 0009CACC  7F E3 FB 78 */	mr r3, r31
/* 800A15B0 0009CAD0  4B FF 3D 2D */	bl OSRestoreInterrupts
/* 800A15B4 0009CAD4  38 60 00 00 */	li r3, 0
/* 800A15B8 0009CAD8  48 00 01 C4 */	b .L_800A177C
.L_800A15BC:
/* 800A15BC 0009CADC  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A15C0 0009CAE0  2C 00 00 00 */	cmpwi r0, 0
/* 800A15C4 0009CAE4  40 82 00 18 */	bne .L_800A15DC
/* 800A15C8 0009CAE8  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A15CC 0009CAEC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A15D0 0009CAF0  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A15D4 0009CAF4  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800A15D8 0009CAF8  48 00 00 10 */	b .L_800A15E8
.L_800A15DC:
/* 800A15DC 0009CAFC  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A15E0 0009CB00  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A15E4 0009CB04  90 16 00 C0 */	stw r0, 0xc0(r22)
.L_800A15E8:
/* 800A15E8 0009CB08  80 16 00 C4 */	lwz r0, 0xc4(r22)
/* 800A15EC 0009CB0C  3B DE FF FF */	addi r30, r30, -1
/* 800A15F0 0009CB10  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A15F4 0009CB14  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800A15F8 0009CB18  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 800A15FC 0009CB1C  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800A1600 0009CB20  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A1604 0009CB24  90 16 00 C0 */	stw r0, 0xc0(r22)
.L_800A1608:
/* 800A1608 0009CB28  2C 1E 00 00 */	cmpwi r30, 0
/* 800A160C 0009CB2C  40 82 FD 6C */	bne .L_800A1378
/* 800A1610 0009CB30  3C 60 CD 80 */	lis r3, 0xCD8000C4@ha
/* 800A1614 0009CB34  80 03 00 C4 */	lwz r0, 0xCD8000C4@l(r3)
/* 800A1618 0009CB38  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A161C 0009CB3C  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800A1620 0009CB40  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 800A1624 0009CB44  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A1628 0009CB48  2C 00 00 00 */	cmpwi r0, 0
/* 800A162C 0009CB4C  40 82 00 18 */	bne .L_800A1644
/* 800A1630 0009CB50  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 800A1634 0009CB54  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A1638 0009CB58  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A163C 0009CB5C  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800A1640 0009CB60  48 00 00 10 */	b .L_800A1650
.L_800A1644:
/* 800A1644 0009CB64  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 800A1648 0009CB68  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A164C 0009CB6C  90 03 00 C0 */	stw r0, 0xc0(r3)
.L_800A1650:
/* 800A1650 0009CB70  4B FF 77 99 */	bl __OSGetSystemTime
/* 800A1654 0009CB74  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800A1658 0009CB78  7C 99 23 78 */	mr r25, r4
/* 800A165C 0009CB7C  7C 78 1B 78 */	mr r24, r3
/* 800A1660 0009CB80  3E C0 80 00 */	lis r22, 0x8000
/* 800A1664 0009CB84  3A E5 DE 83 */	addi r23, r5, 0x431BDE83@l
/* 800A1668 0009CB88  3A A0 00 02 */	li r21, 2
/* 800A166C 0009CB8C  3A 80 00 00 */	li r20, 0
.L_800A1670:
/* 800A1670 0009CB90  4B FF 77 79 */	bl __OSGetSystemTime
/* 800A1674 0009CB94  80 16 00 F8 */	lwz r0, 0xf8(r22)
/* 800A1678 0009CB98  7C D9 20 10 */	subfc r6, r25, r4
/* 800A167C 0009CB9C  7C 78 19 10 */	subfe r3, r24, r3
/* 800A1680 0009CBA0  38 A0 00 00 */	li r5, 0
/* 800A1684 0009CBA4  54 00 F0 BE */	srwi r0, r0, 2
/* 800A1688 0009CBA8  54 C4 18 38 */	slwi r4, r6, 3
/* 800A168C 0009CBAC  7C 17 00 16 */	mulhwu r0, r23, r0
/* 800A1690 0009CBB0  54 63 18 38 */	slwi r3, r3, 3
/* 800A1694 0009CBB4  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A1698 0009CBB8  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A169C 0009CBBC  48 0B B3 F9 */	bl __div2i
/* 800A16A0 0009CBC0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A16A4 0009CBC4  6E 85 80 00 */	xoris r5, r20, 0x8000
/* 800A16A8 0009CBC8  7C 75 20 10 */	subfc r3, r21, r4
/* 800A16AC 0009CBCC  7C A5 01 10 */	subfe r5, r5, r0
/* 800A16B0 0009CBD0  7C A0 01 10 */	subfe r5, r0, r0
/* 800A16B4 0009CBD4  7C A5 00 D1 */	neg. r5, r5
/* 800A16B8 0009CBD8  40 82 FF B8 */	bne .L_800A1670
/* 800A16BC 0009CBDC  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800A16C0 0009CBE0  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800A16C4 0009CBE4  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800A16C8 0009CBE8  60 00 40 00 */	ori r0, r0, 0x4000
/* 800A16CC 0009CBEC  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800A16D0 0009CBF0  4B FF 77 19 */	bl __OSGetSystemTime
/* 800A16D4 0009CBF4  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800A16D8 0009CBF8  7C 99 23 78 */	mr r25, r4
/* 800A16DC 0009CBFC  7C 78 1B 78 */	mr r24, r3
/* 800A16E0 0009CC00  3E C0 80 00 */	lis r22, 0x8000
/* 800A16E4 0009CC04  3A E5 DE 83 */	addi r23, r5, 0x431BDE83@l
/* 800A16E8 0009CC08  3A A0 00 02 */	li r21, 2
/* 800A16EC 0009CC0C  3A 80 00 00 */	li r20, 0
.L_800A16F0:
/* 800A16F0 0009CC10  4B FF 76 F9 */	bl __OSGetSystemTime
/* 800A16F4 0009CC14  80 16 00 F8 */	lwz r0, 0xf8(r22)
/* 800A16F8 0009CC18  7C D9 20 10 */	subfc r6, r25, r4
/* 800A16FC 0009CC1C  7C 78 19 10 */	subfe r3, r24, r3
/* 800A1700 0009CC20  38 A0 00 00 */	li r5, 0
/* 800A1704 0009CC24  54 00 F0 BE */	srwi r0, r0, 2
/* 800A1708 0009CC28  54 C4 18 38 */	slwi r4, r6, 3
/* 800A170C 0009CC2C  7C 17 00 16 */	mulhwu r0, r23, r0
/* 800A1710 0009CC30  54 63 18 38 */	slwi r3, r3, 3
/* 800A1714 0009CC34  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800A1718 0009CC38  54 06 8B FE */	srwi r6, r0, 0xf
/* 800A171C 0009CC3C  48 0B B3 79 */	bl __div2i
/* 800A1720 0009CC40  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800A1724 0009CC44  6E 85 80 00 */	xoris r5, r20, 0x8000
/* 800A1728 0009CC48  7C 75 20 10 */	subfc r3, r21, r4
/* 800A172C 0009CC4C  7C A5 01 10 */	subfe r5, r5, r0
/* 800A1730 0009CC50  7C A0 01 10 */	subfe r5, r0, r0
/* 800A1734 0009CC54  7C A5 00 D1 */	neg. r5, r5
/* 800A1738 0009CC58  40 82 FF B8 */	bne .L_800A16F0
/* 800A173C 0009CC5C  80 0D 82 C0 */	lwz r0, lbl_80246740@sda21(r13)
/* 800A1740 0009CC60  2C 00 00 00 */	cmpwi r0, 0
/* 800A1744 0009CC64  40 82 00 18 */	bne .L_800A175C
/* 800A1748 0009CC68  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800A174C 0009CC6C  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800A1750 0009CC70  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A1754 0009CC74  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800A1758 0009CC78  48 00 00 18 */	b .L_800A1770
.L_800A175C:
/* 800A175C 0009CC7C  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800A1760 0009CC80  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800A1764 0009CC84  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A1768 0009CC88  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A176C 0009CC8C  90 03 00 C0 */	stw r0, 0xc0(r3)
.L_800A1770:
/* 800A1770 0009CC90  7F E3 FB 78 */	mr r3, r31
/* 800A1774 0009CC94  4B FF 3B 69 */	bl OSRestoreInterrupts
/* 800A1778 0009CC98  38 60 00 01 */	li r3, 1
.L_800A177C:
/* 800A177C 0009CC9C  39 61 00 40 */	addi r11, r1, 0x40
/* 800A1780 0009CCA0  48 0B B1 F5 */	bl _restgpr_20
/* 800A1784 0009CCA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800A1788 0009CCA8  7C 08 03 A6 */	mtlr r0
/* 800A178C 0009CCAC  38 21 00 40 */	addi r1, r1, 0x40
/* 800A1790 0009CCB0  4E 80 00 20 */	blr

