.include "macros.inc"

.section .text, "ax"

glabel __ct__Q36nw4hbm3lyt5GroupFPCQ46nw4hbm3lyt3res5GroupPQ36nw4hbm3lyt4Pane
/* 8011A3E8 00115908  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011A3EC 0011590C  7C 08 02 A6 */	mflr r0
/* 8011A3F0 00115910  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011A3F4 00115914  39 61 00 40 */	addi r11, r1, 0x40
/* 8011A3F8 00115918  48 04 25 31 */	bl _savegpr_20
/* 8011A3FC 0011591C  3B 60 00 00 */	li r27, 0
/* 8011A400 00115920  3C C0 80 1A */	lis r6, lbl_801A29F8@ha
/* 8011A404 00115924  93 63 00 10 */	stw r27, 0x10(r3)
/* 8011A408 00115928  38 E3 00 10 */	addi r7, r3, 0x10
/* 8011A40C 0011592C  38 C6 29 F8 */	addi r6, r6, lbl_801A29F8@l
/* 8011A410 00115930  7C 95 23 78 */	mr r21, r4
/* 8011A414 00115934  93 63 00 14 */	stw r27, 0x14(r3)
/* 8011A418 00115938  7C B6 2B 78 */	mr r22, r5
/* 8011A41C 0011593C  7C 74 1B 78 */	mr r20, r3
/* 8011A420 00115940  38 A0 00 10 */	li r5, 0x10
/* 8011A424 00115944  90 C3 00 00 */	stw r6, 0(r3)
/* 8011A428 00115948  38 84 00 08 */	addi r4, r4, 8
/* 8011A42C 0011594C  93 63 00 04 */	stw r27, 4(r3)
/* 8011A430 00115950  93 63 00 08 */	stw r27, 8(r3)
/* 8011A434 00115954  93 63 00 0C */	stw r27, 0xc(r3)
/* 8011A438 00115958  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8011A43C 0011595C  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8011A440 00115960  9B 63 00 28 */	stb r27, 0x28(r3)
/* 8011A444 00115964  38 63 00 18 */	addi r3, r3, 0x18
/* 8011A448 00115968  4B EE 9E F1 */	bl memcpy
/* 8011A44C 0011596C  3B 15 00 1C */	addi r24, r21, 0x1c
/* 8011A450 00115970  3A E0 00 00 */	li r23, 0
/* 8011A454 00115974  3B 20 00 00 */	li r25, 0
/* 8011A458 00115978  3F 80 80 23 */	lis r28, lbl_80229138@ha
/* 8011A45C 0011597C  3F C0 80 1A */	lis r30, lbl_801A2AB8@ha
/* 8011A460 00115980  3F E0 80 1A */	lis r31, lbl_801A2A94@ha
/* 8011A464 00115984  48 00 00 90 */	b .L_8011A4F4
.L_8011A468:
/* 8011A468 00115988  81 96 00 00 */	lwz r12, 0(r22)
/* 8011A46C 0011598C  7E C3 B3 78 */	mr r3, r22
/* 8011A470 00115990  7C 98 CA 14 */	add r4, r24, r25
/* 8011A474 00115994  38 A0 00 01 */	li r5, 1
/* 8011A478 00115998  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8011A47C 0011599C  7D 89 03 A6 */	mtctr r12
/* 8011A480 001159A0  4E 80 04 21 */	bctrl
/* 8011A484 001159A4  2C 03 00 00 */	cmpwi r3, 0
/* 8011A488 001159A8  7C 7D 1B 78 */	mr r29, r3
/* 8011A48C 001159AC  41 82 00 60 */	beq .L_8011A4EC
/* 8011A490 001159B0  80 7C 91 38 */	lwz r3, lbl_80229138@l(r28)
/* 8011A494 001159B4  38 80 00 0C */	li r4, 0xc
/* 8011A498 001159B8  4B F9 DA 41 */	bl MEMAllocFromAllocator
/* 8011A49C 001159BC  2C 03 00 00 */	cmpwi r3, 0
/* 8011A4A0 001159C0  41 82 00 4C */	beq .L_8011A4EC
/* 8011A4A4 001159C4  7C 7A 1B 78 */	mr r26, r3
/* 8011A4A8 001159C8  41 82 00 0C */	beq .L_8011A4B4
/* 8011A4AC 001159CC  93 63 00 00 */	stw r27, 0(r3)
/* 8011A4B0 001159D0  93 63 00 04 */	stw r27, 4(r3)
.L_8011A4B4:
/* 8011A4B4 001159D4  2C 03 00 00 */	cmpwi r3, 0
/* 8011A4B8 001159D8  93 A3 00 08 */	stw r29, 8(r3)
/* 8011A4BC 001159DC  3B B4 00 10 */	addi r29, r20, 0x10
/* 8011A4C0 001159E0  40 82 00 18 */	bne .L_8011A4D8
/* 8011A4C4 001159E4  38 7E 2A B8 */	addi r3, r30, lbl_801A2AB8@l
/* 8011A4C8 001159E8  38 BF 2A 94 */	addi r5, r31, lbl_801A2A94@l
/* 8011A4CC 001159EC  38 80 02 33 */	li r4, 0x233
/* 8011A4D0 001159F0  4C C6 31 82 */	crclr 6
/* 8011A4D4 001159F4  4B FF B8 ED */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A4D8:
/* 8011A4D8 001159F8  93 A1 00 08 */	stw r29, 8(r1)
/* 8011A4DC 001159FC  7F 45 D3 78 */	mr r5, r26
/* 8011A4E0 00115A00  38 74 00 0C */	addi r3, r20, 0xc
/* 8011A4E4 00115A04  38 81 00 08 */	addi r4, r1, 8
/* 8011A4E8 00115A08  48 03 1D 99 */	bl Insert__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8IteratorPQ36nw4hbm2ut12LinkListNode
.L_8011A4EC:
/* 8011A4EC 00115A0C  3B 39 00 10 */	addi r25, r25, 0x10
/* 8011A4F0 00115A10  3A F7 00 01 */	addi r23, r23, 1
.L_8011A4F4:
/* 8011A4F4 00115A14  A0 15 00 18 */	lhz r0, 0x18(r21)
/* 8011A4F8 00115A18  7C 17 00 00 */	cmpw r23, r0
/* 8011A4FC 00115A1C  41 80 FF 6C */	blt .L_8011A468
/* 8011A500 00115A20  39 61 00 40 */	addi r11, r1, 0x40
/* 8011A504 00115A24  7E 83 A3 78 */	mr r3, r20
/* 8011A508 00115A28  48 04 24 6D */	bl _restgpr_20
/* 8011A50C 00115A2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011A510 00115A30  7C 08 03 A6 */	mtlr r0
/* 8011A514 00115A34  38 21 00 40 */	addi r1, r1, 0x40
/* 8011A518 00115A38  4E 80 00 20 */	blr

