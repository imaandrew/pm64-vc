.include "macros.inc"

.section .text, "ax"

glabel HID_DevInit
/* 800F26E0 000EDC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F26E4 000EDC04  7C 08 02 A6 */	mflr r0
/* 800F26E8 000EDC08  38 80 00 00 */	li r4, 0
/* 800F26EC 000EDC0C  38 A0 01 44 */	li r5, 0x144
/* 800F26F0 000EDC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F26F4 000EDC14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F26F8 000EDC18  3F E0 80 22 */	lis r31, lbl_802230D0@ha
/* 800F26FC 000EDC1C  38 7F 30 D0 */	addi r3, r31, lbl_802230D0@l
/* 800F2700 000EDC20  4B F1 1D 3D */	bl memset
/* 800F2704 000EDC24  3C 60 80 0F */	lis r3, hidd_proc_repage_timeout@ha
/* 800F2708 000EDC28  38 BF 30 D0 */	addi r5, r31, 0x30d0
/* 800F270C 000EDC2C  38 C0 00 01 */	li r6, 1
/* 800F2710 000EDC30  38 80 00 40 */	li r4, 0x40
/* 800F2714 000EDC34  38 63 28 08 */	addi r3, r3, hidd_proc_repage_timeout@l
/* 800F2718 000EDC38  38 00 00 00 */	li r0, 0
/* 800F271C 000EDC3C  98 C5 00 CA */	stb r6, 0xca(r5)
/* 800F2720 000EDC40  B0 85 00 CC */	sth r4, 0xcc(r5)
/* 800F2724 000EDC44  98 C5 01 06 */	stb r6, 0x106(r5)
/* 800F2728 000EDC48  B0 85 01 08 */	sth r4, 0x108(r5)
/* 800F272C 000EDC4C  90 65 00 2C */	stw r3, 0x2c(r5)
/* 800F2730 000EDC50  98 05 01 41 */	stb r0, 0x141(r5)
/* 800F2734 000EDC54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2738 000EDC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F273C 000EDC5C  7C 08 03 A6 */	mtlr r0
/* 800F2740 000EDC60  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2744 000EDC64  4E 80 00 20 */	blr

