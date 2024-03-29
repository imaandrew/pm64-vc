.include "macros.inc"

.section .text, "ax"

glabel __ct__Q46nw4hbm3snd6detail12EnvGeneratorFv
/* 8012F434 0012A954  3C C0 80 17 */	lis r6, lbl_801767E8@ha
/* 8012F438 0012A958  3C A0 80 17 */	lis r5, lbl_801767C8@ha
/* 8012F43C 0012A95C  38 C6 67 E8 */	addi r6, r6, lbl_801767E8@l
/* 8012F440 0012A960  3C 80 80 17 */	lis r4, lbl_801767CC@ha
/* 8012F444 0012A964  C0 45 67 C8 */	lfs f2, lbl_801767C8@l(r5)
/* 8012F448 0012A968  38 A0 00 7F */	li r5, 0x7f
/* 8012F44C 0012A96C  C0 26 01 FC */	lfs f1, 0x1fc(r6)
/* 8012F450 0012A970  38 00 00 00 */	li r0, 0
/* 8012F454 0012A974  C0 04 67 CC */	lfs f0, lbl_801767CC@l(r4)
/* 8012F458 0012A978  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8012F45C 0012A97C  D0 43 00 08 */	stfs f2, 8(r3)
/* 8012F460 0012A980  98 A3 00 14 */	stb r5, 0x14(r3)
/* 8012F464 0012A984  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8012F468 0012A988  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012F46C 0012A98C  90 03 00 00 */	stw r0, 0(r3)
/* 8012F470 0012A990  4E 80 00 20 */	blr

glabel Init__Q46nw4hbm3snd6detail12EnvGeneratorFv
/* 8012F474 0012A994  3C C0 80 17 */	lis r6, lbl_801767E8@ha
/* 8012F478 0012A998  3C A0 80 17 */	lis r5, lbl_801767C8@ha
/* 8012F47C 0012A99C  38 C6 67 E8 */	addi r6, r6, lbl_801767E8@l
/* 8012F480 0012A9A0  3C 80 80 17 */	lis r4, lbl_801767CC@ha
/* 8012F484 0012A9A4  C0 45 67 C8 */	lfs f2, lbl_801767C8@l(r5)
/* 8012F488 0012A9A8  38 A0 00 7F */	li r5, 0x7f
/* 8012F48C 0012A9AC  C0 26 01 FC */	lfs f1, 0x1fc(r6)
/* 8012F490 0012A9B0  38 00 00 00 */	li r0, 0
/* 8012F494 0012A9B4  C0 04 67 CC */	lfs f0, lbl_801767CC@l(r4)
/* 8012F498 0012A9B8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8012F49C 0012A9BC  D0 43 00 08 */	stfs f2, 8(r3)
/* 8012F4A0 0012A9C0  98 A3 00 14 */	stb r5, 0x14(r3)
/* 8012F4A4 0012A9C4  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8012F4A8 0012A9C8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012F4AC 0012A9CC  90 03 00 00 */	stw r0, 0(r3)
/* 8012F4B0 0012A9D0  4E 80 00 20 */	blr

glabel Reset__Q46nw4hbm3snd6detail12EnvGeneratorFv
/* 8012F4B4 0012A9D4  3C 80 80 17 */	lis r4, lbl_801767CC@ha
/* 8012F4B8 0012A9D8  38 00 00 00 */	li r0, 0
/* 8012F4BC 0012A9DC  C0 04 67 CC */	lfs f0, lbl_801767CC@l(r4)
/* 8012F4C0 0012A9E0  90 03 00 00 */	stw r0, 0(r3)
/* 8012F4C4 0012A9E4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012F4C8 0012A9E8  4E 80 00 20 */	blr

