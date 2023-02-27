.include "macros.inc"

.section .text, "ax"

glabel bta_sys_rm_register
/* 800DD810 000D8D30  3C 80 80 22 */	lis r4, lbl_802200B8@ha
/* 800DD814 000D8D34  38 84 00 B8 */	addi r4, r4, lbl_802200B8@l
/* 800DD818 000D8D38  90 64 00 80 */	stw r3, 0x80(r4)
/* 800DD81C 000D8D3C  4E 80 00 20 */	blr

glabel bta_sys_compress_register
/* 800DD820 000D8D40  3C 80 80 22 */	lis r4, lbl_802200B8@ha
/* 800DD824 000D8D44  38 84 00 B8 */	addi r4, r4, lbl_802200B8@l
/* 800DD828 000D8D48  90 64 00 88 */	stw r3, 0x88(r4)
/* 800DD82C 000D8D4C  4E 80 00 20 */	blr

glabel bta_sys_pm_register
/* 800DD830 000D8D50  3C 80 80 22 */	lis r4, lbl_802200B8@ha
/* 800DD834 000D8D54  38 84 00 B8 */	addi r4, r4, lbl_802200B8@l
/* 800DD838 000D8D58  90 64 00 84 */	stw r3, 0x84(r4)
/* 800DD83C 000D8D5C  4E 80 00 20 */	blr

glabel bta_sys_conn_open
/* 800DD840 000D8D60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DD844 000D8D64  7C 08 02 A6 */	mflr r0
/* 800DD848 000D8D68  3C C0 80 22 */	lis r6, lbl_802200B8@ha
/* 800DD84C 000D8D6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DD850 000D8D70  38 C6 00 B8 */	addi r6, r6, lbl_802200B8@l
/* 800DD854 000D8D74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DD858 000D8D78  7C BF 2B 78 */	mr r31, r5
/* 800DD85C 000D8D7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800DD860 000D8D80  7C 9E 23 78 */	mr r30, r4
/* 800DD864 000D8D84  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800DD868 000D8D88  7C 7D 1B 78 */	mr r29, r3
/* 800DD86C 000D8D8C  81 86 00 80 */	lwz r12, 0x80(r6)
/* 800DD870 000D8D90  2C 0C 00 00 */	cmpwi r12, 0
/* 800DD874 000D8D94  41 82 00 1C */	beq .L_800DD890
/* 800DD878 000D8D98  7F A4 EB 78 */	mr r4, r29
/* 800DD87C 000D8D9C  7F C5 F3 78 */	mr r5, r30
/* 800DD880 000D8DA0  7F E6 FB 78 */	mr r6, r31
/* 800DD884 000D8DA4  38 60 00 00 */	li r3, 0
/* 800DD888 000D8DA8  7D 89 03 A6 */	mtctr r12
/* 800DD88C 000D8DAC  4E 80 04 21 */	bctrl
.L_800DD890:
/* 800DD890 000D8DB0  3C 60 80 22 */	lis r3, lbl_802200B8@ha
/* 800DD894 000D8DB4  38 63 00 B8 */	addi r3, r3, lbl_802200B8@l
/* 800DD898 000D8DB8  81 83 00 84 */	lwz r12, 0x84(r3)
/* 800DD89C 000D8DBC  2C 0C 00 00 */	cmpwi r12, 0
/* 800DD8A0 000D8DC0  41 82 00 1C */	beq .L_800DD8BC
/* 800DD8A4 000D8DC4  7F A4 EB 78 */	mr r4, r29
/* 800DD8A8 000D8DC8  7F C5 F3 78 */	mr r5, r30
/* 800DD8AC 000D8DCC  7F E6 FB 78 */	mr r6, r31
/* 800DD8B0 000D8DD0  38 60 00 00 */	li r3, 0
/* 800DD8B4 000D8DD4  7D 89 03 A6 */	mtctr r12
/* 800DD8B8 000D8DD8  4E 80 04 21 */	bctrl
.L_800DD8BC:
/* 800DD8BC 000D8DDC  3C 60 80 22 */	lis r3, lbl_802200B8@ha
/* 800DD8C0 000D8DE0  38 63 00 B8 */	addi r3, r3, lbl_802200B8@l
/* 800DD8C4 000D8DE4  81 83 00 88 */	lwz r12, 0x88(r3)
/* 800DD8C8 000D8DE8  2C 0C 00 00 */	cmpwi r12, 0
/* 800DD8CC 000D8DEC  41 82 00 1C */	beq .L_800DD8E8
/* 800DD8D0 000D8DF0  7F A4 EB 78 */	mr r4, r29
/* 800DD8D4 000D8DF4  7F C5 F3 78 */	mr r5, r30
/* 800DD8D8 000D8DF8  7F E6 FB 78 */	mr r6, r31
/* 800DD8DC 000D8DFC  38 60 00 00 */	li r3, 0
/* 800DD8E0 000D8E00  7D 89 03 A6 */	mtctr r12
/* 800DD8E4 000D8E04  4E 80 04 21 */	bctrl
.L_800DD8E8:
/* 800DD8E8 000D8E08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DD8EC 000D8E0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DD8F0 000D8E10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800DD8F4 000D8E14  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800DD8F8 000D8E18  7C 08 03 A6 */	mtlr r0
/* 800DD8FC 000D8E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 800DD900 000D8E20  4E 80 00 20 */	blr

