.include "macros.inc"

.section .text, "ax"

glabel __ct__Q46nw4hbm3snd6detail13WsdFileReaderFPCv
/* 80144510 0013FA30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80144514 0013FA34  7C 08 02 A6 */	mflr r0
/* 80144518 0013FA38  2C 04 00 00 */	cmpwi r4, 0
/* 8014451C 0013FA3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80144520 0013FA40  38 00 00 00 */	li r0, 0
/* 80144524 0013FA44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80144528 0013FA48  3F E0 80 1B */	lis r31, lbl_801AAD38@ha
/* 8014452C 0013FA4C  3B FF AD 38 */	addi r31, r31, lbl_801AAD38@l
/* 80144530 0013FA50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80144534 0013FA54  7C 9E 23 78 */	mr r30, r4
/* 80144538 0013FA58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014453C 0013FA5C  7C 7D 1B 78 */	mr r29, r3
/* 80144540 0013FA60  90 03 00 00 */	stw r0, 0(r3)
/* 80144544 0013FA64  90 03 00 04 */	stw r0, 4(r3)
/* 80144548 0013FA68  90 03 00 08 */	stw r0, 8(r3)
/* 8014454C 0013FA6C  40 82 00 18 */	bne .L_80144564
/* 80144550 0013FA70  38 7F 00 00 */	addi r3, r31, 0
/* 80144554 0013FA74  38 BF 00 B4 */	addi r5, r31, 0xb4
/* 80144558 0013FA78  38 80 00 59 */	li r4, 0x59
/* 8014455C 0013FA7C  4C C6 31 82 */	crclr 6
/* 80144560 0013FA80  4B FD 18 61 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80144564:
/* 80144564 0013FA84  80 7E 00 00 */	lwz r3, 0(r30)
/* 80144568 0013FA88  3C 03 AD A9 */	addis r0, r3, 0xada9
/* 8014456C 0013FA8C  28 00 53 44 */	cmplwi r0, 0x5344
/* 80144570 0013FA90  41 82 00 18 */	beq .L_80144588
/* 80144574 0013FA94  38 7F 00 00 */	addi r3, r31, 0
/* 80144578 0013FA98  38 BF 00 10 */	addi r5, r31, 0x10
/* 8014457C 0013FA9C  38 80 00 37 */	li r4, 0x37
/* 80144580 0013FAA0  4C C6 31 82 */	crclr 6
/* 80144584 0013FAA4  4B FD 18 3D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80144588:
/* 80144588 0013FAA8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8014458C 0013FAAC  3C 03 AD A9 */	addis r0, r3, 0xada9
/* 80144590 0013FAB0  28 00 53 44 */	cmplwi r0, 0x5344
/* 80144594 0013FAB4  41 82 00 0C */	beq .L_801445A0
/* 80144598 0013FAB8  38 00 00 00 */	li r0, 0
/* 8014459C 0013FABC  48 00 00 70 */	b .L_8014460C
.L_801445A0:
/* 801445A0 0013FAC0  A0 1E 00 06 */	lhz r0, 6(r30)
/* 801445A4 0013FAC4  28 00 01 00 */	cmplwi r0, 0x100
/* 801445A8 0013FAC8  40 80 00 18 */	bge .L_801445C0
/* 801445AC 0013FACC  38 7F 00 00 */	addi r3, r31, 0
/* 801445B0 0013FAD0  38 BF 00 5C */	addi r5, r31, 0x5c
/* 801445B4 0013FAD4  38 80 00 3F */	li r4, 0x3f
/* 801445B8 0013FAD8  4C C6 31 82 */	crclr 6
/* 801445BC 0013FADC  4B FD 18 05 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801445C0:
/* 801445C0 0013FAE0  A0 1E 00 06 */	lhz r0, 6(r30)
/* 801445C4 0013FAE4  28 00 01 00 */	cmplwi r0, 0x100
/* 801445C8 0013FAE8  40 80 00 0C */	bge .L_801445D4
/* 801445CC 0013FAEC  38 00 00 00 */	li r0, 0
/* 801445D0 0013FAF0  48 00 00 3C */	b .L_8014460C
.L_801445D4:
/* 801445D4 0013FAF4  28 00 01 02 */	cmplwi r0, 0x102
/* 801445D8 0013FAF8  40 81 00 18 */	ble .L_801445F0
/* 801445DC 0013FAFC  38 7F 00 00 */	addi r3, r31, 0
/* 801445E0 0013FB00  38 BF 00 5C */	addi r5, r31, 0x5c
/* 801445E4 0013FB04  38 80 00 45 */	li r4, 0x45
/* 801445E8 0013FB08  4C C6 31 82 */	crclr 6
/* 801445EC 0013FB0C  4B FD 17 D5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801445F0:
/* 801445F0 0013FB10  A0 9E 00 06 */	lhz r4, 6(r30)
/* 801445F4 0013FB14  38 60 01 02 */	li r3, 0x102
/* 801445F8 0013FB18  20 04 01 02 */	subfic r0, r4, 0x102
/* 801445FC 0013FB1C  7C 63 23 38 */	orc r3, r3, r4
/* 80144600 0013FB20  54 00 F8 7E */	srwi r0, r0, 1
/* 80144604 0013FB24  7C 00 18 50 */	subf r0, r0, r3
/* 80144608 0013FB28  54 00 0F FE */	srwi r0, r0, 0x1f
.L_8014460C:
/* 8014460C 0013FB2C  2C 00 00 00 */	cmpwi r0, 0
/* 80144610 0013FB30  40 82 00 0C */	bne .L_8014461C
/* 80144614 0013FB34  7F A3 EB 78 */	mr r3, r29
/* 80144618 0013FB38  48 00 00 70 */	b .L_80144688
.L_8014461C:
/* 8014461C 0013FB3C  93 DD 00 00 */	stw r30, 0(r29)
/* 80144620 0013FB40  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80144624 0013FB44  7C 60 F2 14 */	add r3, r0, r30
/* 80144628 0013FB48  90 7D 00 04 */	stw r3, 4(r29)
/* 8014462C 0013FB4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80144630 0013FB50  3C 03 BB BF */	addis r0, r3, 0xbbbf
/* 80144634 0013FB54  28 00 54 41 */	cmplwi r0, 0x5441
/* 80144638 0013FB58  41 82 00 18 */	beq .L_80144650
/* 8014463C 0013FB5C  38 7F 00 00 */	addi r3, r31, 0
/* 80144640 0013FB60  38 BF 00 E0 */	addi r5, r31, 0xe0
/* 80144644 0013FB64  38 80 00 62 */	li r4, 0x62
/* 80144648 0013FB68  4C C6 31 82 */	crclr 6
/* 8014464C 0013FB6C  4B FD 17 75 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80144650:
/* 80144650 0013FB70  80 7D 00 00 */	lwz r3, 0(r29)
/* 80144654 0013FB74  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80144658 0013FB78  7C 60 1A 14 */	add r3, r0, r3
/* 8014465C 0013FB7C  90 7D 00 08 */	stw r3, 8(r29)
/* 80144660 0013FB80  80 63 00 00 */	lwz r3, 0(r3)
/* 80144664 0013FB84  3C 03 A8 BF */	addis r0, r3, 0xa8bf
/* 80144668 0013FB88  28 00 56 45 */	cmplwi r0, 0x5645
/* 8014466C 0013FB8C  41 82 00 18 */	beq .L_80144684
/* 80144670 0013FB90  38 7F 00 00 */	addi r3, r31, 0
/* 80144674 0013FB94  38 BF 01 38 */	addi r5, r31, 0x138
/* 80144678 0013FB98  38 80 00 66 */	li r4, 0x66
/* 8014467C 0013FB9C  4C C6 31 82 */	crclr 6
/* 80144680 0013FBA0  4B FD 17 41 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80144684:
/* 80144684 0013FBA4  7F A3 EB 78 */	mr r3, r29
.L_80144688:
/* 80144688 0013FBA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014468C 0013FBAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80144690 0013FBB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80144694 0013FBB4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80144698 0013FBB8  7C 08 03 A6 */	mtlr r0
/* 8014469C 0013FBBC  38 21 00 20 */	addi r1, r1, 0x20
/* 801446A0 0013FBC0  4E 80 00 20 */	blr
