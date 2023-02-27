.include "macros.inc"

.section .text, "ax"

glabel __ieee754_atan2
/* 8016AC8C 001661AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016AC90 001661B0  7C 08 02 A6 */	mflr r0
/* 8016AC94 001661B4  3C 60 7F F0 */	lis r3, 0x7ff0
/* 8016AC98 001661B8  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8016AC9C 001661BC  81 01 00 14 */	lwz r8, 0x14(r1)
/* 8016ACA0 001661C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016ACA4 001661C4  7C 08 00 D0 */	neg r0, r8
/* 8016ACA8 001661C8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8016ACAC 001661CC  7D 00 03 78 */	or r0, r8, r0
/* 8016ACB0 001661D0  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016ACB4 001661D4  54 86 00 7E */	clrlwi r6, r4, 1
/* 8016ACB8 001661D8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8016ACBC 001661DC  80 A1 00 08 */	lwz r5, 8(r1)
/* 8016ACC0 001661E0  7C C0 03 78 */	or r0, r6, r0
/* 8016ACC4 001661E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016ACC8 001661E8  7C 00 18 40 */	cmplw r0, r3
/* 8016ACCC 001661EC  81 21 00 0C */	lwz r9, 0xc(r1)
/* 8016ACD0 001661F0  54 A7 00 7E */	clrlwi r7, r5, 1
/* 8016ACD4 001661F4  41 81 00 1C */	bgt .L_8016ACF0
/* 8016ACD8 001661F8  7C 09 00 D0 */	neg r0, r9
/* 8016ACDC 001661FC  7D 20 03 78 */	or r0, r9, r0
/* 8016ACE0 00166200  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8016ACE4 00166204  7C E0 03 78 */	or r0, r7, r0
/* 8016ACE8 00166208  7C 00 18 40 */	cmplw r0, r3
/* 8016ACEC 0016620C  40 81 00 0C */	ble .L_8016ACF8
.L_8016ACF0:
/* 8016ACF0 00166210  FC 22 08 2A */	fadd f1, f2, f1
/* 8016ACF4 00166214  48 00 01 F4 */	b .L_8016AEE8
.L_8016ACF8:
/* 8016ACF8 00166218  3C 04 C0 10 */	addis r0, r4, 0xc010
/* 8016ACFC 0016621C  7C 00 43 79 */	or. r0, r0, r8
/* 8016AD00 00166220  40 82 00 0C */	bne .L_8016AD0C
/* 8016AD04 00166224  48 00 32 39 */	bl atan
/* 8016AD08 00166228  48 00 01 E0 */	b .L_8016AEE8
.L_8016AD0C:
/* 8016AD0C 0016622C  7C E0 4B 79 */	or. r0, r7, r9
/* 8016AD10 00166230  54 9F 17 BC */	rlwinm r31, r4, 2, 0x1e, 0x1e
/* 8016AD14 00166234  50 BF 0F FE */	rlwimi r31, r5, 1, 0x1f, 0x1f
/* 8016AD18 00166238  40 82 00 3C */	bne .L_8016AD54
/* 8016AD1C 0016623C  2C 1F 00 02 */	cmpwi r31, 2
/* 8016AD20 00166240  41 82 00 24 */	beq .L_8016AD44
/* 8016AD24 00166244  40 80 00 10 */	bge .L_8016AD34
/* 8016AD28 00166248  2C 1F 00 00 */	cmpwi r31, 0
/* 8016AD2C 0016624C  40 80 01 BC */	bge .L_8016AEE8
/* 8016AD30 00166250  48 00 00 24 */	b .L_8016AD54
.L_8016AD34:
/* 8016AD34 00166254  2C 1F 00 04 */	cmpwi r31, 4
/* 8016AD38 00166258  40 80 00 1C */	bge .L_8016AD54
/* 8016AD3C 0016625C  48 00 00 10 */	b .L_8016AD4C
/* 8016AD40 00166260  48 00 01 A8 */	b .L_8016AEE8
.L_8016AD44:
/* 8016AD44 00166264  C8 22 8A 40 */	lfd f1, lbl_80248240@sda21(r2)
/* 8016AD48 00166268  48 00 01 A0 */	b .L_8016AEE8
.L_8016AD4C:
/* 8016AD4C 0016626C  C8 22 8A 48 */	lfd f1, lbl_80248248@sda21(r2)
/* 8016AD50 00166270  48 00 01 98 */	b .L_8016AEE8
.L_8016AD54:
/* 8016AD54 00166274  7C C0 43 79 */	or. r0, r6, r8
/* 8016AD58 00166278  40 82 00 1C */	bne .L_8016AD74
/* 8016AD5C 0016627C  2C 05 00 00 */	cmpwi r5, 0
/* 8016AD60 00166280  40 80 00 0C */	bge .L_8016AD6C
/* 8016AD64 00166284  C8 22 8A 50 */	lfd f1, lbl_80248250@sda21(r2)
/* 8016AD68 00166288  48 00 01 80 */	b .L_8016AEE8
.L_8016AD6C:
/* 8016AD6C 0016628C  C8 22 8A 58 */	lfd f1, lbl_80248258@sda21(r2)
/* 8016AD70 00166290  48 00 01 78 */	b .L_8016AEE8
.L_8016AD74:
/* 8016AD74 00166294  3C 06 80 10 */	addis r0, r6, 0x8010
/* 8016AD78 00166298  28 00 00 00 */	cmplwi r0, 0
/* 8016AD7C 0016629C  40 82 00 A0 */	bne .L_8016AE1C
/* 8016AD80 001662A0  3C 07 80 10 */	addis r0, r7, 0x8010
/* 8016AD84 001662A4  28 00 00 00 */	cmplwi r0, 0
/* 8016AD88 001662A8  40 82 00 4C */	bne .L_8016ADD4
/* 8016AD8C 001662AC  2C 1F 00 02 */	cmpwi r31, 2
/* 8016AD90 001662B0  41 82 00 34 */	beq .L_8016ADC4
/* 8016AD94 001662B4  40 80 00 14 */	bge .L_8016ADA8
/* 8016AD98 001662B8  2C 1F 00 00 */	cmpwi r31, 0
/* 8016AD9C 001662BC  41 82 00 18 */	beq .L_8016ADB4
/* 8016ADA0 001662C0  40 80 00 1C */	bge .L_8016ADBC
/* 8016ADA4 001662C4  48 00 00 78 */	b .L_8016AE1C
.L_8016ADA8:
/* 8016ADA8 001662C8  2C 1F 00 04 */	cmpwi r31, 4
/* 8016ADAC 001662CC  40 80 00 70 */	bge .L_8016AE1C
/* 8016ADB0 001662D0  48 00 00 1C */	b .L_8016ADCC
.L_8016ADB4:
/* 8016ADB4 001662D4  C8 22 8A 60 */	lfd f1, lbl_80248260@sda21(r2)
/* 8016ADB8 001662D8  48 00 01 30 */	b .L_8016AEE8
.L_8016ADBC:
/* 8016ADBC 001662DC  C8 22 8A 68 */	lfd f1, lbl_80248268@sda21(r2)
/* 8016ADC0 001662E0  48 00 01 28 */	b .L_8016AEE8
.L_8016ADC4:
/* 8016ADC4 001662E4  C8 22 8A 70 */	lfd f1, lbl_80248270@sda21(r2)
/* 8016ADC8 001662E8  48 00 01 20 */	b .L_8016AEE8
.L_8016ADCC:
/* 8016ADCC 001662EC  C8 22 8A 78 */	lfd f1, lbl_80248278@sda21(r2)
/* 8016ADD0 001662F0  48 00 01 18 */	b .L_8016AEE8
.L_8016ADD4:
/* 8016ADD4 001662F4  2C 1F 00 02 */	cmpwi r31, 2
/* 8016ADD8 001662F8  41 82 00 34 */	beq .L_8016AE0C
/* 8016ADDC 001662FC  40 80 00 14 */	bge .L_8016ADF0
/* 8016ADE0 00166300  2C 1F 00 00 */	cmpwi r31, 0
/* 8016ADE4 00166304  41 82 00 18 */	beq .L_8016ADFC
/* 8016ADE8 00166308  40 80 00 1C */	bge .L_8016AE04
/* 8016ADEC 0016630C  48 00 00 30 */	b .L_8016AE1C
.L_8016ADF0:
/* 8016ADF0 00166310  2C 1F 00 04 */	cmpwi r31, 4
/* 8016ADF4 00166314  40 80 00 28 */	bge .L_8016AE1C
/* 8016ADF8 00166318  48 00 00 1C */	b .L_8016AE14
.L_8016ADFC:
/* 8016ADFC 0016631C  C8 22 8A 80 */	lfd f1, lbl_80248280@sda21(r2)
/* 8016AE00 00166320  48 00 00 E8 */	b .L_8016AEE8
.L_8016AE04:
/* 8016AE04 00166324  C8 22 8A 88 */	lfd f1, lbl_80248288@sda21(r2)
/* 8016AE08 00166328  48 00 00 E0 */	b .L_8016AEE8
.L_8016AE0C:
/* 8016AE0C 0016632C  C8 22 8A 40 */	lfd f1, lbl_80248240@sda21(r2)
/* 8016AE10 00166330  48 00 00 D8 */	b .L_8016AEE8
.L_8016AE14:
/* 8016AE14 00166334  C8 22 8A 48 */	lfd f1, lbl_80248248@sda21(r2)
/* 8016AE18 00166338  48 00 00 D0 */	b .L_8016AEE8
.L_8016AE1C:
/* 8016AE1C 0016633C  3C 07 80 10 */	addis r0, r7, 0x8010
/* 8016AE20 00166340  28 00 00 00 */	cmplwi r0, 0
/* 8016AE24 00166344  40 82 00 1C */	bne .L_8016AE40
/* 8016AE28 00166348  2C 05 00 00 */	cmpwi r5, 0
/* 8016AE2C 0016634C  40 80 00 0C */	bge .L_8016AE38
/* 8016AE30 00166350  C8 22 8A 50 */	lfd f1, lbl_80248250@sda21(r2)
/* 8016AE34 00166354  48 00 00 B4 */	b .L_8016AEE8
.L_8016AE38:
/* 8016AE38 00166358  C8 22 8A 58 */	lfd f1, lbl_80248258@sda21(r2)
/* 8016AE3C 0016635C  48 00 00 AC */	b .L_8016AEE8
.L_8016AE40:
/* 8016AE40 00166360  7C 06 38 50 */	subf r0, r6, r7
/* 8016AE44 00166364  7C 00 A6 70 */	srawi r0, r0, 0x14
/* 8016AE48 00166368  2C 00 00 3C */	cmpwi r0, 0x3c
/* 8016AE4C 0016636C  40 81 00 10 */	ble .L_8016AE5C
/* 8016AE50 00166370  C8 22 8A 58 */	lfd f1, lbl_80248258@sda21(r2)
/* 8016AE54 00166374  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8016AE58 00166378  48 00 00 30 */	b .L_8016AE88
.L_8016AE5C:
/* 8016AE5C 0016637C  2C 04 00 00 */	cmpwi r4, 0
/* 8016AE60 00166380  40 80 00 18 */	bge .L_8016AE78
/* 8016AE64 00166384  2C 00 FF C4 */	cmpwi r0, -60
/* 8016AE68 00166388  40 80 00 10 */	bge .L_8016AE78
/* 8016AE6C 0016638C  C8 22 8A 80 */	lfd f1, lbl_80248280@sda21(r2)
/* 8016AE70 00166390  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8016AE74 00166394  48 00 00 14 */	b .L_8016AE88
.L_8016AE78:
/* 8016AE78 00166398  FC 01 10 24 */	fdiv f0, f1, f2
/* 8016AE7C 0016639C  FC 20 02 10 */	fabs f1, f0
/* 8016AE80 001663A0  48 00 30 BD */	bl atan
/* 8016AE84 001663A4  D8 21 00 18 */	stfd f1, 0x18(r1)
.L_8016AE88:
/* 8016AE88 001663A8  2C 1F 00 01 */	cmpwi r31, 1
/* 8016AE8C 001663AC  41 82 00 24 */	beq .L_8016AEB0
/* 8016AE90 001663B0  40 80 00 10 */	bge .L_8016AEA0
/* 8016AE94 001663B4  2C 1F 00 00 */	cmpwi r31, 0
/* 8016AE98 001663B8  40 80 00 50 */	bge .L_8016AEE8
/* 8016AE9C 001663BC  48 00 00 3C */	b .L_8016AED8
.L_8016AEA0:
/* 8016AEA0 001663C0  2C 1F 00 03 */	cmpwi r31, 3
/* 8016AEA4 001663C4  40 80 00 34 */	bge .L_8016AED8
/* 8016AEA8 001663C8  48 00 00 1C */	b .L_8016AEC4
/* 8016AEAC 001663CC  48 00 00 3C */	b .L_8016AEE8
.L_8016AEB0:
/* 8016AEB0 001663D0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8016AEB4 001663D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016AEB8 001663D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8016AEBC 001663DC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8016AEC0 001663E0  48 00 00 28 */	b .L_8016AEE8
.L_8016AEC4:
/* 8016AEC4 001663E4  C8 42 8A 90 */	lfd f2, lbl_80248290@sda21(r2)
/* 8016AEC8 001663E8  C8 02 8A 40 */	lfd f0, lbl_80248240@sda21(r2)
/* 8016AECC 001663EC  FC 21 10 28 */	fsub f1, f1, f2
/* 8016AED0 001663F0  FC 20 08 28 */	fsub f1, f0, f1
/* 8016AED4 001663F4  48 00 00 14 */	b .L_8016AEE8
.L_8016AED8:
/* 8016AED8 001663F8  C8 42 8A 90 */	lfd f2, lbl_80248290@sda21(r2)
/* 8016AEDC 001663FC  C8 02 8A 40 */	lfd f0, lbl_80248240@sda21(r2)
/* 8016AEE0 00166400  FC 21 10 28 */	fsub f1, f1, f2
/* 8016AEE4 00166404  FC 21 00 28 */	fsub f1, f1, f0
.L_8016AEE8:
/* 8016AEE8 00166408  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016AEEC 0016640C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016AEF0 00166410  7C 08 03 A6 */	mtlr r0
/* 8016AEF4 00166414  38 21 00 30 */	addi r1, r1, 0x30
/* 8016AEF8 00166418  4E 80 00 20 */	blr