glabel GetValue__Q46nw4hbm3snd6detail12EnvGeneratorCFv
/* 8012F4CC 0012A9EC  80 03 00 00 */	lwz r0, 0(r3)
/* 8012F4D0 0012A9F0  2C 00 00 00 */	cmpwi r0, 0
/* 8012F4D4 0012A9F4  40 82 00 1C */	bne .L_8012F4F0
/* 8012F4D8 0012A9F8  3C 80 80 17 */	lis r4, lbl_801767D0@ha
/* 8012F4DC 0012A9FC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8012F4E0 0012AA00  C0 24 67 D0 */	lfs f1, lbl_801767D0@l(r4)
/* 8012F4E4 0012AA04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8012F4E8 0012AA08  40 82 00 08 */	bne .L_8012F4F0
/* 8012F4EC 0012AA0C  48 01 3B 38 */	b CalcVolumeRatio__Q46nw4hbm3snd6detail4UtilFf
.L_8012F4F0:
/* 8012F4F0 0012AA10  3C 80 80 17 */	lis r4, lbl_801767D4@ha
/* 8012F4F4 0012AA14  C0 23 00 04 */	lfs f1, 4(r3)
/* 8012F4F8 0012AA18  C0 04 67 D4 */	lfs f0, lbl_801767D4@l(r4)
/* 8012F4FC 0012AA1C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8012F500 0012AA20  48 01 3B 24 */	b CalcVolumeRatio__Q46nw4hbm3snd6detail4UtilFf

