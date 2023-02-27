.include "macros.inc"

.section .text, "ax"

glabel DBInit
/* 8009E358 00099878  3C 80 80 00 */	lis r4, 0x80000040@ha
/* 8009E35C 0009987C  3C 60 80 0A */	lis r3, __DBExceptionDestination@ha
/* 8009E360 00099880  38 A4 00 40 */	addi r5, r4, 0x80000040@l
/* 8009E364 00099884  38 00 00 01 */	li r0, 1
/* 8009E368 00099888  38 63 E3 C8 */	addi r3, r3, __DBExceptionDestination@l
/* 8009E36C 0009988C  90 AD 8D B8 */	stw r5, lbl_80247238@sda21(r13)
/* 8009E370 00099890  3C 63 80 00 */	addis r3, r3, 0x8000
/* 8009E374 00099894  90 64 00 48 */	stw r3, 0x48(r4)
/* 8009E378 00099898  90 0D 8D BC */	stw r0, lbl_8024723C@sda21(r13)
/* 8009E37C 0009989C  4E 80 00 20 */	blr

glabel __DBExceptionDestinationAux
/* 8009E380 000998A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009E384 000998A4  7C 08 02 A6 */	mflr r0
/* 8009E388 000998A8  3C 60 80 19 */	lis r3, lbl_80190420@ha
/* 8009E38C 000998AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009E390 000998B0  38 63 04 20 */	addi r3, r3, lbl_80190420@l
/* 8009E394 000998B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009E398 000998B8  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 8009E39C 000998BC  3F E4 80 00 */	addis r31, r4, 0x8000
/* 8009E3A0 000998C0  4C C6 31 82 */	crclr 6
/* 8009E3A4 000998C4  4B FF 35 09 */	bl OSReport
/* 8009E3A8 000998C8  7F E3 FB 78 */	mr r3, r31
/* 8009E3AC 000998CC  4B FF 31 D5 */	bl OSDumpContext
/* 8009E3B0 000998D0  4B FF 06 15 */	bl PPCHalt
/* 8009E3B4 000998D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009E3B8 000998D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009E3BC 000998DC  7C 08 03 A6 */	mtlr r0
/* 8009E3C0 000998E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8009E3C4 000998E4  4E 80 00 20 */	blr

glabel __DBExceptionDestination
/* 8009E3C8 000998E8  7C 60 00 A6 */	mfmsr r3
/* 8009E3CC 000998EC  60 63 00 30 */	ori r3, r3, 0x30
/* 8009E3D0 000998F0  7C 60 01 24 */	mtmsr r3
/* 8009E3D4 000998F4  4B FF FF AC */	b __DBExceptionDestinationAux

glabel __DBIsExceptionMarked
/* 8009E3D8 000998F8  80 8D 8D B8 */	lwz r4, lbl_80247238@sda21(r13)
/* 8009E3DC 000998FC  38 00 00 01 */	li r0, 1
/* 8009E3E0 00099900  7C 00 18 30 */	slw r0, r0, r3
/* 8009E3E4 00099904  80 64 00 04 */	lwz r3, 4(r4)
/* 8009E3E8 00099908  7C 63 00 38 */	and r3, r3, r0
/* 8009E3EC 0009990C  4E 80 00 20 */	blr

glabel DBPrintf
/* 8009E3F0 00099910  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8009E3F4 00099914  40 86 00 24 */	bne cr1, .L_8009E418
/* 8009E3F8 00099918  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8009E3FC 0009991C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8009E400 00099920  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8009E404 00099924  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8009E408 00099928  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8009E40C 0009992C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8009E410 00099930  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8009E414 00099934  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_8009E418:
/* 8009E418 00099938  90 61 00 08 */	stw r3, 8(r1)
/* 8009E41C 0009993C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8009E420 00099940  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8009E424 00099944  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8009E428 00099948  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8009E42C 0009994C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8009E430 00099950  91 21 00 20 */	stw r9, 0x20(r1)
/* 8009E434 00099954  91 41 00 24 */	stw r10, 0x24(r1)
/* 8009E438 00099958  38 21 00 70 */	addi r1, r1, 0x70
/* 8009E43C 0009995C  4E 80 00 20 */	blr

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247238
	.skip 0x4

glabel lbl_8024723C
	.skip 0x4
