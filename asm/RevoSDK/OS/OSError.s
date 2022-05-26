.include "macros.inc"

.section .text, "ax"

glabel OSReport
/* 800918AC 0008CDCC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800918B0 0008CDD0  7C 08 02 A6 */	mflr r0
/* 800918B4 0008CDD4  90 01 00 84 */	stw r0, 0x84(r1)
/* 800918B8 0008CDD8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 800918BC 0008CDDC  40 86 00 24 */	bne cr1, lbl_800918E0
/* 800918C0 0008CDE0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800918C4 0008CDE4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800918C8 0008CDE8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800918CC 0008CDEC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800918D0 0008CDF0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800918D4 0008CDF4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800918D8 0008CDF8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800918DC 0008CDFC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800918E0:
/* 800918E0 0008CE00  39 61 00 88 */	addi r11, r1, 0x88
/* 800918E4 0008CE04  38 01 00 08 */	addi r0, r1, 8
/* 800918E8 0008CE08  3D 80 01 00 */	lis r12, 0x100
/* 800918EC 0008CE0C  90 61 00 08 */	stw r3, 8(r1)
/* 800918F0 0008CE10  3B E1 00 68 */	addi r31, r1, 0x68
/* 800918F4 0008CE14  90 81 00 0C */	stw r4, 0xc(r1)
/* 800918F8 0008CE18  7F E4 FB 78 */	mr r4, r31
/* 800918FC 0008CE1C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80091900 0008CE20  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80091904 0008CE24  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80091908 0008CE28  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8009190C 0008CE2C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80091910 0008CE30  91 41 00 24 */	stw r10, 0x24(r1)
/* 80091914 0008CE34  91 81 00 68 */	stw r12, 0x68(r1)
/* 80091918 0008CE38  91 61 00 6C */	stw r11, 0x6c(r1)
/* 8009191C 0008CE3C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80091920 0008CE40  48 0D 31 3D */	bl vprintf
/* 80091924 0008CE44  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80091928 0008CE48  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8009192C 0008CE4C  7C 08 03 A6 */	mtlr r0
/* 80091930 0008CE50  38 21 00 80 */	addi r1, r1, 0x80
/* 80091934 0008CE54  4E 80 00 20 */	blr 

glabel OSVReport
/* 80091938 0008CE58  48 0D 31 24 */	b vprintf

