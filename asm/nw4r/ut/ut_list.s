.include "macros.inc"

.section .text, "ax"

glabel List_Init__Q26nw4hbm2utFPQ36nw4hbm2ut4ListUs
/* 8014C478 00147998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C47C 0014799C  7C 08 02 A6 */	mflr r0
/* 8014C480 001479A0  2C 03 00 00 */	cmpwi r3, 0
/* 8014C484 001479A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C488 001479A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C48C 001479AC  7C 9F 23 78 */	mr r31, r4
/* 8014C490 001479B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8014C494 001479B4  7C 7E 1B 78 */	mr r30, r3
/* 8014C498 001479B8  40 82 00 20 */	bne .L_8014C4B8
/* 8014C49C 001479BC  3C 60 80 1B */	lis r3, lbl_801ABE90@ha
/* 8014C4A0 001479C0  3C A0 80 1B */	lis r5, lbl_801ABE9C@ha
/* 8014C4A4 001479C4  38 63 BE 90 */	addi r3, r3, lbl_801ABE90@l
/* 8014C4A8 001479C8  38 80 00 29 */	li r4, 0x29
/* 8014C4AC 001479CC  38 A5 BE 9C */	addi r5, r5, lbl_801ABE9C@l
/* 8014C4B0 001479D0  4C C6 31 82 */	crclr 6
/* 8014C4B4 001479D4  4B FC 99 0D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C4B8:
/* 8014C4B8 001479D8  38 00 00 00 */	li r0, 0
/* 8014C4BC 001479DC  B3 FE 00 0A */	sth r31, 0xa(r30)
/* 8014C4C0 001479E0  90 1E 00 00 */	stw r0, 0(r30)
/* 8014C4C4 001479E4  90 1E 00 04 */	stw r0, 4(r30)
/* 8014C4C8 001479E8  B0 1E 00 08 */	sth r0, 8(r30)
/* 8014C4CC 001479EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C4D0 001479F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014C4D4 001479F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C4D8 001479F8  7C 08 03 A6 */	mtlr r0
/* 8014C4DC 001479FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C4E0 00147A00  4E 80 00 20 */	blr