glabel Update__Q46nw4hbm3snd6detail12EnvGeneratorFi
/* 8012F504 0012AA24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012F508 0012AA28  7C 08 02 A6 */	mflr r0
/* 8012F50C 0012AA2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012F510 0012AA30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012F514 0012AA34  3F E0 80 17 */	lis r31, lbl_801766C8@ha
/* 8012F518 0012AA38  3B FF 66 C8 */	addi r31, r31, lbl_801766C8@l
/* 8012F51C 0012AA3C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012F520 0012AA40  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012F524 0012AA44  7C 9D 23 78 */	mr r29, r4
/* 8012F528 0012AA48  93 81 00 20 */	stw r28, 0x20(r1)
/* 8012F52C 0012AA4C  7C 7C 1B 78 */	mr r28, r3
/* 8012F530 0012AA50  80 03 00 00 */	lwz r0, 0(r3)
/* 8012F534 0012AA54  2C 00 00 02 */	cmpwi r0, 2
/* 8012F538 0012AA58  41 82 01 54 */	beq .L_8012F68C
/* 8012F53C 0012AA5C  40 80 00 14 */	bge .L_8012F550
/* 8012F540 0012AA60  2C 00 00 00 */	cmpwi r0, 0
/* 8012F544 0012AA64  41 82 00 18 */	beq .L_8012F55C
/* 8012F548 0012AA68  40 80 00 60 */	bge .L_8012F5A8
/* 8012F54C 0012AA6C  48 00 01 40 */	b .L_8012F68C
.L_8012F550:
/* 8012F550 0012AA70  2C 00 00 04 */	cmpwi r0, 4
/* 8012F554 0012AA74  40 80 01 38 */	bge .L_8012F68C
/* 8012F558 0012AA78  48 00 01 04 */	b .L_8012F65C
.L_8012F55C:
/* 8012F55C 0012AA7C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8012F560 0012AA80  38 00 00 01 */	li r0, 1
/* 8012F564 0012AA84  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 8012F568 0012AA88  7C 89 03 A6 */	mtctr r4
/* 8012F56C 0012AA8C  2C 04 00 00 */	cmpwi r4, 0
/* 8012F570 0012AA90  40 81 00 2C */	ble .L_8012F59C
.L_8012F574:
/* 8012F574 0012AA94  C0 63 00 04 */	lfs f3, 4(r3)
/* 8012F578 0012AA98  3B BD FF FF */	addi r29, r29, -1
/* 8012F57C 0012AA9C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 8012F580 0012AAA0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8012F584 0012AAA4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8012F588 0012AAA8  D0 43 00 04 */	stfs f2, 4(r3)
/* 8012F58C 0012AAAC  40 81 00 0C */	ble .L_8012F598
/* 8012F590 0012AAB0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012F594 0012AAB4  90 03 00 00 */	stw r0, 0(r3)
.L_8012F598:
/* 8012F598 0012AAB8  42 00 FF DC */	bdnz .L_8012F574
.L_8012F59C:
/* 8012F59C 0012AABC  80 03 00 00 */	lwz r0, 0(r3)
/* 8012F5A0 0012AAC0  2C 00 00 01 */	cmpwi r0, 1
/* 8012F5A4 0012AAC4  40 82 00 E8 */	bne .L_8012F68C
.L_8012F5A8:
/* 8012F5A8 0012AAC8  8B C3 00 14 */	lbz r30, 0x14(r3)
/* 8012F5AC 0012AACC  38 00 00 00 */	li r0, 0
/* 8012F5B0 0012AAD0  2C 1E 00 00 */	cmpwi r30, 0
/* 8012F5B4 0012AAD4  41 80 00 10 */	blt .L_8012F5C4
/* 8012F5B8 0012AAD8  2C 1E 00 7F */	cmpwi r30, 0x7f
/* 8012F5BC 0012AADC  41 81 00 08 */	bgt .L_8012F5C4
/* 8012F5C0 0012AAE0  38 00 00 01 */	li r0, 1
.L_8012F5C4:
/* 8012F5C4 0012AAE4  2C 00 00 00 */	cmpwi r0, 0
/* 8012F5C8 0012AAE8  40 82 00 2C */	bne .L_8012F5F4
/* 8012F5CC 0012AAEC  3C 60 80 1A */	lis r3, lbl_801A5F80@ha
/* 8012F5D0 0012AAF0  3C A0 80 1A */	lis r5, lbl_801A5F98@ha
/* 8012F5D4 0012AAF4  7F C6 F3 78 */	mr r6, r30
/* 8012F5D8 0012AAF8  38 80 01 41 */	li r4, 0x141
/* 8012F5DC 0012AAFC  38 63 5F 80 */	addi r3, r3, lbl_801A5F80@l
/* 8012F5E0 0012AB00  38 A5 5F 98 */	addi r5, r5, lbl_801A5F98@l
/* 8012F5E4 0012AB04  38 E0 00 00 */	li r7, 0
/* 8012F5E8 0012AB08  39 00 00 7F */	li r8, 0x7f
/* 8012F5EC 0012AB0C  4C C6 31 82 */	crclr 6
/* 8012F5F0 0012AB10  4B FE 67 D1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012F5F4:
/* 8012F5F4 0012AB14  3C 60 43 30 */	lis r3, 0x4330
/* 8012F5F8 0012AB18  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 8012F5FC 0012AB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F600 0012AB20  57 C0 08 3C */	slwi r0, r30, 1
/* 8012F604 0012AB24  38 9F 00 00 */	addi r4, r31, 0
/* 8012F608 0012AB28  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 8012F60C 0012AB2C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8012F610 0012AB30  7C 04 02 AE */	lhax r0, r4, r0
/* 8012F614 0012AB34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8012F618 0012AB38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8012F61C 0012AB3C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8012F620 0012AB40  EC 40 18 28 */	fsubs f2, f0, f3
/* 8012F624 0012AB44  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012F628 0012AB48  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8012F62C 0012AB4C  90 61 00 08 */	stw r3, 8(r1)
/* 8012F630 0012AB50  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8012F634 0012AB54  C8 41 00 08 */	lfd f2, 8(r1)
/* 8012F638 0012AB58  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012F63C 0012AB5C  EC 22 18 28 */	fsubs f1, f2, f3
/* 8012F640 0012AB60  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8012F644 0012AB64  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012F648 0012AB68  41 81 00 44 */	bgt .L_8012F68C
/* 8012F64C 0012AB6C  38 00 00 02 */	li r0, 2
/* 8012F650 0012AB70  D0 3C 00 04 */	stfs f1, 4(r28)
/* 8012F654 0012AB74  90 1C 00 00 */	stw r0, 0(r28)
/* 8012F658 0012AB78  48 00 00 34 */	b .L_8012F68C
.L_8012F65C:
/* 8012F65C 0012AB7C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8012F660 0012AB80  3C 00 43 30 */	lis r0, 0x4330
/* 8012F664 0012AB84  90 81 00 14 */	stw r4, 0x14(r1)
/* 8012F668 0012AB88  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 8012F66C 0012AB8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8012F670 0012AB90  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8012F674 0012AB94  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8012F678 0012AB98  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012F67C 0012AB9C  EC 42 18 28 */	fsubs f2, f2, f3
/* 8012F680 0012ABA0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8012F684 0012ABA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012F688 0012ABA8  D0 03 00 04 */	stfs f0, 4(r3)
.L_8012F68C:
/* 8012F68C 0012ABAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012F690 0012ABB0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012F694 0012ABB4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012F698 0012ABB8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012F69C 0012ABBC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8012F6A0 0012ABC0  7C 08 03 A6 */	mtlr r0
/* 8012F6A4 0012ABC4  38 21 00 30 */	addi r1, r1, 0x30
/* 8012F6A8 0012ABC8  4E 80 00 20 */	blr

