.include "macros.inc"

.section .text, "ax"

glabel GXSetTevIndirect
/* 800A85D8 000A3AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A85DC 000A3AFC  39 80 00 00 */	li r12, 0
/* 800A85E0 000A3B00  50 8C 07 BE */	rlwimi r12, r4, 0, 0x1e, 0x1f
/* 800A85E4 000A3B04  38 83 00 10 */	addi r4, r3, 0x10
/* 800A85E8 000A3B08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A85EC 000A3B0C  50 AC 17 3A */	rlwimi r12, r5, 2, 0x1c, 0x1d
/* 800A85F0 000A3B10  3D 60 CC 01 */	lis r11, 0xCC008000@ha
/* 800A85F4 000A3B14  38 00 00 61 */	li r0, 0x61
/* 800A85F8 000A3B18  98 0B 80 00 */	stb r0, 0xCC008000@l(r11)
/* 800A85FC 000A3B1C  50 CC 26 76 */	rlwimi r12, r6, 4, 0x19, 0x1b
/* 800A8600 000A3B20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A8604 000A3B24  38 00 00 00 */	li r0, 0
/* 800A8608 000A3B28  88 A1 00 1B */	lbz r5, 0x1b(r1)
/* 800A860C 000A3B2C  53 EC 3D F0 */	rlwimi r12, r31, 7, 0x17, 0x18
/* 800A8610 000A3B30  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A8614 000A3B34  50 EC 4C EC */	rlwimi r12, r7, 9, 0x13, 0x16
/* 800A8618 000A3B38  51 0C 6C 24 */	rlwimi r12, r8, 0xd, 0x10, 0x12
/* 800A861C 000A3B3C  51 2C 83 5E */	rlwimi r12, r9, 0x10, 0xd, 0xf
/* 800A8620 000A3B40  50 AC 9B 18 */	rlwimi r12, r5, 0x13, 0xc, 0xc
/* 800A8624 000A3B44  51 4C A2 D6 */	rlwimi r12, r10, 0x14, 0xb, 0xb
/* 800A8628 000A3B48  50 8C C0 0E */	rlwimi r12, r4, 0x18, 0, 7
/* 800A862C 000A3B4C  91 8B 80 00 */	stw r12, -0x8000(r11)
/* 800A8630 000A3B50  B0 03 00 02 */	sth r0, 2(r3)
/* 800A8634 000A3B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A8638 000A3B58  38 21 00 10 */	addi r1, r1, 0x10
/* 800A863C 000A3B5C  4E 80 00 20 */	blr