glabel List_Append__Q26nw4hbm2utFPQ36nw4hbm2ut4ListPv
/* 8014C4E4 00147A04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C4E8 00147A08  7C 08 02 A6 */	mflr r0
/* 8014C4EC 00147A0C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C4F0 00147A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C4F4 00147A14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014C4F8 00147A18  7C 7F 1B 78 */	mr r31, r3
/* 8014C4FC 00147A1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014C500 00147A20  3F C0 80 1B */	lis r30, lbl_801ABE90@ha
/* 8014C504 00147A24  3B DE BE 90 */	addi r30, r30, lbl_801ABE90@l
/* 8014C508 00147A28  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014C50C 00147A2C  7C 9D 23 78 */	mr r29, r4
/* 8014C510 00147A30  40 82 00 18 */	bne .L_8014C528
/* 8014C514 00147A34  38 7E 00 00 */	addi r3, r30, 0
/* 8014C518 00147A38  38 BE 00 0C */	addi r5, r30, 0xc
/* 8014C51C 00147A3C  38 80 00 59 */	li r4, 0x59
/* 8014C520 00147A40  4C C6 31 82 */	crclr 6
/* 8014C524 00147A44  4B FC 98 9D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C528:
/* 8014C528 00147A48  2C 1D 00 00 */	cmpwi r29, 0
/* 8014C52C 00147A4C  40 82 00 18 */	bne .L_8014C544
/* 8014C530 00147A50  38 7E 00 00 */	addi r3, r30, 0
/* 8014C534 00147A54  38 BE 00 34 */	addi r5, r30, 0x34
/* 8014C538 00147A58  38 80 00 5A */	li r4, 0x5a
/* 8014C53C 00147A5C  4C C6 31 82 */	crclr 6
/* 8014C540 00147A60  4B FC 98 81 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C544:
/* 8014C544 00147A64  80 1F 00 00 */	lwz r0, 0(r31)
/* 8014C548 00147A68  2C 00 00 00 */	cmpwi r0, 0
/* 8014C54C 00147A6C  40 82 00 68 */	bne .L_8014C5B4
/* 8014C550 00147A70  2C 1F 00 00 */	cmpwi r31, 0
/* 8014C554 00147A74  40 82 00 18 */	bne .L_8014C56C
/* 8014C558 00147A78  38 7E 00 00 */	addi r3, r30, 0
/* 8014C55C 00147A7C  38 BE 00 0C */	addi r5, r30, 0xc
/* 8014C560 00147A80  38 80 00 40 */	li r4, 0x40
/* 8014C564 00147A84  4C C6 31 82 */	crclr 6
/* 8014C568 00147A88  4B FC 98 59 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C56C:
/* 8014C56C 00147A8C  2C 1D 00 00 */	cmpwi r29, 0
/* 8014C570 00147A90  40 82 00 18 */	bne .L_8014C588
/* 8014C574 00147A94  38 7E 00 00 */	addi r3, r30, 0
/* 8014C578 00147A98  38 BE 00 34 */	addi r5, r30, 0x34
/* 8014C57C 00147A9C  38 80 00 41 */	li r4, 0x41
/* 8014C580 00147AA0  4C C6 31 82 */	crclr 6
/* 8014C584 00147AA4  4B FC 98 3D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C588:
/* 8014C588 00147AA8  A0 7F 00 0A */	lhz r3, 0xa(r31)
/* 8014C58C 00147AAC  38 00 00 00 */	li r0, 0
/* 8014C590 00147AB0  7C 7D 1A 14 */	add r3, r29, r3
/* 8014C594 00147AB4  90 03 00 04 */	stw r0, 4(r3)
/* 8014C598 00147AB8  90 03 00 00 */	stw r0, 0(r3)
/* 8014C59C 00147ABC  A0 7F 00 08 */	lhz r3, 8(r31)
/* 8014C5A0 00147AC0  93 BF 00 00 */	stw r29, 0(r31)
/* 8014C5A4 00147AC4  38 03 00 01 */	addi r0, r3, 1
/* 8014C5A8 00147AC8  93 BF 00 04 */	stw r29, 4(r31)
/* 8014C5AC 00147ACC  B0 1F 00 08 */	sth r0, 8(r31)
/* 8014C5B0 00147AD0  48 00 00 38 */	b .L_8014C5E8
.L_8014C5B4:
/* 8014C5B4 00147AD4  A0 9F 00 0A */	lhz r4, 0xa(r31)
/* 8014C5B8 00147AD8  38 00 00 00 */	li r0, 0
/* 8014C5BC 00147ADC  80 7F 00 04 */	lwz r3, 4(r31)
/* 8014C5C0 00147AE0  7C 64 E9 6E */	stwux r3, r4, r29
/* 8014C5C4 00147AE4  90 04 00 04 */	stw r0, 4(r4)
/* 8014C5C8 00147AE8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8014C5CC 00147AEC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8014C5D0 00147AF0  7C 63 02 14 */	add r3, r3, r0
/* 8014C5D4 00147AF4  93 A3 00 04 */	stw r29, 4(r3)
/* 8014C5D8 00147AF8  A0 7F 00 08 */	lhz r3, 8(r31)
/* 8014C5DC 00147AFC  93 BF 00 04 */	stw r29, 4(r31)
/* 8014C5E0 00147B00  38 03 00 01 */	addi r0, r3, 1
/* 8014C5E4 00147B04  B0 1F 00 08 */	sth r0, 8(r31)
.L_8014C5E8:
/* 8014C5E8 00147B08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C5EC 00147B0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014C5F0 00147B10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014C5F4 00147B14  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014C5F8 00147B18  7C 08 03 A6 */	mtlr r0
/* 8014C5FC 00147B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C600 00147B20  4E 80 00 20 */	blr