glabel SetAttack__Q46nw4hbm3snd6detail12EnvGeneratorFi
/* 8012F6AC 0012ABCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F6B0 0012ABD0  7C 08 02 A6 */	mflr r0
/* 8012F6B4 0012ABD4  2C 04 00 00 */	cmpwi r4, 0
/* 8012F6B8 0012ABD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F6BC 0012ABDC  38 00 00 00 */	li r0, 0
/* 8012F6C0 0012ABE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F6C4 0012ABE4  7C 9F 23 78 */	mr r31, r4
/* 8012F6C8 0012ABE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8012F6CC 0012ABEC  7C 7E 1B 78 */	mr r30, r3
/* 8012F6D0 0012ABF0  41 80 00 10 */	blt .L_8012F6E0
/* 8012F6D4 0012ABF4  2C 04 00 7F */	cmpwi r4, 0x7f
/* 8012F6D8 0012ABF8  41 81 00 08 */	bgt .L_8012F6E0
/* 8012F6DC 0012ABFC  38 00 00 01 */	li r0, 1
.L_8012F6E0:
/* 8012F6E0 0012AC00  2C 00 00 00 */	cmpwi r0, 0
/* 8012F6E4 0012AC04  40 82 00 2C */	bne .L_8012F710
/* 8012F6E8 0012AC08  3C 60 80 1A */	lis r3, lbl_801A5F80@ha
/* 8012F6EC 0012AC0C  3C A0 80 1A */	lis r5, lbl_801A5FD4@ha
/* 8012F6F0 0012AC10  7F E6 FB 78 */	mr r6, r31
/* 8012F6F4 0012AC14  38 80 00 F5 */	li r4, 0xf5
/* 8012F6F8 0012AC18  38 63 5F 80 */	addi r3, r3, lbl_801A5F80@l
/* 8012F6FC 0012AC1C  38 A5 5F D4 */	addi r5, r5, lbl_801A5FD4@l
/* 8012F700 0012AC20  38 E0 00 00 */	li r7, 0
/* 8012F704 0012AC24  39 00 00 7F */	li r8, 0x7f
/* 8012F708 0012AC28  4C C6 31 82 */	crclr 6
/* 8012F70C 0012AC2C  4B FE 66 B5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012F710:
/* 8012F710 0012AC30  3C 60 80 17 */	lis r3, lbl_801767E8@ha
/* 8012F714 0012AC34  57 E0 10 3A */	slwi r0, r31, 2
/* 8012F718 0012AC38  38 63 67 E8 */	addi r3, r3, lbl_801767E8@l
/* 8012F71C 0012AC3C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8012F720 0012AC40  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8012F724 0012AC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F728 0012AC48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012F72C 0012AC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F730 0012AC50  7C 08 03 A6 */	mtlr r0
/* 8012F734 0012AC54  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F738 0012AC58  4E 80 00 20 */	blr