glabel OSPanic
/* 8009193C 0008CE5C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80091940 0008CE60  7C 08 02 A6 */	mflr r0
/* 80091944 0008CE64  90 01 00 94 */	stw r0, 0x94(r1)
/* 80091948 0008CE68  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8009194C 0008CE6C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80091950 0008CE70  7C 9E 23 78 */	mr r30, r4
/* 80091954 0008CE74  93 A1 00 84 */	stw r29, 0x84(r1)
/* 80091958 0008CE78  7C BD 2B 78 */	mr r29, r5
/* 8009195C 0008CE7C  93 81 00 80 */	stw r28, 0x80(r1)
/* 80091960 0008CE80  7C 7C 1B 78 */	mr r28, r3
/* 80091964 0008CE84  40 86 00 24 */	bne cr1, lbl_80091988
/* 80091968 0008CE88  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8009196C 0008CE8C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80091970 0008CE90  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80091974 0008CE94  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80091978 0008CE98  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8009197C 0008CE9C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80091980 0008CEA0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80091984 0008CEA4  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80091988:
/* 80091988 0008CEA8  3F E0 80 18 */	lis r31, lbl_80183220@ha
/* 8009198C 0008CEAC  90 61 00 08 */	stw r3, 8(r1)
/* 80091990 0008CEB0  3B FF 32 20 */	addi r31, r31, lbl_80183220@l
/* 80091994 0008CEB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80091998 0008CEB8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8009199C 0008CEBC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800919A0 0008CEC0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800919A4 0008CEC4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800919A8 0008CEC8  91 21 00 20 */	stw r9, 0x20(r1)
/* 800919AC 0008CECC  91 41 00 24 */	stw r10, 0x24(r1)
/* 800919B0 0008CED0  48 00 39 05 */	bl OSDisableInterrupts
/* 800919B4 0008CED4  38 A1 00 98 */	addi r5, r1, 0x98
/* 800919B8 0008CED8  38 01 00 08 */	addi r0, r1, 8
/* 800919BC 0008CEDC  3C 60 03 00 */	lis r3, 0x300
/* 800919C0 0008CEE0  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 800919C4 0008CEE4  38 81 00 68 */	addi r4, r1, 0x68
/* 800919C8 0008CEE8  90 61 00 68 */	stw r3, 0x68(r1)
/* 800919CC 0008CEEC  7F A3 EB 78 */	mr r3, r29
/* 800919D0 0008CEF0  90 01 00 70 */	stw r0, 0x70(r1)
/* 800919D4 0008CEF4  48 0D 30 89 */	bl vprintf
/* 800919D8 0008CEF8  7F 84 E3 78 */	mr r4, r28
/* 800919DC 0008CEFC  7F C5 F3 78 */	mr r5, r30
/* 800919E0 0008CF00  38 7F 00 00 */	addi r3, r31, 0
/* 800919E4 0008CF04  4C C6 31 82 */	crclr 6
/* 800919E8 0008CF08  4B FF FE C5 */	bl OSReport
/* 800919EC 0008CF0C  38 7F 00 18 */	addi r3, r31, 0x18
/* 800919F0 0008CF10  4C C6 31 82 */	crclr 6
/* 800919F4 0008CF14  4B FF FE B9 */	bl OSReport
/* 800919F8 0008CF18  3B C0 00 00 */	li r30, 0
/* 800919FC 0008CF1C  4B FF FA 3D */	bl OSGetStackPointer
/* 80091A00 0008CF20  7C 7D 1B 78 */	mr r29, r3
/* 80091A04 0008CF24  48 00 00 20 */	b lbl_80091A24
lbl_80091A08:
/* 80091A08 0008CF28  80 BD 00 00 */	lwz r5, 0(r29)
/* 80091A0C 0008CF2C  7F A4 EB 78 */	mr r4, r29
/* 80091A10 0008CF30  80 DD 00 04 */	lwz r6, 4(r29)
/* 80091A14 0008CF34  38 7F 00 40 */	addi r3, r31, 0x40
/* 80091A18 0008CF38  4C C6 31 82 */	crclr 6
/* 80091A1C 0008CF3C  4B FF FE 91 */	bl OSReport
/* 80091A20 0008CF40  83 BD 00 00 */	lwz r29, 0(r29)
lbl_80091A24:
/* 80091A24 0008CF44  2C 1D 00 00 */	cmpwi r29, 0
/* 80091A28 0008CF48  41 82 00 1C */	beq lbl_80091A44
/* 80091A2C 0008CF4C  3C 1D 00 01 */	addis r0, r29, 1
/* 80091A30 0008CF50  28 00 FF FF */	cmplwi r0, 0xffff
/* 80091A34 0008CF54  41 82 00 10 */	beq lbl_80091A44
/* 80091A38 0008CF58  28 1E 00 10 */	cmplwi r30, 0x10
/* 80091A3C 0008CF5C  3B DE 00 01 */	addi r30, r30, 1
/* 80091A40 0008CF60  41 80 FF C8 */	blt lbl_80091A08
lbl_80091A44:
/* 80091A44 0008CF64  4B FF CF 81 */	bl PPCHalt
/* 80091A48 0008CF68  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80091A4C 0008CF6C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80091A50 0008CF70  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80091A54 0008CF74  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 80091A58 0008CF78  83 81 00 80 */	lwz r28, 0x80(r1)
/* 80091A5C 0008CF7C  7C 08 03 A6 */	mtlr r0
/* 80091A60 0008CF80  38 21 00 90 */	addi r1, r1, 0x90
/* 80091A64 0008CF84  4E 80 00 20 */	blr 

