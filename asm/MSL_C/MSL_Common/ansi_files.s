.include "macros.inc"

.section .text, "ax"

glabel __close_all
/* 8015FA40 0015AF60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015FA44 0015AF64  7C 08 02 A6 */	mflr r0
/* 8015FA48 0015AF68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015FA4C 0015AF6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015FA50 0015AF70  3B E0 00 00 */	li r31, 0
/* 8015FA54 0015AF74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015FA58 0015AF78  3B C0 00 03 */	li r30, 3
/* 8015FA5C 0015AF7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8015FA60 0015AF80  3F A0 80 1B */	lis r29, __files@ha
/* 8015FA64 0015AF84  3B BD D4 78 */	addi r29, r29, __files@l
/* 8015FA68 0015AF88  48 00 00 58 */	b .L_8015FAC0
.L_8015FA6C:
/* 8015FA6C 0015AF8C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8015FA70 0015AF90  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 8015FA74 0015AF94  41 82 00 0C */	beq .L_8015FA80
/* 8015FA78 0015AF98  7F A3 EB 78 */	mr r3, r29
/* 8015FA7C 0015AF9C  48 00 21 81 */	bl fclose
.L_8015FA80:
/* 8015FA80 0015AFA0  7F A3 EB 78 */	mr r3, r29
/* 8015FA84 0015AFA4  83 BD 00 4C */	lwz r29, 0x4c(r29)
/* 8015FA88 0015AFA8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8015FA8C 0015AFAC  2C 00 00 00 */	cmpwi r0, 0
/* 8015FA90 0015AFB0  41 82 00 0C */	beq .L_8015FA9C
/* 8015FA94 0015AFB4  4B FF FE 7D */	bl free
/* 8015FA98 0015AFB8  48 00 00 28 */	b .L_8015FAC0
.L_8015FA9C:
/* 8015FA9C 0015AFBC  80 03 00 04 */	lwz r0, 4(r3)
/* 8015FAA0 0015AFC0  53 C0 B1 D2 */	rlwimi r0, r30, 0x16, 7, 9
/* 8015FAA4 0015AFC4  2C 1D 00 00 */	cmpwi r29, 0
/* 8015FAA8 0015AFC8  90 03 00 04 */	stw r0, 4(r3)
/* 8015FAAC 0015AFCC  41 82 00 14 */	beq .L_8015FAC0
/* 8015FAB0 0015AFD0  88 1D 00 0C */	lbz r0, 0xc(r29)
/* 8015FAB4 0015AFD4  2C 00 00 00 */	cmpwi r0, 0
/* 8015FAB8 0015AFD8  41 82 00 08 */	beq .L_8015FAC0
/* 8015FABC 0015AFDC  93 E3 00 4C */	stw r31, 0x4c(r3)
.L_8015FAC0:
/* 8015FAC0 0015AFE0  2C 1D 00 00 */	cmpwi r29, 0
/* 8015FAC4 0015AFE4  40 82 FF A8 */	bne .L_8015FA6C
/* 8015FAC8 0015AFE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015FACC 0015AFEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015FAD0 0015AFF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015FAD4 0015AFF4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8015FAD8 0015AFF8  7C 08 03 A6 */	mtlr r0
/* 8015FADC 0015AFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8015FAE0 0015B000  4E 80 00 20 */	blr

glabel __flush_all
/* 8015FAE4 0015B004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015FAE8 0015B008  7C 08 02 A6 */	mflr r0
/* 8015FAEC 0015B00C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015FAF0 0015B010  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015FAF4 0015B014  3B E0 00 00 */	li r31, 0
/* 8015FAF8 0015B018  93 C1 00 08 */	stw r30, 8(r1)
/* 8015FAFC 0015B01C  3F C0 80 1B */	lis r30, __files@ha
/* 8015FB00 0015B020  3B DE D4 78 */	addi r30, r30, __files@l
/* 8015FB04 0015B024  48 00 00 28 */	b .L_8015FB2C
.L_8015FB08:
/* 8015FB08 0015B028  80 1E 00 04 */	lwz r0, 4(r30)
/* 8015FB0C 0015B02C  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 8015FB10 0015B030  41 82 00 18 */	beq .L_8015FB28
/* 8015FB14 0015B034  7F C3 F3 78 */	mr r3, r30
/* 8015FB18 0015B038  48 00 21 A1 */	bl fflush
/* 8015FB1C 0015B03C  2C 03 00 00 */	cmpwi r3, 0
/* 8015FB20 0015B040  41 82 00 08 */	beq .L_8015FB28
/* 8015FB24 0015B044  3B E0 FF FF */	li r31, -1
.L_8015FB28:
/* 8015FB28 0015B048  83 DE 00 4C */	lwz r30, 0x4c(r30)
.L_8015FB2C:
/* 8015FB2C 0015B04C  2C 1E 00 00 */	cmpwi r30, 0
/* 8015FB30 0015B050  40 82 FF D8 */	bne .L_8015FB08
/* 8015FB34 0015B054  7F E3 FB 78 */	mr r3, r31
/* 8015FB38 0015B058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015FB3C 0015B05C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015FB40 0015B060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015FB44 0015B064  7C 08 03 A6 */	mtlr r0
/* 8015FB48 0015B068  38 21 00 10 */	addi r1, r1, 0x10
/* 8015FB4C 0015B06C  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80243D18
	.skip 0x100

glabel lbl_80243E18
	.skip 0x100