glabel SetDecay__Q46nw4hbm3snd6detail12EnvGeneratorFi
/* 8012F73C 0012AC5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012F740 0012AC60  7C 08 02 A6 */	mflr r0
/* 8012F744 0012AC64  2C 04 00 00 */	cmpwi r4, 0
/* 8012F748 0012AC68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012F74C 0012AC6C  38 00 00 00 */	li r0, 0
/* 8012F750 0012AC70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012F754 0012AC74  3F E0 80 17 */	lis r31, lbl_801766C8@ha
/* 8012F758 0012AC78  3B FF 66 C8 */	addi r31, r31, lbl_801766C8@l
/* 8012F75C 0012AC7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012F760 0012AC80  3F C0 80 1A */	lis r30, lbl_801A5F80@ha
/* 8012F764 0012AC84  3B DE 5F 80 */	addi r30, r30, lbl_801A5F80@l
/* 8012F768 0012AC88  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012F76C 0012AC8C  7C 9D 23 78 */	mr r29, r4
/* 8012F770 0012AC90  93 81 00 20 */	stw r28, 0x20(r1)
/* 8012F774 0012AC94  7C 7C 1B 78 */	mr r28, r3
/* 8012F778 0012AC98  41 80 00 10 */	blt .L_8012F788
/* 8012F77C 0012AC9C  2C 04 00 7F */	cmpwi r4, 0x7f
/* 8012F780 0012ACA0  41 81 00 08 */	bgt .L_8012F788
/* 8012F784 0012ACA4  38 00 00 01 */	li r0, 1
.L_8012F788:
/* 8012F788 0012ACA8  2C 00 00 00 */	cmpwi r0, 0
/* 8012F78C 0012ACAC  40 82 00 24 */	bne .L_8012F7B0
/* 8012F790 0012ACB0  7F A6 EB 78 */	mr r6, r29
/* 8012F794 0012ACB4  38 7E 00 00 */	addi r3, r30, 0
/* 8012F798 0012ACB8  38 BE 00 94 */	addi r5, r30, 0x94
/* 8012F79C 0012ACBC  38 80 01 05 */	li r4, 0x105
/* 8012F7A0 0012ACC0  38 E0 00 00 */	li r7, 0
/* 8012F7A4 0012ACC4  39 00 00 7F */	li r8, 0x7f
/* 8012F7A8 0012ACC8  4C C6 31 82 */	crclr 6
/* 8012F7AC 0012ACCC  4B FE 66 15 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012F7B0:
/* 8012F7B0 0012ACD0  2C 1D 00 00 */	cmpwi r29, 0
/* 8012F7B4 0012ACD4  38 00 00 00 */	li r0, 0
/* 8012F7B8 0012ACD8  41 80 00 10 */	blt .L_8012F7C8
/* 8012F7BC 0012ACDC  2C 1D 00 7F */	cmpwi r29, 0x7f
/* 8012F7C0 0012ACE0  41 81 00 08 */	bgt .L_8012F7C8
/* 8012F7C4 0012ACE4  38 00 00 01 */	li r0, 1
.L_8012F7C8:
/* 8012F7C8 0012ACE8  2C 00 00 00 */	cmpwi r0, 0
/* 8012F7CC 0012ACEC  40 82 00 24 */	bne .L_8012F7F0
/* 8012F7D0 0012ACF0  7F A6 EB 78 */	mr r6, r29
/* 8012F7D4 0012ACF4  38 7E 00 00 */	addi r3, r30, 0
/* 8012F7D8 0012ACF8  38 BE 00 D0 */	addi r5, r30, 0xd0
/* 8012F7DC 0012ACFC  38 80 01 32 */	li r4, 0x132
/* 8012F7E0 0012AD00  38 E0 00 00 */	li r7, 0
/* 8012F7E4 0012AD04  39 00 00 7F */	li r8, 0x7f
/* 8012F7E8 0012AD08  4C C6 31 82 */	crclr 6
/* 8012F7EC 0012AD0C  4B FE 65 D5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012F7F0:
/* 8012F7F0 0012AD10  2C 1D 00 7F */	cmpwi r29, 0x7f
/* 8012F7F4 0012AD14  40 82 00 0C */	bne .L_8012F800
/* 8012F7F8 0012AD18  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8012F7FC 0012AD1C  48 00 00 84 */	b .L_8012F880
.L_8012F800:
/* 8012F800 0012AD20  2C 1D 00 7E */	cmpwi r29, 0x7e
/* 8012F804 0012AD24  40 82 00 0C */	bne .L_8012F810
/* 8012F808 0012AD28  C0 1F 03 20 */	lfs f0, 0x320(r31)
/* 8012F80C 0012AD2C  48 00 00 74 */	b .L_8012F880
.L_8012F810:
/* 8012F810 0012AD30  2C 1D 00 32 */	cmpwi r29, 0x32
/* 8012F814 0012AD34  40 80 00 3C */	bge .L_8012F850
/* 8012F818 0012AD38  57 A3 08 3C */	slwi r3, r29, 1
/* 8012F81C 0012AD3C  3C 00 43 30 */	lis r0, 0x4330
/* 8012F820 0012AD40  38 63 00 01 */	addi r3, r3, 1
/* 8012F824 0012AD44  90 01 00 08 */	stw r0, 8(r1)
/* 8012F828 0012AD48  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8012F82C 0012AD4C  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 8012F830 0012AD50  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012F834 0012AD54  C0 3F 03 24 */	lfs f1, 0x324(r31)
/* 8012F838 0012AD58  C8 41 00 08 */	lfd f2, 8(r1)
/* 8012F83C 0012AD5C  C0 1F 03 28 */	lfs f0, 0x328(r31)
/* 8012F840 0012AD60  EC 42 18 28 */	fsubs f2, f2, f3
/* 8012F844 0012AD64  EC 22 00 72 */	fmuls f1, f2, f1
/* 8012F848 0012AD68  EC 01 00 24 */	fdivs f0, f1, f0
/* 8012F84C 0012AD6C  48 00 00 34 */	b .L_8012F880
.L_8012F850:
/* 8012F850 0012AD70  20 7D 00 7E */	subfic r3, r29, 0x7e
/* 8012F854 0012AD74  3C 00 43 30 */	lis r0, 0x4330
/* 8012F858 0012AD78  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8012F85C 0012AD7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8012F860 0012AD80  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 8012F864 0012AD84  90 61 00 14 */	stw r3, 0x14(r1)
/* 8012F868 0012AD88  C0 3F 03 2C */	lfs f1, 0x32c(r31)
/* 8012F86C 0012AD8C  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8012F870 0012AD90  C0 1F 03 28 */	lfs f0, 0x328(r31)
/* 8012F874 0012AD94  EC 42 18 28 */	fsubs f2, f2, f3
/* 8012F878 0012AD98  EC 21 10 24 */	fdivs f1, f1, f2
/* 8012F87C 0012AD9C  EC 01 00 24 */	fdivs f0, f1, f0
.L_8012F880:
/* 8012F880 0012ADA0  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8012F884 0012ADA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012F888 0012ADA8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012F88C 0012ADAC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012F890 0012ADB0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8012F894 0012ADB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012F898 0012ADB8  7C 08 03 A6 */	mtlr r0
/* 8012F89C 0012ADBC  38 21 00 30 */	addi r1, r1, 0x30
/* 8012F8A0 0012ADC0  4E 80 00 20 */	blr