glabel OSSetErrorHandler
/* 80091A68 0008CF88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80091A6C 0008CF8C  7C 08 02 A6 */	mflr r0
/* 80091A70 0008CF90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80091A74 0008CF94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80091A78 0008CF98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80091A7C 0008CF9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80091A80 0008CFA0  7C 7D 1B 78 */	mr r29, r3
/* 80091A84 0008CFA4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80091A88 0008CFA8  7C 9C 23 78 */	mr r28, r4
/* 80091A8C 0008CFAC  48 00 38 29 */	bl OSDisableInterrupts
/* 80091A90 0008CFB0  3C 80 80 1B */	lis r4, lbl_801B3E50@ha
/* 80091A94 0008CFB4  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80091A98 0008CFB8  38 84 3E 50 */	addi r4, r4, lbl_801B3E50@l
/* 80091A9C 0008CFBC  28 1D 00 10 */	cmplwi r29, 0x10
/* 80091AA0 0008CFC0  7F C4 00 2E */	lwzx r30, r4, r0
/* 80091AA4 0008CFC4  7C 7D 1B 78 */	mr r29, r3
/* 80091AA8 0008CFC8  7F 84 01 2E */	stwx r28, r4, r0
/* 80091AAC 0008CFCC  40 82 02 18 */	bne lbl_80091CC4
/* 80091AB0 0008CFD0  4B FF CE D5 */	bl PPCMfmsr
/* 80091AB4 0008CFD4  7C 7F 1B 78 */	mr r31, r3
/* 80091AB8 0008CFD8  60 63 20 00 */	ori r3, r3, 0x2000
/* 80091ABC 0008CFDC  4B FF CE D1 */	bl PPCMtmsr
/* 80091AC0 0008CFE0  4B FF CF 49 */	bl PPCMffpscr
/* 80091AC4 0008CFE4  2C 1C 00 00 */	cmpwi r28, 0
/* 80091AC8 0008CFE8  41 82 01 98 */	beq lbl_80091C60
/* 80091ACC 0008CFEC  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 80091AD0 0008CFF0  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 80091AD4 0008CFF4  81 25 00 DC */	lwz r9, 0x800000DC@l(r5)
/* 80091AD8 0008CFF8  38 A4 F8 FF */	addi r5, r4, 0x6005F8FF@l
/* 80091ADC 0008CFFC  39 00 FF FF */	li r8, -1
/* 80091AE0 0008D000  38 E0 00 04 */	li r7, 4
/* 80091AE4 0008D004  38 00 00 02 */	li r0, 2
/* 80091AE8 0008D008  48 00 01 5C */	b lbl_80091C44
lbl_80091AEC:
/* 80091AEC 0008D00C  80 89 01 9C */	lwz r4, 0x19c(r9)
/* 80091AF0 0008D010  60 84 09 00 */	ori r4, r4, 0x900
/* 80091AF4 0008D014  90 89 01 9C */	stw r4, 0x19c(r9)
/* 80091AF8 0008D018  A0 C9 01 A2 */	lhz r6, 0x1a2(r9)
/* 80091AFC 0008D01C  54 C4 07 FF */	clrlwi. r4, r6, 0x1f
/* 80091B00 0008D020  40 82 01 28 */	bne lbl_80091C28
/* 80091B04 0008D024  60 C4 00 01 */	ori r4, r6, 1
/* 80091B08 0008D028  38 C9 00 90 */	addi r6, r9, 0x90
/* 80091B0C 0008D02C  B0 89 01 A2 */	sth r4, 0x1a2(r9)
/* 80091B10 0008D030  38 89 01 C8 */	addi r4, r9, 0x1c8
/* 80091B14 0008D034  7C 09 03 A6 */	mtctr r0
lbl_80091B18:
/* 80091B18 0008D038  91 06 00 04 */	stw r8, 4(r6)
/* 80091B1C 0008D03C  91 06 00 00 */	stw r8, 0(r6)
/* 80091B20 0008D040  91 04 00 04 */	stw r8, 4(r4)
/* 80091B24 0008D044  91 04 00 00 */	stw r8, 0(r4)
/* 80091B28 0008D048  91 06 00 0C */	stw r8, 0xc(r6)
/* 80091B2C 0008D04C  91 06 00 08 */	stw r8, 8(r6)
/* 80091B30 0008D050  91 04 00 0C */	stw r8, 0xc(r4)
/* 80091B34 0008D054  91 04 00 08 */	stw r8, 8(r4)
/* 80091B38 0008D058  91 06 00 14 */	stw r8, 0x14(r6)
/* 80091B3C 0008D05C  91 06 00 10 */	stw r8, 0x10(r6)
/* 80091B40 0008D060  91 04 00 14 */	stw r8, 0x14(r4)
/* 80091B44 0008D064  91 04 00 10 */	stw r8, 0x10(r4)
/* 80091B48 0008D068  91 06 00 1C */	stw r8, 0x1c(r6)
/* 80091B4C 0008D06C  91 06 00 18 */	stw r8, 0x18(r6)
/* 80091B50 0008D070  91 04 00 1C */	stw r8, 0x1c(r4)
/* 80091B54 0008D074  91 04 00 18 */	stw r8, 0x18(r4)
/* 80091B58 0008D078  91 06 00 24 */	stw r8, 0x24(r6)
/* 80091B5C 0008D07C  91 06 00 20 */	stw r8, 0x20(r6)
/* 80091B60 0008D080  91 04 00 24 */	stw r8, 0x24(r4)
/* 80091B64 0008D084  91 04 00 20 */	stw r8, 0x20(r4)
/* 80091B68 0008D088  91 06 00 2C */	stw r8, 0x2c(r6)
/* 80091B6C 0008D08C  91 06 00 28 */	stw r8, 0x28(r6)
/* 80091B70 0008D090  91 04 00 2C */	stw r8, 0x2c(r4)
/* 80091B74 0008D094  91 04 00 28 */	stw r8, 0x28(r4)
/* 80091B78 0008D098  91 06 00 34 */	stw r8, 0x34(r6)
/* 80091B7C 0008D09C  91 06 00 30 */	stw r8, 0x30(r6)
/* 80091B80 0008D0A0  91 04 00 34 */	stw r8, 0x34(r4)
/* 80091B84 0008D0A4  91 04 00 30 */	stw r8, 0x30(r4)
/* 80091B88 0008D0A8  91 06 00 3C */	stw r8, 0x3c(r6)
/* 80091B8C 0008D0AC  91 06 00 38 */	stw r8, 0x38(r6)
/* 80091B90 0008D0B0  91 04 00 3C */	stw r8, 0x3c(r4)
/* 80091B94 0008D0B4  91 04 00 38 */	stw r8, 0x38(r4)
/* 80091B98 0008D0B8  91 06 00 44 */	stw r8, 0x44(r6)
/* 80091B9C 0008D0BC  91 06 00 40 */	stw r8, 0x40(r6)
/* 80091BA0 0008D0C0  91 04 00 44 */	stw r8, 0x44(r4)
/* 80091BA4 0008D0C4  91 04 00 40 */	stw r8, 0x40(r4)
/* 80091BA8 0008D0C8  91 06 00 4C */	stw r8, 0x4c(r6)
/* 80091BAC 0008D0CC  91 06 00 48 */	stw r8, 0x48(r6)
/* 80091BB0 0008D0D0  91 04 00 4C */	stw r8, 0x4c(r4)
/* 80091BB4 0008D0D4  91 04 00 48 */	stw r8, 0x48(r4)
/* 80091BB8 0008D0D8  91 06 00 54 */	stw r8, 0x54(r6)
/* 80091BBC 0008D0DC  91 06 00 50 */	stw r8, 0x50(r6)
/* 80091BC0 0008D0E0  91 04 00 54 */	stw r8, 0x54(r4)
/* 80091BC4 0008D0E4  91 04 00 50 */	stw r8, 0x50(r4)
/* 80091BC8 0008D0E8  91 06 00 5C */	stw r8, 0x5c(r6)
/* 80091BCC 0008D0EC  91 06 00 58 */	stw r8, 0x58(r6)
/* 80091BD0 0008D0F0  91 04 00 5C */	stw r8, 0x5c(r4)
/* 80091BD4 0008D0F4  91 04 00 58 */	stw r8, 0x58(r4)
/* 80091BD8 0008D0F8  91 06 00 64 */	stw r8, 0x64(r6)
/* 80091BDC 0008D0FC  91 06 00 60 */	stw r8, 0x60(r6)
/* 80091BE0 0008D100  91 04 00 64 */	stw r8, 0x64(r4)
/* 80091BE4 0008D104  91 04 00 60 */	stw r8, 0x60(r4)
/* 80091BE8 0008D108  91 06 00 6C */	stw r8, 0x6c(r6)
/* 80091BEC 0008D10C  91 06 00 68 */	stw r8, 0x68(r6)
/* 80091BF0 0008D110  91 04 00 6C */	stw r8, 0x6c(r4)
/* 80091BF4 0008D114  91 04 00 68 */	stw r8, 0x68(r4)
/* 80091BF8 0008D118  91 06 00 74 */	stw r8, 0x74(r6)
/* 80091BFC 0008D11C  91 06 00 70 */	stw r8, 0x70(r6)
/* 80091C00 0008D120  91 04 00 74 */	stw r8, 0x74(r4)
/* 80091C04 0008D124  91 04 00 70 */	stw r8, 0x70(r4)
/* 80091C08 0008D128  91 06 00 7C */	stw r8, 0x7c(r6)
/* 80091C0C 0008D12C  91 06 00 78 */	stw r8, 0x78(r6)
/* 80091C10 0008D130  38 C6 00 80 */	addi r6, r6, 0x80
/* 80091C14 0008D134  91 04 00 7C */	stw r8, 0x7c(r4)
/* 80091C18 0008D138  91 04 00 78 */	stw r8, 0x78(r4)
/* 80091C1C 0008D13C  38 84 00 80 */	addi r4, r4, 0x80
/* 80091C20 0008D140  42 00 FE F8 */	bdnz lbl_80091B18
/* 80091C24 0008D144  90 E9 01 94 */	stw r7, 0x194(r9)
lbl_80091C28:
/* 80091C28 0008D148  80 8D 82 48 */	lwz r4, lbl_802466C8@sda21(r13)
/* 80091C2C 0008D14C  80 C9 01 94 */	lwz r6, 0x194(r9)
/* 80091C30 0008D150  54 84 06 38 */	rlwinm r4, r4, 0, 0x18, 0x1c
/* 80091C34 0008D154  7C C4 23 78 */	or r4, r6, r4
/* 80091C38 0008D158  7C 84 28 38 */	and r4, r4, r5
/* 80091C3C 0008D15C  90 89 01 94 */	stw r4, 0x194(r9)
/* 80091C40 0008D160  81 29 02 FC */	lwz r9, 0x2fc(r9)
lbl_80091C44:
/* 80091C44 0008D164  2C 09 00 00 */	cmpwi r9, 0
/* 80091C48 0008D168  40 82 FE A4 */	bne lbl_80091AEC
/* 80091C4C 0008D16C  80 0D 82 48 */	lwz r0, lbl_802466C8@sda21(r13)
/* 80091C50 0008D170  63 FF 09 00 */	ori r31, r31, 0x900
/* 80091C54 0008D174  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 80091C58 0008D178  7C 64 03 78 */	or r4, r3, r0
/* 80091C5C 0008D17C  48 00 00 50 */	b lbl_80091CAC
lbl_80091C60:
/* 80091C60 0008D180  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 80091C64 0008D184  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 80091C68 0008D188  80 C5 00 DC */	lwz r6, 0x800000DC@l(r5)
/* 80091C6C 0008D18C  38 84 F8 FF */	addi r4, r4, 0x6005F8FF@l
/* 80091C70 0008D190  38 A0 F6 FF */	li r5, -2305
/* 80091C74 0008D194  48 00 00 24 */	b lbl_80091C98
lbl_80091C78:
/* 80091C78 0008D198  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 80091C7C 0008D19C  7C 00 28 38 */	and r0, r0, r5
/* 80091C80 0008D1A0  90 06 01 9C */	stw r0, 0x19c(r6)
/* 80091C84 0008D1A4  80 06 01 94 */	lwz r0, 0x194(r6)
/* 80091C88 0008D1A8  54 00 07 6E */	rlwinm r0, r0, 0, 0x1d, 0x17
/* 80091C8C 0008D1AC  7C 00 20 38 */	and r0, r0, r4
/* 80091C90 0008D1B0  90 06 01 94 */	stw r0, 0x194(r6)
/* 80091C94 0008D1B4  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_80091C98:
/* 80091C98 0008D1B8  2C 06 00 00 */	cmpwi r6, 0
/* 80091C9C 0008D1BC  40 82 FF DC */	bne lbl_80091C78
/* 80091CA0 0008D1C0  38 00 F6 FF */	li r0, -2305
/* 80091CA4 0008D1C4  54 64 07 6E */	rlwinm r4, r3, 0, 0x1d, 0x17
/* 80091CA8 0008D1C8  7F FF 00 38 */	and r31, r31, r0
lbl_80091CAC:
/* 80091CAC 0008D1CC  3C 60 60 06 */	lis r3, 0x6005F8FF@ha
/* 80091CB0 0008D1D0  38 03 F8 FF */	addi r0, r3, 0x6005F8FF@l
/* 80091CB4 0008D1D4  7C 83 00 38 */	and r3, r4, r0
/* 80091CB8 0008D1D8  4B FF CD 71 */	bl PPCMtfpscr
/* 80091CBC 0008D1DC  7F E3 FB 78 */	mr r3, r31
/* 80091CC0 0008D1E0  4B FF CC CD */	bl PPCMtmsr
lbl_80091CC4:
/* 80091CC4 0008D1E4  7F A3 EB 78 */	mr r3, r29
/* 80091CC8 0008D1E8  48 00 36 15 */	bl OSRestoreInterrupts
/* 80091CCC 0008D1EC  7F C3 F3 78 */	mr r3, r30
/* 80091CD0 0008D1F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80091CD4 0008D1F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80091CD8 0008D1F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80091CDC 0008D1FC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80091CE0 0008D200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80091CE4 0008D204  7C 08 03 A6 */	mtlr r0
/* 80091CE8 0008D208  38 21 00 20 */	addi r1, r1, 0x20
/* 80091CEC 0008D20C  4E 80 00 20 */	blr 

