.include "macros.inc"

.section .text, "ax"

glabel TRKLoadContext
/* 80173718 0016EC38  80 03 00 00 */	lwz r0, 0(r3)
/* 8017371C 0016EC3C  80 23 00 04 */	lwz r1, 4(r3)
/* 80173720 0016EC40  80 43 00 08 */	lwz r2, 8(r3)
/* 80173724 0016EC44  A0 A3 01 A2 */	lhz r5, 0x1a2(r3)
/* 80173728 0016EC48  54 A6 07 BD */	rlwinm. r6, r5, 0, 0x1e, 0x1e
/* 8017372C 0016EC4C  41 82 00 14 */	beq .L_80173740
/* 80173730 0016EC50  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 80173734 0016EC54  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 80173738 0016EC58  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 8017373C 0016EC5C  48 00 00 08 */	b .L_80173744
.L_80173740:
/* 80173740 0016EC60  B9 A3 00 34 */	lmw r13, 0x34(r3)
.L_80173744:
/* 80173744 0016EC64  7C 7F 1B 78 */	mr r31, r3
/* 80173748 0016EC68  7C 83 23 78 */	mr r3, r4
/* 8017374C 0016EC6C  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80173750 0016EC70  7C 8F F1 20 */	mtcrf 0xff, r4
/* 80173754 0016EC74  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80173758 0016EC78  7C 88 03 A6 */	mtlr r4
/* 8017375C 0016EC7C  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 80173760 0016EC80  7C 89 03 A6 */	mtctr r4
/* 80173764 0016EC84  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 80173768 0016EC88  7C 81 03 A6 */	mtxer r4
/* 8017376C 0016EC8C  7C 80 00 A6 */	mfmsr r4
/* 80173770 0016EC90  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 80173774 0016EC94  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 80173778 0016EC98  7C 80 01 24 */	mtmsr r4
/* 8017377C 0016EC9C  7C 51 43 A6 */	mtspr 0x111, r2
/* 80173780 0016ECA0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80173784 0016ECA4  7C 92 43 A6 */	mtspr 0x112, r4
/* 80173788 0016ECA8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8017378C 0016ECAC  7C 93 43 A6 */	mtspr 0x113, r4
/* 80173790 0016ECB0  80 5F 01 98 */	lwz r2, 0x198(r31)
/* 80173794 0016ECB4  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 80173798 0016ECB8  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 8017379C 0016ECBC  4B FF DD 3C */	b TRKInterruptHandler

glabel TRKUARTInterruptHandler
/* 801737A0 0016ECC0  4E 80 00 20 */	blr

glabel InitializeProgramEndTrap
/* 801737A4 0016ECC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801737A8 0016ECC8  7C 08 02 A6 */	mflr r0
/* 801737AC 0016ECCC  3C 80 80 09 */	lis r4, PPCHalt@ha
/* 801737B0 0016ECD0  3C 60 80 18 */	lis r3, lbl_80179628@ha
/* 801737B4 0016ECD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801737B8 0016ECD8  38 A0 00 04 */	li r5, 4
/* 801737BC 0016ECDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801737C0 0016ECE0  3B E4 E9 C4 */	addi r31, r4, PPCHalt@l
/* 801737C4 0016ECE4  38 83 96 28 */	addi r4, r3, lbl_80179628@l
/* 801737C8 0016ECE8  38 7F 00 04 */	addi r3, r31, 4
/* 801737CC 0016ECEC  4B E9 0C D1 */	bl TRK_memcpy
/* 801737D0 0016ECF0  38 7F 00 04 */	addi r3, r31, 4
/* 801737D4 0016ECF4  38 80 00 04 */	li r4, 4
/* 801737D8 0016ECF8  4B F1 D5 4D */	bl ICInvalidateRange
/* 801737DC 0016ECFC  38 7F 00 04 */	addi r3, r31, 4
/* 801737E0 0016ED00  38 80 00 04 */	li r4, 4
/* 801737E4 0016ED04  4B F1 D4 89 */	bl DCFlushRange
/* 801737E8 0016ED08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801737EC 0016ED0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801737F0 0016ED10  7C 08 03 A6 */	mtlr r0
/* 801737F4 0016ED14  38 21 00 10 */	addi r1, r1, 0x10
/* 801737F8 0016ED18  4E 80 00 20 */	blr