glabel SetSustain__Q46nw4hbm3snd6detail12EnvGeneratorFi
/* 8012F8A4 0012ADC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F8A8 0012ADC8  7C 08 02 A6 */	mflr r0
/* 8012F8AC 0012ADCC  2C 04 00 00 */	cmpwi r4, 0
/* 8012F8B0 0012ADD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F8B4 0012ADD4  38 00 00 00 */	li r0, 0
/* 8012F8B8 0012ADD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F8BC 0012ADDC  7C 9F 23 78 */	mr r31, r4
/* 8012F8C0 0012ADE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8012F8C4 0012ADE4  7C 7E 1B 78 */	mr r30, r3
/* 8012F8C8 0012ADE8  41 80 00 10 */	blt .L_8012F8D8
/* 8012F8CC 0012ADEC  2C 04 00 7F */	cmpwi r4, 0x7f
/* 8012F8D0 0012ADF0  41 81 00 08 */	bgt .L_8012F8D8
/* 8012F8D4 0012ADF4  38 00 00 01 */	li r0, 1
.L_8012F8D8:
/* 8012F8D8 0012ADF8  2C 00 00 00 */	cmpwi r0, 0
/* 8012F8DC 0012ADFC  40 82 00 2C */	bne .L_8012F908
/* 8012F8E0 0012AE00  3C 60 80 1A */	lis r3, lbl_801A5F80@ha
/* 8012F8E4 0012AE04  3C A0 80 1A */	lis r5, lbl_801A6090@ha
/* 8012F8E8 0012AE08  7F E6 FB 78 */	mr r6, r31
/* 8012F8EC 0012AE0C  38 80 01 16 */	li r4, 0x116
/* 8012F8F0 0012AE10  38 63 5F 80 */	addi r3, r3, lbl_801A5F80@l
/* 8012F8F4 0012AE14  38 A5 60 90 */	addi r5, r5, lbl_801A6090@l
/* 8012F8F8 0012AE18  38 E0 00 00 */	li r7, 0
/* 8012F8FC 0012AE1C  39 00 00 7F */	li r8, 0x7f
/* 8012F900 0012AE20  4C C6 31 82 */	crclr 6
/* 8012F904 0012AE24  4B FE 64 BD */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012F908:
/* 8012F908 0012AE28  9B FE 00 14 */	stb r31, 0x14(r30)
/* 8012F90C 0012AE2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F910 0012AE30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012F914 0012AE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F918 0012AE38  7C 08 03 A6 */	mtlr r0
/* 8012F91C 0012AE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F920 0012AE40  4E 80 00 20 */	blr