glabel bta_sys_conn_close
/* 800DD904 000D8E24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DD908 000D8E28  7C 08 02 A6 */	mflr r0
/* 800DD90C 000D8E2C  3C C0 80 22 */	lis r6, lbl_802200B8@ha
/* 800DD910 000D8E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DD914 000D8E34  38 C6 00 B8 */	addi r6, r6, lbl_802200B8@l
/* 800DD918 000D8E38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DD91C 000D8E3C  7C BF 2B 78 */	mr r31, r5
/* 800DD920 000D8E40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800DD924 000D8E44  7C 9E 23 78 */	mr r30, r4
/* 800DD928 000D8E48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800DD92C 000D8E4C  7C 7D 1B 78 */	mr r29, r3
/* 800DD930 000D8E50  81 86 00 80 */	lwz r12, 0x80(r6)
/* 800DD934 000D8E54  2C 0C 00 00 */	cmpwi r12, 0
/* 800DD938 000D8E58  41 82 00 1C */	beq .L_800DD954
/* 800DD93C 000D8E5C  7F A4 EB 78 */	mr r4, r29
/* 800DD940 000D8E60  7F C5 F3 78 */	mr r5, r30
/* 800DD944 000D8E64  7F E6 FB 78 */	mr r6, r31
/* 800DD948 000D8E68  38 60 00 01 */	li r3, 1
/* 800DD94C 000D8E6C  7D 89 03 A6 */	mtctr r12
/* 800DD950 000D8E70  4E 80 04 21 */	bctrl
.L_800DD954:
/* 800DD954 000D8E74  3C 60 80 22 */	lis r3, lbl_802200B8@ha
/* 800DD958 000D8E78  38 63 00 B8 */	addi r3, r3, lbl_802200B8@l
/* 800DD95C 000D8E7C  81 83 00 84 */	lwz r12, 0x84(r3)
/* 800DD960 000D8E80  2C 0C 00 00 */	cmpwi r12, 0
/* 800DD964 000D8E84  41 82 00 1C */	beq .L_800DD980
/* 800DD968 000D8E88  7F A4 EB 78 */	mr r4, r29
/* 800DD96C 000D8E8C  7F C5 F3 78 */	mr r5, r30
/* 800DD970 000D8E90  7F E6 FB 78 */	mr r6, r31
/* 800DD974 000D8E94  38 60 00 01 */	li r3, 1
/* 800DD978 000D8E98  7D 89 03 A6 */	mtctr r12
/* 800DD97C 000D8E9C  4E 80 04 21 */	bctrl
.L_800DD980:
/* 800DD980 000D8EA0  3C 60 80 22 */	lis r3, lbl_802200B8@ha
/* 800DD984 000D8EA4  38 63 00 B8 */	addi r3, r3, lbl_802200B8@l
/* 800DD988 000D8EA8  81 83 00 88 */	lwz r12, 0x88(r3)
/* 800DD98C 000D8EAC  2C 0C 00 00 */	cmpwi r12, 0
/* 800DD990 000D8EB0  41 82 00 1C */	beq .L_800DD9AC
/* 800DD994 000D8EB4  7F A4 EB 78 */	mr r4, r29
/* 800DD998 000D8EB8  7F C5 F3 78 */	mr r5, r30
/* 800DD99C 000D8EBC  7F E6 FB 78 */	mr r6, r31
/* 800DD9A0 000D8EC0  38 60 00 01 */	li r3, 1
/* 800DD9A4 000D8EC4  7D 89 03 A6 */	mtctr r12
/* 800DD9A8 000D8EC8  4E 80 04 21 */	bctrl
.L_800DD9AC:
/* 800DD9AC 000D8ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DD9B0 000D8ED0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DD9B4 000D8ED4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800DD9B8 000D8ED8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800DD9BC 000D8EDC  7C 08 03 A6 */	mtlr r0
/* 800DD9C0 000D8EE0  38 21 00 20 */	addi r1, r1, 0x20
/* 800DD9C4 000D8EE4  4E 80 00 20 */	blr