glabel GXSetIndTexMtx
/* 800A8640 000A3B60  2C 03 00 08 */	cmpwi r3, 8
/* 800A8644 000A3B64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800A8648 000A3B68  41 82 00 44 */	beq .L_800A868C
/* 800A864C 000A3B6C  40 80 00 1C */	bge .L_800A8668
/* 800A8650 000A3B70  2C 03 00 04 */	cmpwi r3, 4
/* 800A8654 000A3B74  41 82 00 38 */	beq .L_800A868C
/* 800A8658 000A3B78  40 80 00 24 */	bge .L_800A867C
/* 800A865C 000A3B7C  2C 03 00 01 */	cmpwi r3, 1
/* 800A8660 000A3B80  40 80 00 14 */	bge .L_800A8674
/* 800A8664 000A3B84  48 00 00 28 */	b .L_800A868C
.L_800A8668:
/* 800A8668 000A3B88  2C 03 00 0C */	cmpwi r3, 0xc
/* 800A866C 000A3B8C  40 80 00 20 */	bge .L_800A868C
/* 800A8670 000A3B90  48 00 00 14 */	b .L_800A8684
.L_800A8674:
/* 800A8674 000A3B94  38 63 FF FF */	addi r3, r3, -1
/* 800A8678 000A3B98  48 00 00 18 */	b .L_800A8690
.L_800A867C:
/* 800A867C 000A3B9C  38 63 FF FB */	addi r3, r3, -5
/* 800A8680 000A3BA0  48 00 00 10 */	b .L_800A8690
.L_800A8684:
/* 800A8684 000A3BA4  38 63 FF F7 */	addi r3, r3, -9
/* 800A8688 000A3BA8  48 00 00 08 */	b .L_800A8690
.L_800A868C:
/* 800A868C 000A3BAC  38 60 00 00 */	li r3, 0
.L_800A8690:
/* 800A8690 000A3BB0  C0 C2 86 A0 */	lfs f6, lbl_80247EA0@sda21(r2)
/* 800A8694 000A3BB4  54 60 10 3A */	slwi r0, r3, 2
/* 800A8698 000A3BB8  C0 24 00 00 */	lfs f1, 0(r4)
/* 800A869C 000A3BBC  7D 23 00 50 */	subf r9, r3, r0
/* 800A86A0 000A3BC0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 800A86A4 000A3BC4  39 05 00 11 */	addi r8, r5, 0x11
/* 800A86A8 000A3BC8  EC 26 00 72 */	fmuls f1, f6, f1
/* 800A86AC 000A3BCC  C0 64 00 04 */	lfs f3, 4(r4)
/* 800A86B0 000A3BD0  EC 06 00 32 */	fmuls f0, f6, f0
/* 800A86B4 000A3BD4  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 800A86B8 000A3BD8  EC 66 00 F2 */	fmuls f3, f6, f3
/* 800A86BC 000A3BDC  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 800A86C0 000A3BE0  FC A0 08 1E */	fctiwz f5, f1
/* 800A86C4 000A3BE4  C0 24 00 08 */	lfs f1, 8(r4)
/* 800A86C8 000A3BE8  FC 80 00 1E */	fctiwz f4, f0
/* 800A86CC 000A3BEC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 800A86D0 000A3BF0  EC 46 00 B2 */	fmuls f2, f6, f2
/* 800A86D4 000A3BF4  38 E0 00 61 */	li r7, 0x61
/* 800A86D8 000A3BF8  D8 A1 00 08 */	stfd f5, 8(r1)
/* 800A86DC 000A3BFC  FC 60 18 1E */	fctiwz f3, f3
/* 800A86E0 000A3C00  EC 26 00 72 */	fmuls f1, f6, f1
/* 800A86E4 000A3C04  38 A0 00 00 */	li r5, 0
/* 800A86E8 000A3C08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A86EC 000A3C0C  FC 40 10 1E */	fctiwz f2, f2
/* 800A86F0 000A3C10  EC 06 00 32 */	fmuls f0, f6, f0
/* 800A86F4 000A3C14  FC 20 08 1E */	fctiwz f1, f1
/* 800A86F8 000A3C18  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 800A86FC 000A3C1C  50 05 05 7E */	rlwimi r5, r0, 0, 0x15, 0x1f
/* 800A8700 000A3C20  FC 00 00 1E */	fctiwz f0, f0
/* 800A8704 000A3C24  38 69 00 06 */	addi r3, r9, 6
/* 800A8708 000A3C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A870C 000A3C2C  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 800A8710 000A3C30  38 80 00 00 */	li r4, 0
/* 800A8714 000A3C34  50 05 5A A8 */	rlwimi r5, r0, 0xb, 0xa, 0x14
/* 800A8718 000A3C38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A871C 000A3C3C  51 05 B2 12 */	rlwimi r5, r8, 0x16, 8, 9
/* 800A8720 000A3C40  50 65 C0 0E */	rlwimi r5, r3, 0x18, 0, 7
/* 800A8724 000A3C44  98 E6 80 00 */	stb r7, 0xCC008000@l(r6)
/* 800A8728 000A3C48  50 04 05 7E */	rlwimi r4, r0, 0, 0x15, 0x1f
/* 800A872C 000A3C4C  38 69 00 07 */	addi r3, r9, 7
/* 800A8730 000A3C50  90 A6 80 00 */	stw r5, -0x8000(r6)
/* 800A8734 000A3C54  38 A0 00 00 */	li r5, 0
/* 800A8738 000A3C58  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 800A873C 000A3C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A8740 000A3C60  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800A8744 000A3C64  50 04 5A A8 */	rlwimi r4, r0, 0xb, 0xa, 0x14
/* 800A8748 000A3C68  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800A874C 000A3C6C  51 04 A2 12 */	rlwimi r4, r8, 0x14, 8, 9
/* 800A8750 000A3C70  50 64 C0 0E */	rlwimi r4, r3, 0x18, 0, 7
/* 800A8754 000A3C74  98 E6 80 00 */	stb r7, -0x8000(r6)
/* 800A8758 000A3C78  50 05 05 7E */	rlwimi r5, r0, 0, 0x15, 0x1f
/* 800A875C 000A3C7C  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A8760 000A3C80  90 86 80 00 */	stw r4, -0x8000(r6)
/* 800A8764 000A3C84  38 89 00 08 */	addi r4, r9, 8
/* 800A8768 000A3C88  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800A876C 000A3C8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A8770 000A3C90  98 E6 80 00 */	stb r7, -0x8000(r6)
/* 800A8774 000A3C94  50 05 5A A8 */	rlwimi r5, r0, 0xb, 0xa, 0x14
/* 800A8778 000A3C98  38 00 00 00 */	li r0, 0
/* 800A877C 000A3C9C  51 05 92 12 */	rlwimi r5, r8, 0x12, 8, 9
/* 800A8780 000A3CA0  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 800A8784 000A3CA4  90 A6 80 00 */	stw r5, -0x8000(r6)
/* 800A8788 000A3CA8  B0 03 00 02 */	sth r0, 2(r3)
/* 800A878C 000A3CAC  38 21 00 40 */	addi r1, r1, 0x40
/* 800A8790 000A3CB0  4E 80 00 20 */	blr