glabel __dt__Q36nw4hbm3lyt5GroupFv
/* 8011A51C 00115A3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011A520 00115A40  7C 08 02 A6 */	mflr r0
/* 8011A524 00115A44  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011A528 00115A48  39 61 00 40 */	addi r11, r1, 0x40
/* 8011A52C 00115A4C  48 04 24 05 */	bl _savegpr_22
/* 8011A530 00115A50  2C 03 00 00 */	cmpwi r3, 0
/* 8011A534 00115A54  7C 76 1B 78 */	mr r22, r3
/* 8011A538 00115A58  7C 97 23 78 */	mr r23, r4
/* 8011A53C 00115A5C  41 82 00 B4 */	beq .L_8011A5F0
/* 8011A540 00115A60  3C 80 80 1A */	lis r4, lbl_801A29F8@ha
/* 8011A544 00115A64  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8011A548 00115A68  38 84 29 F8 */	addi r4, r4, lbl_801A29F8@l
/* 8011A54C 00115A6C  3B C3 00 10 */	addi r30, r3, 0x10
/* 8011A550 00115A70  90 83 00 00 */	stw r4, 0(r3)
/* 8011A554 00115A74  3F 20 80 1A */	lis r25, lbl_801A1B64@ha
/* 8011A558 00115A78  3F 40 80 1A */	lis r26, lbl_801A1B40@ha
/* 8011A55C 00115A7C  3F 60 80 1A */	lis r27, lbl_801A2AE8@ha
/* 8011A560 00115A80  3F 80 80 1A */	lis r28, lbl_801A2AC4@ha
/* 8011A564 00115A84  3F A0 80 23 */	lis r29, lbl_80229138@ha
/* 8011A568 00115A88  48 00 00 60 */	b .L_8011A5C8
.L_8011A56C:
/* 8011A56C 00115A8C  7F F8 FB 78 */	mr r24, r31
/* 8011A570 00115A90  83 FF 00 00 */	lwz r31, 0(r31)
/* 8011A574 00115A94  38 76 00 0C */	addi r3, r22, 0xc
/* 8011A578 00115A98  38 81 00 08 */	addi r4, r1, 8
/* 8011A57C 00115A9C  93 01 00 08 */	stw r24, 8(r1)
/* 8011A580 00115AA0  48 03 1A B9 */	bl Erase__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8Iterator
/* 8011A584 00115AA4  2C 18 00 00 */	cmpwi r24, 0
/* 8011A588 00115AA8  40 82 00 18 */	bne .L_8011A5A0
/* 8011A58C 00115AAC  38 79 1B 64 */	addi r3, r25, lbl_801A1B64@l
/* 8011A590 00115AB0  38 BA 1B 40 */	addi r5, r26, lbl_801A1B40@l
/* 8011A594 00115AB4  38 80 02 3D */	li r4, 0x23d
/* 8011A598 00115AB8  4C C6 31 82 */	crclr 6
/* 8011A59C 00115ABC  4B FF B8 25 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A5A0:
/* 8011A5A0 00115AC0  2C 18 00 00 */	cmpwi r24, 0
/* 8011A5A4 00115AC4  40 82 00 18 */	bne .L_8011A5BC
/* 8011A5A8 00115AC8  38 7B 2A E8 */	addi r3, r27, lbl_801A2AE8@l
/* 8011A5AC 00115ACC  38 BC 2A C4 */	addi r5, r28, lbl_801A2AC4@l
/* 8011A5B0 00115AD0  38 80 01 93 */	li r4, 0x193
/* 8011A5B4 00115AD4  4C C6 31 82 */	crclr 6
/* 8011A5B8 00115AD8  4B FF B8 09 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A5BC:
/* 8011A5BC 00115ADC  80 7D 91 38 */	lwz r3, lbl_80229138@l(r29)
/* 8011A5C0 00115AE0  7F 04 C3 78 */	mr r4, r24
/* 8011A5C4 00115AE4  4B F9 D9 25 */	bl MEMFreeToAllocator
.L_8011A5C8:
/* 8011A5C8 00115AE8  7C 1F F0 40 */	cmplw r31, r30
/* 8011A5CC 00115AEC  40 82 FF A0 */	bne .L_8011A56C
/* 8011A5D0 00115AF0  34 76 00 0C */	addic. r3, r22, 0xc
/* 8011A5D4 00115AF4  41 82 00 0C */	beq .L_8011A5E0
/* 8011A5D8 00115AF8  38 80 00 00 */	li r4, 0
/* 8011A5DC 00115AFC  48 03 19 31 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_8011A5E0:
/* 8011A5E0 00115B00  2C 17 00 00 */	cmpwi r23, 0
/* 8011A5E4 00115B04  40 81 00 0C */	ble .L_8011A5F0
/* 8011A5E8 00115B08  7E C3 B3 78 */	mr r3, r22
/* 8011A5EC 00115B0C  48 04 1C 25 */	bl operator_delete
.L_8011A5F0:
/* 8011A5F0 00115B10  39 61 00 40 */	addi r11, r1, 0x40
/* 8011A5F4 00115B14  7E C3 B3 78 */	mr r3, r22
/* 8011A5F8 00115B18  48 04 23 85 */	bl _restgpr_22
/* 8011A5FC 00115B1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011A600 00115B20  7C 08 03 A6 */	mtlr r0
/* 8011A604 00115B24  38 21 00 40 */	addi r1, r1, 0x40
/* 8011A608 00115B28  4E 80 00 20 */	blr

