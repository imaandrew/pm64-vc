.include "macros.inc"

.section .text, "ax"

glabel floor
/* 8016E3BC 001698DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016E3C0 001698E0  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016E3C4 001698E4  80 A1 00 08 */	lwz r5, 8(r1)
/* 8016E3C8 001698E8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8016E3CC 001698EC  54 A3 65 7E */	rlwinm r3, r5, 0xc, 0x15, 0x1f
/* 8016E3D0 001698F0  38 E3 FC 01 */	addi r7, r3, -1023
/* 8016E3D4 001698F4  2C 87 00 14 */	cmpwi cr1, r7, 0x14
/* 8016E3D8 001698F8  40 84 00 98 */	bge cr1, .L_8016E470
/* 8016E3DC 001698FC  2C 07 00 00 */	cmpwi r7, 0
/* 8016E3E0 00169900  40 80 00 44 */	bge .L_8016E424
/* 8016E3E4 00169904  C8 42 8E 60 */	lfd f2, lbl_80248660@sda21(r2)
/* 8016E3E8 00169908  C8 02 8E 68 */	lfd f0, lbl_80248668@sda21(r2)
/* 8016E3EC 0016990C  FC 22 08 2A */	fadd f1, f2, f1
/* 8016E3F0 00169910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016E3F4 00169914  40 81 00 F8 */	ble .L_8016E4EC
/* 8016E3F8 00169918  2C 05 00 00 */	cmpwi r5, 0
/* 8016E3FC 0016991C  41 80 00 10 */	blt .L_8016E40C
/* 8016E400 00169920  38 C0 00 00 */	li r6, 0
/* 8016E404 00169924  38 A0 00 00 */	li r5, 0
/* 8016E408 00169928  48 00 00 E4 */	b .L_8016E4EC
.L_8016E40C:
/* 8016E40C 0016992C  54 A0 00 7E */	clrlwi r0, r5, 1
/* 8016E410 00169930  7C 00 33 79 */	or. r0, r0, r6
/* 8016E414 00169934  41 82 00 D8 */	beq .L_8016E4EC
/* 8016E418 00169938  3C A0 BF F0 */	lis r5, 0xbff0
/* 8016E41C 0016993C  38 C0 00 00 */	li r6, 0
/* 8016E420 00169940  48 00 00 CC */	b .L_8016E4EC
.L_8016E424:
/* 8016E424 00169944  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 8016E428 00169948  38 03 FF FF */	addi r0, r3, 0x000FFFFF@l
/* 8016E42C 0016994C  7C 04 3E 30 */	sraw r4, r0, r7
/* 8016E430 00169950  7C A0 20 38 */	and r0, r5, r4
/* 8016E434 00169954  7C C0 03 79 */	or. r0, r6, r0
/* 8016E438 00169958  40 82 00 08 */	bne .L_8016E440
/* 8016E43C 0016995C  48 00 00 BC */	b .L_8016E4F8
.L_8016E440:
/* 8016E440 00169960  C8 42 8E 60 */	lfd f2, lbl_80248660@sda21(r2)
/* 8016E444 00169964  C8 02 8E 68 */	lfd f0, lbl_80248668@sda21(r2)
/* 8016E448 00169968  FC 22 08 2A */	fadd f1, f2, f1
/* 8016E44C 0016996C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016E450 00169970  40 81 00 9C */	ble .L_8016E4EC
/* 8016E454 00169974  2C 05 00 00 */	cmpwi r5, 0
/* 8016E458 00169978  40 80 00 0C */	bge .L_8016E464
/* 8016E45C 0016997C  7C 60 3E 30 */	sraw r0, r3, r7
/* 8016E460 00169980  7C A5 02 14 */	add r5, r5, r0
.L_8016E464:
/* 8016E464 00169984  7C A5 20 78 */	andc r5, r5, r4
/* 8016E468 00169988  38 C0 00 00 */	li r6, 0
/* 8016E46C 0016998C  48 00 00 80 */	b .L_8016E4EC
.L_8016E470:
/* 8016E470 00169990  2C 07 00 33 */	cmpwi r7, 0x33
/* 8016E474 00169994  40 81 00 14 */	ble .L_8016E488
/* 8016E478 00169998  2C 07 04 00 */	cmpwi r7, 0x400
/* 8016E47C 0016999C  40 82 00 7C */	bne .L_8016E4F8
/* 8016E480 001699A0  FC 21 08 2A */	fadd f1, f1, f1
/* 8016E484 001699A4  48 00 00 74 */	b .L_8016E4F8
.L_8016E488:
/* 8016E488 001699A8  38 07 FF EC */	addi r0, r7, -20
/* 8016E48C 001699AC  38 60 FF FF */	li r3, -1
/* 8016E490 001699B0  7C 64 04 30 */	srw r4, r3, r0
/* 8016E494 001699B4  7C C0 20 39 */	and. r0, r6, r4
/* 8016E498 001699B8  40 82 00 08 */	bne .L_8016E4A0
/* 8016E49C 001699BC  48 00 00 5C */	b .L_8016E4F8
.L_8016E4A0:
/* 8016E4A0 001699C0  C8 42 8E 60 */	lfd f2, lbl_80248660@sda21(r2)
/* 8016E4A4 001699C4  C8 02 8E 68 */	lfd f0, lbl_80248668@sda21(r2)
/* 8016E4A8 001699C8  FC 22 08 2A */	fadd f1, f2, f1
/* 8016E4AC 001699CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016E4B0 001699D0  40 81 00 3C */	ble .L_8016E4EC
/* 8016E4B4 001699D4  2C 05 00 00 */	cmpwi r5, 0
/* 8016E4B8 001699D8  40 80 00 30 */	bge .L_8016E4E8
/* 8016E4BC 001699DC  40 86 00 0C */	bne cr1, .L_8016E4C8
/* 8016E4C0 001699E0  38 A5 00 01 */	addi r5, r5, 1
/* 8016E4C4 001699E4  48 00 00 24 */	b .L_8016E4E8
.L_8016E4C8:
/* 8016E4C8 001699E8  20 07 00 34 */	subfic r0, r7, 0x34
/* 8016E4CC 001699EC  38 60 00 01 */	li r3, 1
/* 8016E4D0 001699F0  7C 60 00 30 */	slw r0, r3, r0
/* 8016E4D4 001699F4  7C 06 02 14 */	add r0, r6, r0
/* 8016E4D8 001699F8  7C 00 30 40 */	cmplw r0, r6
/* 8016E4DC 001699FC  40 80 00 08 */	bge .L_8016E4E4
/* 8016E4E0 00169A00  38 A5 00 01 */	addi r5, r5, 1
.L_8016E4E4:
/* 8016E4E4 00169A04  7C 06 03 78 */	mr r6, r0
.L_8016E4E8:
/* 8016E4E8 00169A08  7C C6 20 78 */	andc r6, r6, r4
.L_8016E4EC:
/* 8016E4EC 00169A0C  90 A1 00 08 */	stw r5, 8(r1)
/* 8016E4F0 00169A10  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8016E4F4 00169A14  C8 21 00 08 */	lfd f1, 8(r1)
.L_8016E4F8:
/* 8016E4F8 00169A18  38 21 00 10 */	addi r1, r1, 0x10
/* 8016E4FC 00169A1C  4E 80 00 20 */	blr 