glabel List_Remove__Q26nw4hbm2utFPQ36nw4hbm2ut4ListPv
/* 8014C604 00147B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C608 00147B28  7C 08 02 A6 */	mflr r0
/* 8014C60C 00147B2C  2C 03 00 00 */	cmpwi r3, 0
/* 8014C610 00147B30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C614 00147B34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014C618 00147B38  3F E0 80 1B */	lis r31, lbl_801ABE90@ha
/* 8014C61C 00147B3C  3B FF BE 90 */	addi r31, r31, lbl_801ABE90@l
/* 8014C620 00147B40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014C624 00147B44  7C 9E 23 78 */	mr r30, r4
/* 8014C628 00147B48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8014C62C 00147B4C  7C 7D 1B 78 */	mr r29, r3
/* 8014C630 00147B50  40 82 00 18 */	bne .L_8014C648
/* 8014C634 00147B54  38 7F 00 00 */	addi r3, r31, 0
/* 8014C638 00147B58  38 BF 00 0C */	addi r5, r31, 0xc
/* 8014C63C 00147B5C  38 80 00 CB */	li r4, 0xcb
/* 8014C640 00147B60  4C C6 31 82 */	crclr 6
/* 8014C644 00147B64  4B FC 97 7D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C648:
/* 8014C648 00147B68  2C 1E 00 00 */	cmpwi r30, 0
/* 8014C64C 00147B6C  40 82 00 18 */	bne .L_8014C664
/* 8014C650 00147B70  38 7F 00 00 */	addi r3, r31, 0
/* 8014C654 00147B74  38 BF 00 34 */	addi r5, r31, 0x34
/* 8014C658 00147B78  38 80 00 CC */	li r4, 0xcc
/* 8014C65C 00147B7C  4C C6 31 82 */	crclr 6
/* 8014C660 00147B80  4B FC 97 61 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C664:
/* 8014C664 00147B84  A0 7D 00 0A */	lhz r3, 0xa(r29)
/* 8014C668 00147B88  7C 9E 18 2E */	lwzx r4, r30, r3
/* 8014C66C 00147B8C  7C BE 1A 14 */	add r5, r30, r3
/* 8014C670 00147B90  2C 04 00 00 */	cmpwi r4, 0
/* 8014C674 00147B94  40 82 00 10 */	bne .L_8014C684
/* 8014C678 00147B98  80 05 00 04 */	lwz r0, 4(r5)
/* 8014C67C 00147B9C  90 1D 00 00 */	stw r0, 0(r29)
/* 8014C680 00147BA0  48 00 00 10 */	b .L_8014C690
.L_8014C684:
/* 8014C684 00147BA4  80 05 00 04 */	lwz r0, 4(r5)
/* 8014C688 00147BA8  7C 64 1A 14 */	add r3, r4, r3
/* 8014C68C 00147BAC  90 03 00 04 */	stw r0, 4(r3)
.L_8014C690:
/* 8014C690 00147BB0  80 85 00 04 */	lwz r4, 4(r5)
/* 8014C694 00147BB4  2C 04 00 00 */	cmpwi r4, 0
/* 8014C698 00147BB8  40 82 00 10 */	bne .L_8014C6A8
/* 8014C69C 00147BBC  80 05 00 00 */	lwz r0, 0(r5)
/* 8014C6A0 00147BC0  90 1D 00 04 */	stw r0, 4(r29)
/* 8014C6A4 00147BC4  48 00 00 10 */	b .L_8014C6B4
.L_8014C6A8:
/* 8014C6A8 00147BC8  80 65 00 00 */	lwz r3, 0(r5)
/* 8014C6AC 00147BCC  A0 1D 00 0A */	lhz r0, 0xa(r29)
/* 8014C6B0 00147BD0  7C 64 01 2E */	stwx r3, r4, r0
.L_8014C6B4:
/* 8014C6B4 00147BD4  38 00 00 00 */	li r0, 0
/* 8014C6B8 00147BD8  90 05 00 00 */	stw r0, 0(r5)
/* 8014C6BC 00147BDC  90 05 00 04 */	stw r0, 4(r5)
/* 8014C6C0 00147BE0  A0 7D 00 08 */	lhz r3, 8(r29)
/* 8014C6C4 00147BE4  38 03 FF FF */	addi r0, r3, -1
/* 8014C6C8 00147BE8  B0 1D 00 08 */	sth r0, 8(r29)
/* 8014C6CC 00147BEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014C6D0 00147BF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014C6D4 00147BF4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8014C6D8 00147BF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C6DC 00147BFC  7C 08 03 A6 */	mtlr r0
/* 8014C6E0 00147C00  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C6E4 00147C04  4E 80 00 20 */	blr