glabel __OSUnhandledException
/* 80091CF0 0008D210  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80091CF4 0008D214  7C 08 02 A6 */	mflr r0
/* 80091CF8 0008D218  90 01 00 34 */	stw r0, 0x34(r1)
/* 80091CFC 0008D21C  39 61 00 30 */	addi r11, r1, 0x30
/* 80091D00 0008D220  48 0C AC 35 */	bl _savegpr_23
/* 80091D04 0008D224  3F E0 80 18 */	lis r31, lbl_80183220@ha
/* 80091D08 0008D228  7C 79 1B 78 */	mr r25, r3
/* 80091D0C 0008D22C  7C 9A 23 78 */	mr r26, r4
/* 80091D10 0008D230  7C BB 2B 78 */	mr r27, r5
/* 80091D14 0008D234  7C DC 33 78 */	mr r28, r6
/* 80091D18 0008D238  3B FF 32 20 */	addi r31, r31, lbl_80183220@l
/* 80091D1C 0008D23C  48 00 70 AD */	bl OSGetTime
/* 80091D20 0008D240  80 BA 01 9C */	lwz r5, 0x19c(r26)
/* 80091D24 0008D244  7C 9D 23 78 */	mr r29, r4
/* 80091D28 0008D248  7C 7E 1B 78 */	mr r30, r3
/* 80091D2C 0008D24C  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 80091D30 0008D250  40 82 00 18 */	bne lbl_80091D48
/* 80091D34 0008D254  7F 24 CB 78 */	mr r4, r25
/* 80091D38 0008D258  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80091D3C 0008D25C  4C C6 31 82 */	crclr 6
/* 80091D40 0008D260  4B FF FB 6D */	bl OSReport
/* 80091D44 0008D264  48 00 01 60 */	b lbl_80091EA4
lbl_80091D48:
/* 80091D48 0008D268  28 19 00 06 */	cmplwi r25, 6
/* 80091D4C 0008D26C  40 82 00 EC */	bne lbl_80091E38
/* 80091D50 0008D270  54 A0 02 D7 */	rlwinm. r0, r5, 0, 0xb, 0xb
/* 80091D54 0008D274  41 82 00 E4 */	beq lbl_80091E38
/* 80091D58 0008D278  3C 60 80 1B */	lis r3, lbl_801B3E50@ha
/* 80091D5C 0008D27C  38 63 3E 50 */	addi r3, r3, lbl_801B3E50@l
/* 80091D60 0008D280  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80091D64 0008D284  2C 00 00 00 */	cmpwi r0, 0
/* 80091D68 0008D288  41 82 00 D0 */	beq lbl_80091E38
/* 80091D6C 0008D28C  3B 20 00 10 */	li r25, 0x10
/* 80091D70 0008D290  4B FF CC 15 */	bl PPCMfmsr
/* 80091D74 0008D294  7C 77 1B 78 */	mr r23, r3
/* 80091D78 0008D298  60 63 20 00 */	ori r3, r3, 0x2000
/* 80091D7C 0008D29C  4B FF CC 11 */	bl PPCMtmsr
/* 80091D80 0008D2A0  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 80091D84 0008D2A4  80 63 00 D8 */	lwz r3, 0x800000D8@l(r3)
/* 80091D88 0008D2A8  2C 03 00 00 */	cmpwi r3, 0
/* 80091D8C 0008D2AC  41 82 00 08 */	beq lbl_80091D94
/* 80091D90 0008D2B0  4B FF F4 E1 */	bl OSSaveFPUContext
lbl_80091D94:
/* 80091D94 0008D2B4  4B FF CC 75 */	bl PPCMffpscr
/* 80091D98 0008D2B8  3F 00 60 06 */	lis r24, 0x6005F8FF@ha
/* 80091D9C 0008D2BC  38 18 F8 FF */	addi r0, r24, 0x6005F8FF@l
/* 80091DA0 0008D2C0  7C 63 00 38 */	and r3, r3, r0
/* 80091DA4 0008D2C4  4B FF CC 85 */	bl PPCMtfpscr
/* 80091DA8 0008D2C8  7E E3 BB 78 */	mr r3, r23
/* 80091DAC 0008D2CC  4B FF CB E1 */	bl PPCMtmsr
/* 80091DB0 0008D2D0  3E E0 80 00 */	lis r23, 0x800000D8@ha
/* 80091DB4 0008D2D4  80 17 00 D8 */	lwz r0, 0x800000D8@l(r23)
/* 80091DB8 0008D2D8  7C 00 D0 40 */	cmplw r0, r26
/* 80091DBC 0008D2DC  40 82 00 60 */	bne lbl_80091E1C
/* 80091DC0 0008D2E0  48 00 5D F9 */	bl OSDisableScheduler
/* 80091DC4 0008D2E4  7F 44 D3 78 */	mr r4, r26
/* 80091DC8 0008D2E8  7F 65 DB 78 */	mr r5, r27
/* 80091DCC 0008D2EC  7F 86 E3 78 */	mr r6, r28
/* 80091DD0 0008D2F0  38 60 00 10 */	li r3, 0x10
/* 80091DD4 0008D2F4  4C C6 31 82 */	crclr 6
/* 80091DD8 0008D2F8  3C E0 80 1B */	lis r7, lbl_801B3E50@ha
/* 80091DDC 0008D2FC  38 E7 3E 50 */	addi r7, r7, lbl_801B3E50@l
/* 80091DE0 0008D300  81 87 00 40 */	lwz r12, 0x40(r7)
/* 80091DE4 0008D304  7D 89 03 A6 */	mtctr r12
/* 80091DE8 0008D308  4E 80 04 21 */	bctrl 
/* 80091DEC 0008D30C  80 9A 01 9C */	lwz r4, 0x19c(r26)
/* 80091DF0 0008D310  38 60 00 00 */	li r3, 0
/* 80091DF4 0008D314  38 18 F8 FF */	addi r0, r24, -1793
/* 80091DF8 0008D318  54 84 04 E2 */	rlwinm r4, r4, 0, 0x13, 0x11
/* 80091DFC 0008D31C  90 9A 01 9C */	stw r4, 0x19c(r26)
/* 80091E00 0008D320  90 77 00 D8 */	stw r3, 0xd8(r23)
/* 80091E04 0008D324  80 7A 01 94 */	lwz r3, 0x194(r26)
/* 80091E08 0008D328  7C 60 00 38 */	and r0, r3, r0
/* 80091E0C 0008D32C  90 1A 01 94 */	stw r0, 0x194(r26)
/* 80091E10 0008D330  48 00 5D E5 */	bl OSEnableScheduler
/* 80091E14 0008D334  48 00 62 ED */	bl __OSReschedule
/* 80091E18 0008D338  48 00 00 18 */	b lbl_80091E30
lbl_80091E1C:
/* 80091E1C 0008D33C  80 7A 01 9C */	lwz r3, 0x19c(r26)
/* 80091E20 0008D340  38 00 00 00 */	li r0, 0
/* 80091E24 0008D344  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 80091E28 0008D348  90 7A 01 9C */	stw r3, 0x19c(r26)
/* 80091E2C 0008D34C  90 17 00 D8 */	stw r0, 0xd8(r23)
lbl_80091E30:
/* 80091E30 0008D350  7F 43 D3 78 */	mr r3, r26
/* 80091E34 0008D354  4B FF F5 2D */	bl OSLoadContext
lbl_80091E38:
/* 80091E38 0008D358  3F 00 80 1B */	lis r24, lbl_801B3E50@ha
/* 80091E3C 0008D35C  57 37 15 BA */	rlwinm r23, r25, 2, 0x16, 0x1d
/* 80091E40 0008D360  3B 18 3E 50 */	addi r24, r24, lbl_801B3E50@l
/* 80091E44 0008D364  7C 18 B8 2E */	lwzx r0, r24, r23
/* 80091E48 0008D368  2C 00 00 00 */	cmpwi r0, 0
/* 80091E4C 0008D36C  41 82 00 38 */	beq lbl_80091E84
/* 80091E50 0008D370  48 00 5D 69 */	bl OSDisableScheduler
/* 80091E54 0008D374  7F 23 CB 78 */	mr r3, r25
/* 80091E58 0008D378  7F 44 D3 78 */	mr r4, r26
/* 80091E5C 0008D37C  7F 65 DB 78 */	mr r5, r27
/* 80091E60 0008D380  7F 86 E3 78 */	mr r6, r28
/* 80091E64 0008D384  4C C6 31 82 */	crclr 6
/* 80091E68 0008D388  7D 98 B8 2E */	lwzx r12, r24, r23
/* 80091E6C 0008D38C  7D 89 03 A6 */	mtctr r12
/* 80091E70 0008D390  4E 80 04 21 */	bctrl 
/* 80091E74 0008D394  48 00 5D 81 */	bl OSEnableScheduler
/* 80091E78 0008D398  48 00 62 89 */	bl __OSReschedule
/* 80091E7C 0008D39C  7F 43 D3 78 */	mr r3, r26
/* 80091E80 0008D3A0  4B FF F4 E1 */	bl OSLoadContext
lbl_80091E84:
/* 80091E84 0008D3A4  28 19 00 08 */	cmplwi r25, 8
/* 80091E88 0008D3A8  40 82 00 0C */	bne lbl_80091E94
/* 80091E8C 0008D3AC  7F 43 D3 78 */	mr r3, r26
/* 80091E90 0008D3B0  4B FF F4 D1 */	bl OSLoadContext
lbl_80091E94:
/* 80091E94 0008D3B4  7F 24 CB 78 */	mr r4, r25
/* 80091E98 0008D3B8  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80091E9C 0008D3BC  4C C6 31 82 */	crclr 6
/* 80091EA0 0008D3C0  4B FF FA 0D */	bl OSReport
lbl_80091EA4:
/* 80091EA4 0008D3C4  38 6D 82 4C */	addi r3, r13, lbl_802466CC@sda21
/* 80091EA8 0008D3C8  4C C6 31 82 */	crclr 6
/* 80091EAC 0008D3CC  4B FF FA 01 */	bl OSReport
/* 80091EB0 0008D3D0  7F 43 D3 78 */	mr r3, r26
/* 80091EB4 0008D3D4  4B FF F6 CD */	bl OSDumpContext
/* 80091EB8 0008D3D8  7F 64 DB 78 */	mr r4, r27
/* 80091EBC 0008D3DC  7F 85 E3 78 */	mr r5, r28
/* 80091EC0 0008D3E0  38 7F 00 94 */	addi r3, r31, 0x94
/* 80091EC4 0008D3E4  4C C6 31 82 */	crclr 6
/* 80091EC8 0008D3E8  4B FF F9 E5 */	bl OSReport
/* 80091ECC 0008D3EC  7F A6 EB 78 */	mr r6, r29
/* 80091ED0 0008D3F0  7F C5 F3 78 */	mr r5, r30
/* 80091ED4 0008D3F4  38 7F 00 C8 */	addi r3, r31, 0xc8
/* 80091ED8 0008D3F8  4C C6 31 82 */	crclr 6
/* 80091EDC 0008D3FC  4B FF F9 D1 */	bl OSReport
/* 80091EE0 0008D400  28 19 00 0F */	cmplwi r25, 0xf
/* 80091EE4 0008D404  41 81 00 C4 */	bgt lbl_80091FA8
/* 80091EE8 0008D408  3C 60 80 18 */	lis r3, lbl_801834FC@ha
/* 80091EEC 0008D40C  57 20 10 3A */	slwi r0, r25, 2
/* 80091EF0 0008D410  38 63 34 FC */	addi r3, r3, lbl_801834FC@l
/* 80091EF4 0008D414  7C 63 00 2E */	lwzx r3, r3, r0
/* 80091EF8 0008D418  7C 69 03 A6 */	mtctr r3
/* 80091EFC 0008D41C  4E 80 04 20 */	bctr 

