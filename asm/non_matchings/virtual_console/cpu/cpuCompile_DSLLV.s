glabel cpuCompile_DSLLV
/* 80032DD0 0002E2F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032DD4 0002E2F4  7C 08 02 A6 */	mflr r0
/* 80032DD8 0002E2F8  3C A0 30 00 */	lis r5, 0x30000040@ha
/* 80032DDC 0002E2FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80032DE0 0002E300  38 61 00 08 */	addi r3, r1, 8
/* 80032DE4 0002E304  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80032DE8 0002E308  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80032DEC 0002E30C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80032DF0 0002E310  93 81 00 10 */	stw r28, 0x10(r1)
/* 80032DF4 0002E314  7C 9C 23 78 */	mr r28, r4
/* 80032DF8 0002E318  38 85 00 40 */	addi r4, r5, 0x30000040@l
/* 80032DFC 0002E31C  48 05 31 4D */	bl xlHeapTake
/* 80032E00 0002E320  2C 03 00 00 */	cmpwi r3, 0
/* 80032E04 0002E324  40 82 00 0C */	bne lbl_80032E10
/* 80032E08 0002E328  38 60 00 00 */	li r3, 0
/* 80032E0C 0002E32C  48 00 01 18 */	b lbl_80032F24
lbl_80032E10:
/* 80032E10 0002E330  80 01 00 08 */	lwz r0, 8(r1)
/* 80032E14 0002E334  3D 60 91 01 */	lis r11, 0x91010008@ha
/* 80032E18 0002E338  3D 40 7C A5 */	lis r10, 0x7CA53830@ha
/* 80032E1C 0002E33C  3C A0 94 22 */	lis r5, 0x9421FFE8@ha
/* 80032E20 0002E340  90 1C 00 00 */	stw r0, 0(r28)
/* 80032E24 0002E344  38 05 FF E8 */	addi r0, r5, 0x9421FFE8@l
/* 80032E28 0002E348  3B CB 00 08 */	addi r30, r11, 0x91010008@l
/* 80032E2C 0002E34C  3C 60 70 E7 */	lis r3, 0x70E7003F@ha
/* 80032E30 0002E350  80 81 00 08 */	lwz r4, 8(r1)
/* 80032E34 0002E354  3F A0 91 21 */	lis r29, 0x91210010@ha
/* 80032E38 0002E358  3D 80 21 27 */	lis r12, 0x21270020@ha
/* 80032E3C 0002E35C  3B EA 38 30 */	addi r31, r10, 0x7CA53830@l
/* 80032E40 0002E360  90 04 00 00 */	stw r0, 0(r4)
/* 80032E44 0002E364  38 03 00 3F */	addi r0, r3, 0x70E7003F@l
/* 80032E48 0002E368  3C 60 4E 80 */	lis r3, 0x4E800020@ha
/* 80032E4C 0002E36C  3D 20 7C C8 */	lis r9, 0x7CC84C30@ha
/* 80032E50 0002E370  83 81 00 08 */	lwz r28, 8(r1)
/* 80032E54 0002E374  39 6A 43 78 */	addi r11, r10, 0x4378
/* 80032E58 0002E378  3D 00 39 28 */	lis r8, 0x3927FFE0@ha
/* 80032E5C 0002E37C  3C E0 7C C6 */	lis r7, 0x7CC63830@ha
/* 80032E60 0002E380  90 1C 00 04 */	stw r0, 4(r28)
/* 80032E64 0002E384  3B 9D 00 10 */	addi r28, r29, 0x91210010@l
/* 80032E68 0002E388  38 0C 00 20 */	addi r0, r12, 0x21270020@l
/* 80032E6C 0002E38C  39 89 4C 30 */	addi r12, r9, 0x7CC84C30@l
/* 80032E70 0002E390  83 A1 00 08 */	lwz r29, 8(r1)
/* 80032E74 0002E394  39 48 FF E0 */	addi r10, r8, 0x3927FFE0@l
/* 80032E78 0002E398  39 29 48 30 */	addi r9, r9, 0x4830
/* 80032E7C 0002E39C  39 07 38 30 */	addi r8, r7, 0x7CC63830@l
/* 80032E80 0002E3A0  93 9D 00 08 */	stw r28, 8(r29)
/* 80032E84 0002E3A4  3C C0 81 01 */	lis r6, 0x81010008@ha
/* 80032E88 0002E3A8  38 E6 00 08 */	addi r7, r6, 0x81010008@l
/* 80032E8C 0002E3AC  3C A0 81 21 */	lis r5, 0x81210010@ha
/* 80032E90 0002E3B0  83 A1 00 08 */	lwz r29, 8(r1)
/* 80032E94 0002E3B4  38 C5 00 10 */	addi r6, r5, 0x81210010@l
/* 80032E98 0002E3B8  3C 80 38 21 */	lis r4, 0x38210018@ha
/* 80032E9C 0002E3BC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80032EA0 0002E3C0  38 03 00 20 */	addi r0, r3, 0x4E800020@l
/* 80032EA4 0002E3C4  38 A4 00 18 */	addi r5, r4, 0x38210018@l
/* 80032EA8 0002E3C8  38 80 00 40 */	li r4, 0x40
/* 80032EAC 0002E3CC  80 61 00 08 */	lwz r3, 8(r1)
/* 80032EB0 0002E3D0  93 C3 00 10 */	stw r30, 0x10(r3)
/* 80032EB4 0002E3D4  80 61 00 08 */	lwz r3, 8(r1)
/* 80032EB8 0002E3D8  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80032EBC 0002E3DC  80 61 00 08 */	lwz r3, 8(r1)
/* 80032EC0 0002E3E0  91 83 00 18 */	stw r12, 0x18(r3)
/* 80032EC4 0002E3E4  80 61 00 08 */	lwz r3, 8(r1)
/* 80032EC8 0002E3E8  91 63 00 1C */	stw r11, 0x1c(r3)
/* 80032ECC 0002E3EC  80 61 00 08 */	lwz r3, 8(r1)
/* 80032ED0 0002E3F0  91 43 00 20 */	stw r10, 0x20(r3)
/* 80032ED4 0002E3F4  80 61 00 08 */	lwz r3, 8(r1)
/* 80032ED8 0002E3F8  91 23 00 24 */	stw r9, 0x24(r3)
/* 80032EDC 0002E3FC  80 61 00 08 */	lwz r3, 8(r1)
/* 80032EE0 0002E400  91 63 00 28 */	stw r11, 0x28(r3)
/* 80032EE4 0002E404  80 61 00 08 */	lwz r3, 8(r1)
/* 80032EE8 0002E408  91 03 00 2C */	stw r8, 0x2c(r3)
/* 80032EEC 0002E40C  80 61 00 08 */	lwz r3, 8(r1)
/* 80032EF0 0002E410  90 E3 00 30 */	stw r7, 0x30(r3)
/* 80032EF4 0002E414  80 61 00 08 */	lwz r3, 8(r1)
/* 80032EF8 0002E418  90 C3 00 34 */	stw r6, 0x34(r3)
/* 80032EFC 0002E41C  80 61 00 08 */	lwz r3, 8(r1)
/* 80032F00 0002E420  90 A3 00 38 */	stw r5, 0x38(r3)
/* 80032F04 0002E424  80 61 00 08 */	lwz r3, 8(r1)
/* 80032F08 0002E428  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80032F0C 0002E42C  80 61 00 08 */	lwz r3, 8(r1)
/* 80032F10 0002E430  48 05 DD 8D */	bl DCStoreRange
/* 80032F14 0002E434  80 61 00 08 */	lwz r3, 8(r1)
/* 80032F18 0002E438  38 80 00 40 */	li r4, 0x40
/* 80032F1C 0002E43C  48 05 DE 09 */	bl ICInvalidateRange
/* 80032F20 0002E440  38 60 00 01 */	li r3, 1
lbl_80032F24:
/* 80032F24 0002E444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80032F28 0002E448  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80032F2C 0002E44C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80032F30 0002E450  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80032F34 0002E454  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80032F38 0002E458  7C 08 03 A6 */	mtlr r0
/* 80032F3C 0002E45C  38 21 00 20 */	addi r1, r1, 0x20
/* 80032F40 0002E460  4E 80 00 20 */	blr 