glabel TRK_board_display
/* 801737FC 0016ED1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173800 0016ED20  7C 08 02 A6 */	mflr r0
/* 80173804 0016ED24  3C A0 80 18 */	lis r5, lbl_8017962C@ha
/* 80173808 0016ED28  7C 64 1B 78 */	mr r4, r3
/* 8017380C 0016ED2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80173810 0016ED30  38 65 96 2C */	addi r3, r5, lbl_8017962C@l
/* 80173814 0016ED34  4C C6 31 82 */	crclr 6
/* 80173818 0016ED38  4B F1 E0 95 */	bl OSReport
/* 8017381C 0016ED3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80173820 0016ED40  7C 08 03 A6 */	mtlr r0
/* 80173824 0016ED44  38 21 00 10 */	addi r1, r1, 0x10
/* 80173828 0016ED48  4E 80 00 20 */	blr

glabel UnreserveEXI2Port
/* 8017382C 0016ED4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173830 0016ED50  7C 08 02 A6 */	mflr r0
/* 80173834 0016ED54  3C 60 80 1B */	lis r3, lbl_801ADF80@ha
/* 80173838 0016ED58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017383C 0016ED5C  38 63 DF 80 */	addi r3, r3, lbl_801ADF80@l
/* 80173840 0016ED60  81 83 00 20 */	lwz r12, 0x20(r3)
/* 80173844 0016ED64  7D 89 03 A6 */	mtctr r12
/* 80173848 0016ED68  4E 80 04 21 */	bctrl
/* 8017384C 0016ED6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80173850 0016ED70  7C 08 03 A6 */	mtlr r0
/* 80173854 0016ED74  38 21 00 10 */	addi r1, r1, 0x10
/* 80173858 0016ED78  4E 80 00 20 */	blr

glabel ReserveEXI2Port
/* 8017385C 0016ED7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173860 0016ED80  7C 08 02 A6 */	mflr r0
/* 80173864 0016ED84  3C 60 80 1B */	lis r3, lbl_801ADF80@ha
/* 80173868 0016ED88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017386C 0016ED8C  38 63 DF 80 */	addi r3, r3, lbl_801ADF80@l
/* 80173870 0016ED90  81 83 00 24 */	lwz r12, 0x24(r3)
/* 80173874 0016ED94  7D 89 03 A6 */	mtctr r12
/* 80173878 0016ED98  4E 80 04 21 */	bctrl
/* 8017387C 0016ED9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80173880 0016EDA0  7C 08 03 A6 */	mtlr r0
/* 80173884 0016EDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80173888 0016EDA8  4E 80 00 20 */	blr

glabel TRKWriteUARTN
/* 8017388C 0016EDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173890 0016EDB0  7C 08 02 A6 */	mflr r0
/* 80173894 0016EDB4  3C A0 80 1B */	lis r5, lbl_801ADF80@ha
/* 80173898 0016EDB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017389C 0016EDBC  38 A5 DF 80 */	addi r5, r5, lbl_801ADF80@l
/* 801738A0 0016EDC0  81 85 00 14 */	lwz r12, 0x14(r5)
/* 801738A4 0016EDC4  7D 89 03 A6 */	mtctr r12
/* 801738A8 0016EDC8  4E 80 04 21 */	bctrl
/* 801738AC 0016EDCC  7C 03 00 D0 */	neg r0, r3
/* 801738B0 0016EDD0  7C 00 1B 78 */	or r0, r0, r3
/* 801738B4 0016EDD4  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 801738B8 0016EDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801738BC 0016EDDC  7C 08 03 A6 */	mtlr r0
/* 801738C0 0016EDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801738C4 0016EDE4  4E 80 00 20 */	blr

