.include "macros.inc"

.section .text, "ax"

glabel AXFXReverbHiInit
/* 800B5E74 000B1394  C0 E3 01 58 */	lfs f7, 0x158(r3)
/* 800B5E78 000B1398  38 00 00 00 */	li r0, 0
/* 800B5E7C 000B139C  C0 42 87 40 */	lfs f2, lbl_80247F40@sda21(r2)
/* 800B5E80 000B13A0  38 80 00 05 */	li r4, 5
/* 800B5E84 000B13A4  C0 C3 01 50 */	lfs f6, 0x150(r3)
/* 800B5E88 000B13A8  C0 A3 01 48 */	lfs f5, 0x148(r3)
/* 800B5E8C 000B13AC  C0 83 01 54 */	lfs f4, 0x154(r3)
/* 800B5E90 000B13B0  C0 63 01 5C */	lfs f3, 0x15c(r3)
/* 800B5E94 000B13B4  C0 22 87 44 */	lfs f1, lbl_80247F44@sda21(r2)
/* 800B5E98 000B13B8  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 800B5E9C 000B13BC  90 83 01 10 */	stw r4, 0x110(r3)
/* 800B5EA0 000B13C0  D0 E3 01 14 */	stfs f7, 0x114(r3)
/* 800B5EA4 000B13C4  D0 E3 01 18 */	stfs f7, 0x118(r3)
/* 800B5EA8 000B13C8  90 03 01 1C */	stw r0, 0x11c(r3)
/* 800B5EAC 000B13CC  D0 C3 01 20 */	stfs f6, 0x120(r3)
/* 800B5EB0 000B13D0  D0 A3 01 24 */	stfs f5, 0x124(r3)
/* 800B5EB4 000B13D4  D0 83 01 28 */	stfs f4, 0x128(r3)
/* 800B5EB8 000B13D8  D0 63 01 2C */	stfs f3, 0x12c(r3)
/* 800B5EBC 000B13DC  D0 43 01 30 */	stfs f2, 0x130(r3)
/* 800B5EC0 000B13E0  D0 23 01 34 */	stfs f1, 0x134(r3)
/* 800B5EC4 000B13E4  90 03 01 38 */	stw r0, 0x138(r3)
/* 800B5EC8 000B13E8  90 03 01 3C */	stw r0, 0x13c(r3)
/* 800B5ECC 000B13EC  D0 03 01 40 */	stfs f0, 0x140(r3)
/* 800B5ED0 000B13F0  D0 43 01 44 */	stfs f2, 0x144(r3)
/* 800B5ED4 000B13F4  48 00 00 2C */	b lbl_800B5F00

