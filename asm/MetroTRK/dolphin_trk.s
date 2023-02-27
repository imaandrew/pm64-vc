.include "macros.inc"

.section .text, "ax"

glabel InitMetroTRK
/* 801733B8 0016E8D8  38 21 FF FC */	addi r1, r1, -4
/* 801733BC 0016E8DC  90 61 00 00 */	stw r3, 0(r1)
/* 801733C0 0016E8E0  3C 60 80 24 */	lis r3, lbl_80245A68@h
/* 801733C4 0016E8E4  60 63 5A 68 */	ori r3, r3, lbl_80245A68@l
/* 801733C8 0016E8E8  BC 03 00 00 */	stmw r0, 0(r3)
/* 801733CC 0016E8EC  80 81 00 00 */	lwz r4, 0(r1)
/* 801733D0 0016E8F0  38 21 00 04 */	addi r1, r1, 4
/* 801733D4 0016E8F4  90 23 00 04 */	stw r1, 4(r3)
/* 801733D8 0016E8F8  90 83 00 0C */	stw r4, 0xc(r3)
/* 801733DC 0016E8FC  7C 88 02 A6 */	mflr r4
/* 801733E0 0016E900  90 83 00 84 */	stw r4, 0x84(r3)
/* 801733E4 0016E904  90 83 00 80 */	stw r4, 0x80(r3)
/* 801733E8 0016E908  7C 80 00 26 */	mfcr r4
/* 801733EC 0016E90C  90 83 00 88 */	stw r4, 0x88(r3)
/* 801733F0 0016E910  7C 80 00 A6 */	mfmsr r4
/* 801733F4 0016E914  60 83 80 00 */	ori r3, r4, 0x8000
/* 801733F8 0016E918  68 63 80 00 */	xori r3, r3, 0x8000
/* 801733FC 0016E91C  7C 60 01 24 */	mtmsr r3
/* 80173400 0016E920  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 80173404 0016E924  4B FF FA CD */	bl TRKSaveExtended1Block
/* 80173408 0016E928  3C 60 80 24 */	lis r3, lbl_80245A68@h
/* 8017340C 0016E92C  60 63 5A 68 */	ori r3, r3, lbl_80245A68@l
/* 80173410 0016E930  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 80173414 0016E934  38 00 00 00 */	li r0, 0
/* 80173418 0016E938  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 8017341C 0016E93C  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 80173420 0016E940  3C 20 80 25 */	lis r1, _db_stack_addr@h
/* 80173424 0016E944  60 21 A6 D0 */	ori r1, r1, _db_stack_addr@l
/* 80173428 0016E948  7C A3 2B 78 */	mr r3, r5
/* 8017342C 0016E94C  48 00 05 A1 */	bl InitMetroTRKCommTable
/* 80173430 0016E950  2C 03 00 01 */	cmpwi r3, 1
/* 80173434 0016E954  40 82 00 14 */	bne .L_80173448
/* 80173438 0016E958  80 83 00 84 */	lwz r4, 0x84(r3)
/* 8017343C 0016E95C  7C 88 03 A6 */	mtlr r4
/* 80173440 0016E960  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 80173444 0016E964  4E 80 00 20 */	blr 
.L_80173448:
/* 80173448 0016E968  48 00 02 8C */	b TRK_main
/* 8017344C 0016E96C  4E 80 00 20 */	blr 

