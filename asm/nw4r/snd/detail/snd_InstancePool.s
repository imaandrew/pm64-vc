.include "macros.inc"

.section .text, "ax"

glabel CreateImpl__Q46nw4hbm3snd6detail8PoolImplFPvUlUl
/* 801306B0 0012BBD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801306B4 0012BBD4  7C 08 02 A6 */	mflr r0
/* 801306B8 0012BBD8  2C 04 00 00 */	cmpwi r4, 0
/* 801306BC 0012BBDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801306C0 0012BBE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801306C4 0012BBE4  7C 7F 1B 78 */	mr r31, r3
/* 801306C8 0012BBE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801306CC 0012BBEC  7C DE 33 78 */	mr r30, r6
/* 801306D0 0012BBF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801306D4 0012BBF4  7C BD 2B 78 */	mr r29, r5
/* 801306D8 0012BBF8  93 81 00 10 */	stw r28, 0x10(r1)
/* 801306DC 0012BBFC  7C 9C 23 78 */	mr r28, r4
/* 801306E0 0012BC00  40 82 00 20 */	bne .L_80130700
/* 801306E4 0012BC04  3C 60 80 1A */	lis r3, lbl_801A6458@ha
/* 801306E8 0012BC08  3C A0 80 1A */	lis r5, lbl_801A6470@ha
/* 801306EC 0012BC0C  38 63 64 58 */	addi r3, r3, lbl_801A6458@l
/* 801306F0 0012BC10  38 80 00 26 */	li r4, 0x26
/* 801306F4 0012BC14  38 A5 64 70 */	addi r5, r5, lbl_801A6470@l
/* 801306F8 0012BC18  4C C6 31 82 */	crclr 6
/* 801306FC 0012BC1C  4B FE 56 C5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130700:
/* 80130700 0012BC20  4B F6 4B B5 */	bl OSDisableInterrupts
/* 80130704 0012BC24  38 1C 00 03 */	addi r0, r28, 3
/* 80130708 0012BC28  38 9E 00 03 */	addi r4, r30, 3
/* 8013070C 0012BC2C  54 06 00 3A */	rlwinm r6, r0, 0, 0, 0x1d
/* 80130710 0012BC30  38 E0 00 00 */	li r7, 0
/* 80130714 0012BC34  7C 1C 30 50 */	subf r0, r28, r6
/* 80130718 0012BC38  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 8013071C 0012BC3C  7C 00 E8 50 */	subf r0, r0, r29
/* 80130720 0012BC40  7F C0 23 97 */	divwu. r30, r0, r4
/* 80130724 0012BC44  41 82 00 CC */	beq .L_801307F0
/* 80130728 0012BC48  28 1E 00 08 */	cmplwi r30, 8
/* 8013072C 0012BC4C  38 BE FF F8 */	addi r5, r30, -8
/* 80130730 0012BC50  40 81 00 9C */	ble .L_801307CC
/* 80130734 0012BC54  38 05 00 07 */	addi r0, r5, 7
/* 80130738 0012BC58  54 00 E8 FE */	srwi r0, r0, 3
/* 8013073C 0012BC5C  7C 09 03 A6 */	mtctr r0
/* 80130740 0012BC60  28 05 00 00 */	cmplwi r5, 0
/* 80130744 0012BC64  40 81 00 88 */	ble .L_801307CC
.L_80130748:
/* 80130748 0012BC68  80 1F 00 00 */	lwz r0, 0(r31)
/* 8013074C 0012BC6C  7C C8 33 78 */	mr r8, r6
/* 80130750 0012BC70  38 E7 00 08 */	addi r7, r7, 8
/* 80130754 0012BC74  90 06 00 00 */	stw r0, 0(r6)
/* 80130758 0012BC78  90 DF 00 00 */	stw r6, 0(r31)
/* 8013075C 0012BC7C  7C C6 22 14 */	add r6, r6, r4
/* 80130760 0012BC80  7C C5 33 78 */	mr r5, r6
/* 80130764 0012BC84  91 06 00 00 */	stw r8, 0(r6)
/* 80130768 0012BC88  90 DF 00 00 */	stw r6, 0(r31)
/* 8013076C 0012BC8C  7C C6 22 14 */	add r6, r6, r4
/* 80130770 0012BC90  7C C0 33 78 */	mr r0, r6
/* 80130774 0012BC94  90 A6 00 00 */	stw r5, 0(r6)
/* 80130778 0012BC98  90 DF 00 00 */	stw r6, 0(r31)
/* 8013077C 0012BC9C  7C C6 22 14 */	add r6, r6, r4
/* 80130780 0012BCA0  7C C5 33 78 */	mr r5, r6
/* 80130784 0012BCA4  90 06 00 00 */	stw r0, 0(r6)
/* 80130788 0012BCA8  90 DF 00 00 */	stw r6, 0(r31)
/* 8013078C 0012BCAC  7C C6 22 14 */	add r6, r6, r4
/* 80130790 0012BCB0  7C C0 33 78 */	mr r0, r6
/* 80130794 0012BCB4  90 A6 00 00 */	stw r5, 0(r6)
/* 80130798 0012BCB8  90 DF 00 00 */	stw r6, 0(r31)
/* 8013079C 0012BCBC  7C C6 22 14 */	add r6, r6, r4
/* 801307A0 0012BCC0  7C C5 33 78 */	mr r5, r6
/* 801307A4 0012BCC4  90 06 00 00 */	stw r0, 0(r6)
/* 801307A8 0012BCC8  90 DF 00 00 */	stw r6, 0(r31)
/* 801307AC 0012BCCC  7C C6 22 14 */	add r6, r6, r4
/* 801307B0 0012BCD0  7C C0 33 78 */	mr r0, r6
/* 801307B4 0012BCD4  90 A6 00 00 */	stw r5, 0(r6)
/* 801307B8 0012BCD8  90 DF 00 00 */	stw r6, 0(r31)
/* 801307BC 0012BCDC  7C 06 21 6E */	stwux r0, r6, r4
/* 801307C0 0012BCE0  90 DF 00 00 */	stw r6, 0(r31)
/* 801307C4 0012BCE4  7C C6 22 14 */	add r6, r6, r4
/* 801307C8 0012BCE8  42 00 FF 80 */	bdnz .L_80130748
.L_801307CC:
/* 801307CC 0012BCEC  7C 07 F0 50 */	subf r0, r7, r30
/* 801307D0 0012BCF0  7C 09 03 A6 */	mtctr r0
/* 801307D4 0012BCF4  7C 07 F0 40 */	cmplw r7, r30
/* 801307D8 0012BCF8  40 80 00 18 */	bge .L_801307F0
.L_801307DC:
/* 801307DC 0012BCFC  80 1F 00 00 */	lwz r0, 0(r31)
/* 801307E0 0012BD00  90 06 00 00 */	stw r0, 0(r6)
/* 801307E4 0012BD04  90 DF 00 00 */	stw r6, 0(r31)
/* 801307E8 0012BD08  7C C6 22 14 */	add r6, r6, r4
/* 801307EC 0012BD0C  42 00 FF F0 */	bdnz .L_801307DC
.L_801307F0:
/* 801307F0 0012BD10  4B F6 4A ED */	bl OSRestoreInterrupts
/* 801307F4 0012BD14  7F C3 F3 78 */	mr r3, r30
/* 801307F8 0012BD18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801307FC 0012BD1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80130800 0012BD20  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80130804 0012BD24  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80130808 0012BD28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013080C 0012BD2C  7C 08 03 A6 */	mtlr r0
/* 80130810 0012BD30  38 21 00 20 */	addi r1, r1, 0x20
/* 80130814 0012BD34  4E 80 00 20 */	blr

