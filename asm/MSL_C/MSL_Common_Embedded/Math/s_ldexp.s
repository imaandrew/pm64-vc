.include "macros.inc"

.section .text, "ax"

glabel ldexp
/* 8016E588 00169AA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016E58C 00169AAC  7C 08 02 A6 */	mflr r0
/* 8016E590 00169AB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016E594 00169AB4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8016E598 00169AB8  FF E0 08 90 */	fmr f31, f1
/* 8016E59C 00169ABC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8016E5A0 00169AC0  7C 7F 1B 78 */	mr r31, r3
/* 8016E5A4 00169AC4  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016E5A8 00169AC8  4B FF 41 F5 */	bl __fpclassifyd
/* 8016E5AC 00169ACC  2C 03 00 02 */	cmpwi r3, 2
/* 8016E5B0 00169AD0  40 81 00 10 */	ble .L_8016E5C0
/* 8016E5B4 00169AD4  C8 02 8E 78 */	lfd f0, lbl_80248678@sda21(r2)
/* 8016E5B8 00169AD8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8016E5BC 00169ADC  40 82 00 0C */	bne .L_8016E5C8
.L_8016E5C0:
/* 8016E5C0 00169AE0  FC 20 F8 90 */	fmr f1, f31
/* 8016E5C4 00169AE4  48 00 01 18 */	b .L_8016E6DC
.L_8016E5C8:
/* 8016E5C8 00169AE8  80 A1 00 08 */	lwz r5, 8(r1)
/* 8016E5CC 00169AEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8016E5D0 00169AF0  54 A4 65 7F */	rlwinm. r4, r5, 0xc, 0x15, 0x1f
/* 8016E5D4 00169AF4  40 82 00 4C */	bne .L_8016E620
/* 8016E5D8 00169AF8  54 A0 00 7E */	clrlwi r0, r5, 1
/* 8016E5DC 00169AFC  7C 60 03 79 */	or. r0, r3, r0
/* 8016E5E0 00169B00  40 82 00 0C */	bne .L_8016E5EC
/* 8016E5E4 00169B04  FC 20 F8 90 */	fmr f1, f31
/* 8016E5E8 00169B08  48 00 00 F4 */	b .L_8016E6DC
.L_8016E5EC:
/* 8016E5EC 00169B0C  C8 02 8E 80 */	lfd f0, lbl_80248680@sda21(r2)
/* 8016E5F0 00169B10  3C 60 FF FF */	lis r3, 0xFFFF3CB0@ha
/* 8016E5F4 00169B14  38 03 3C B0 */	addi r0, r3, 0xFFFF3CB0@l
/* 8016E5F8 00169B18  FF FF 00 32 */	fmul f31, f31, f0
/* 8016E5FC 00169B1C  7C 1F 00 00 */	cmpw r31, r0
/* 8016E600 00169B20  DB E1 00 08 */	stfd f31, 8(r1)
/* 8016E604 00169B24  80 A1 00 08 */	lwz r5, 8(r1)
/* 8016E608 00169B28  54 A3 65 7E */	rlwinm r3, r5, 0xc, 0x15, 0x1f
/* 8016E60C 00169B2C  38 83 FF CA */	addi r4, r3, -54
/* 8016E610 00169B30  40 80 00 10 */	bge .L_8016E620
/* 8016E614 00169B34  C8 02 8E 88 */	lfd f0, lbl_80248688@sda21(r2)
/* 8016E618 00169B38  FC 20 07 F2 */	fmul f1, f0, f31
/* 8016E61C 00169B3C  48 00 00 C0 */	b .L_8016E6DC
.L_8016E620:
/* 8016E620 00169B40  2C 04 07 FF */	cmpwi r4, 0x7ff
/* 8016E624 00169B44  40 82 00 0C */	bne .L_8016E630
/* 8016E628 00169B48  FC 3F F8 2A */	fadd f1, f31, f31
/* 8016E62C 00169B4C  48 00 00 B0 */	b .L_8016E6DC
.L_8016E630:
/* 8016E630 00169B50  7C 84 FA 14 */	add r4, r4, r31
/* 8016E634 00169B54  2C 04 07 FE */	cmpwi r4, 0x7fe
/* 8016E638 00169B58  40 81 00 1C */	ble .L_8016E654
/* 8016E63C 00169B5C  FC 40 F8 90 */	fmr f2, f31
/* 8016E640 00169B60  C8 22 8E 90 */	lfd f1, lbl_80248690@sda21(r2)
/* 8016E644 00169B64  4B FF FC 79 */	bl copysign
/* 8016E648 00169B68  C8 02 8E 90 */	lfd f0, lbl_80248690@sda21(r2)
/* 8016E64C 00169B6C  FC 20 00 72 */	fmul f1, f0, f1
/* 8016E650 00169B70  48 00 00 8C */	b .L_8016E6DC
.L_8016E654:
/* 8016E654 00169B74  2C 04 00 00 */	cmpwi r4, 0
/* 8016E658 00169B78  40 81 00 1C */	ble .L_8016E674
/* 8016E65C 00169B7C  54 A3 03 00 */	rlwinm r3, r5, 0, 0xc, 0
/* 8016E660 00169B80  54 80 A0 16 */	slwi r0, r4, 0x14
/* 8016E664 00169B84  7C 60 03 78 */	or r0, r3, r0
/* 8016E668 00169B88  90 01 00 08 */	stw r0, 8(r1)
/* 8016E66C 00169B8C  C8 21 00 08 */	lfd f1, 8(r1)
/* 8016E670 00169B90  48 00 00 6C */	b .L_8016E6DC
.L_8016E674:
/* 8016E674 00169B94  2C 04 FF CA */	cmpwi r4, -54
/* 8016E678 00169B98  41 81 00 44 */	bgt .L_8016E6BC
/* 8016E67C 00169B9C  3C 60 00 01 */	lis r3, 0x0000C350@ha
/* 8016E680 00169BA0  38 03 C3 50 */	addi r0, r3, 0x0000C350@l
/* 8016E684 00169BA4  7C 1F 00 00 */	cmpw r31, r0
/* 8016E688 00169BA8  40 81 00 1C */	ble .L_8016E6A4
/* 8016E68C 00169BAC  FC 40 F8 90 */	fmr f2, f31
/* 8016E690 00169BB0  C8 22 8E 90 */	lfd f1, lbl_80248690@sda21(r2)
/* 8016E694 00169BB4  4B FF FC 29 */	bl copysign
/* 8016E698 00169BB8  C8 02 8E 90 */	lfd f0, lbl_80248690@sda21(r2)
/* 8016E69C 00169BBC  FC 20 00 72 */	fmul f1, f0, f1
/* 8016E6A0 00169BC0  48 00 00 3C */	b .L_8016E6DC
.L_8016E6A4:
/* 8016E6A4 00169BC4  FC 40 F8 90 */	fmr f2, f31
/* 8016E6A8 00169BC8  C8 22 8E 88 */	lfd f1, lbl_80248688@sda21(r2)
/* 8016E6AC 00169BCC  4B FF FC 11 */	bl copysign
/* 8016E6B0 00169BD0  C8 02 8E 88 */	lfd f0, lbl_80248688@sda21(r2)
/* 8016E6B4 00169BD4  FC 20 00 72 */	fmul f1, f0, f1
/* 8016E6B8 00169BD8  48 00 00 24 */	b .L_8016E6DC
.L_8016E6BC:
/* 8016E6BC 00169BDC  38 04 00 36 */	addi r0, r4, 0x36
/* 8016E6C0 00169BE0  54 A3 03 00 */	rlwinm r3, r5, 0, 0xc, 0
/* 8016E6C4 00169BE4  54 00 A0 16 */	slwi r0, r0, 0x14
/* 8016E6C8 00169BE8  C8 22 8E 98 */	lfd f1, lbl_80248698@sda21(r2)
/* 8016E6CC 00169BEC  7C 60 03 78 */	or r0, r3, r0
/* 8016E6D0 00169BF0  90 01 00 08 */	stw r0, 8(r1)
/* 8016E6D4 00169BF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8016E6D8 00169BF8  FC 21 00 32 */	fmul f1, f1, f0
.L_8016E6DC:
/* 8016E6DC 00169BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016E6E0 00169C00  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8016E6E4 00169C04  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8016E6E8 00169C08  7C 08 03 A6 */	mtlr r0
/* 8016E6EC 00169C0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8016E6F0 00169C10  4E 80 00 20 */	blr