glabel IntroMetroTRK_BBA
/* 80173450 0016E970  38 21 FF FC */	addi r1, r1, -4
/* 80173454 0016E974  90 61 00 00 */	stw r3, 0(r1)
/* 80173458 0016E978  3C 60 80 24 */	lis r3, lbl_80245A68@h
/* 8017345C 0016E97C  60 63 5A 68 */	ori r3, r3, lbl_80245A68@l
/* 80173460 0016E980  BC 03 00 00 */	stmw r0, 0(r3)
/* 80173464 0016E984  80 81 00 00 */	lwz r4, 0(r1)
/* 80173468 0016E988  38 21 00 04 */	addi r1, r1, 4
/* 8017346C 0016E98C  90 23 00 04 */	stw r1, 4(r3)
/* 80173470 0016E990  90 83 00 0C */	stw r4, 0xc(r3)
/* 80173474 0016E994  7C 88 02 A6 */	mflr r4
/* 80173478 0016E998  90 83 00 84 */	stw r4, 0x84(r3)
/* 8017347C 0016E99C  90 83 00 80 */	stw r4, 0x80(r3)
/* 80173480 0016E9A0  7C 80 00 26 */	mfcr r4
/* 80173484 0016E9A4  90 83 00 88 */	stw r4, 0x88(r3)
/* 80173488 0016E9A8  7C 80 00 A6 */	mfmsr r4
/* 8017348C 0016E9AC  60 83 80 00 */	ori r3, r4, 0x8000
/* 80173490 0016E9B0  7C 60 01 24 */	mtmsr r3
/* 80173494 0016E9B4  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 80173498 0016E9B8  4B FF FA 39 */	bl TRKSaveExtended1Block
/* 8017349C 0016E9BC  3C 60 80 24 */	lis r3, lbl_80245A68@h
/* 801734A0 0016E9C0  60 63 5A 68 */	ori r3, r3, lbl_80245A68@l
/* 801734A4 0016E9C4  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 801734A8 0016E9C8  38 00 00 00 */	li r0, 0
/* 801734AC 0016E9CC  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 801734B0 0016E9D0  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 801734B4 0016E9D4  3C 20 80 25 */	lis r1, _db_stack_addr@h
/* 801734B8 0016E9D8  60 21 A6 D0 */	ori r1, r1, _db_stack_addr@l
/* 801734BC 0016E9DC  38 60 00 02 */	li r3, 2
/* 801734C0 0016E9E0  48 00 05 0D */	bl InitMetroTRKCommTable
/* 801734C4 0016E9E4  2C 03 00 01 */	cmpwi r3, 1
/* 801734C8 0016E9E8  40 82 00 14 */	bne .L_801734DC
/* 801734CC 0016E9EC  80 83 00 84 */	lwz r4, 0x84(r3)
/* 801734D0 0016E9F0  7C 88 03 A6 */	mtlr r4
/* 801734D4 0016E9F4  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 801734D8 0016E9F8  4E 80 00 20 */	blr 
.L_801734DC:
/* 801734DC 0016E9FC  48 00 01 F8 */	b TRK_main
/* 801734E0 0016EA00  4E 80 00 20 */	blr 

glabel TRKInitializeTarget
/* 801734E4 0016EA04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801734E8 0016EA08  7C 08 02 A6 */	mflr r0
/* 801734EC 0016EA0C  3C 60 80 24 */	lis r3, lbl_802459C4@ha
/* 801734F0 0016EA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 801734F4 0016EA14  38 00 00 01 */	li r0, 1
/* 801734F8 0016EA18  38 63 59 C4 */	addi r3, r3, lbl_802459C4@l
/* 801734FC 0016EA1C  90 03 00 98 */	stw r0, 0x98(r3)
/* 80173500 0016EA20  4B FF DF 8D */	bl __TRK_get_MSR
/* 80173504 0016EA24  3C A0 80 24 */	lis r5, lbl_802459C4@ha
/* 80173508 0016EA28  3C 80 80 24 */	lis r4, lbl_80245F40@ha
/* 8017350C 0016EA2C  38 A5 59 C4 */	addi r5, r5, lbl_802459C4@l
/* 80173510 0016EA30  3C 00 E0 00 */	lis r0, 0xe000
/* 80173514 0016EA34  90 65 00 8C */	stw r3, 0x8c(r5)
/* 80173518 0016EA38  38 60 00 00 */	li r3, 0
/* 8017351C 0016EA3C  90 04 5F 40 */	stw r0, lbl_80245F40@l(r4)
/* 80173520 0016EA40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80173524 0016EA44  7C 08 03 A6 */	mtlr r0
/* 80173528 0016EA48  38 21 00 10 */	addi r1, r1, 0x10
/* 8017352C 0016EA4C  4E 80 00 20 */	blr 