glabel GXSetIndTexCoordScale
/* 800A8794 000A3CB4  2C 03 00 02 */	cmpwi r3, 2
/* 800A8798 000A3CB8  41 82 00 8C */	beq .L_800A8824
/* 800A879C 000A3CBC  40 80 00 14 */	bge .L_800A87B0
/* 800A87A0 000A3CC0  2C 03 00 00 */	cmpwi r3, 0
/* 800A87A4 000A3CC4  41 82 00 18 */	beq .L_800A87BC
/* 800A87A8 000A3CC8  40 80 00 48 */	bge .L_800A87F0
/* 800A87AC 000A3CCC  48 00 00 DC */	b .L_800A8888
.L_800A87B0:
/* 800A87B0 000A3CD0  2C 03 00 04 */	cmpwi r3, 4
/* 800A87B4 000A3CD4  40 80 00 D4 */	bge .L_800A8888
/* 800A87B8 000A3CD8  48 00 00 A0 */	b .L_800A8858
.L_800A87BC:
/* 800A87BC 000A3CDC  81 02 86 40 */	lwz r8, lbl_80247E40@sda21(r2)
/* 800A87C0 000A3CE0  38 C0 00 25 */	li r6, 0x25
/* 800A87C4 000A3CE4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800A87C8 000A3CE8  38 00 00 61 */	li r0, 0x61
/* 800A87CC 000A3CEC  80 E8 01 78 */	lwz r7, 0x178(r8)
/* 800A87D0 000A3CF0  50 87 07 3E */	rlwimi r7, r4, 0, 0x1c, 0x1f
/* 800A87D4 000A3CF4  50 A7 26 36 */	rlwimi r7, r5, 4, 0x18, 0x1b
/* 800A87D8 000A3CF8  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 800A87DC 000A3CFC  90 E8 01 78 */	stw r7, 0x178(r8)
/* 800A87E0 000A3D00  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800A87E4 000A3D04  80 08 01 78 */	lwz r0, 0x178(r8)
/* 800A87E8 000A3D08  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800A87EC 000A3D0C  48 00 00 9C */	b .L_800A8888
.L_800A87F0:
/* 800A87F0 000A3D10  81 02 86 40 */	lwz r8, lbl_80247E40@sda21(r2)
/* 800A87F4 000A3D14  38 C0 00 25 */	li r6, 0x25
/* 800A87F8 000A3D18  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800A87FC 000A3D1C  38 00 00 61 */	li r0, 0x61
/* 800A8800 000A3D20  80 E8 01 78 */	lwz r7, 0x178(r8)
/* 800A8804 000A3D24  50 87 45 2E */	rlwimi r7, r4, 8, 0x14, 0x17
/* 800A8808 000A3D28  50 A7 64 26 */	rlwimi r7, r5, 0xc, 0x10, 0x13
/* 800A880C 000A3D2C  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 800A8810 000A3D30  90 E8 01 78 */	stw r7, 0x178(r8)
/* 800A8814 000A3D34  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800A8818 000A3D38  80 08 01 78 */	lwz r0, 0x178(r8)
/* 800A881C 000A3D3C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800A8820 000A3D40  48 00 00 68 */	b .L_800A8888
.L_800A8824:
/* 800A8824 000A3D44  81 02 86 40 */	lwz r8, lbl_80247E40@sda21(r2)
/* 800A8828 000A3D48  38 C0 00 26 */	li r6, 0x26
/* 800A882C 000A3D4C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800A8830 000A3D50  38 00 00 61 */	li r0, 0x61
/* 800A8834 000A3D54  80 E8 01 7C */	lwz r7, 0x17c(r8)
/* 800A8838 000A3D58  50 87 07 3E */	rlwimi r7, r4, 0, 0x1c, 0x1f
/* 800A883C 000A3D5C  50 A7 26 36 */	rlwimi r7, r5, 4, 0x18, 0x1b
/* 800A8840 000A3D60  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 800A8844 000A3D64  90 E8 01 7C */	stw r7, 0x17c(r8)
/* 800A8848 000A3D68  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800A884C 000A3D6C  80 08 01 7C */	lwz r0, 0x17c(r8)
/* 800A8850 000A3D70  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800A8854 000A3D74  48 00 00 34 */	b .L_800A8888
.L_800A8858:
/* 800A8858 000A3D78  81 02 86 40 */	lwz r8, lbl_80247E40@sda21(r2)
/* 800A885C 000A3D7C  38 C0 00 26 */	li r6, 0x26
/* 800A8860 000A3D80  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800A8864 000A3D84  38 00 00 61 */	li r0, 0x61
/* 800A8868 000A3D88  80 E8 01 7C */	lwz r7, 0x17c(r8)
/* 800A886C 000A3D8C  50 87 45 2E */	rlwimi r7, r4, 8, 0x14, 0x17
/* 800A8870 000A3D90  50 A7 64 26 */	rlwimi r7, r5, 0xc, 0x10, 0x13
/* 800A8874 000A3D94  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 800A8878 000A3D98  90 E8 01 7C */	stw r7, 0x17c(r8)
/* 800A887C 000A3D9C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800A8880 000A3DA0  80 08 01 7C */	lwz r0, 0x17c(r8)
/* 800A8884 000A3DA4  90 03 80 00 */	stw r0, -0x8000(r3)
.L_800A8888:
/* 800A8888 000A3DA8  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A888C 000A3DAC  38 00 00 00 */	li r0, 0
/* 800A8890 000A3DB0  B0 03 00 02 */	sth r0, 2(r3)
/* 800A8894 000A3DB4  4E 80 00 20 */	blr

