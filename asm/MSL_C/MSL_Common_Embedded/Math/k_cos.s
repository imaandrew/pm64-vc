.include "macros.inc"

.section .text, "ax"

glabel __kernel_cos
/* 8016C408 00167928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016C40C 0016792C  3C 00 3E 40 */	lis r0, 0x3e40
/* 8016C410 00167930  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016C414 00167934  80 61 00 08 */	lwz r3, 8(r1)
/* 8016C418 00167938  54 64 00 7E */	clrlwi r4, r3, 1
/* 8016C41C 0016793C  7C 04 00 00 */	cmpw r4, r0
/* 8016C420 00167940  40 80 00 20 */	bge .L_8016C440
/* 8016C424 00167944  FC 00 08 1E */	fctiwz f0, f1
/* 8016C428 00167948  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8016C42C 0016794C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8016C430 00167950  2C 00 00 00 */	cmpwi r0, 0
/* 8016C434 00167954  40 82 00 0C */	bne .L_8016C440
/* 8016C438 00167958  C8 22 8D 28 */	lfd f1, lbl_80248528@sda21(r2)
/* 8016C43C 0016795C  48 00 00 D4 */	b .L_8016C510
.L_8016C440:
/* 8016C440 00167960  FD 01 00 72 */	fmul f8, f1, f1
/* 8016C444 00167964  C8 02 8D 58 */	lfd f0, lbl_80248558@sda21(r2)
/* 8016C448 00167968  3C 60 3F D3 */	lis r3, 0x3FD33333@ha
/* 8016C44C 0016796C  C8 C2 8D 50 */	lfd f6, lbl_80248550@sda21(r2)
/* 8016C450 00167970  38 03 33 33 */	addi r0, r3, 0x3FD33333@l
/* 8016C454 00167974  C8 A2 8D 48 */	lfd f5, lbl_80248548@sda21(r2)
/* 8016C458 00167978  FC E0 02 32 */	fmul f7, f0, f8
/* 8016C45C 0016797C  C8 82 8D 40 */	lfd f4, lbl_80248540@sda21(r2)
/* 8016C460 00167980  C8 62 8D 38 */	lfd f3, lbl_80248538@sda21(r2)
/* 8016C464 00167984  7C 04 00 00 */	cmpw r4, r0
/* 8016C468 00167988  C8 02 8D 30 */	lfd f0, lbl_80248530@sda21(r2)
/* 8016C46C 0016798C  FC C6 38 2A */	fadd f6, f6, f7
/* 8016C470 00167990  FC C8 01 B2 */	fmul f6, f8, f6
/* 8016C474 00167994  FC A5 30 2A */	fadd f5, f5, f6
/* 8016C478 00167998  FC A8 01 72 */	fmul f5, f8, f5
/* 8016C47C 0016799C  FC 84 28 2A */	fadd f4, f4, f5
/* 8016C480 001679A0  FC 88 01 32 */	fmul f4, f8, f4
/* 8016C484 001679A4  FC 63 20 2A */	fadd f3, f3, f4
/* 8016C488 001679A8  FC 68 00 F2 */	fmul f3, f8, f3
/* 8016C48C 001679AC  FC 00 18 2A */	fadd f0, f0, f3
/* 8016C490 001679B0  FC 68 00 32 */	fmul f3, f8, f0
/* 8016C494 001679B4  40 80 00 28 */	bge .L_8016C4BC
/* 8016C498 001679B8  FC 68 00 F2 */	fmul f3, f8, f3
/* 8016C49C 001679BC  C8 82 8D 60 */	lfd f4, lbl_80248560@sda21(r2)
/* 8016C4A0 001679C0  C8 02 8D 28 */	lfd f0, lbl_80248528@sda21(r2)
/* 8016C4A4 001679C4  FC 21 00 B2 */	fmul f1, f1, f2
/* 8016C4A8 001679C8  FC 44 02 32 */	fmul f2, f4, f8
/* 8016C4AC 001679CC  FC 23 08 28 */	fsub f1, f3, f1
/* 8016C4B0 001679D0  FC 22 08 28 */	fsub f1, f2, f1
/* 8016C4B4 001679D4  FC 20 08 28 */	fsub f1, f0, f1
/* 8016C4B8 001679D8  48 00 00 58 */	b .L_8016C510
.L_8016C4BC:
/* 8016C4BC 001679DC  3C 00 3F E9 */	lis r0, 0x3fe9
/* 8016C4C0 001679E0  7C 04 00 00 */	cmpw r4, r0
/* 8016C4C4 001679E4  40 81 00 10 */	ble .L_8016C4D4
/* 8016C4C8 001679E8  C8 02 8D 68 */	lfd f0, lbl_80248568@sda21(r2)
/* 8016C4CC 001679EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8016C4D0 001679F0  48 00 00 14 */	b .L_8016C4E4
.L_8016C4D4:
/* 8016C4D4 001679F4  3C 64 FF E0 */	addis r3, r4, 0xffe0
/* 8016C4D8 001679F8  38 00 00 00 */	li r0, 0
/* 8016C4DC 001679FC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8016C4E0 00167A00  90 01 00 14 */	stw r0, 0x14(r1)
.L_8016C4E4:
/* 8016C4E4 00167A04  C8 02 8D 60 */	lfd f0, lbl_80248560@sda21(r2)
/* 8016C4E8 00167A08  FC 68 00 F2 */	fmul f3, f8, f3
/* 8016C4EC 00167A0C  C8 A1 00 10 */	lfd f5, 0x10(r1)
/* 8016C4F0 00167A10  FC C0 02 32 */	fmul f6, f0, f8
/* 8016C4F4 00167A14  C8 82 8D 28 */	lfd f4, lbl_80248528@sda21(r2)
/* 8016C4F8 00167A18  FC 01 00 B2 */	fmul f0, f1, f2
/* 8016C4FC 00167A1C  FC 46 28 28 */	fsub f2, f6, f5
/* 8016C500 00167A20  FC 24 28 28 */	fsub f1, f4, f5
/* 8016C504 00167A24  FC 03 00 28 */	fsub f0, f3, f0
/* 8016C508 00167A28  FC 02 00 28 */	fsub f0, f2, f0
/* 8016C50C 00167A2C  FC 21 00 28 */	fsub f1, f1, f0
.L_8016C510:
/* 8016C510 00167A30  38 21 00 20 */	addi r1, r1, 0x20
/* 8016C514 00167A34  4E 80 00 20 */	blr