glabel __dt__Q36nw4hbm3lyt14GroupContainerFv
/* 8011A60C 00115B2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011A610 00115B30  7C 08 02 A6 */	mflr r0
/* 8011A614 00115B34  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011A618 00115B38  39 61 00 40 */	addi r11, r1, 0x40
/* 8011A61C 00115B3C  48 04 23 15 */	bl _savegpr_22
/* 8011A620 00115B40  2C 03 00 00 */	cmpwi r3, 0
/* 8011A624 00115B44  7C 76 1B 78 */	mr r22, r3
/* 8011A628 00115B48  7C 97 23 78 */	mr r23, r4
/* 8011A62C 00115B4C  41 82 01 08 */	beq .L_8011A734
/* 8011A630 00115B50  83 E3 00 04 */	lwz r31, 4(r3)
/* 8011A634 00115B54  3B C3 00 04 */	addi r30, r3, 4
/* 8011A638 00115B58  3F 20 80 1A */	lis r25, lbl_801A2A88@ha
/* 8011A63C 00115B5C  3F 40 80 1A */	lis r26, lbl_801A2A64@ha
/* 8011A640 00115B60  3F 60 80 1A */	lis r27, lbl_801A2A58@ha
/* 8011A644 00115B64  3F 80 80 1A */	lis r28, lbl_801A2A34@ha
/* 8011A648 00115B68  3F A0 80 23 */	lis r29, lbl_80229138@ha
/* 8011A64C 00115B6C  48 00 00 BC */	b .L_8011A708
.L_8011A650:
/* 8011A650 00115B70  7F F8 FB 78 */	mr r24, r31
/* 8011A654 00115B74  83 FF 00 00 */	lwz r31, 0(r31)
/* 8011A658 00115B78  7E C3 B3 78 */	mr r3, r22
/* 8011A65C 00115B7C  38 81 00 08 */	addi r4, r1, 8
/* 8011A660 00115B80  93 01 00 08 */	stw r24, 8(r1)
/* 8011A664 00115B84  48 03 19 D5 */	bl Erase__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8Iterator
/* 8011A668 00115B88  2C 18 00 00 */	cmpwi r24, 0
/* 8011A66C 00115B8C  40 82 00 18 */	bne .L_8011A684
/* 8011A670 00115B90  38 79 2A 88 */	addi r3, r25, lbl_801A2A88@l
/* 8011A674 00115B94  38 BA 2A 64 */	addi r5, r26, lbl_801A2A64@l
/* 8011A678 00115B98  38 80 02 3D */	li r4, 0x23d
/* 8011A67C 00115B9C  4C C6 31 82 */	crclr 6
/* 8011A680 00115BA0  4B FF B7 41 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A684:
/* 8011A684 00115BA4  88 18 00 24 */	lbz r0, 0x24(r24)
/* 8011A688 00115BA8  2C 00 00 00 */	cmpwi r0, 0
/* 8011A68C 00115BAC  40 82 00 7C */	bne .L_8011A708
/* 8011A690 00115BB0  2C 18 00 00 */	cmpwi r24, 0
/* 8011A694 00115BB4  40 82 00 18 */	bne .L_8011A6AC
/* 8011A698 00115BB8  38 79 2A 88 */	addi r3, r25, lbl_801A2A88@l
/* 8011A69C 00115BBC  38 BA 2A 64 */	addi r5, r26, lbl_801A2A64@l
/* 8011A6A0 00115BC0  38 80 02 3D */	li r4, 0x23d
/* 8011A6A4 00115BC4  4C C6 31 82 */	crclr 6
/* 8011A6A8 00115BC8  4B FF B7 19 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A6AC:
/* 8011A6AC 00115BCC  81 98 FF FC */	lwz r12, -4(r24)
/* 8011A6B0 00115BD0  38 78 FF FC */	addi r3, r24, -4
/* 8011A6B4 00115BD4  38 80 FF FF */	li r4, -1
/* 8011A6B8 00115BD8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8011A6BC 00115BDC  7D 89 03 A6 */	mtctr r12
/* 8011A6C0 00115BE0  4E 80 04 21 */	bctrl
/* 8011A6C4 00115BE4  2C 18 00 00 */	cmpwi r24, 0
/* 8011A6C8 00115BE8  40 82 00 18 */	bne .L_8011A6E0
/* 8011A6CC 00115BEC  38 79 2A 88 */	addi r3, r25, lbl_801A2A88@l
/* 8011A6D0 00115BF0  38 BA 2A 64 */	addi r5, r26, lbl_801A2A64@l
/* 8011A6D4 00115BF4  38 80 02 3D */	li r4, 0x23d
/* 8011A6D8 00115BF8  4C C6 31 82 */	crclr 6
/* 8011A6DC 00115BFC  4B FF B6 E5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A6E0:
/* 8011A6E0 00115C00  37 18 FF FC */	addic. r24, r24, -4
/* 8011A6E4 00115C04  40 82 00 18 */	bne .L_8011A6FC
/* 8011A6E8 00115C08  38 7B 2A 58 */	addi r3, r27, lbl_801A2A58@l
/* 8011A6EC 00115C0C  38 BC 2A 34 */	addi r5, r28, lbl_801A2A34@l
/* 8011A6F0 00115C10  38 80 01 93 */	li r4, 0x193
/* 8011A6F4 00115C14  4C C6 31 82 */	crclr 6
/* 8011A6F8 00115C18  4B FF B6 C9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A6FC:
/* 8011A6FC 00115C1C  80 7D 91 38 */	lwz r3, lbl_80229138@l(r29)
/* 8011A700 00115C20  7F 04 C3 78 */	mr r4, r24
/* 8011A704 00115C24  4B F9 D7 E5 */	bl MEMFreeToAllocator
.L_8011A708:
/* 8011A708 00115C28  7C 1F F0 40 */	cmplw r31, r30
/* 8011A70C 00115C2C  40 82 FF 44 */	bne .L_8011A650
/* 8011A710 00115C30  2C 16 00 00 */	cmpwi r22, 0
/* 8011A714 00115C34  41 82 00 10 */	beq .L_8011A724
/* 8011A718 00115C38  7E C3 B3 78 */	mr r3, r22
/* 8011A71C 00115C3C  38 80 00 00 */	li r4, 0
/* 8011A720 00115C40  48 03 17 ED */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_8011A724:
/* 8011A724 00115C44  2C 17 00 00 */	cmpwi r23, 0
/* 8011A728 00115C48  40 81 00 0C */	ble .L_8011A734
/* 8011A72C 00115C4C  7E C3 B3 78 */	mr r3, r22
/* 8011A730 00115C50  48 04 1A E1 */	bl operator_delete
.L_8011A734:
/* 8011A734 00115C54  39 61 00 40 */	addi r11, r1, 0x40
/* 8011A738 00115C58  7E C3 B3 78 */	mr r3, r22
/* 8011A73C 00115C5C  48 04 22 41 */	bl _restgpr_22
/* 8011A740 00115C60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011A744 00115C64  7C 08 03 A6 */	mtlr r0
/* 8011A748 00115C68  38 21 00 40 */	addi r1, r1, 0x40
/* 8011A74C 00115C6C  4E 80 00 20 */	blr