glabel SetRelease__Q46nw4hbm3snd6detail12EnvGeneratorFi
/* 8012F924 0012AE44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012F928 0012AE48  7C 08 02 A6 */	mflr r0
/* 8012F92C 0012AE4C  2C 04 00 00 */	cmpwi r4, 0
/* 8012F930 0012AE50  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012F934 0012AE54  38 00 00 00 */	li r0, 0
/* 8012F938 0012AE58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012F93C 0012AE5C  3F E0 80 17 */	lis r31, lbl_801766C8@ha
/* 8012F940 0012AE60  3B FF 66 C8 */	addi r31, r31, lbl_801766C8@l
/* 8012F944 0012AE64  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012F948 0012AE68  7C 9E 23 78 */	mr r30, r4
/* 8012F94C 0012AE6C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012F950 0012AE70  7C 7D 1B 78 */	mr r29, r3
/* 8012F954 0012AE74  41 80 00 10 */	blt .L_8012F964
/* 8012F958 0012AE78  2C 04 00 7F */	cmpwi r4, 0x7f
/* 8012F95C 0012AE7C  41 81 00 08 */	bgt .L_8012F964
/* 8012F960 0012AE80  38 00 00 01 */	li r0, 1
.L_8012F964:
/* 8012F964 0012AE84  2C 00 00 00 */	cmpwi r0, 0
/* 8012F968 0012AE88  40 82 00 2C */	bne .L_8012F994
/* 8012F96C 0012AE8C  3C 60 80 1A */	lis r3, lbl_801A5F80@ha
/* 8012F970 0012AE90  3C A0 80 1A */	lis r5, lbl_801A6050@ha
/* 8012F974 0012AE94  7F C6 F3 78 */	mr r6, r30
/* 8012F978 0012AE98  38 80 01 27 */	li r4, 0x127
/* 8012F97C 0012AE9C  38 63 5F 80 */	addi r3, r3, lbl_801A5F80@l
/* 8012F980 0012AEA0  38 A5 60 50 */	addi r5, r5, lbl_801A6050@l
/* 8012F984 0012AEA4  38 E0 00 00 */	li r7, 0
/* 8012F988 0012AEA8  39 00 00 7F */	li r8, 0x7f
/* 8012F98C 0012AEAC  4C C6 31 82 */	crclr 6
/* 8012F990 0012AEB0  4B FE 64 31 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012F994:
/* 8012F994 0012AEB4  2C 1E 00 00 */	cmpwi r30, 0
/* 8012F998 0012AEB8  38 00 00 00 */	li r0, 0
/* 8012F99C 0012AEBC  41 80 00 10 */	blt .L_8012F9AC
/* 8012F9A0 0012AEC0  2C 1E 00 7F */	cmpwi r30, 0x7f
/* 8012F9A4 0012AEC4  41 81 00 08 */	bgt .L_8012F9AC
/* 8012F9A8 0012AEC8  38 00 00 01 */	li r0, 1
.L_8012F9AC:
/* 8012F9AC 0012AECC  2C 00 00 00 */	cmpwi r0, 0
/* 8012F9B0 0012AED0  40 82 00 2C */	bne .L_8012F9DC
/* 8012F9B4 0012AED4  3C 60 80 1A */	lis r3, lbl_801A5F80@ha
/* 8012F9B8 0012AED8  3C A0 80 1A */	lis r5, lbl_801A6050@ha
/* 8012F9BC 0012AEDC  7F C6 F3 78 */	mr r6, r30
/* 8012F9C0 0012AEE0  38 80 01 32 */	li r4, 0x132
/* 8012F9C4 0012AEE4  38 63 5F 80 */	addi r3, r3, lbl_801A5F80@l
/* 8012F9C8 0012AEE8  38 A5 60 50 */	addi r5, r5, lbl_801A6050@l
/* 8012F9CC 0012AEEC  38 E0 00 00 */	li r7, 0
/* 8012F9D0 0012AEF0  39 00 00 7F */	li r8, 0x7f
/* 8012F9D4 0012AEF4  4C C6 31 82 */	crclr 6
/* 8012F9D8 0012AEF8  4B FE 63 E9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012F9DC:
/* 8012F9DC 0012AEFC  2C 1E 00 7F */	cmpwi r30, 0x7f
/* 8012F9E0 0012AF00  40 82 00 0C */	bne .L_8012F9EC
/* 8012F9E4 0012AF04  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8012F9E8 0012AF08  48 00 00 84 */	b .L_8012FA6C
.L_8012F9EC:
/* 8012F9EC 0012AF0C  2C 1E 00 7E */	cmpwi r30, 0x7e
/* 8012F9F0 0012AF10  40 82 00 0C */	bne .L_8012F9FC
/* 8012F9F4 0012AF14  C0 1F 03 20 */	lfs f0, 0x320(r31)
/* 8012F9F8 0012AF18  48 00 00 74 */	b .L_8012FA6C
.L_8012F9FC:
/* 8012F9FC 0012AF1C  2C 1E 00 32 */	cmpwi r30, 0x32
/* 8012FA00 0012AF20  40 80 00 3C */	bge .L_8012FA3C
/* 8012FA04 0012AF24  57 C3 08 3C */	slwi r3, r30, 1
/* 8012FA08 0012AF28  3C 00 43 30 */	lis r0, 0x4330
/* 8012FA0C 0012AF2C  38 63 00 01 */	addi r3, r3, 1
/* 8012FA10 0012AF30  90 01 00 08 */	stw r0, 8(r1)
/* 8012FA14 0012AF34  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8012FA18 0012AF38  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 8012FA1C 0012AF3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012FA20 0012AF40  C0 3F 03 24 */	lfs f1, 0x324(r31)
/* 8012FA24 0012AF44  C8 41 00 08 */	lfd f2, 8(r1)
/* 8012FA28 0012AF48  C0 1F 03 28 */	lfs f0, 0x328(r31)
/* 8012FA2C 0012AF4C  EC 42 18 28 */	fsubs f2, f2, f3
/* 8012FA30 0012AF50  EC 22 00 72 */	fmuls f1, f2, f1
/* 8012FA34 0012AF54  EC 01 00 24 */	fdivs f0, f1, f0
/* 8012FA38 0012AF58  48 00 00 34 */	b .L_8012FA6C
.L_8012FA3C:
/* 8012FA3C 0012AF5C  20 7E 00 7E */	subfic r3, r30, 0x7e
/* 8012FA40 0012AF60  3C 00 43 30 */	lis r0, 0x4330
/* 8012FA44 0012AF64  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8012FA48 0012AF68  90 01 00 10 */	stw r0, 0x10(r1)
/* 8012FA4C 0012AF6C  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 8012FA50 0012AF70  90 61 00 14 */	stw r3, 0x14(r1)
/* 8012FA54 0012AF74  C0 3F 03 2C */	lfs f1, 0x32c(r31)
/* 8012FA58 0012AF78  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8012FA5C 0012AF7C  C0 1F 03 28 */	lfs f0, 0x328(r31)
/* 8012FA60 0012AF80  EC 42 18 28 */	fsubs f2, f2, f3
/* 8012FA64 0012AF84  EC 21 10 24 */	fdivs f1, f1, f2
/* 8012FA68 0012AF88  EC 01 00 24 */	fdivs f0, f1, f0
.L_8012FA6C:
/* 8012FA6C 0012AF8C  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8012FA70 0012AF90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012FA74 0012AF94  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012FA78 0012AF98  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012FA7C 0012AF9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012FA80 0012AFA0  7C 08 03 A6 */	mtlr r0
/* 8012FA84 0012AFA4  38 21 00 30 */	addi r1, r1, 0x30
/* 8012FA88 0012AFA8  4E 80 00 20 */	blr
