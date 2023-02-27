.include "macros.inc"

.section .text, "ax"

glabel cos
/* 8016E2E8 00169808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016E2EC 0016980C  7C 08 02 A6 */	mflr r0
/* 8016E2F0 00169810  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 8016E2F4 00169814  C8 42 8E 58 */	lfd f2, lbl_80248658@sda21(r2)
/* 8016E2F8 00169818  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016E2FC 0016981C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016E300 00169820  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 8016E304 00169824  80 61 00 08 */	lwz r3, 8(r1)
/* 8016E308 00169828  54 63 00 7E */	clrlwi r3, r3, 1
/* 8016E30C 0016982C  7C 03 00 00 */	cmpw r3, r0
/* 8016E310 00169830  41 81 00 0C */	bgt .L_8016E31C
/* 8016E314 00169834  4B FF E0 F5 */	bl __kernel_cos
/* 8016E318 00169838  48 00 00 94 */	b .L_8016E3AC
.L_8016E31C:
/* 8016E31C 0016983C  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8016E320 00169840  7C 03 00 00 */	cmpw r3, r0
/* 8016E324 00169844  41 80 00 0C */	blt .L_8016E330
/* 8016E328 00169848  FC 21 08 28 */	fsub f1, f1, f1
/* 8016E32C 0016984C  48 00 00 80 */	b .L_8016E3AC
.L_8016E330:
/* 8016E330 00169850  38 61 00 10 */	addi r3, r1, 0x10
/* 8016E334 00169854  4B FF DD 3D */	bl __ieee754_rem_pio2
/* 8016E338 00169858  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 8016E33C 0016985C  2C 00 00 01 */	cmpwi r0, 1
/* 8016E340 00169860  41 82 00 30 */	beq .L_8016E370
/* 8016E344 00169864  40 80 00 10 */	bge .L_8016E354
/* 8016E348 00169868  2C 00 00 00 */	cmpwi r0, 0
/* 8016E34C 0016986C  40 80 00 14 */	bge .L_8016E360
/* 8016E350 00169870  48 00 00 4C */	b .L_8016E39C
.L_8016E354:
/* 8016E354 00169874  2C 00 00 03 */	cmpwi r0, 3
/* 8016E358 00169878  40 80 00 44 */	bge .L_8016E39C
/* 8016E35C 0016987C  48 00 00 2C */	b .L_8016E388
.L_8016E360:
/* 8016E360 00169880  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8016E364 00169884  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8016E368 00169888  4B FF E0 A1 */	bl __kernel_cos
/* 8016E36C 0016988C  48 00 00 40 */	b .L_8016E3AC
.L_8016E370:
/* 8016E370 00169890  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8016E374 00169894  38 60 00 01 */	li r3, 1
/* 8016E378 00169898  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8016E37C 0016989C  4B FF F8 A9 */	bl __kernel_sin
/* 8016E380 001698A0  FC 20 08 50 */	fneg f1, f1
/* 8016E384 001698A4  48 00 00 28 */	b .L_8016E3AC
.L_8016E388:
/* 8016E388 001698A8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8016E38C 001698AC  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8016E390 001698B0  4B FF E0 79 */	bl __kernel_cos
/* 8016E394 001698B4  FC 20 08 50 */	fneg f1, f1
/* 8016E398 001698B8  48 00 00 14 */	b .L_8016E3AC
.L_8016E39C:
/* 8016E39C 001698BC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8016E3A0 001698C0  38 60 00 01 */	li r3, 1
/* 8016E3A4 001698C4  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8016E3A8 001698C8  4B FF F8 7D */	bl __kernel_sin
.L_8016E3AC:
/* 8016E3AC 001698CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016E3B0 001698D0  7C 08 03 A6 */	mtlr r0
/* 8016E3B4 001698D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8016E3B8 001698D8  4E 80 00 20 */	blr 