glabel lbl_80091F00
/* 80091F00 0008D420  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 80091F04 0008D424  7F 85 E3 78 */	mr r5, r28
/* 80091F08 0008D428  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80091F0C 0008D42C  4C C6 31 82 */	crclr 6
/* 80091F10 0008D430  4B FF F9 9D */	bl OSReport
/* 80091F14 0008D434  48 00 00 94 */	b lbl_80091FA8

glabel lbl_80091F18
/* 80091F18 0008D438  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 80091F1C 0008D43C  38 7F 01 38 */	addi r3, r31, 0x138
/* 80091F20 0008D440  4C C6 31 82 */	crclr 6
/* 80091F24 0008D444  4B FF F9 89 */	bl OSReport
/* 80091F28 0008D448  48 00 00 80 */	b lbl_80091FA8

glabel lbl_80091F2C
/* 80091F2C 0008D44C  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 80091F30 0008D450  7F 85 E3 78 */	mr r5, r28
/* 80091F34 0008D454  38 7F 01 84 */	addi r3, r31, 0x184
/* 80091F38 0008D458  4C C6 31 82 */	crclr 6
/* 80091F3C 0008D45C  4B FF F9 71 */	bl OSReport
/* 80091F40 0008D460  48 00 00 68 */	b lbl_80091FA8