glabel TRKReadUARTN
/* 801738C8 0016EDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801738CC 0016EDEC  7C 08 02 A6 */	mflr r0
/* 801738D0 0016EDF0  3C A0 80 1B */	lis r5, lbl_801ADF80@ha
/* 801738D4 0016EDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801738D8 0016EDF8  38 A5 DF 80 */	addi r5, r5, lbl_801ADF80@l
/* 801738DC 0016EDFC  81 85 00 10 */	lwz r12, 0x10(r5)
/* 801738E0 0016EE00  7D 89 03 A6 */	mtctr r12
/* 801738E4 0016EE04  4E 80 04 21 */	bctrl
/* 801738E8 0016EE08  7C 03 00 D0 */	neg r0, r3
/* 801738EC 0016EE0C  7C 00 1B 78 */	or r0, r0, r3
/* 801738F0 0016EE10  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 801738F4 0016EE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801738F8 0016EE18  7C 08 03 A6 */	mtlr r0
/* 801738FC 0016EE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80173900 0016EE20  4E 80 00 20 */	blr

glabel TRKPollUART
/* 80173904 0016EE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173908 0016EE28  7C 08 02 A6 */	mflr r0
/* 8017390C 0016EE2C  3C 60 80 1B */	lis r3, lbl_801ADF80@ha
/* 80173910 0016EE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80173914 0016EE34  38 63 DF 80 */	addi r3, r3, lbl_801ADF80@l
/* 80173918 0016EE38  81 83 00 0C */	lwz r12, 0xc(r3)
/* 8017391C 0016EE3C  7D 89 03 A6 */	mtctr r12
/* 80173920 0016EE40  4E 80 04 21 */	bctrl
/* 80173924 0016EE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80173928 0016EE48  7C 08 03 A6 */	mtlr r0
/* 8017392C 0016EE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80173930 0016EE50  4E 80 00 20 */	blr

glabel EnableEXI2Interrupts
/* 80173934 0016EE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173938 0016EE58  7C 08 02 A6 */	mflr r0
/* 8017393C 0016EE5C  3C 60 80 24 */	lis r3, lbl_80245F50@ha
/* 80173940 0016EE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80173944 0016EE64  88 03 5F 50 */	lbz r0, lbl_80245F50@l(r3)
/* 80173948 0016EE68  28 00 00 00 */	cmplwi r0, 0
/* 8017394C 0016EE6C  40 82 00 20 */	bne .L_8017396C
/* 80173950 0016EE70  3C 60 80 1B */	lis r3, lbl_801ADF80@ha
/* 80173954 0016EE74  38 63 DF 80 */	addi r3, r3, lbl_801ADF80@l
/* 80173958 0016EE78  81 83 00 04 */	lwz r12, 4(r3)
/* 8017395C 0016EE7C  28 0C 00 00 */	cmplwi r12, 0
/* 80173960 0016EE80  41 82 00 0C */	beq .L_8017396C
/* 80173964 0016EE84  7D 89 03 A6 */	mtctr r12
/* 80173968 0016EE88  4E 80 04 21 */	bctrl
.L_8017396C:
/* 8017396C 0016EE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80173970 0016EE90  7C 08 03 A6 */	mtlr r0
/* 80173974 0016EE94  38 21 00 10 */	addi r1, r1, 0x10
/* 80173978 0016EE98  4E 80 00 20 */	blr

glabel TRKInitializeIntDrivenUART
/* 8017397C 0016EE9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173980 0016EEA0  7C 08 02 A6 */	mflr r0
/* 80173984 0016EEA4  3C 80 80 17 */	lis r4, TRKEXICallBack@ha
/* 80173988 0016EEA8  3C 60 80 1B */	lis r3, lbl_801ADF80@ha
/* 8017398C 0016EEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80173990 0016EEB0  38 84 3B A0 */	addi r4, r4, TRKEXICallBack@l
/* 80173994 0016EEB4  81 83 DF 80 */	lwz r12, lbl_801ADF80@l(r3)
/* 80173998 0016EEB8  7C C3 33 78 */	mr r3, r6
/* 8017399C 0016EEBC  7D 89 03 A6 */	mtctr r12
/* 801739A0 0016EEC0  4E 80 04 21 */	bctrl
/* 801739A4 0016EEC4  3C 60 80 1B */	lis r3, lbl_801ADF80@ha
/* 801739A8 0016EEC8  38 63 DF 80 */	addi r3, r3, lbl_801ADF80@l
/* 801739AC 0016EECC  81 83 00 18 */	lwz r12, 0x18(r3)
/* 801739B0 0016EED0  7D 89 03 A6 */	mtctr r12
/* 801739B4 0016EED4  4E 80 04 21 */	bctrl
/* 801739B8 0016EED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801739BC 0016EEDC  38 60 00 00 */	li r3, 0
/* 801739C0 0016EEE0  7C 08 03 A6 */	mtlr r0
/* 801739C4 0016EEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 801739C8 0016EEE8  4E 80 00 20 */	blr