glabel GXSetIndTexOrder
/* 800A8898 000A3DB8  2C 05 00 FF */	cmpwi r5, 0xff
/* 800A889C 000A3DBC  40 82 00 08 */	bne .L_800A88A4
/* 800A88A0 000A3DC0  38 A0 00 00 */	li r5, 0
.L_800A88A4:
/* 800A88A4 000A3DC4  2C 04 00 FF */	cmpwi r4, 0xff
/* 800A88A8 000A3DC8  40 82 00 08 */	bne .L_800A88B0
/* 800A88AC 000A3DCC  38 80 00 00 */	li r4, 0
.L_800A88B0:
/* 800A88B0 000A3DD0  2C 03 00 02 */	cmpwi r3, 2
/* 800A88B4 000A3DD4  41 82 00 54 */	beq .L_800A8908
/* 800A88B8 000A3DD8  40 80 00 14 */	bge .L_800A88CC
/* 800A88BC 000A3DDC  2C 03 00 00 */	cmpwi r3, 0
/* 800A88C0 000A3DE0  41 82 00 18 */	beq .L_800A88D8
/* 800A88C4 000A3DE4  40 80 00 2C */	bge .L_800A88F0
/* 800A88C8 000A3DE8  48 00 00 6C */	b .L_800A8934
.L_800A88CC:
/* 800A88CC 000A3DEC  2C 03 00 04 */	cmpwi r3, 4
/* 800A88D0 000A3DF0  40 80 00 64 */	bge .L_800A8934
/* 800A88D4 000A3DF4  48 00 00 4C */	b .L_800A8920
.L_800A88D8:
/* 800A88D8 000A3DF8  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A88DC 000A3DFC  80 03 01 70 */	lwz r0, 0x170(r3)
/* 800A88E0 000A3E00  50 A0 07 7E */	rlwimi r0, r5, 0, 0x1d, 0x1f
/* 800A88E4 000A3E04  50 80 1E B8 */	rlwimi r0, r4, 3, 0x1a, 0x1c
/* 800A88E8 000A3E08  90 03 01 70 */	stw r0, 0x170(r3)
/* 800A88EC 000A3E0C  48 00 00 48 */	b .L_800A8934
.L_800A88F0:
/* 800A88F0 000A3E10  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A88F4 000A3E14  80 03 01 70 */	lwz r0, 0x170(r3)
/* 800A88F8 000A3E18  50 A0 35 F2 */	rlwimi r0, r5, 6, 0x17, 0x19
/* 800A88FC 000A3E1C  50 80 4D 2C */	rlwimi r0, r4, 9, 0x14, 0x16
/* 800A8900 000A3E20  90 03 01 70 */	stw r0, 0x170(r3)
/* 800A8904 000A3E24  48 00 00 30 */	b .L_800A8934
.L_800A8908:
/* 800A8908 000A3E28  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A890C 000A3E2C  80 03 01 70 */	lwz r0, 0x170(r3)
/* 800A8910 000A3E30  50 A0 64 66 */	rlwimi r0, r5, 0xc, 0x11, 0x13
/* 800A8914 000A3E34  50 80 7B A0 */	rlwimi r0, r4, 0xf, 0xe, 0x10
/* 800A8918 000A3E38  90 03 01 70 */	stw r0, 0x170(r3)
/* 800A891C 000A3E3C  48 00 00 18 */	b .L_800A8934
.L_800A8920:
/* 800A8920 000A3E40  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A8924 000A3E44  80 03 01 70 */	lwz r0, 0x170(r3)
/* 800A8928 000A3E48  50 A0 92 DA */	rlwimi r0, r5, 0x12, 0xb, 0xd
/* 800A892C 000A3E4C  50 80 AA 14 */	rlwimi r0, r4, 0x15, 8, 0xa
/* 800A8930 000A3E50  90 03 01 70 */	stw r0, 0x170(r3)
.L_800A8934:
/* 800A8934 000A3E54  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800A8938 000A3E58  38 00 00 61 */	li r0, 0x61
/* 800A893C 000A3E5C  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800A8940 000A3E60  38 00 00 00 */	li r0, 0
/* 800A8944 000A3E64  80 A2 86 40 */	lwz r5, lbl_80247E40@sda21(r2)
/* 800A8948 000A3E68  80 65 01 70 */	lwz r3, 0x170(r5)
/* 800A894C 000A3E6C  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800A8950 000A3E70  80 65 05 FC */	lwz r3, 0x5fc(r5)
/* 800A8954 000A3E74  60 63 00 03 */	ori r3, r3, 3
/* 800A8958 000A3E78  90 65 05 FC */	stw r3, 0x5fc(r5)
/* 800A895C 000A3E7C  B0 05 00 02 */	sth r0, 2(r5)
/* 800A8960 000A3E80  4E 80 00 20 */	blr