glabel __TRK_copy_vectors
/* 80173530 0016EA50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80173534 0016EA54  7C 08 02 A6 */	mflr r0
/* 80173538 0016EA58  3C 60 80 24 */	lis r3, lbl_80245F40@ha
/* 8017353C 0016EA5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80173540 0016EA60  38 63 5F 40 */	addi r3, r3, lbl_80245F40@l
/* 80173544 0016EA64  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80173548 0016EA68  80 63 00 00 */	lwz r3, 0(r3)
/* 8017354C 0016EA6C  28 03 00 44 */	cmplwi r3, 0x44
/* 80173550 0016EA70  41 81 00 2C */	bgt .L_8017357C
/* 80173554 0016EA74  38 03 40 00 */	addi r0, r3, 0x4000
/* 80173558 0016EA78  28 00 00 44 */	cmplwi r0, 0x44
/* 8017355C 0016EA7C  40 81 00 20 */	ble .L_8017357C
/* 80173560 0016EA80  3C 60 80 24 */	lis r3, lbl_80245A68@ha
/* 80173564 0016EA84  38 63 5A 68 */	addi r3, r3, lbl_80245A68@l
/* 80173568 0016EA88  80 03 02 38 */	lwz r0, 0x238(r3)
/* 8017356C 0016EA8C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80173570 0016EA90  41 82 00 0C */	beq .L_8017357C
/* 80173574 0016EA94  38 A0 00 44 */	li r5, 0x44
/* 80173578 0016EA98  48 00 00 0C */	b .L_80173584
.L_8017357C:
/* 8017357C 0016EA9C  3C 60 80 00 */	lis r3, 0x80000044@ha
/* 80173580 0016EAA0  38 A3 00 44 */	addi r5, r3, 0x80000044@l
.L_80173584:
/* 80173584 0016EAA4  3C 80 80 1B */	lis r4, lbl_801ADF40@ha
/* 80173588 0016EAA8  3C 60 80 24 */	lis r3, lbl_80245A68@ha
/* 8017358C 0016EAAC  83 A5 00 00 */	lwz r29, 0(r5)
/* 80173590 0016EAB0  3B E4 DF 40 */	addi r31, r4, lbl_801ADF40@l
/* 80173594 0016EAB4  3B 83 5A 68 */	addi r28, r3, lbl_80245A68@l
/* 80173598 0016EAB8  3B C0 00 00 */	li r30, 0
.L_8017359C:
/* 8017359C 0016EABC  38 00 00 01 */	li r0, 1
/* 801735A0 0016EAC0  7C 00 F0 30 */	slw r0, r0, r30
/* 801735A4 0016EAC4  7F A0 00 39 */	and. r0, r29, r0
/* 801735A8 0016EAC8  41 82 00 90 */	beq .L_80173638
/* 801735AC 0016EACC  2C 1E 00 04 */	cmpwi r30, 4
/* 801735B0 0016EAD0  41 82 00 88 */	beq .L_80173638
/* 801735B4 0016EAD4  3C 60 80 24 */	lis r3, lbl_80245F40@ha
/* 801735B8 0016EAD8  80 DF 00 00 */	lwz r6, 0(r31)
/* 801735BC 0016EADC  38 63 5F 40 */	addi r3, r3, lbl_80245F40@l
/* 801735C0 0016EAE0  80 63 00 00 */	lwz r3, 0(r3)
/* 801735C4 0016EAE4  7C 06 18 40 */	cmplw r6, r3
/* 801735C8 0016EAE8  41 80 00 24 */	blt .L_801735EC
/* 801735CC 0016EAEC  38 03 40 00 */	addi r0, r3, 0x4000
/* 801735D0 0016EAF0  7C 06 00 40 */	cmplw r6, r0
/* 801735D4 0016EAF4  40 80 00 18 */	bge .L_801735EC
/* 801735D8 0016EAF8  80 1C 02 38 */	lwz r0, 0x238(r28)
/* 801735DC 0016EAFC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 801735E0 0016EB00  41 82 00 0C */	beq .L_801735EC
/* 801735E4 0016EB04  7C DB 33 78 */	mr r27, r6
/* 801735E8 0016EB08  48 00 00 2C */	b .L_80173614
.L_801735EC:
/* 801735EC 0016EB0C  3C 00 7E 00 */	lis r0, 0x7e00
/* 801735F0 0016EB10  7C 06 00 40 */	cmplw r6, r0
/* 801735F4 0016EB14  41 80 00 18 */	blt .L_8017360C
/* 801735F8 0016EB18  3C 00 80 00 */	lis r0, 0x8000
/* 801735FC 0016EB1C  7C 06 00 40 */	cmplw r6, r0
/* 80173600 0016EB20  41 81 00 0C */	bgt .L_8017360C
/* 80173604 0016EB24  7C DB 33 78 */	mr r27, r6
/* 80173608 0016EB28  48 00 00 0C */	b .L_80173614
.L_8017360C:
/* 8017360C 0016EB2C  54 C0 00 BE */	clrlwi r0, r6, 2
/* 80173610 0016EB30  64 1B 80 00 */	oris r27, r0, 0x8000
.L_80173614:
/* 80173614 0016EB34  3C 80 80 00 */	lis r4, gTRKInterruptVectorTable@ha
/* 80173618 0016EB38  7F 63 DB 78 */	mr r3, r27
/* 8017361C 0016EB3C  38 04 44 C0 */	addi r0, r4, gTRKInterruptVectorTable@l
/* 80173620 0016EB40  38 A0 01 00 */	li r5, 0x100
/* 80173624 0016EB44  7C 80 32 14 */	add r4, r0, r6
/* 80173628 0016EB48  4B E9 0E 75 */	bl TRK_memcpy
/* 8017362C 0016EB4C  7F 63 DB 78 */	mr r3, r27
/* 80173630 0016EB50  38 80 01 00 */	li r4, 0x100
/* 80173634 0016EB54  4B FF DD 4D */	bl TRK_flush_cache
.L_80173638:
/* 80173638 0016EB58  3B DE 00 01 */	addi r30, r30, 1
/* 8017363C 0016EB5C  3B FF 00 04 */	addi r31, r31, 4
/* 80173640 0016EB60  2C 1E 00 0E */	cmpwi r30, 0xe
/* 80173644 0016EB64  40 81 FF 58 */	ble .L_8017359C
/* 80173648 0016EB68  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8017364C 0016EB6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80173650 0016EB70  7C 08 03 A6 */	mtlr r0
/* 80173654 0016EB74  38 21 00 20 */	addi r1, r1, 0x20
/* 80173658 0016EB78  4E 80 00 20 */	blr 