glabel AppendGroup__Q36nw4hbm3lyt14GroupContainerFPQ36nw4hbm3lyt5Group
/* 8011A750 00115C70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A754 00115C74  7C 08 02 A6 */	mflr r0
/* 8011A758 00115C78  2C 04 00 00 */	cmpwi r4, 0
/* 8011A75C 00115C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A760 00115C80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011A764 00115C84  3B E3 00 04 */	addi r31, r3, 4
/* 8011A768 00115C88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011A76C 00115C8C  7C 9E 23 78 */	mr r30, r4
/* 8011A770 00115C90  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8011A774 00115C94  7C 7D 1B 78 */	mr r29, r3
/* 8011A778 00115C98  40 82 00 20 */	bne .L_8011A798
/* 8011A77C 00115C9C  3C 60 80 1A */	lis r3, lbl_801A2A28@ha
/* 8011A780 00115CA0  3C A0 80 1A */	lis r5, lbl_801A2A04@ha
/* 8011A784 00115CA4  38 63 2A 28 */	addi r3, r3, lbl_801A2A28@l
/* 8011A788 00115CA8  38 80 02 33 */	li r4, 0x233
/* 8011A78C 00115CAC  38 A5 2A 04 */	addi r5, r5, lbl_801A2A04@l
/* 8011A790 00115CB0  4C C6 31 82 */	crclr 6
/* 8011A794 00115CB4  4B FF B6 2D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A798:
/* 8011A798 00115CB8  93 E1 00 08 */	stw r31, 8(r1)
/* 8011A79C 00115CBC  7F A3 EB 78 */	mr r3, r29
/* 8011A7A0 00115CC0  38 81 00 08 */	addi r4, r1, 8
/* 8011A7A4 00115CC4  38 BE 00 04 */	addi r5, r30, 4
/* 8011A7A8 00115CC8  48 03 1A D9 */	bl Insert__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8IteratorPQ36nw4hbm2ut12LinkListNode
/* 8011A7AC 00115CCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A7B0 00115CD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011A7B4 00115CD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011A7B8 00115CD8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8011A7BC 00115CDC  7C 08 03 A6 */	mtlr r0
/* 8011A7C0 00115CE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A7C4 00115CE4  4E 80 00 20 */	blr