glabel GXSetNumIndStages
/* 800A8964 000A3E84  80 82 86 40 */	lwz r4, lbl_80247E40@sda21(r2)
/* 800A8968 000A3E88  80 04 02 54 */	lwz r0, 0x254(r4)
/* 800A896C 000A3E8C  50 60 83 5E */	rlwimi r0, r3, 0x10, 0xd, 0xf
/* 800A8970 000A3E90  90 04 02 54 */	stw r0, 0x254(r4)
/* 800A8974 000A3E94  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 800A8978 000A3E98  60 00 00 06 */	ori r0, r0, 6
/* 800A897C 000A3E9C  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 800A8980 000A3EA0  4E 80 00 20 */	blr

glabel GXSetTevDirect
/* 800A8984 000A3EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A8988 000A3EA8  7C 08 02 A6 */	mflr r0
/* 800A898C 000A3EAC  38 80 00 00 */	li r4, 0
/* 800A8990 000A3EB0  38 A0 00 00 */	li r5, 0
/* 800A8994 000A3EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A8998 000A3EB8  38 00 00 00 */	li r0, 0
/* 800A899C 000A3EBC  38 C0 00 00 */	li r6, 0
/* 800A89A0 000A3EC0  38 E0 00 00 */	li r7, 0
/* 800A89A4 000A3EC4  90 01 00 08 */	stw r0, 8(r1)
/* 800A89A8 000A3EC8  39 00 00 00 */	li r8, 0
/* 800A89AC 000A3ECC  39 20 00 00 */	li r9, 0
/* 800A89B0 000A3ED0  39 40 00 00 */	li r10, 0
/* 800A89B4 000A3ED4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800A89B8 000A3ED8  4B FF FC 21 */	bl GXSetTevIndirect
/* 800A89BC 000A3EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A89C0 000A3EE0  7C 08 03 A6 */	mtlr r0
/* 800A89C4 000A3EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 800A89C8 000A3EE8  4E 80 00 20 */	blr

