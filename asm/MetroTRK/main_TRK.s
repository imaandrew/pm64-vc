.include "macros.inc"

.section .text, "ax"

glabel TRK_main
/* 801736D4 0016EBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801736D8 0016EBF8  7C 08 02 A6 */	mflr r0
/* 801736DC 0016EBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801736E0 0016EC00  4B FF B7 41 */	bl TRKInitializeNub
/* 801736E4 0016EC04  3C 80 80 24 */	lis r4, lbl_80245F48@ha
/* 801736E8 0016EC08  2C 03 00 00 */	cmpwi r3, 0
/* 801736EC 0016EC0C  90 64 5F 48 */	stw r3, lbl_80245F48@l(r4)
/* 801736F0 0016EC10  40 82 00 0C */	bne lbl_801736FC
/* 801736F4 0016EC14  4B FF B6 E1 */	bl TRKNubWelcome
/* 801736F8 0016EC18  4B FF B3 BD */	bl TRKNubMainLoop
lbl_801736FC:
/* 801736FC 0016EC1C  4B FF B7 01 */	bl TRKTerminateNub
/* 80173700 0016EC20  3C 80 80 24 */	lis r4, lbl_80245F48@ha
/* 80173704 0016EC24  90 64 5F 48 */	stw r3, lbl_80245F48@l(r4)
/* 80173708 0016EC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017370C 0016EC2C  7C 08 03 A6 */	mtlr r0
/* 80173710 0016EC30  38 21 00 10 */	addi r1, r1, 0x10
/* 80173714 0016EC34  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80245F48
	.skip 0x8