glabel List_GetNext__Q26nw4hbm2utFPCQ36nw4hbm2ut4ListPCv
/* 8014C6E8 00147C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014C6EC 00147C0C  7C 08 02 A6 */	mflr r0
/* 8014C6F0 00147C10  2C 03 00 00 */	cmpwi r3, 0
/* 8014C6F4 00147C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014C6F8 00147C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014C6FC 00147C1C  7C 9F 23 78 */	mr r31, r4
/* 8014C700 00147C20  93 C1 00 08 */	stw r30, 8(r1)
/* 8014C704 00147C24  7C 7E 1B 78 */	mr r30, r3
/* 8014C708 00147C28  40 82 00 20 */	bne .L_8014C728
/* 8014C70C 00147C2C  3C 60 80 1B */	lis r3, lbl_801ABE90@ha
/* 8014C710 00147C30  3C A0 80 1B */	lis r5, lbl_801ABE9C@ha
/* 8014C714 00147C34  38 63 BE 90 */	addi r3, r3, lbl_801ABE90@l
/* 8014C718 00147C38  38 80 00 F5 */	li r4, 0xf5
/* 8014C71C 00147C3C  38 A5 BE 9C */	addi r5, r5, lbl_801ABE9C@l
/* 8014C720 00147C40  4C C6 31 82 */	crclr 6
/* 8014C724 00147C44  4B FC 96 9D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C728:
/* 8014C728 00147C48  2C 1F 00 00 */	cmpwi r31, 0
/* 8014C72C 00147C4C  40 82 00 0C */	bne .L_8014C738
/* 8014C730 00147C50  80 7E 00 00 */	lwz r3, 0(r30)
/* 8014C734 00147C54  48 00 00 10 */	b .L_8014C744
.L_8014C738:
/* 8014C738 00147C58  A0 1E 00 0A */	lhz r0, 0xa(r30)
/* 8014C73C 00147C5C  7C 7F 02 14 */	add r3, r31, r0
/* 8014C740 00147C60  80 63 00 04 */	lwz r3, 4(r3)
.L_8014C744:
/* 8014C744 00147C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C748 00147C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014C74C 00147C6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014C750 00147C70  7C 08 03 A6 */	mtlr r0
/* 8014C754 00147C74  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C758 00147C78  4E 80 00 20 */	blr