glabel DestroyImpl__Q46nw4hbm3snd6detail8PoolImplFPvUl
/* 80130818 0012BD38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013081C 0012BD3C  7C 08 02 A6 */	mflr r0
/* 80130820 0012BD40  2C 04 00 00 */	cmpwi r4, 0
/* 80130824 0012BD44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80130828 0012BD48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013082C 0012BD4C  7C BF 2B 78 */	mr r31, r5
/* 80130830 0012BD50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80130834 0012BD54  7C 9E 23 78 */	mr r30, r4
/* 80130838 0012BD58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8013083C 0012BD5C  7C 7D 1B 78 */	mr r29, r3
/* 80130840 0012BD60  40 82 00 20 */	bne .L_80130860
/* 80130844 0012BD64  3C 60 80 1A */	lis r3, lbl_801A6458@ha
/* 80130848 0012BD68  3C A0 80 1A */	lis r5, lbl_801A6470@ha
/* 8013084C 0012BD6C  38 63 64 58 */	addi r3, r3, lbl_801A6458@l
/* 80130850 0012BD70  38 80 00 44 */	li r4, 0x44
/* 80130854 0012BD74  38 A5 64 70 */	addi r5, r5, lbl_801A6470@l
/* 80130858 0012BD78  4C C6 31 82 */	crclr 6
/* 8013085C 0012BD7C  4B FE 55 65 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130860:
/* 80130860 0012BD80  4B F6 4A 55 */	bl OSDisableInterrupts
/* 80130864 0012BD84  80 BD 00 00 */	lwz r5, 0(r29)
/* 80130868 0012BD88  7C 9E FA 14 */	add r4, r30, r31
/* 8013086C 0012BD8C  48 00 00 28 */	b .L_80130894
.L_80130870:
/* 80130870 0012BD90  7C 1E 28 40 */	cmplw r30, r5
/* 80130874 0012BD94  41 81 00 18 */	bgt .L_8013088C
/* 80130878 0012BD98  7C 05 20 40 */	cmplw r5, r4
/* 8013087C 0012BD9C  40 80 00 10 */	bge .L_8013088C
/* 80130880 0012BDA0  80 05 00 00 */	lwz r0, 0(r5)
/* 80130884 0012BDA4  90 1D 00 00 */	stw r0, 0(r29)
/* 80130888 0012BDA8  48 00 00 08 */	b .L_80130890
.L_8013088C:
/* 8013088C 0012BDAC  7C BD 2B 78 */	mr r29, r5
.L_80130890:
/* 80130890 0012BDB0  80 A5 00 00 */	lwz r5, 0(r5)
.L_80130894:
/* 80130894 0012BDB4  2C 05 00 00 */	cmpwi r5, 0
/* 80130898 0012BDB8  40 82 FF D8 */	bne .L_80130870
/* 8013089C 0012BDBC  4B F6 4A 41 */	bl OSRestoreInterrupts
/* 801308A0 0012BDC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801308A4 0012BDC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801308A8 0012BDC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801308AC 0012BDCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801308B0 0012BDD0  7C 08 03 A6 */	mtlr r0
/* 801308B4 0012BDD4  38 21 00 20 */	addi r1, r1, 0x20
/* 801308B8 0012BDD8  4E 80 00 20 */	blr

