.include "macros.inc"

.section .text, "ax"

glabel tan
/* 8016E7CC 00169CEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016E7D0 00169CF0  7C 08 02 A6 */	mflr r0
/* 8016E7D4 00169CF4  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 8016E7D8 00169CF8  C8 42 8E A8 */	lfd f2, lbl_802486A8@sda21(r2)
/* 8016E7DC 00169CFC  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016E7E0 00169D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016E7E4 00169D04  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 8016E7E8 00169D08  80 61 00 08 */	lwz r3, 8(r1)
/* 8016E7EC 00169D0C  54 63 00 7E */	clrlwi r3, r3, 1
/* 8016E7F0 00169D10  7C 03 00 00 */	cmpw r3, r0
/* 8016E7F4 00169D14  41 81 00 10 */	bgt lbl_8016E804
/* 8016E7F8 00169D18  38 60 00 01 */	li r3, 1
/* 8016E7FC 00169D1C  4B FF F4 E9 */	bl __kernel_tan
/* 8016E800 00169D20  48 00 00 34 */	b lbl_8016E834
lbl_8016E804:
/* 8016E804 00169D24  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8016E808 00169D28  7C 03 00 00 */	cmpw r3, r0
/* 8016E80C 00169D2C  41 80 00 0C */	blt lbl_8016E818
/* 8016E810 00169D30  FC 21 08 28 */	fsub f1, f1, f1
/* 8016E814 00169D34  48 00 00 20 */	b lbl_8016E834
lbl_8016E818:
/* 8016E818 00169D38  38 61 00 10 */	addi r3, r1, 0x10
/* 8016E81C 00169D3C  4B FF D8 55 */	bl __ieee754_rem_pio2
/* 8016E820 00169D40  54 60 0F BC */	rlwinm r0, r3, 1, 0x1e, 0x1e
/* 8016E824 00169D44  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8016E828 00169D48  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8016E82C 00169D4C  20 60 00 01 */	subfic r3, r0, 1
/* 8016E830 00169D50  4B FF F4 B5 */	bl __kernel_tan
lbl_8016E834:
/* 8016E834 00169D54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016E838 00169D58  7C 08 03 A6 */	mtlr r0
/* 8016E83C 00169D5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8016E840 00169D60  4E 80 00 20 */	blr 