glabel __GXUpdateBPMask
/* 800A89CC 000A3EEC  4E 80 00 20 */	blr

glabel __GXSetIndirectMask
/* 800A89D0 000A3EF0  80 E2 86 40 */	lwz r7, lbl_80247E40@sda21(r2)
/* 800A89D4 000A3EF4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800A89D8 000A3EF8  38 A0 00 61 */	li r5, 0x61
/* 800A89DC 000A3EFC  38 00 00 00 */	li r0, 0
/* 800A89E0 000A3F00  80 C7 01 74 */	lwz r6, 0x174(r7)
/* 800A89E4 000A3F04  50 66 06 3E */	rlwimi r6, r3, 0, 0x18, 0x1f
/* 800A89E8 000A3F08  90 C7 01 74 */	stw r6, 0x174(r7)
/* 800A89EC 000A3F0C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800A89F0 000A3F10  80 67 01 74 */	lwz r3, 0x174(r7)
/* 800A89F4 000A3F14  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800A89F8 000A3F18  B0 07 00 02 */	sth r0, 2(r7)
/* 800A89FC 000A3F1C  4E 80 00 20 */	blr

glabel __GXFlushTextureState
/* 800A8A00 000A3F20  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800A8A04 000A3F24  38 00 00 61 */	li r0, 0x61
/* 800A8A08 000A3F28  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800A8A0C 000A3F2C  38 00 00 00 */	li r0, 0
/* 800A8A10 000A3F30  80 A2 86 40 */	lwz r5, lbl_80247E40@sda21(r2)
/* 800A8A14 000A3F34  80 65 01 74 */	lwz r3, 0x174(r5)
/* 800A8A18 000A3F38  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800A8A1C 000A3F3C  B0 05 00 02 */	sth r0, 2(r5)
/* 800A8A20 000A3F40  4E 80 00 20 */	blr