glabel FindGroupByName__Q36nw4hbm3lyt14GroupContainerFPCc
/* 8011A7C8 00115CE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A7CC 00115CEC  7C 08 02 A6 */	mflr r0
/* 8011A7D0 00115CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A7D4 00115CF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8011A7D8 00115CF8  48 04 21 6D */	bl _savegpr_27
/* 8011A7DC 00115CFC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8011A7E0 00115D00  7C 9B 23 78 */	mr r27, r4
/* 8011A7E4 00115D04  3B C3 00 04 */	addi r30, r3, 4
/* 8011A7E8 00115D08  3F 80 80 1A */	lis r28, lbl_801A2A88@ha
/* 8011A7EC 00115D0C  3F A0 80 1A */	lis r29, lbl_801A2A64@ha
/* 8011A7F0 00115D10  48 00 00 88 */	b .L_8011A878
.L_8011A7F4:
/* 8011A7F4 00115D14  2C 1F 00 00 */	cmpwi r31, 0
/* 8011A7F8 00115D18  40 82 00 18 */	bne .L_8011A810
/* 8011A7FC 00115D1C  38 7C 2A 88 */	addi r3, r28, lbl_801A2A88@l
/* 8011A800 00115D20  38 BD 2A 64 */	addi r5, r29, lbl_801A2A64@l
/* 8011A804 00115D24  38 80 02 3D */	li r4, 0x23d
/* 8011A808 00115D28  4C C6 31 82 */	crclr 6
/* 8011A80C 00115D2C  4B FF B5 B5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A810:
/* 8011A810 00115D30  7F 64 DB 78 */	mr r4, r27
/* 8011A814 00115D34  38 7F 00 14 */	addi r3, r31, 0x14
/* 8011A818 00115D38  4B FF EC 79 */	bl EqualsPaneName__Q36nw4hbm3lyt6detailFPCcPCc
/* 8011A81C 00115D3C  2C 03 00 00 */	cmpwi r3, 0
/* 8011A820 00115D40  41 82 00 54 */	beq .L_8011A874
/* 8011A824 00115D44  2C 1F 00 00 */	cmpwi r31, 0
/* 8011A828 00115D48  40 82 00 20 */	bne .L_8011A848
/* 8011A82C 00115D4C  3C 60 80 1A */	lis r3, lbl_801A2A88@ha
/* 8011A830 00115D50  3C A0 80 1A */	lis r5, lbl_801A2A64@ha
/* 8011A834 00115D54  38 63 2A 88 */	addi r3, r3, lbl_801A2A88@l
/* 8011A838 00115D58  38 80 02 3D */	li r4, 0x23d
/* 8011A83C 00115D5C  38 A5 2A 64 */	addi r5, r5, lbl_801A2A64@l
/* 8011A840 00115D60  4C C6 31 82 */	crclr 6
/* 8011A844 00115D64  4B FF B5 7D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A848:
/* 8011A848 00115D68  37 9F FF FC */	addic. r28, r31, -4
/* 8011A84C 00115D6C  40 82 00 20 */	bne .L_8011A86C
/* 8011A850 00115D70  3C 60 80 1A */	lis r3, lbl_801A2A58@ha
/* 8011A854 00115D74  3C A0 80 1A */	lis r5, lbl_801A2A34@ha
/* 8011A858 00115D78  38 63 2A 58 */	addi r3, r3, lbl_801A2A58@l
/* 8011A85C 00115D7C  38 80 01 93 */	li r4, 0x193
/* 8011A860 00115D80  38 A5 2A 34 */	addi r5, r5, lbl_801A2A34@l
/* 8011A864 00115D84  4C C6 31 82 */	crclr 6
/* 8011A868 00115D88  4B FF B5 59 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8011A86C:
/* 8011A86C 00115D8C  7F 83 E3 78 */	mr r3, r28
/* 8011A870 00115D90  48 00 00 14 */	b .L_8011A884
.L_8011A874:
/* 8011A874 00115D94  83 FF 00 00 */	lwz r31, 0(r31)
.L_8011A878:
/* 8011A878 00115D98  7C 1F F0 40 */	cmplw r31, r30
/* 8011A87C 00115D9C  40 82 FF 78 */	bne .L_8011A7F4
/* 8011A880 00115DA0  38 60 00 00 */	li r3, 0
.L_8011A884:
/* 8011A884 00115DA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8011A888 00115DA8  48 04 21 09 */	bl _restgpr_27
/* 8011A88C 00115DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011A890 00115DB0  7C 08 03 A6 */	mtlr r0
/* 8011A894 00115DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8011A898 00115DB8  4E 80 00 20 */	blr