glabel AXFXReverbHiShutdown
/* 800B5ED8 000B13F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B5EDC 000B13FC  7C 08 02 A6 */	mflr r0
/* 800B5EE0 000B1400  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B5EE4 000B1404  48 00 01 B9 */	bl AXFXReverbHiExpShutdown
/* 800B5EE8 000B1408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B5EEC 000B140C  38 60 00 01 */	li r3, 1
/* 800B5EF0 000B1410  7C 08 03 A6 */	mtlr r0
/* 800B5EF4 000B1414  38 21 00 10 */	addi r1, r1, 0x10
/* 800B5EF8 000B1418  4E 80 00 20 */	blr 
glabel lbl_800B5EFC
/* 800B5EFC 000B141C  48 00 01 F4 */	b AXFXReverbHiExpCallback
lbl_800B5F00:
/* 800B5F00 000B1420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B5F04 000B1424  7C 08 02 A6 */	mflr r0
/* 800B5F08 000B1428  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B5F0C 000B142C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B5F10 000B1430  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B5F14 000B1434  7C 7E 1B 78 */	mr r30, r3
/* 800B5F18 000B1438  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B5F1C 000B143C  4B FD F3 99 */	bl OSDisableInterrupts
/* 800B5F20 000B1440  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 800B5F24 000B1444  38 00 00 01 */	li r0, 1
/* 800B5F28 000B1448  C0 02 87 4C */	lfs f0, lbl_80247F4C@sda21(r2)
/* 800B5F2C 000B144C  7C 7F 1B 78 */	mr r31, r3
/* 800B5F30 000B1450  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 800B5F34 000B1454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B5F38 000B1458  40 80 00 38 */	bge lbl_800B5F70
/* 800B5F3C 000B145C  4B FD F3 79 */	bl OSDisableInterrupts
/* 800B5F40 000B1460  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 800B5F44 000B1464  7C 7D 1B 78 */	mr r29, r3
/* 800B5F48 000B1468  7F C3 F3 78 */	mr r3, r30
/* 800B5F4C 000B146C  60 00 00 01 */	ori r0, r0, 1
/* 800B5F50 000B1470  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 800B5F54 000B1474  48 00 09 4D */	bl __FreeDelayLine
/* 800B5F58 000B1478  7F A3 EB 78 */	mr r3, r29
/* 800B5F5C 000B147C  4B FD F3 81 */	bl OSRestoreInterrupts
/* 800B5F60 000B1480  7F E3 FB 78 */	mr r3, r31
/* 800B5F64 000B1484  4B FD F3 79 */	bl OSRestoreInterrupts
/* 800B5F68 000B1488  38 60 00 00 */	li r3, 0
/* 800B5F6C 000B148C  48 00 01 14 */	b lbl_800B6080
lbl_800B5F70:
/* 800B5F70 000B1490  3C 60 80 19 */	lis r3, lbl_80195C60@ha
/* 800B5F74 000B1494  C0 02 87 48 */	lfs f0, lbl_80247F48@sda21(r2)
/* 800B5F78 000B1498  38 63 5C 60 */	addi r3, r3, lbl_80195C60@l
/* 800B5F7C 000B149C  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 800B5F80 000B14A0  EC 20 00 72 */	fmuls f1, f0, f1
/* 800B5F84 000B14A4  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 800B5F88 000B14A8  48 0A 68 95 */	bl __cvt_fp2unsigned
/* 800B5F8C 000B14AC  90 7E 00 40 */	stw r3, 0x40(r30)
/* 800B5F90 000B14B0  3C 80 80 19 */	lis r4, lbl_80195D20@ha
/* 800B5F94 000B14B4  38 84 5D 20 */	addi r4, r4, lbl_80195D20@l
/* 800B5F98 000B14B8  7F C3 F3 78 */	mr r3, r30
/* 800B5F9C 000B14BC  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800B5FA0 000B14C0  90 1E 00 80 */	stw r0, 0x80(r30)
/* 800B5FA4 000B14C4  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 800B5FA8 000B14C8  90 1E 00 84 */	stw r0, 0x84(r30)
/* 800B5FAC 000B14CC  80 04 00 C8 */	lwz r0, 0xc8(r4)
/* 800B5FB0 000B14D0  90 1E 00 88 */	stw r0, 0x88(r30)
/* 800B5FB4 000B14D4  80 04 00 CC */	lwz r0, 0xcc(r4)
/* 800B5FB8 000B14D8  90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 800B5FBC 000B14DC  80 04 00 D0 */	lwz r0, 0xd0(r4)
/* 800B5FC0 000B14E0  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 800B5FC4 000B14E4  80 04 00 D4 */	lwz r0, 0xd4(r4)
/* 800B5FC8 000B14E8  90 1E 00 EC */	stw r0, 0xec(r30)
/* 800B5FCC 000B14EC  80 04 00 D8 */	lwz r0, 0xd8(r4)
/* 800B5FD0 000B14F0  90 1E 00 F0 */	stw r0, 0xf0(r30)
/* 800B5FD4 000B14F4  80 04 00 DC */	lwz r0, 0xdc(r4)
/* 800B5FD8 000B14F8  90 1E 00 F4 */	stw r0, 0xf4(r30)
/* 800B5FDC 000B14FC  48 00 06 2D */	bl __AllocDelayLine
/* 800B5FE0 000B1500  2C 03 00 00 */	cmpwi r3, 0
/* 800B5FE4 000B1504  40 82 00 38 */	bne lbl_800B601C
/* 800B5FE8 000B1508  4B FD F2 CD */	bl OSDisableInterrupts
/* 800B5FEC 000B150C  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 800B5FF0 000B1510  7C 7D 1B 78 */	mr r29, r3
/* 800B5FF4 000B1514  7F C3 F3 78 */	mr r3, r30
/* 800B5FF8 000B1518  60 00 00 01 */	ori r0, r0, 1
/* 800B5FFC 000B151C  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 800B6000 000B1520  48 00 08 A1 */	bl __FreeDelayLine
/* 800B6004 000B1524  7F A3 EB 78 */	mr r3, r29
/* 800B6008 000B1528  4B FD F2 D5 */	bl OSRestoreInterrupts
/* 800B600C 000B152C  7F E3 FB 78 */	mr r3, r31
/* 800B6010 000B1530  4B FD F2 CD */	bl OSRestoreInterrupts
/* 800B6014 000B1534  38 60 00 00 */	li r3, 0
/* 800B6018 000B1538  48 00 00 68 */	b lbl_800B6080
lbl_800B601C:
/* 800B601C 000B153C  7F C3 F3 78 */	mr r3, r30
/* 800B6020 000B1540  48 00 07 5D */	bl __BzeroDelayLines
/* 800B6024 000B1544  7F C3 F3 78 */	mr r3, r30
/* 800B6028 000B1548  48 00 09 8D */	bl __InitParams
/* 800B602C 000B154C  2C 03 00 00 */	cmpwi r3, 0
/* 800B6030 000B1550  40 82 00 38 */	bne lbl_800B6068
/* 800B6034 000B1554  4B FD F2 81 */	bl OSDisableInterrupts
/* 800B6038 000B1558  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 800B603C 000B155C  7C 7D 1B 78 */	mr r29, r3
/* 800B6040 000B1560  7F C3 F3 78 */	mr r3, r30
/* 800B6044 000B1564  60 00 00 01 */	ori r0, r0, 1
/* 800B6048 000B1568  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 800B604C 000B156C  48 00 08 55 */	bl __FreeDelayLine
/* 800B6050 000B1570  7F A3 EB 78 */	mr r3, r29
/* 800B6054 000B1574  4B FD F2 89 */	bl OSRestoreInterrupts
/* 800B6058 000B1578  7F E3 FB 78 */	mr r3, r31
/* 800B605C 000B157C  4B FD F2 81 */	bl OSRestoreInterrupts
/* 800B6060 000B1580  38 60 00 00 */	li r3, 0
/* 800B6064 000B1584  48 00 00 1C */	b lbl_800B6080
lbl_800B6068:
/* 800B6068 000B1588  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 800B606C 000B158C  7F E3 FB 78 */	mr r3, r31
/* 800B6070 000B1590  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800B6074 000B1594  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 800B6078 000B1598  4B FD F2 65 */	bl OSRestoreInterrupts
/* 800B607C 000B159C  38 60 00 01 */	li r3, 1
lbl_800B6080:
/* 800B6080 000B15A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B6084 000B15A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B6088 000B15A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B608C 000B15AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B6090 000B15B0  7C 08 03 A6 */	mtlr r0
/* 800B6094 000B15B4  38 21 00 20 */	addi r1, r1, 0x20
/* 800B6098 000B15B8  4E 80 00 20 */	blr 