glabel TRKTargetTranslate
/* 8017365C 0016EB7C  3C 80 80 24 */	lis r4, lbl_80245F40@ha
/* 80173660 0016EB80  38 84 5F 40 */	addi r4, r4, lbl_80245F40@l
/* 80173664 0016EB84  80 84 00 00 */	lwz r4, 0(r4)
/* 80173668 0016EB88  7C 03 20 40 */	cmplw r3, r4
/* 8017366C 0016EB8C  41 80 00 24 */	blt .L_80173690
/* 80173670 0016EB90  38 04 40 00 */	addi r0, r4, 0x4000
/* 80173674 0016EB94  7C 03 00 40 */	cmplw r3, r0
/* 80173678 0016EB98  40 80 00 18 */	bge .L_80173690
/* 8017367C 0016EB9C  3C 80 80 24 */	lis r4, lbl_80245A68@ha
/* 80173680 0016EBA0  38 84 5A 68 */	addi r4, r4, lbl_80245A68@l
/* 80173684 0016EBA4  80 04 02 38 */	lwz r0, 0x238(r4)
/* 80173688 0016EBA8  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8017368C 0016EBAC  4C 82 00 20 */	bnelr 
.L_80173690:
/* 80173690 0016EBB0  3C 00 7E 00 */	lis r0, 0x7e00
/* 80173694 0016EBB4  7C 03 00 40 */	cmplw r3, r0
/* 80173698 0016EBB8  41 80 00 10 */	blt .L_801736A8
/* 8017369C 0016EBBC  3C 00 80 00 */	lis r0, 0x8000
/* 801736A0 0016EBC0  7C 03 00 40 */	cmplw r3, r0
/* 801736A4 0016EBC4  4C 81 00 20 */	blelr 
.L_801736A8:
/* 801736A8 0016EBC8  54 60 00 BE */	clrlwi r0, r3, 2
/* 801736AC 0016EBCC  64 03 80 00 */	oris r3, r0, 0x8000
/* 801736B0 0016EBD0  4E 80 00 20 */	blr 

glabel EnableMetroTRKInterrupts
/* 801736B4 0016EBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801736B8 0016EBD8  7C 08 02 A6 */	mflr r0
/* 801736BC 0016EBDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801736C0 0016EBE0  48 00 02 75 */	bl EnableEXI2Interrupts
/* 801736C4 0016EBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801736C8 0016EBE8  7C 08 03 A6 */	mtlr r0
/* 801736CC 0016EBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 801736D0 0016EBF0  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80245F40
	.skip 0x8