glabel AllocImpl__Q46nw4hbm3snd6detail8PoolImplFv
/* 801308BC 0012BDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801308C0 0012BDE0  7C 08 02 A6 */	mflr r0
/* 801308C4 0012BDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801308C8 0012BDE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801308CC 0012BDEC  93 C1 00 08 */	stw r30, 8(r1)
/* 801308D0 0012BDF0  7C 7E 1B 78 */	mr r30, r3
/* 801308D4 0012BDF4  4B F6 49 E1 */	bl OSDisableInterrupts
/* 801308D8 0012BDF8  83 FE 00 00 */	lwz r31, 0(r30)
/* 801308DC 0012BDFC  2C 1F 00 00 */	cmpwi r31, 0
/* 801308E0 0012BE00  40 82 00 10 */	bne .L_801308F0
/* 801308E4 0012BE04  4B F6 49 F9 */	bl OSRestoreInterrupts
/* 801308E8 0012BE08  38 60 00 00 */	li r3, 0
/* 801308EC 0012BE0C  48 00 00 14 */	b .L_80130900
.L_801308F0:
/* 801308F0 0012BE10  80 1F 00 00 */	lwz r0, 0(r31)
/* 801308F4 0012BE14  90 1E 00 00 */	stw r0, 0(r30)
/* 801308F8 0012BE18  4B F6 49 E5 */	bl OSRestoreInterrupts
/* 801308FC 0012BE1C  7F E3 FB 78 */	mr r3, r31
.L_80130900:
/* 80130900 0012BE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130904 0012BE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130908 0012BE28  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013090C 0012BE2C  7C 08 03 A6 */	mtlr r0
/* 80130910 0012BE30  38 21 00 10 */	addi r1, r1, 0x10
/* 80130914 0012BE34  4E 80 00 20 */	blr

glabel FreeImpl__Q46nw4hbm3snd6detail8PoolImplFPv
/* 80130918 0012BE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013091C 0012BE3C  7C 08 02 A6 */	mflr r0
/* 80130920 0012BE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130924 0012BE44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130928 0012BE48  7C 9F 23 78 */	mr r31, r4
/* 8013092C 0012BE4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80130930 0012BE50  7C 7E 1B 78 */	mr r30, r3
/* 80130934 0012BE54  4B F6 49 81 */	bl OSDisableInterrupts
/* 80130938 0012BE58  80 1E 00 00 */	lwz r0, 0(r30)
/* 8013093C 0012BE5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80130940 0012BE60  93 FE 00 00 */	stw r31, 0(r30)
/* 80130944 0012BE64  4B F6 49 99 */	bl OSRestoreInterrupts
/* 80130948 0012BE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013094C 0012BE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130950 0012BE70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80130954 0012BE74  7C 08 03 A6 */	mtlr r0
/* 80130958 0012BE78  38 21 00 10 */	addi r1, r1, 0x10
/* 8013095C 0012BE7C  4E 80 00 20 */	blr
