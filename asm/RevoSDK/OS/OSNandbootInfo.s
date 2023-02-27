.include "macros.inc"

.section .text, "ax"

glabel __OSWriteNandbootInfo
/* 8009AC10 00096130  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8009AC14 00096134  7C 08 02 A6 */	mflr r0
/* 8009AC18 00096138  39 03 00 04 */	addi r8, r3, 4
/* 8009AC1C 0009613C  38 E0 00 00 */	li r7, 0
/* 8009AC20 00096140  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8009AC24 00096144  38 00 00 40 */	li r0, 0x40
/* 8009AC28 00096148  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8009AC2C 0009614C  7C 7F 1B 78 */	mr r31, r3
/* 8009AC30 00096150  7C 09 03 A6 */	mtctr r0
.L_8009AC34:
/* 8009AC34 00096154  80 88 00 00 */	lwz r4, 0(r8)
/* 8009AC38 00096158  80 08 00 04 */	lwz r0, 4(r8)
/* 8009AC3C 0009615C  7C E7 22 14 */	add r7, r7, r4
/* 8009AC40 00096160  80 88 00 08 */	lwz r4, 8(r8)
/* 8009AC44 00096164  7C E7 02 14 */	add r7, r7, r0
/* 8009AC48 00096168  80 08 00 0C */	lwz r0, 0xc(r8)
/* 8009AC4C 0009616C  7C E7 22 14 */	add r7, r7, r4
/* 8009AC50 00096170  80 88 00 10 */	lwz r4, 0x10(r8)
/* 8009AC54 00096174  7C E7 02 14 */	add r7, r7, r0
/* 8009AC58 00096178  80 08 00 14 */	lwz r0, 0x14(r8)
/* 8009AC5C 0009617C  7C E7 22 14 */	add r7, r7, r4
/* 8009AC60 00096180  80 88 00 18 */	lwz r4, 0x18(r8)
/* 8009AC64 00096184  7C E7 02 14 */	add r7, r7, r0
/* 8009AC68 00096188  80 08 00 1C */	lwz r0, 0x1c(r8)
/* 8009AC6C 0009618C  7C E7 22 14 */	add r7, r7, r4
/* 8009AC70 00096190  80 88 00 20 */	lwz r4, 0x20(r8)
/* 8009AC74 00096194  7C E7 02 14 */	add r7, r7, r0
/* 8009AC78 00096198  80 08 00 24 */	lwz r0, 0x24(r8)
/* 8009AC7C 0009619C  7C E7 22 14 */	add r7, r7, r4
/* 8009AC80 000961A0  80 88 00 28 */	lwz r4, 0x28(r8)
/* 8009AC84 000961A4  7C E7 02 14 */	add r7, r7, r0
/* 8009AC88 000961A8  80 08 00 2C */	lwz r0, 0x2c(r8)
/* 8009AC8C 000961AC  7C E7 22 14 */	add r7, r7, r4
/* 8009AC90 000961B0  80 88 00 30 */	lwz r4, 0x30(r8)
/* 8009AC94 000961B4  7C E7 02 14 */	add r7, r7, r0
/* 8009AC98 000961B8  80 08 00 34 */	lwz r0, 0x34(r8)
/* 8009AC9C 000961BC  7C E7 22 14 */	add r7, r7, r4
/* 8009ACA0 000961C0  80 88 00 38 */	lwz r4, 0x38(r8)
/* 8009ACA4 000961C4  7C E7 02 14 */	add r7, r7, r0
/* 8009ACA8 000961C8  80 08 00 3C */	lwz r0, 0x3c(r8)
/* 8009ACAC 000961CC  7C E7 22 14 */	add r7, r7, r4
/* 8009ACB0 000961D0  39 08 00 40 */	addi r8, r8, 0x40
/* 8009ACB4 000961D4  7C E7 02 14 */	add r7, r7, r0
/* 8009ACB8 000961D8  42 00 FF 7C */	bdnz .L_8009AC34
/* 8009ACBC 000961DC  80 08 00 00 */	lwz r0, 0(r8)
/* 8009ACC0 000961E0  3C C0 80 19 */	lis r6, lbl_801902B0@ha
/* 8009ACC4 000961E4  80 A8 00 04 */	lwz r5, 4(r8)
/* 8009ACC8 000961E8  38 81 00 08 */	addi r4, r1, 8
/* 8009ACCC 000961EC  7C E7 02 14 */	add r7, r7, r0
/* 8009ACD0 000961F0  80 08 00 08 */	lwz r0, 8(r8)
/* 8009ACD4 000961F4  7C E7 2A 14 */	add r7, r7, r5
/* 8009ACD8 000961F8  80 A8 00 0C */	lwz r5, 0xc(r8)
/* 8009ACDC 000961FC  7C E7 02 14 */	add r7, r7, r0
/* 8009ACE0 00096200  80 08 00 10 */	lwz r0, 0x10(r8)
/* 8009ACE4 00096204  7C E7 2A 14 */	add r7, r7, r5
/* 8009ACE8 00096208  80 A8 00 14 */	lwz r5, 0x14(r8)
/* 8009ACEC 0009620C  7C E7 02 14 */	add r7, r7, r0
/* 8009ACF0 00096210  80 08 00 18 */	lwz r0, 0x18(r8)
/* 8009ACF4 00096214  7C E7 2A 14 */	add r7, r7, r5
/* 8009ACF8 00096218  38 A0 00 02 */	li r5, 2
/* 8009ACFC 0009621C  7C E7 02 14 */	add r7, r7, r0
/* 8009AD00 00096220  90 E3 00 00 */	stw r7, 0(r3)
/* 8009AD04 00096224  38 66 02 B0 */	addi r3, r6, lbl_801902B0@l
/* 8009AD08 00096228  48 01 F3 CD */	bl NANDPrivateOpen
/* 8009AD0C 0009622C  2C 03 00 00 */	cmpwi r3, 0
/* 8009AD10 00096230  40 82 00 40 */	bne .L_8009AD50
/* 8009AD14 00096234  7F E4 FB 78 */	mr r4, r31
/* 8009AD18 00096238  38 61 00 08 */	addi r3, r1, 8
/* 8009AD1C 0009623C  38 A0 10 20 */	li r5, 0x1020
/* 8009AD20 00096240  48 01 E8 61 */	bl NANDWrite
/* 8009AD24 00096244  28 03 10 20 */	cmplwi r3, 0x1020
/* 8009AD28 00096248  41 82 00 14 */	beq .L_8009AD3C
/* 8009AD2C 0009624C  38 61 00 08 */	addi r3, r1, 8
/* 8009AD30 00096250  48 01 F5 99 */	bl NANDClose
/* 8009AD34 00096254  38 60 00 00 */	li r3, 0
/* 8009AD38 00096258  48 00 00 1C */	b .L_8009AD54
.L_8009AD3C:
/* 8009AD3C 0009625C  38 61 00 08 */	addi r3, r1, 8
/* 8009AD40 00096260  48 01 F5 89 */	bl NANDClose
/* 8009AD44 00096264  7C 60 00 34 */	cntlzw r0, r3
/* 8009AD48 00096268  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AD4C 0009626C  48 00 00 08 */	b .L_8009AD54
.L_8009AD50:
/* 8009AD50 00096270  38 60 00 00 */	li r3, 0
.L_8009AD54:
/* 8009AD54 00096274  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8009AD58 00096278  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8009AD5C 0009627C  7C 08 03 A6 */	mtlr r0
/* 8009AD60 00096280  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8009AD64 00096284  4E 80 00 20 */	blr 

