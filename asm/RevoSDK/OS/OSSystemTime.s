.include "macros.inc"

.section .text, "ax"

glabel OSGetSystemTime
/* 80099D2C 0009524C  4B FF F0 BC */	b __OSGetSystemTime

glabel func_80099D30
/* 80099D30 00095250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099D34 00095254  7C 08 02 A6 */	mflr r0
/* 80099D38 00095258  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099D3C 0009525C  4B FF F0 8D */	bl OSGetTime
/* 80099D40 00095260  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 80099D44 00095264  38 A0 00 00 */	li r5, 0
/* 80099D48 00095268  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 80099D4C 0009526C  54 06 F0 BE */	srwi r6, r0, 2
/* 80099D50 00095270  48 0C 2D 45 */	bl __div2i
/* 80099D54 00095274  3C 60 BC 18 */	lis r3, 0xBC17C200@ha
/* 80099D58 00095278  38 03 C2 00 */	addi r0, r3, 0xBC17C200@l
/* 80099D5C 0009527C  7C 64 00 14 */	addc r3, r4, r0
/* 80099D60 00095280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099D64 00095284  7C 08 03 A6 */	mtlr r0
/* 80099D68 00095288  38 21 00 10 */	addi r1, r1, 0x10
/* 80099D6C 0009528C  4E 80 00 20 */	blr

glabel func_80099D70
/* 80099D70 00095290  38 60 00 00 */	li r3, 0
/* 80099D74 00095294  4E 80 00 20 */	blr