glabel lbl_80091F44
/* 80091F44 0008D464  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 80091F48 0008D468  7F 85 E3 78 */	mr r5, r28
/* 80091F4C 0008D46C  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 80091F50 0008D470  4C C6 31 82 */	crclr 6
/* 80091F54 0008D474  4B FF F9 59 */	bl OSReport
/* 80091F58 0008D478  48 00 00 50 */	b lbl_80091FA8

glabel lbl_80091F5C
/* 80091F5C 0008D47C  38 6D 82 4C */	addi r3, r13, lbl_802466CC@sda21
/* 80091F60 0008D480  4C C6 31 82 */	crclr 6
/* 80091F64 0008D484  4B FF F9 49 */	bl OSReport
/* 80091F68 0008D488  3F 20 CC 00 */	lis r25, 0xCC005030@ha
/* 80091F6C 0008D48C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80091F70 0008D490  A0 99 50 30 */	lhz r4, 0xCC005030@l(r25)
/* 80091F74 0008D494  A0 B9 50 32 */	lhz r5, 0x5032(r25)
/* 80091F78 0008D498  4C C6 31 82 */	crclr 6
/* 80091F7C 0008D49C  4B FF F9 31 */	bl OSReport
/* 80091F80 0008D4A0  A0 99 50 20 */	lhz r4, 0x5020(r25)
/* 80091F84 0008D4A4  38 7F 02 68 */	addi r3, r31, 0x268
/* 80091F88 0008D4A8  A0 B9 50 22 */	lhz r5, 0x5022(r25)
/* 80091F8C 0008D4AC  4C C6 31 82 */	crclr 6
/* 80091F90 0008D4B0  4B FF F9 1D */	bl OSReport
/* 80091F94 0008D4B4  3C 80 CD 00 */	lis r4, 0xCD006014@ha
/* 80091F98 0008D4B8  38 7F 02 88 */	addi r3, r31, 0x288
/* 80091F9C 0008D4BC  80 84 60 14 */	lwz r4, 0xCD006014@l(r4)
/* 80091FA0 0008D4C0  4C C6 31 82 */	crclr 6
/* 80091FA4 0008D4C4  4B FF F9 09 */	bl OSReport

glabel lbl_80091FA8
/* 80091FA8 0008D4C8  A8 8D 8C E4 */	lha r4, lbl_80247164@sda21(r13)
/* 80091FAC 0008D4CC  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 80091FB0 0008D4D0  80 AD 8C E0 */	lwz r5, lbl_80247160@sda21(r13)
/* 80091FB4 0008D4D4  80 ED 8C E8 */	lwz r7, lbl_80247168@sda21(r13)
/* 80091FB8 0008D4D8  81 0D 8C EC */	lwz r8, lbl_8024716C@sda21(r13)
/* 80091FBC 0008D4DC  4C C6 31 82 */	crclr 6
/* 80091FC0 0008D4E0  4B FF F8 ED */	bl OSReport
/* 80091FC4 0008D4E4  4B FF CA 01 */	bl PPCHalt
/* 80091FC8 0008D4E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80091FCC 0008D4EC  48 0C A9 B5 */	bl _restgpr_23
/* 80091FD0 0008D4F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80091FD4 0008D4F4  7C 08 03 A6 */	mtlr r0
/* 80091FD8 0008D4F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80091FDC 0008D4FC  4E 80 00 20 */	blr 