glabel InitMetroTRKCommTable
/* 801739CC 0016EEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801739D0 0016EEF0  7C 08 02 A6 */	mflr r0
/* 801739D4 0016EEF4  3C 80 80 18 */	lis r4, lbl_80179628@ha
/* 801739D8 0016EEF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801739DC 0016EEFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801739E0 0016EF00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801739E4 0016EF04  7C 7E 1B 78 */	mr r30, r3
/* 801739E8 0016EF08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801739EC 0016EF0C  3B A4 96 28 */	addi r29, r4, lbl_80179628@l
/* 801739F0 0016EF10  7F C4 F3 78 */	mr r4, r30
/* 801739F4 0016EF14  38 7D 00 08 */	addi r3, r29, 8
/* 801739F8 0016EF18  4C C6 31 82 */	crclr 6
/* 801739FC 0016EF1C  4B F1 DE B1 */	bl OSReport
/* 80173A00 0016EF20  38 7D 00 20 */	addi r3, r29, 0x20
/* 80173A04 0016EF24  38 80 00 40 */	li r4, 0x40
/* 80173A08 0016EF28  4C C6 31 82 */	crclr 6
/* 80173A0C 0016EF2C  4B F1 DE A1 */	bl OSReport
/* 80173A10 0016EF30  3C 60 80 24 */	lis r3, lbl_80245F50@ha
/* 80173A14 0016EF34  38 00 00 00 */	li r0, 0
/* 80173A18 0016EF38  2C 1E 00 02 */	cmpwi r30, 2
/* 80173A1C 0016EF3C  98 03 5F 50 */	stb r0, lbl_80245F50@l(r3)
/* 80173A20 0016EF40  40 82 00 A0 */	bne .L_80173AC0
/* 80173A24 0016EF44  38 7D 00 48 */	addi r3, r29, 0x48
/* 80173A28 0016EF48  4C C6 31 82 */	crclr 6
/* 80173A2C 0016EF4C  4B F1 DE 81 */	bl OSReport
/* 80173A30 0016EF50  3D 80 80 17 */	lis r12, udp_cc_initialize@ha
/* 80173A34 0016EF54  3D 60 80 1B */	lis r11, lbl_801ADF80@ha
/* 80173A38 0016EF58  3B EC 3C 68 */	addi r31, r12, udp_cc_initialize@l
/* 80173A3C 0016EF5C  3D 40 80 17 */	lis r10, udp_cc_open@ha
/* 80173A40 0016EF60  39 8B DF 80 */	addi r12, r11, lbl_801ADF80@l
/* 80173A44 0016EF64  38 00 00 00 */	li r0, 0
/* 80173A48 0016EF68  39 6A 3C 58 */	addi r11, r10, udp_cc_open@l
/* 80173A4C 0016EF6C  3D 20 80 17 */	lis r9, udp_cc_close@ha
/* 80173A50 0016EF70  39 49 3C 50 */	addi r10, r9, udp_cc_close@l
/* 80173A54 0016EF74  3D 00 80 17 */	lis r8, udp_cc_read@ha
/* 80173A58 0016EF78  39 28 3C 48 */	addi r9, r8, udp_cc_read@l
/* 80173A5C 0016EF7C  3C E0 80 17 */	lis r7, udp_cc_write@ha
/* 80173A60 0016EF80  39 07 3C 40 */	addi r8, r7, udp_cc_write@l
/* 80173A64 0016EF84  3C C0 80 17 */	lis r6, udp_cc_shutdown@ha
/* 80173A68 0016EF88  38 E6 3C 60 */	addi r7, r6, udp_cc_shutdown@l
/* 80173A6C 0016EF8C  3C A0 80 17 */	lis r5, udp_cc_peek@ha
/* 80173A70 0016EF90  38 C5 3C 38 */	addi r6, r5, udp_cc_peek@l
/* 80173A74 0016EF94  3C 80 80 17 */	lis r4, udp_cc_pre_continue@ha
/* 80173A78 0016EF98  38 A4 3C 30 */	addi r5, r4, udp_cc_pre_continue@l
/* 80173A7C 0016EF9C  3C 60 80 17 */	lis r3, udp_cc_post_stop@ha
/* 80173A80 0016EFA0  38 83 3C 28 */	addi r4, r3, udp_cc_post_stop@l
/* 80173A84 0016EFA4  3F C0 80 24 */	lis r30, lbl_80245F50@ha
/* 80173A88 0016EFA8  3B A0 00 01 */	li r29, 1
/* 80173A8C 0016EFAC  93 EC 00 00 */	stw r31, 0(r12)
/* 80173A90 0016EFB0  38 60 00 00 */	li r3, 0
/* 80173A94 0016EFB4  9B BE 5F 50 */	stb r29, lbl_80245F50@l(r30)
/* 80173A98 0016EFB8  91 6C 00 18 */	stw r11, 0x18(r12)
/* 80173A9C 0016EFBC  91 4C 00 1C */	stw r10, 0x1c(r12)
/* 80173AA0 0016EFC0  91 2C 00 10 */	stw r9, 0x10(r12)
/* 80173AA4 0016EFC4  91 0C 00 14 */	stw r8, 0x14(r12)
/* 80173AA8 0016EFC8  90 EC 00 08 */	stw r7, 8(r12)
/* 80173AAC 0016EFCC  90 CC 00 0C */	stw r6, 0xc(r12)
/* 80173AB0 0016EFD0  90 AC 00 20 */	stw r5, 0x20(r12)
/* 80173AB4 0016EFD4  90 8C 00 24 */	stw r4, 0x24(r12)
/* 80173AB8 0016EFD8  90 0C 00 04 */	stw r0, 4(r12)
/* 80173ABC 0016EFDC  48 00 00 C8 */	b .L_80173B84
.L_80173AC0:
/* 80173AC0 0016EFE0  2C 1E 00 01 */	cmpwi r30, 1
/* 80173AC4 0016EFE4  40 82 00 94 */	bne .L_80173B58
/* 80173AC8 0016EFE8  38 7D 00 60 */	addi r3, r29, 0x60
/* 80173ACC 0016EFEC  4C C6 31 82 */	crclr 6
/* 80173AD0 0016EFF0  4B F1 DD DD */	bl OSReport
/* 80173AD4 0016EFF4  3F E0 80 17 */	lis r31, gdev_cc_initialize@ha
/* 80173AD8 0016EFF8  3D 60 80 17 */	lis r11, gdev_cc_open@ha
/* 80173ADC 0016EFFC  3B FF 3E A8 */	addi r31, r31, gdev_cc_initialize@l
/* 80173AE0 0016F000  3D 80 80 1B */	lis r12, lbl_801ADF80@ha
/* 80173AE4 0016F004  3D 40 80 17 */	lis r10, gdev_cc_close@ha
/* 80173AE8 0016F008  3D 20 80 17 */	lis r9, gdev_cc_read@ha
/* 80173AEC 0016F00C  3D 00 80 17 */	lis r8, gdev_cc_write@ha
/* 80173AF0 0016F010  3C E0 80 17 */	lis r7, gdev_cc_shutdown@ha
/* 80173AF4 0016F014  3C C0 80 17 */	lis r6, gdev_cc_peek@ha
/* 80173AF8 0016F018  3C A0 80 17 */	lis r5, gdev_cc_pre_continue@ha
/* 80173AFC 0016F01C  3C 80 80 17 */	lis r4, gdev_cc_post_stop@ha
/* 80173B00 0016F020  3C 60 80 17 */	lis r3, gdev_cc_initinterrupts@ha
/* 80173B04 0016F024  38 03 3C 70 */	addi r0, r3, gdev_cc_initinterrupts@l
/* 80173B08 0016F028  97 EC DF 80 */	stwu r31, lbl_801ADF80@l(r12)
/* 80173B0C 0016F02C  39 6B 3E 7C */	addi r11, r11, gdev_cc_open@l
/* 80173B10 0016F030  39 4A 3E 74 */	addi r10, r10, gdev_cc_close@l
/* 80173B14 0016F034  39 29 3D C0 */	addi r9, r9, gdev_cc_read@l
/* 80173B18 0016F038  39 08 3D 4C */	addi r8, r8, gdev_cc_write@l
/* 80173B1C 0016F03C  38 E7 3E A0 */	addi r7, r7, gdev_cc_shutdown@l
/* 80173B20 0016F040  38 C6 3C 94 */	addi r6, r6, gdev_cc_peek@l
/* 80173B24 0016F044  38 A5 3D 28 */	addi r5, r5, gdev_cc_pre_continue@l
/* 80173B28 0016F048  38 84 3D 04 */	addi r4, r4, gdev_cc_post_stop@l
/* 80173B2C 0016F04C  91 6C 00 18 */	stw r11, 0x18(r12)
/* 80173B30 0016F050  38 60 00 00 */	li r3, 0
/* 80173B34 0016F054  91 4C 00 1C */	stw r10, 0x1c(r12)
/* 80173B38 0016F058  91 2C 00 10 */	stw r9, 0x10(r12)
/* 80173B3C 0016F05C  91 0C 00 14 */	stw r8, 0x14(r12)
/* 80173B40 0016F060  90 EC 00 08 */	stw r7, 8(r12)
/* 80173B44 0016F064  90 CC 00 0C */	stw r6, 0xc(r12)
/* 80173B48 0016F068  90 AC 00 20 */	stw r5, 0x20(r12)
/* 80173B4C 0016F06C  90 8C 00 24 */	stw r4, 0x24(r12)
/* 80173B50 0016F070  90 0C 00 04 */	stw r0, 4(r12)
/* 80173B54 0016F074  48 00 00 30 */	b .L_80173B84
.L_80173B58:
/* 80173B58 0016F078  7F C4 F3 78 */	mr r4, r30
/* 80173B5C 0016F07C  38 7D 00 84 */	addi r3, r29, 0x84
/* 80173B60 0016F080  4C C6 31 82 */	crclr 6
/* 80173B64 0016F084  4B F1 DD 49 */	bl OSReport
/* 80173B68 0016F088  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80173B6C 0016F08C  4C C6 31 82 */	crclr 6
/* 80173B70 0016F090  4B F1 DD 3D */	bl OSReport
/* 80173B74 0016F094  38 7D 00 E0 */	addi r3, r29, 0xe0
/* 80173B78 0016F098  4C C6 31 82 */	crclr 6
/* 80173B7C 0016F09C  4B F1 DD 31 */	bl OSReport
/* 80173B80 0016F0A0  38 60 00 01 */	li r3, 1
.L_80173B84:
/* 80173B84 0016F0A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80173B88 0016F0A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80173B8C 0016F0AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80173B90 0016F0B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80173B94 0016F0B4  7C 08 03 A6 */	mtlr r0
/* 80173B98 0016F0B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80173B9C 0016F0BC  4E 80 00 20 */	blr

glabel TRKEXICallBack
/* 80173BA0 0016F0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80173BA4 0016F0C4  7C 08 02 A6 */	mflr r0
/* 80173BA8 0016F0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80173BAC 0016F0CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80173BB0 0016F0D0  7C 9F 23 78 */	mr r31, r4
/* 80173BB4 0016F0D4  4B F2 40 41 */	bl OSEnableScheduler
/* 80173BB8 0016F0D8  7F E3 FB 78 */	mr r3, r31
/* 80173BBC 0016F0DC  38 80 05 00 */	li r4, 0x500
/* 80173BC0 0016F0E0  4B FF FB 59 */	bl TRKLoadContext
/* 80173BC4 0016F0E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80173BC8 0016F0E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80173BCC 0016F0EC  7C 08 03 A6 */	mtlr r0
/* 80173BD0 0016F0F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80173BD4 0016F0F4  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80245F50
	.skip 0x8