glabel __OSReadNandbootInfo
/* 8009AD68 00096288  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8009AD6C 0009628C  7C 08 02 A6 */	mflr r0
/* 8009AD70 00096290  3C 80 80 19 */	lis r4, lbl_801902B0@ha
/* 8009AD74 00096294  38 A0 00 01 */	li r5, 1
/* 8009AD78 00096298  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8009AD7C 0009629C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8009AD80 000962A0  7C 7F 1B 78 */	mr r31, r3
/* 8009AD84 000962A4  38 64 02 B0 */	addi r3, r4, lbl_801902B0@l
/* 8009AD88 000962A8  38 81 00 08 */	addi r4, r1, 8
/* 8009AD8C 000962AC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8009AD90 000962B0  48 01 F3 45 */	bl NANDPrivateOpen
/* 8009AD94 000962B4  2C 03 00 00 */	cmpwi r3, 0
/* 8009AD98 000962B8  40 82 00 40 */	bne .L_8009ADD8
/* 8009AD9C 000962BC  7F E4 FB 78 */	mr r4, r31
/* 8009ADA0 000962C0  38 61 00 08 */	addi r3, r1, 8
/* 8009ADA4 000962C4  38 A0 10 20 */	li r5, 0x1020
/* 8009ADA8 000962C8  48 01 E6 F9 */	bl NANDRead
/* 8009ADAC 000962CC  7C 7E 1B 78 */	mr r30, r3
/* 8009ADB0 000962D0  38 61 00 08 */	addi r3, r1, 8
/* 8009ADB4 000962D4  48 01 F5 15 */	bl NANDClose
/* 8009ADB8 000962D8  28 1E 10 20 */	cmplwi r30, 0x1020
/* 8009ADBC 000962DC  41 82 00 34 */	beq .L_8009ADF0
/* 8009ADC0 000962E0  7F E3 FB 78 */	mr r3, r31
/* 8009ADC4 000962E4  38 80 00 00 */	li r4, 0
/* 8009ADC8 000962E8  38 A0 10 20 */	li r5, 0x1020
/* 8009ADCC 000962EC  4B F6 96 71 */	bl memset
/* 8009ADD0 000962F0  38 60 00 00 */	li r3, 0
/* 8009ADD4 000962F4  48 00 01 14 */	b .L_8009AEE8
.L_8009ADD8:
/* 8009ADD8 000962F8  7F E3 FB 78 */	mr r3, r31
/* 8009ADDC 000962FC  38 80 00 00 */	li r4, 0
/* 8009ADE0 00096300  38 A0 10 20 */	li r5, 0x1020
/* 8009ADE4 00096304  4B F6 96 59 */	bl memset
/* 8009ADE8 00096308  38 60 00 00 */	li r3, 0
/* 8009ADEC 0009630C  48 00 00 FC */	b .L_8009AEE8
.L_8009ADF0:
/* 8009ADF0 00096310  38 00 00 40 */	li r0, 0x40
/* 8009ADF4 00096314  38 BF 00 04 */	addi r5, r31, 4
/* 8009ADF8 00096318  38 80 00 00 */	li r4, 0
/* 8009ADFC 0009631C  7C 09 03 A6 */	mtctr r0
.L_8009AE00:
/* 8009AE00 00096320  80 65 00 00 */	lwz r3, 0(r5)
/* 8009AE04 00096324  80 05 00 04 */	lwz r0, 4(r5)
/* 8009AE08 00096328  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE0C 0009632C  80 65 00 08 */	lwz r3, 8(r5)
/* 8009AE10 00096330  7C 84 02 14 */	add r4, r4, r0
/* 8009AE14 00096334  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8009AE18 00096338  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE1C 0009633C  80 65 00 10 */	lwz r3, 0x10(r5)
/* 8009AE20 00096340  7C 84 02 14 */	add r4, r4, r0
/* 8009AE24 00096344  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8009AE28 00096348  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE2C 0009634C  80 65 00 18 */	lwz r3, 0x18(r5)
/* 8009AE30 00096350  7C 84 02 14 */	add r4, r4, r0
/* 8009AE34 00096354  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 8009AE38 00096358  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE3C 0009635C  80 65 00 20 */	lwz r3, 0x20(r5)
/* 8009AE40 00096360  7C 84 02 14 */	add r4, r4, r0
/* 8009AE44 00096364  80 05 00 24 */	lwz r0, 0x24(r5)
/* 8009AE48 00096368  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE4C 0009636C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 8009AE50 00096370  7C 84 02 14 */	add r4, r4, r0
/* 8009AE54 00096374  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 8009AE58 00096378  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE5C 0009637C  80 65 00 30 */	lwz r3, 0x30(r5)
/* 8009AE60 00096380  7C 84 02 14 */	add r4, r4, r0
/* 8009AE64 00096384  80 05 00 34 */	lwz r0, 0x34(r5)
/* 8009AE68 00096388  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE6C 0009638C  80 65 00 38 */	lwz r3, 0x38(r5)
/* 8009AE70 00096390  7C 84 02 14 */	add r4, r4, r0
/* 8009AE74 00096394  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 8009AE78 00096398  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE7C 0009639C  38 A5 00 40 */	addi r5, r5, 0x40
/* 8009AE80 000963A0  7C 84 02 14 */	add r4, r4, r0
/* 8009AE84 000963A4  42 00 FF 7C */	bdnz .L_8009AE00
/* 8009AE88 000963A8  80 65 00 00 */	lwz r3, 0(r5)
/* 8009AE8C 000963AC  80 05 00 04 */	lwz r0, 4(r5)
/* 8009AE90 000963B0  7C 84 1A 14 */	add r4, r4, r3
/* 8009AE94 000963B4  80 65 00 08 */	lwz r3, 8(r5)
/* 8009AE98 000963B8  7C 84 02 14 */	add r4, r4, r0
/* 8009AE9C 000963BC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8009AEA0 000963C0  7C 84 1A 14 */	add r4, r4, r3
/* 8009AEA4 000963C4  80 65 00 10 */	lwz r3, 0x10(r5)
/* 8009AEA8 000963C8  7C 84 02 14 */	add r4, r4, r0
/* 8009AEAC 000963CC  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8009AEB0 000963D0  7C 84 1A 14 */	add r4, r4, r3
/* 8009AEB4 000963D4  80 65 00 18 */	lwz r3, 0x18(r5)
/* 8009AEB8 000963D8  7C 84 02 14 */	add r4, r4, r0
/* 8009AEBC 000963DC  80 1F 00 00 */	lwz r0, 0(r31)
/* 8009AEC0 000963E0  7C 84 1A 14 */	add r4, r4, r3
/* 8009AEC4 000963E4  7C 00 20 40 */	cmplw r0, r4
/* 8009AEC8 000963E8  41 82 00 1C */	beq .L_8009AEE4
/* 8009AECC 000963EC  7F E3 FB 78 */	mr r3, r31
/* 8009AED0 000963F0  38 80 00 00 */	li r4, 0
/* 8009AED4 000963F4  38 A0 10 20 */	li r5, 0x1020
/* 8009AED8 000963F8  4B F6 95 65 */	bl memset
/* 8009AEDC 000963FC  38 60 00 00 */	li r3, 0
/* 8009AEE0 00096400  48 00 00 08 */	b .L_8009AEE8
.L_8009AEE4:
/* 8009AEE4 00096404  38 60 00 01 */	li r3, 1
.L_8009AEE8:
/* 8009AEE8 00096408  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8009AEEC 0009640C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8009AEF0 00096410  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8009AEF4 00096414  7C 08 03 A6 */	mtlr r0
/* 8009AEF8 00096418  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8009AEFC 0009641C  4E 80 00 20 */	blr 