glabel bta_sys_sco_close
/* 800DD9C8 000D8EE8  3C C0 80 22 */	lis r6, lbl_802200B8@ha
/* 800DD9CC 000D8EEC  7C 80 23 78 */	mr r0, r4
/* 800DD9D0 000D8EF0  38 C6 00 B8 */	addi r6, r6, lbl_802200B8@l
/* 800DD9D4 000D8EF4  81 86 00 84 */	lwz r12, 0x84(r6)
/* 800DD9D8 000D8EF8  7C A6 2B 78 */	mr r6, r5
/* 800DD9DC 000D8EFC  2C 0C 00 00 */	cmpwi r12, 0
/* 800DD9E0 000D8F00  4D 82 00 20 */	beqlr
/* 800DD9E4 000D8F04  7C 64 1B 78 */	mr r4, r3
/* 800DD9E8 000D8F08  7C 05 03 78 */	mr r5, r0
/* 800DD9EC 000D8F0C  38 60 00 05 */	li r3, 5
/* 800DD9F0 000D8F10  7D 89 03 A6 */	mtctr r12
/* 800DD9F4 000D8F14  4E 80 04 20 */	bctr
/* 800DD9F8 000D8F18  4E 80 00 20 */	blr

glabel bta_sys_idle
/* 800DD9FC 000D8F1C  3C C0 80 22 */	lis r6, lbl_802200B8@ha
/* 800DDA00 000D8F20  7C 80 23 78 */	mr r0, r4
/* 800DDA04 000D8F24  38 C6 00 B8 */	addi r6, r6, lbl_802200B8@l
/* 800DDA08 000D8F28  81 86 00 84 */	lwz r12, 0x84(r6)
/* 800DDA0C 000D8F2C  7C A6 2B 78 */	mr r6, r5
/* 800DDA10 000D8F30  2C 0C 00 00 */	cmpwi r12, 0
/* 800DDA14 000D8F34  4D 82 00 20 */	beqlr
/* 800DDA18 000D8F38  7C 64 1B 78 */	mr r4, r3
/* 800DDA1C 000D8F3C  7C 05 03 78 */	mr r5, r0
/* 800DDA20 000D8F40  38 60 00 06 */	li r3, 6
/* 800DDA24 000D8F44  7D 89 03 A6 */	mtctr r12
/* 800DDA28 000D8F48  4E 80 04 20 */	bctr
/* 800DDA2C 000D8F4C  4E 80 00 20 */	blr

glabel bta_sys_busy
/* 800DDA30 000D8F50  3C C0 80 22 */	lis r6, lbl_802200B8@ha
/* 800DDA34 000D8F54  7C 80 23 78 */	mr r0, r4
/* 800DDA38 000D8F58  38 C6 00 B8 */	addi r6, r6, lbl_802200B8@l
/* 800DDA3C 000D8F5C  81 86 00 84 */	lwz r12, 0x84(r6)
/* 800DDA40 000D8F60  7C A6 2B 78 */	mr r6, r5
/* 800DDA44 000D8F64  2C 0C 00 00 */	cmpwi r12, 0
/* 800DDA48 000D8F68  4D 82 00 20 */	beqlr
/* 800DDA4C 000D8F6C  7C 64 1B 78 */	mr r4, r3
/* 800DDA50 000D8F70  7C 05 03 78 */	mr r5, r0
/* 800DDA54 000D8F74  38 60 00 07 */	li r3, 7
/* 800DDA58 000D8F78  7D 89 03 A6 */	mtctr r12
/* 800DDA5C 000D8F7C  4E 80 04 20 */	bctr
/* 800DDA60 000D8F80  4E 80 00 20 */	blr