glabel List_GetNth__Q26nw4hbm2utFPCQ36nw4hbm2ut4ListUs
/* 8014C75C 00147C7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C760 00147C80  7C 08 02 A6 */	mflr r0
/* 8014C764 00147C84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C768 00147C88  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C76C 00147C8C  48 01 01 D5 */	bl _savegpr_26
/* 8014C770 00147C90  2C 03 00 00 */	cmpwi r3, 0
/* 8014C774 00147C94  7C 7A 1B 78 */	mr r26, r3
/* 8014C778 00147C98  7C 9B 23 78 */	mr r27, r4
/* 8014C77C 00147C9C  3B A0 00 00 */	li r29, 0
/* 8014C780 00147CA0  3B 80 00 00 */	li r28, 0
/* 8014C784 00147CA4  40 82 00 20 */	bne .L_8014C7A4
/* 8014C788 00147CA8  3C 60 80 1B */	lis r3, lbl_801ABE90@ha
/* 8014C78C 00147CAC  3C A0 80 1B */	lis r5, lbl_801ABE9C@ha
/* 8014C790 00147CB0  38 63 BE 90 */	addi r3, r3, lbl_801ABE90@l
/* 8014C794 00147CB4  38 80 01 29 */	li r4, 0x129
/* 8014C798 00147CB8  38 A5 BE 9C */	addi r5, r5, lbl_801ABE9C@l
/* 8014C79C 00147CBC  4C C6 31 82 */	crclr 6
/* 8014C7A0 00147CC0  4B FC 96 21 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C7A4:
/* 8014C7A4 00147CC4  3F C0 80 1B */	lis r30, lbl_801ABE90@ha
/* 8014C7A8 00147CC8  3F E0 80 1B */	lis r31, lbl_801ABE9C@ha
/* 8014C7AC 00147CCC  48 00 00 14 */	b .L_8014C7C0
.L_8014C7B0:
/* 8014C7B0 00147CD0  7C 1B E8 00 */	cmpw r27, r29
/* 8014C7B4 00147CD4  40 82 00 08 */	bne .L_8014C7BC
/* 8014C7B8 00147CD8  48 00 00 50 */	b .L_8014C808
.L_8014C7BC:
/* 8014C7BC 00147CDC  3B BD 00 01 */	addi r29, r29, 1
.L_8014C7C0:
/* 8014C7C0 00147CE0  2C 1A 00 00 */	cmpwi r26, 0
/* 8014C7C4 00147CE4  40 82 00 18 */	bne .L_8014C7DC
/* 8014C7C8 00147CE8  38 7E BE 90 */	addi r3, r30, lbl_801ABE90@l
/* 8014C7CC 00147CEC  38 BF BE 9C */	addi r5, r31, lbl_801ABE9C@l
/* 8014C7D0 00147CF0  38 80 00 F5 */	li r4, 0xf5
/* 8014C7D4 00147CF4  4C C6 31 82 */	crclr 6
/* 8014C7D8 00147CF8  4B FC 95 E9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C7DC:
/* 8014C7DC 00147CFC  2C 1C 00 00 */	cmpwi r28, 0
/* 8014C7E0 00147D00  40 82 00 0C */	bne .L_8014C7EC
/* 8014C7E4 00147D04  80 7A 00 00 */	lwz r3, 0(r26)
/* 8014C7E8 00147D08  48 00 00 10 */	b .L_8014C7F8
.L_8014C7EC:
/* 8014C7EC 00147D0C  A0 1A 00 0A */	lhz r0, 0xa(r26)
/* 8014C7F0 00147D10  7C 7C 02 14 */	add r3, r28, r0
/* 8014C7F4 00147D14  80 63 00 04 */	lwz r3, 4(r3)
.L_8014C7F8:
/* 8014C7F8 00147D18  2C 03 00 00 */	cmpwi r3, 0
/* 8014C7FC 00147D1C  7C 7C 1B 78 */	mr r28, r3
/* 8014C800 00147D20  40 82 FF B0 */	bne .L_8014C7B0
/* 8014C804 00147D24  38 60 00 00 */	li r3, 0
.L_8014C808:
/* 8014C808 00147D28  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C80C 00147D2C  48 01 01 81 */	bl _restgpr_26
/* 8014C810 00147D30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C814 00147D34  7C 08 03 A6 */	mtlr r0
/* 8014C818 00147D38  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C81C 00147D3C  4E 80 00 20 */	blr
