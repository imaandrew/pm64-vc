.include "macros.inc"

.section .text, "ax"

glabel __ieee754_pow
/* 8016B828 00166D48  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8016B82C 00166D4C  7C 08 02 A6 */	mflr r0
/* 8016B830 00166D50  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8016B834 00166D54  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8016B838 00166D58  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8016B83C 00166D5C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8016B840 00166D60  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 8016B844 00166D64  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8016B848 00166D68  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 8016B84C 00166D6C  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8016B850 00166D70  F3 81 00 88 */	psq_st f28, 136(r1), 0, qr0
/* 8016B854 00166D74  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8016B858 00166D78  F3 61 00 78 */	psq_st f27, 120(r1), 0, qr0
/* 8016B85C 00166D7C  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8016B860 00166D80  F3 41 00 68 */	psq_st f26, 104(r1), 0, qr0
/* 8016B864 00166D84  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8016B868 00166D88  3C 60 80 18 */	lis r3, lbl_80179220@ha
/* 8016B86C 00166D8C  38 63 92 20 */	addi r3, r3, lbl_80179220@l
/* 8016B870 00166D90  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8016B874 00166D94  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016B878 00166D98  81 61 00 14 */	lwz r11, 0x14(r1)
/* 8016B87C 00166D9C  54 A7 00 7E */	clrlwi r7, r5, 1
/* 8016B880 00166DA0  81 21 00 08 */	lwz r9, 8(r1)
/* 8016B884 00166DA4  7C E0 5B 79 */	or. r0, r7, r11
/* 8016B888 00166DA8  81 41 00 0C */	lwz r10, 0xc(r1)
/* 8016B88C 00166DAC  55 26 00 7E */	clrlwi r6, r9, 1
/* 8016B890 00166DB0  40 82 00 0C */	bne .L_8016B89C
/* 8016B894 00166DB4  C8 22 8B C0 */	lfd f1, lbl_802483C0@sda21(r2)
/* 8016B898 00166DB8  48 00 07 98 */	b .L_8016C030
.L_8016B89C:
/* 8016B89C 00166DBC  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8016B8A0 00166DC0  7C 06 00 00 */	cmpw r6, r0
/* 8016B8A4 00166DC4  41 81 00 38 */	bgt .L_8016B8DC
/* 8016B8A8 00166DC8  3C 06 80 10 */	addis r0, r6, 0x8010
/* 8016B8AC 00166DCC  28 00 00 00 */	cmplwi r0, 0
/* 8016B8B0 00166DD0  40 82 00 0C */	bne .L_8016B8BC
/* 8016B8B4 00166DD4  2C 0A 00 00 */	cmpwi r10, 0
/* 8016B8B8 00166DD8  40 82 00 24 */	bne .L_8016B8DC
.L_8016B8BC:
/* 8016B8BC 00166DDC  3C 00 7F F0 */	lis r0, 0x7ff0
/* 8016B8C0 00166DE0  7C 07 00 00 */	cmpw r7, r0
/* 8016B8C4 00166DE4  41 81 00 18 */	bgt .L_8016B8DC
/* 8016B8C8 00166DE8  3C 07 80 10 */	addis r0, r7, 0x8010
/* 8016B8CC 00166DEC  28 00 00 00 */	cmplwi r0, 0
/* 8016B8D0 00166DF0  40 82 00 14 */	bne .L_8016B8E4
/* 8016B8D4 00166DF4  2C 0B 00 00 */	cmpwi r11, 0
/* 8016B8D8 00166DF8  41 82 00 0C */	beq .L_8016B8E4
.L_8016B8DC:
/* 8016B8DC 00166DFC  FC 21 10 2A */	fadd f1, f1, f2
/* 8016B8E0 00166E00  48 00 07 50 */	b .L_8016C030
.L_8016B8E4:
/* 8016B8E4 00166E04  2C 09 00 00 */	cmpwi r9, 0
/* 8016B8E8 00166E08  38 80 00 00 */	li r4, 0
/* 8016B8EC 00166E0C  40 80 00 78 */	bge .L_8016B964
/* 8016B8F0 00166E10  3C 00 43 40 */	lis r0, 0x4340
/* 8016B8F4 00166E14  7C 07 00 00 */	cmpw r7, r0
/* 8016B8F8 00166E18  41 80 00 0C */	blt .L_8016B904
/* 8016B8FC 00166E1C  38 80 00 02 */	li r4, 2
/* 8016B900 00166E20  48 00 00 64 */	b .L_8016B964
.L_8016B904:
/* 8016B904 00166E24  3C 00 3F F0 */	lis r0, 0x3ff0
/* 8016B908 00166E28  7C 07 00 00 */	cmpw r7, r0
/* 8016B90C 00166E2C  41 80 00 58 */	blt .L_8016B964
/* 8016B910 00166E30  7C E8 A6 70 */	srawi r8, r7, 0x14
/* 8016B914 00166E34  38 08 FC 01 */	addi r0, r8, -1023
/* 8016B918 00166E38  2C 00 00 14 */	cmpwi r0, 0x14
/* 8016B91C 00166E3C  40 81 00 24 */	ble .L_8016B940
/* 8016B920 00166E40  20 00 00 34 */	subfic r0, r0, 0x34
/* 8016B924 00166E44  7D 68 04 30 */	srw r8, r11, r0
/* 8016B928 00166E48  7D 00 00 30 */	slw r0, r8, r0
/* 8016B92C 00166E4C  7C 0B 00 40 */	cmplw r11, r0
/* 8016B930 00166E50  40 82 00 34 */	bne .L_8016B964
/* 8016B934 00166E54  55 00 07 FE */	clrlwi r0, r8, 0x1f
/* 8016B938 00166E58  20 80 00 02 */	subfic r4, r0, 2
/* 8016B93C 00166E5C  48 00 00 28 */	b .L_8016B964
.L_8016B940:
/* 8016B940 00166E60  2C 0B 00 00 */	cmpwi r11, 0
/* 8016B944 00166E64  40 82 00 20 */	bne .L_8016B964
/* 8016B948 00166E68  20 00 00 14 */	subfic r0, r0, 0x14
/* 8016B94C 00166E6C  7C E8 06 30 */	sraw r8, r7, r0
/* 8016B950 00166E70  7D 00 00 30 */	slw r0, r8, r0
/* 8016B954 00166E74  7C 07 00 00 */	cmpw r7, r0
/* 8016B958 00166E78  40 82 00 0C */	bne .L_8016B964
/* 8016B95C 00166E7C  55 00 07 FE */	clrlwi r0, r8, 0x1f
/* 8016B960 00166E80  20 80 00 02 */	subfic r4, r0, 2
.L_8016B964:
/* 8016B964 00166E84  2C 0B 00 00 */	cmpwi r11, 0
/* 8016B968 00166E88  40 82 00 B0 */	bne .L_8016BA18
/* 8016B96C 00166E8C  3C 07 80 10 */	addis r0, r7, 0x8010
/* 8016B970 00166E90  28 00 00 00 */	cmplwi r0, 0
/* 8016B974 00166E94  40 82 00 54 */	bne .L_8016B9C8
/* 8016B978 00166E98  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 8016B97C 00166E9C  7C 00 53 79 */	or. r0, r0, r10
/* 8016B980 00166EA0  40 82 00 0C */	bne .L_8016B98C
/* 8016B984 00166EA4  FC 22 10 28 */	fsub f1, f2, f2
/* 8016B988 00166EA8  48 00 06 A8 */	b .L_8016C030
.L_8016B98C:
/* 8016B98C 00166EAC  3C 00 3F F0 */	lis r0, 0x3ff0
/* 8016B990 00166EB0  7C 06 00 00 */	cmpw r6, r0
/* 8016B994 00166EB4  41 80 00 1C */	blt .L_8016B9B0
/* 8016B998 00166EB8  2C 05 00 00 */	cmpwi r5, 0
/* 8016B99C 00166EBC  41 80 00 0C */	blt .L_8016B9A8
/* 8016B9A0 00166EC0  FC 20 10 90 */	fmr f1, f2
/* 8016B9A4 00166EC4  48 00 06 8C */	b .L_8016C030
.L_8016B9A8:
/* 8016B9A8 00166EC8  C8 22 8B C8 */	lfd f1, lbl_802483C8@sda21(r2)
/* 8016B9AC 00166ECC  48 00 06 84 */	b .L_8016C030
.L_8016B9B0:
/* 8016B9B0 00166ED0  2C 05 00 00 */	cmpwi r5, 0
/* 8016B9B4 00166ED4  40 80 00 0C */	bge .L_8016B9C0
/* 8016B9B8 00166ED8  FC 20 10 50 */	fneg f1, f2
/* 8016B9BC 00166EDC  48 00 06 74 */	b .L_8016C030
.L_8016B9C0:
/* 8016B9C0 00166EE0  C8 22 8B C8 */	lfd f1, lbl_802483C8@sda21(r2)
/* 8016B9C4 00166EE4  48 00 06 6C */	b .L_8016C030
.L_8016B9C8:
/* 8016B9C8 00166EE8  3C 07 C0 10 */	addis r0, r7, 0xc010
/* 8016B9CC 00166EEC  28 00 00 00 */	cmplwi r0, 0
/* 8016B9D0 00166EF0  40 82 00 18 */	bne .L_8016B9E8
/* 8016B9D4 00166EF4  2C 05 00 00 */	cmpwi r5, 0
/* 8016B9D8 00166EF8  40 80 06 58 */	bge .L_8016C030
/* 8016B9DC 00166EFC  C8 02 8B C0 */	lfd f0, lbl_802483C0@sda21(r2)
/* 8016B9E0 00166F00  FC 20 08 24 */	fdiv f1, f0, f1
/* 8016B9E4 00166F04  48 00 06 4C */	b .L_8016C030
.L_8016B9E8:
/* 8016B9E8 00166F08  3C 05 C0 00 */	addis r0, r5, 0xc000
/* 8016B9EC 00166F0C  28 00 00 00 */	cmplwi r0, 0
/* 8016B9F0 00166F10  40 82 00 0C */	bne .L_8016B9FC
/* 8016B9F4 00166F14  FC 21 00 72 */	fmul f1, f1, f1
/* 8016B9F8 00166F18  48 00 06 38 */	b .L_8016C030
.L_8016B9FC:
/* 8016B9FC 00166F1C  3C 05 C0 20 */	addis r0, r5, 0xc020
/* 8016BA00 00166F20  28 00 00 00 */	cmplwi r0, 0
/* 8016BA04 00166F24  40 82 00 14 */	bne .L_8016BA18
/* 8016BA08 00166F28  2C 09 00 00 */	cmpwi r9, 0
/* 8016BA0C 00166F2C  41 80 00 0C */	blt .L_8016BA18
/* 8016BA10 00166F30  48 00 30 A1 */	bl sqrt
/* 8016BA14 00166F34  48 00 06 1C */	b .L_8016C030
.L_8016BA18:
/* 8016BA18 00166F38  FC 00 0A 10 */	fabs f0, f1
/* 8016BA1C 00166F3C  2C 0A 00 00 */	cmpwi r10, 0
/* 8016BA20 00166F40  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8016BA24 00166F44  40 82 00 78 */	bne .L_8016BA9C
/* 8016BA28 00166F48  3C 06 80 10 */	addis r0, r6, 0x8010
/* 8016BA2C 00166F4C  28 00 00 00 */	cmplwi r0, 0
/* 8016BA30 00166F50  41 82 00 18 */	beq .L_8016BA48
/* 8016BA34 00166F54  2C 06 00 00 */	cmpwi r6, 0
/* 8016BA38 00166F58  41 82 00 10 */	beq .L_8016BA48
/* 8016BA3C 00166F5C  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 8016BA40 00166F60  28 00 00 00 */	cmplwi r0, 0
/* 8016BA44 00166F64  40 82 00 58 */	bne .L_8016BA9C
.L_8016BA48:
/* 8016BA48 00166F68  2C 05 00 00 */	cmpwi r5, 0
/* 8016BA4C 00166F6C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8016BA50 00166F70  40 80 00 10 */	bge .L_8016BA60
/* 8016BA54 00166F74  C8 22 8B C0 */	lfd f1, lbl_802483C0@sda21(r2)
/* 8016BA58 00166F78  FC 01 00 24 */	fdiv f0, f1, f0
/* 8016BA5C 00166F7C  D8 01 00 50 */	stfd f0, 0x50(r1)
.L_8016BA60:
/* 8016BA60 00166F80  2C 09 00 00 */	cmpwi r9, 0
/* 8016BA64 00166F84  40 80 00 30 */	bge .L_8016BA94
/* 8016BA68 00166F88  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 8016BA6C 00166F8C  7C 00 23 79 */	or. r0, r0, r4
/* 8016BA70 00166F90  40 82 00 14 */	bne .L_8016BA84
/* 8016BA74 00166F94  FC 00 00 28 */	fsub f0, f0, f0
/* 8016BA78 00166F98  FC 00 00 24 */	fdiv f0, f0, f0
/* 8016BA7C 00166F9C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8016BA80 00166FA0  48 00 00 14 */	b .L_8016BA94
.L_8016BA84:
/* 8016BA84 00166FA4  2C 04 00 01 */	cmpwi r4, 1
/* 8016BA88 00166FA8  40 82 00 0C */	bne .L_8016BA94
/* 8016BA8C 00166FAC  FC 00 00 50 */	fneg f0, f0
/* 8016BA90 00166FB0  D8 01 00 50 */	stfd f0, 0x50(r1)
.L_8016BA94:
/* 8016BA94 00166FB4  FC 20 00 90 */	fmr f1, f0
/* 8016BA98 00166FB8  48 00 05 98 */	b .L_8016C030
.L_8016BA9C:
/* 8016BA9C 00166FBC  7D 28 FE 70 */	srawi r8, r9, 0x1f
/* 8016BAA0 00166FC0  38 08 00 01 */	addi r0, r8, 1
/* 8016BAA4 00166FC4  7C 08 23 79 */	or. r8, r0, r4
/* 8016BAA8 00166FC8  40 82 00 18 */	bne .L_8016BAC0
/* 8016BAAC 00166FCC  38 00 00 21 */	li r0, 0x21
/* 8016BAB0 00166FD0  3C 60 80 24 */	lis r3, lbl_80246B48@ha
/* 8016BAB4 00166FD4  90 0D 93 40 */	stw r0, lbl_802477C0@sda21(r13)
/* 8016BAB8 00166FD8  C0 23 6B 48 */	lfs f1, lbl_80246B48@l(r3)
/* 8016BABC 00166FDC  48 00 05 74 */	b .L_8016C030
.L_8016BAC0:
/* 8016BAC0 00166FE0  3D 00 41 E0 */	lis r8, 0x41e0
/* 8016BAC4 00166FE4  7C 07 40 00 */	cmpw r7, r8
/* 8016BAC8 00166FE8  40 81 01 0C */	ble .L_8016BBD4
/* 8016BACC 00166FEC  3C 60 43 F0 */	lis r3, 0x43f0
/* 8016BAD0 00166FF0  7C 07 18 00 */	cmpw r7, r3
/* 8016BAD4 00166FF4  40 81 00 4C */	ble .L_8016BB20
/* 8016BAD8 00166FF8  3C 60 3F F0 */	lis r3, 0x3FEFFFFF@ha
/* 8016BADC 00166FFC  38 E3 FF FF */	addi r7, r3, 0x3FEFFFFF@l
/* 8016BAE0 00167000  7C 06 38 00 */	cmpw r6, r7
/* 8016BAE4 00167004  41 81 00 1C */	bgt .L_8016BB00
/* 8016BAE8 00167008  2C 05 00 00 */	cmpwi r5, 0
/* 8016BAEC 0016700C  40 80 00 0C */	bge .L_8016BAF8
/* 8016BAF0 00167010  C8 22 8B D0 */	lfd f1, lbl_802483D0@sda21(r2)
/* 8016BAF4 00167014  48 00 05 3C */	b .L_8016C030
.L_8016BAF8:
/* 8016BAF8 00167018  C8 22 8B C8 */	lfd f1, lbl_802483C8@sda21(r2)
/* 8016BAFC 0016701C  48 00 05 34 */	b .L_8016C030
.L_8016BB00:
/* 8016BB00 00167020  7C 06 18 00 */	cmpw r6, r3
/* 8016BB04 00167024  41 80 00 1C */	blt .L_8016BB20
/* 8016BB08 00167028  2C 05 00 00 */	cmpwi r5, 0
/* 8016BB0C 0016702C  40 81 00 0C */	ble .L_8016BB18
/* 8016BB10 00167030  C8 22 8B D0 */	lfd f1, lbl_802483D0@sda21(r2)
/* 8016BB14 00167034  48 00 05 1C */	b .L_8016C030
.L_8016BB18:
/* 8016BB18 00167038  C8 22 8B C8 */	lfd f1, lbl_802483C8@sda21(r2)
/* 8016BB1C 0016703C  48 00 05 14 */	b .L_8016C030
.L_8016BB20:
/* 8016BB20 00167040  3C 60 3F F0 */	lis r3, 0x3FEFFFFF@ha
/* 8016BB24 00167044  38 E3 FF FF */	addi r7, r3, 0x3FEFFFFF@l
/* 8016BB28 00167048  7C 06 38 00 */	cmpw r6, r7
/* 8016BB2C 0016704C  40 80 00 1C */	bge .L_8016BB48
/* 8016BB30 00167050  2C 05 00 00 */	cmpwi r5, 0
/* 8016BB34 00167054  40 80 00 0C */	bge .L_8016BB40
/* 8016BB38 00167058  C8 22 8B D0 */	lfd f1, lbl_802483D0@sda21(r2)
/* 8016BB3C 0016705C  48 00 04 F4 */	b .L_8016C030
.L_8016BB40:
/* 8016BB40 00167060  C8 22 8B C8 */	lfd f1, lbl_802483C8@sda21(r2)
/* 8016BB44 00167064  48 00 04 EC */	b .L_8016C030
.L_8016BB48:
/* 8016BB48 00167068  7C 06 18 00 */	cmpw r6, r3
/* 8016BB4C 0016706C  40 81 00 1C */	ble .L_8016BB68
/* 8016BB50 00167070  2C 05 00 00 */	cmpwi r5, 0
/* 8016BB54 00167074  40 81 00 0C */	ble .L_8016BB60
/* 8016BB58 00167078  C8 22 8B D0 */	lfd f1, lbl_802483D0@sda21(r2)
/* 8016BB5C 0016707C  48 00 04 D4 */	b .L_8016C030
.L_8016BB60:
/* 8016BB60 00167080  C8 22 8B C8 */	lfd f1, lbl_802483C8@sda21(r2)
/* 8016BB64 00167084  48 00 04 CC */	b .L_8016C030
.L_8016BB68:
/* 8016BB68 00167088  C8 62 8B C0 */	lfd f3, lbl_802483C0@sda21(r2)
/* 8016BB6C 0016708C  38 60 00 00 */	li r3, 0
/* 8016BB70 00167090  C8 02 8B E8 */	lfd f0, lbl_802483E8@sda21(r2)
/* 8016BB74 00167094  FD 01 18 28 */	fsub f8, f1, f3
/* 8016BB78 00167098  C8 22 8B F8 */	lfd f1, lbl_802483F8@sda21(r2)
/* 8016BB7C 0016709C  C8 A2 8B E0 */	lfd f5, lbl_802483E0@sda21(r2)
/* 8016BB80 001670A0  C8 62 8B F0 */	lfd f3, lbl_802483F0@sda21(r2)
/* 8016BB84 001670A4  FC C0 02 32 */	fmul f6, f0, f8
/* 8016BB88 001670A8  C8 82 8B D8 */	lfd f4, lbl_802483D8@sda21(r2)
/* 8016BB8C 001670AC  C8 02 8C 00 */	lfd f0, lbl_80248400@sda21(r2)
/* 8016BB90 001670B0  FC E8 02 32 */	fmul f7, f8, f8
/* 8016BB94 001670B4  D9 01 00 28 */	stfd f8, 0x28(r1)
/* 8016BB98 001670B8  FC A5 30 28 */	fsub f5, f5, f6
/* 8016BB9C 001670BC  FC C3 02 32 */	fmul f6, f3, f8
/* 8016BBA0 001670C0  FC A8 01 72 */	fmul f5, f8, f5
/* 8016BBA4 001670C4  FC 21 02 32 */	fmul f1, f1, f8
/* 8016BBA8 001670C8  FC 64 28 28 */	fsub f3, f4, f5
/* 8016BBAC 001670CC  FC 67 00 F2 */	fmul f3, f7, f3
/* 8016BBB0 001670D0  FC 00 00 F2 */	fmul f0, f0, f3
/* 8016BBB4 001670D4  FC 21 00 28 */	fsub f1, f1, f0
/* 8016BBB8 001670D8  FC 06 08 2A */	fadd f0, f6, f1
/* 8016BBBC 001670DC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8016BBC0 001670E0  90 61 00 34 */	stw r3, 0x34(r1)
/* 8016BBC4 001670E4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8016BBC8 001670E8  FC 00 30 28 */	fsub f0, f0, f6
/* 8016BBCC 001670EC  FC 01 00 28 */	fsub f0, f1, f0
/* 8016BBD0 001670F0  48 00 02 10 */	b .L_8016BDE0
.L_8016BBD4:
/* 8016BBD4 001670F4  3C A0 00 10 */	lis r5, 0x10
/* 8016BBD8 001670F8  39 60 00 00 */	li r11, 0
/* 8016BBDC 001670FC  7C 06 28 00 */	cmpw r6, r5
/* 8016BBE0 00167100  40 80 00 18 */	bge .L_8016BBF8
/* 8016BBE4 00167104  C8 22 8C 08 */	lfd f1, lbl_80248408@sda21(r2)
/* 8016BBE8 00167108  39 60 FF CB */	li r11, -53
/* 8016BBEC 0016710C  FC 00 00 72 */	fmul f0, f0, f1
/* 8016BBF0 00167110  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8016BBF4 00167114  80 C1 00 48 */	lwz r6, 0x48(r1)
.L_8016BBF8:
/* 8016BBF8 00167118  3C A0 00 04 */	lis r5, 0x0003988E@ha
/* 8016BBFC 0016711C  54 C8 03 3E */	clrlwi r8, r6, 0xc
/* 8016BC00 00167120  38 A5 98 8E */	addi r5, r5, 0x0003988E@l
/* 8016BC04 00167124  7C C6 A6 70 */	srawi r6, r6, 0x14
/* 8016BC08 00167128  7C 08 28 00 */	cmpw r8, r5
/* 8016BC0C 0016712C  65 07 3F F0 */	oris r7, r8, 0x3ff0
/* 8016BC10 00167130  7C AB 32 14 */	add r5, r11, r6
/* 8016BC14 00167134  39 65 FC 01 */	addi r11, r5, -1023
/* 8016BC18 00167138  41 81 00 0C */	bgt .L_8016BC24
/* 8016BC1C 0016713C  38 C0 00 00 */	li r6, 0
/* 8016BC20 00167140  48 00 00 28 */	b .L_8016BC48
.L_8016BC24:
/* 8016BC24 00167144  3C A0 00 0C */	lis r5, 0x000BB67A@ha
/* 8016BC28 00167148  38 A5 B6 7A */	addi r5, r5, 0x000BB67A@l
/* 8016BC2C 0016714C  7C 08 28 00 */	cmpw r8, r5
/* 8016BC30 00167150  40 80 00 0C */	bge .L_8016BC3C
/* 8016BC34 00167154  38 C0 00 01 */	li r6, 1
/* 8016BC38 00167158  48 00 00 10 */	b .L_8016BC48
.L_8016BC3C:
/* 8016BC3C 0016715C  3C E7 FF F0 */	addis r7, r7, 0xfff0
/* 8016BC40 00167160  38 C0 00 00 */	li r6, 0
/* 8016BC44 00167164  39 6B 00 01 */	addi r11, r11, 1
.L_8016BC48:
/* 8016BC48 00167168  90 E1 00 48 */	stw r7, 0x48(r1)
/* 8016BC4C 0016716C  7C E9 0E 70 */	srawi r9, r7, 1
/* 8016BC50 00167170  54 CA 18 38 */	slwi r10, r6, 3
/* 8016BC54 00167174  38 A3 00 00 */	addi r5, r3, 0
/* 8016BC58 00167178  7C E5 54 AE */	lfdx f7, r5, r10
/* 8016BC5C 0016717C  54 C8 90 1A */	slwi r8, r6, 0x12
/* 8016BC60 00167180  C9 41 00 48 */	lfd f10, 0x48(r1)
/* 8016BC64 00167184  6D 66 80 00 */	xoris r6, r11, 0x8000
/* 8016BC68 00167188  C8 82 8B C8 */	lfd f4, lbl_802483C8@sda21(r2)
/* 8016BC6C 0016718C  3C A0 43 30 */	lis r5, 0x4330
/* 8016BC70 00167190  FC 6A 38 2A */	fadd f3, f10, f7
/* 8016BC74 00167194  C8 22 8B C0 */	lfd f1, lbl_802483C0@sda21(r2)
/* 8016BC78 00167198  FF 4A 38 28 */	fsub f26, f10, f7
/* 8016BC7C 0016719C  D8 81 00 18 */	stfd f4, 0x18(r1)
/* 8016BC80 001671A0  65 29 20 00 */	oris r9, r9, 0x2000
/* 8016BC84 001671A4  3D 08 00 08 */	addis r8, r8, 8
/* 8016BC88 001671A8  FC 21 18 24 */	fdiv f1, f1, f3
/* 8016BC8C 001671AC  7D 09 42 14 */	add r8, r9, r8
/* 8016BC90 001671B0  91 01 00 18 */	stw r8, 0x18(r1)
/* 8016BC94 001671B4  39 20 00 00 */	li r9, 0
/* 8016BC98 001671B8  C8 02 8C 38 */	lfd f0, lbl_80248438@sda21(r2)
/* 8016BC9C 001671BC  38 E3 00 20 */	addi r7, r3, 0x20
/* 8016BCA0 001671C0  FC 9A 00 72 */	fmul f4, f26, f1
/* 8016BCA4 001671C4  C9 21 00 18 */	lfd f9, 0x18(r1)
/* 8016BCA8 001671C8  C8 62 8C 30 */	lfd f3, lbl_80248430@sda21(r2)
/* 8016BCAC 001671CC  FD 09 38 28 */	fsub f8, f9, f7
/* 8016BCB0 001671D0  C8 C2 8C 28 */	lfd f6, lbl_80248428@sda21(r2)
/* 8016BCB4 001671D4  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 8016BCB8 001671D8  FC A4 01 32 */	fmul f5, f4, f4
/* 8016BCBC 001671DC  D8 81 00 20 */	stfd f4, 0x20(r1)
/* 8016BCC0 001671E0  CB C2 8C 20 */	lfd f30, lbl_80248420@sda21(r2)
/* 8016BCC4 001671E4  FD 6A 40 28 */	fsub f11, f10, f8
/* 8016BCC8 001671E8  90 A1 00 58 */	stw r5, 0x58(r1)
/* 8016BCCC 001671EC  CB E2 8C 18 */	lfd f31, lbl_80248418@sda21(r2)
/* 8016BCD0 001671F0  FC E0 01 72 */	fmul f7, f0, f5
/* 8016BCD4 001671F4  91 21 00 24 */	stw r9, 0x24(r1)
/* 8016BCD8 001671F8  C9 A2 8C 10 */	lfd f13, lbl_80248410@sda21(r2)
/* 8016BCDC 001671FC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8016BCE0 00167200  C9 82 8C 40 */	lfd f12, lbl_80248440@sda21(r2)
/* 8016BCE4 00167204  FC E3 38 2A */	fadd f7, f3, f7
/* 8016BCE8 00167208  FF 60 02 72 */	fmul f27, f0, f9
/* 8016BCEC 0016720C  C9 42 8C 50 */	lfd f10, lbl_80248450@sda21(r2)
/* 8016BCF0 00167210  C9 22 8C 58 */	lfd f9, lbl_80248458@sda21(r2)
/* 8016BCF4 00167214  FD 05 01 F2 */	fmul f8, f5, f7
/* 8016BCF8 00167218  C8 E2 8C C8 */	lfd f7, lbl_802484C8@sda21(r2)
/* 8016BCFC 0016721C  FF 80 02 F2 */	fmul f28, f0, f11
/* 8016BD00 00167220  C9 62 8C 48 */	lfd f11, lbl_80248448@sda21(r2)
/* 8016BD04 00167224  FF A6 40 2A */	fadd f29, f6, f8
/* 8016BD08 00167228  C8 C1 00 58 */	lfd f6, 0x58(r1)
/* 8016BD0C 0016722C  FF 7A D8 28 */	fsub f27, f26, f27
/* 8016BD10 00167230  7D 07 54 AE */	lfdx f8, r7, r10
/* 8016BD14 00167234  FC C6 38 28 */	fsub f6, f6, f7
/* 8016BD18 00167238  FF A5 07 72 */	fmul f29, f5, f29
/* 8016BD1C 0016723C  FF 9B E0 28 */	fsub f28, f27, f28
/* 8016BD20 00167240  D8 C1 00 28 */	stfd f6, 0x28(r1)
/* 8016BD24 00167244  FC 60 00 32 */	fmul f3, f0, f0
/* 8016BD28 00167248  FC FE E8 2A */	fadd f7, f30, f29
/* 8016BD2C 0016724C  FF 41 07 32 */	fmul f26, f1, f28
/* 8016BD30 00167250  FC E5 01 F2 */	fmul f7, f5, f7
/* 8016BD34 00167254  FF A5 01 72 */	fmul f29, f5, f5
/* 8016BD38 00167258  FF FF 38 2A */	fadd f31, f31, f7
/* 8016BD3C 0016725C  FC 20 20 2A */	fadd f1, f0, f4
/* 8016BD40 00167260  FC A5 07 F2 */	fmul f5, f5, f31
/* 8016BD44 00167264  FC FA 00 72 */	fmul f7, f26, f1
/* 8016BD48 00167268  FC AD 28 2A */	fadd f5, f13, f5
/* 8016BD4C 0016726C  FC 2C 18 2A */	fadd f1, f12, f3
/* 8016BD50 00167270  FD BD 01 72 */	fmul f13, f29, f5
/* 8016BD54 00167274  FD AD 38 2A */	fadd f13, f13, f7
/* 8016BD58 00167278  FC 21 68 2A */	fadd f1, f1, f13
/* 8016BD5C 0016727C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8016BD60 00167280  91 21 00 1C */	stw r9, 0x1c(r1)
/* 8016BD64 00167284  C8 E1 00 18 */	lfd f7, 0x18(r1)
/* 8016BD68 00167288  FC A7 60 28 */	fsub f5, f7, f12
/* 8016BD6C 0016728C  FC 3A 01 F2 */	fmul f1, f26, f7
/* 8016BD70 00167290  FC 65 18 28 */	fsub f3, f5, f3
/* 8016BD74 00167294  FC A0 01 F2 */	fmul f5, f0, f7
/* 8016BD78 00167298  FC 0D 18 28 */	fsub f0, f13, f3
/* 8016BD7C 0016729C  FC 00 01 32 */	fmul f0, f0, f4
/* 8016BD80 001672A0  FC 81 00 2A */	fadd f4, f1, f0
/* 8016BD84 001672A4  FC 65 20 2A */	fadd f3, f5, f4
/* 8016BD88 001672A8  D8 61 00 40 */	stfd f3, 0x40(r1)
/* 8016BD8C 001672AC  91 21 00 44 */	stw r9, 0x44(r1)
/* 8016BD90 001672B0  C8 61 00 40 */	lfd f3, 0x40(r1)
/* 8016BD94 001672B4  FC 03 28 28 */	fsub f0, f3, f5
/* 8016BD98 001672B8  FC 2A 00 F2 */	fmul f1, f10, f3
/* 8016BD9C 001672BC  FC 04 00 28 */	fsub f0, f4, f0
/* 8016BDA0 001672C0  FC 6B 00 F2 */	fmul f3, f11, f3
/* 8016BDA4 001672C4  FC 09 00 32 */	fmul f0, f9, f0
/* 8016BDA8 001672C8  FC 01 00 2A */	fadd f0, f1, f0
/* 8016BDAC 001672CC  FC 88 00 2A */	fadd f4, f8, f0
/* 8016BDB0 001672D0  38 63 00 10 */	addi r3, r3, 0x10
/* 8016BDB4 001672D4  FC 03 20 2A */	fadd f0, f3, f4
/* 8016BDB8 001672D8  7C 23 54 AE */	lfdx f1, r3, r10
/* 8016BDBC 001672DC  FC 00 08 2A */	fadd f0, f0, f1
/* 8016BDC0 001672E0  FC 06 00 2A */	fadd f0, f6, f0
/* 8016BDC4 001672E4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8016BDC8 001672E8  91 21 00 34 */	stw r9, 0x34(r1)
/* 8016BDCC 001672EC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8016BDD0 001672F0  FC 00 30 28 */	fsub f0, f0, f6
/* 8016BDD4 001672F4  FC 00 08 28 */	fsub f0, f0, f1
/* 8016BDD8 001672F8  FC 00 18 28 */	fsub f0, f0, f3
/* 8016BDDC 001672FC  FC 04 00 28 */	fsub f0, f4, f0
.L_8016BDE0:
/* 8016BDE0 00167300  38 64 FF FF */	addi r3, r4, -1
/* 8016BDE4 00167304  CB E2 8B C0 */	lfd f31, lbl_802483C0@sda21(r2)
/* 8016BDE8 00167308  7C 00 1B 79 */	or. r0, r0, r3
/* 8016BDEC 0016730C  40 82 00 08 */	bne .L_8016BDF4
/* 8016BDF0 00167310  CB E2 8C 60 */	lfd f31, lbl_80248460@sda21(r2)
.L_8016BDF4:
/* 8016BDF4 00167314  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8016BDF8 00167318  38 00 00 00 */	li r0, 0
/* 8016BDFC 0016731C  FC 02 00 32 */	fmul f0, f2, f0
/* 8016BE00 00167320  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 8016BE04 00167324  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8016BE08 00167328  3C 00 40 90 */	lis r0, 0x4090
/* 8016BE0C 0016732C  C8 61 00 38 */	lfd f3, 0x38(r1)
/* 8016BE10 00167330  FC 42 18 28 */	fsub f2, f2, f3
/* 8016BE14 00167334  FC 63 00 72 */	fmul f3, f3, f1
/* 8016BE18 00167338  FC 21 00 B2 */	fmul f1, f1, f2
/* 8016BE1C 0016733C  D8 61 00 40 */	stfd f3, 0x40(r1)
/* 8016BE20 00167340  FD 61 00 2A */	fadd f11, f1, f0
/* 8016BE24 00167344  FC 0B 18 2A */	fadd f0, f11, f3
/* 8016BE28 00167348  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8016BE2C 0016734C  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 8016BE30 00167350  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8016BE34 00167354  7C 06 00 00 */	cmpw r6, r0
/* 8016BE38 00167358  41 80 00 44 */	blt .L_8016BE7C
/* 8016BE3C 0016735C  3C 06 BF 70 */	addis r0, r6, 0xbf70
/* 8016BE40 00167360  7C 00 2B 79 */	or. r0, r0, r5
/* 8016BE44 00167364  41 82 00 14 */	beq .L_8016BE58
/* 8016BE48 00167368  C8 22 8C 68 */	lfd f1, lbl_80248468@sda21(r2)
/* 8016BE4C 0016736C  FC 01 07 F2 */	fmul f0, f1, f31
/* 8016BE50 00167370  FC 21 00 32 */	fmul f1, f1, f0
/* 8016BE54 00167374  48 00 01 DC */	b .L_8016C030
.L_8016BE58:
/* 8016BE58 00167378  C8 22 8C 70 */	lfd f1, lbl_80248470@sda21(r2)
/* 8016BE5C 0016737C  FC 00 18 28 */	fsub f0, f0, f3
/* 8016BE60 00167380  FC 21 58 2A */	fadd f1, f1, f11
/* 8016BE64 00167384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016BE68 00167388  40 81 00 68 */	ble .L_8016BED0
/* 8016BE6C 0016738C  C8 22 8C 68 */	lfd f1, lbl_80248468@sda21(r2)
/* 8016BE70 00167390  FC 01 07 F2 */	fmul f0, f1, f31
/* 8016BE74 00167394  FC 21 00 32 */	fmul f1, f1, f0
/* 8016BE78 00167398  48 00 01 B8 */	b .L_8016C030
.L_8016BE7C:
/* 8016BE7C 0016739C  3C 60 40 91 */	lis r3, 0x4090CC00@ha
/* 8016BE80 001673A0  54 C4 00 7E */	clrlwi r4, r6, 1
/* 8016BE84 001673A4  38 03 CC 00 */	addi r0, r3, 0x4090CC00@l
/* 8016BE88 001673A8  7C 04 00 00 */	cmpw r4, r0
/* 8016BE8C 001673AC  41 80 00 44 */	blt .L_8016BED0
/* 8016BE90 001673B0  3C 66 3F 6F */	addis r3, r6, 0x3f6f
/* 8016BE94 001673B4  38 03 34 00 */	addi r0, r3, 0x3400
/* 8016BE98 001673B8  7C 00 2B 79 */	or. r0, r0, r5
/* 8016BE9C 001673BC  41 82 00 14 */	beq .L_8016BEB0
/* 8016BEA0 001673C0  C8 22 8C 78 */	lfd f1, lbl_80248478@sda21(r2)
/* 8016BEA4 001673C4  FC 01 07 F2 */	fmul f0, f1, f31
/* 8016BEA8 001673C8  FC 21 00 32 */	fmul f1, f1, f0
/* 8016BEAC 001673CC  48 00 01 84 */	b .L_8016C030
.L_8016BEB0:
/* 8016BEB0 001673D0  FC 00 18 28 */	fsub f0, f0, f3
/* 8016BEB4 001673D4  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 8016BEB8 001673D8  4C 40 13 82 */	cror 2, 0, 2
/* 8016BEBC 001673DC  40 82 00 14 */	bne .L_8016BED0
/* 8016BEC0 001673E0  C8 22 8C 78 */	lfd f1, lbl_80248478@sda21(r2)
/* 8016BEC4 001673E4  FC 01 07 F2 */	fmul f0, f1, f31
/* 8016BEC8 001673E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8016BECC 001673EC  48 00 01 64 */	b .L_8016C030
.L_8016BED0:
/* 8016BED0 001673F0  54 C3 00 7E */	clrlwi r3, r6, 1
/* 8016BED4 001673F4  3C 00 3F E0 */	lis r0, 0x3fe0
/* 8016BED8 001673F8  7C 03 00 00 */	cmpw r3, r0
/* 8016BEDC 001673FC  54 C4 65 7E */	rlwinm r4, r6, 0xc, 0x15, 0x1f
/* 8016BEE0 00167400  38 60 00 00 */	li r3, 0
/* 8016BEE4 00167404  40 81 00 60 */	ble .L_8016BF44
/* 8016BEE8 00167408  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 8016BEEC 0016740C  38 04 FC 02 */	addi r0, r4, -1022
/* 8016BEF0 00167410  7C 60 06 30 */	sraw r0, r3, r0
/* 8016BEF4 00167414  C8 02 8B C8 */	lfd f0, lbl_802483C8@sda21(r2)
/* 8016BEF8 00167418  7C E6 02 14 */	add r7, r6, r0
/* 8016BEFC 0016741C  38 63 FF FF */	addi r3, r3, 0x000FFFFF@l
/* 8016BF00 00167420  54 E0 00 7E */	clrlwi r0, r7, 1
/* 8016BF04 00167424  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8016BF08 00167428  7C 04 A6 70 */	srawi r4, r0, 0x14
/* 8016BF0C 0016742C  2C 06 00 00 */	cmpwi r6, 0
/* 8016BF10 00167430  38 A4 FC 01 */	addi r5, r4, -1023
/* 8016BF14 00167434  54 E0 03 3E */	clrlwi r0, r7, 0xc
/* 8016BF18 00167438  7C 64 2E 30 */	sraw r4, r3, r5
/* 8016BF1C 0016743C  7C E4 20 78 */	andc r4, r7, r4
/* 8016BF20 00167440  64 03 00 10 */	oris r3, r0, 0x10
/* 8016BF24 00167444  20 05 00 14 */	subfic r0, r5, 0x14
/* 8016BF28 00167448  90 81 00 28 */	stw r4, 0x28(r1)
/* 8016BF2C 0016744C  7C 63 06 30 */	sraw r3, r3, r0
/* 8016BF30 00167450  40 80 00 08 */	bge .L_8016BF38
/* 8016BF34 00167454  7C 63 00 D0 */	neg r3, r3
.L_8016BF38:
/* 8016BF38 00167458  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8016BF3C 0016745C  FC 63 00 28 */	fsub f3, f3, f0
/* 8016BF40 00167460  D8 61 00 40 */	stfd f3, 0x40(r1)
.L_8016BF44:
/* 8016BF44 00167464  FC 2B 18 2A */	fadd f1, f11, f3
/* 8016BF48 00167468  38 00 00 00 */	li r0, 0
/* 8016BF4C 0016746C  C8 02 8C 90 */	lfd f0, lbl_80248490@sda21(r2)
/* 8016BF50 00167470  54 64 A0 16 */	slwi r4, r3, 0x14
/* 8016BF54 00167474  C9 02 8C 88 */	lfd f8, lbl_80248488@sda21(r2)
/* 8016BF58 00167478  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8016BF5C 0016747C  C9 42 8C 80 */	lfd f10, lbl_80248480@sda21(r2)
/* 8016BF60 00167480  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8016BF64 00167484  C8 C2 8C B8 */	lfd f6, lbl_802484B8@sda21(r2)
/* 8016BF68 00167488  C9 21 00 28 */	lfd f9, 0x28(r1)
/* 8016BF6C 0016748C  C8 22 8C B0 */	lfd f1, lbl_802484B0@sda21(r2)
/* 8016BF70 00167490  FC 49 18 28 */	fsub f2, f9, f3
/* 8016BF74 00167494  C8 A2 8C A8 */	lfd f5, lbl_802484A8@sda21(r2)
/* 8016BF78 00167498  FC E0 02 72 */	fmul f7, f0, f9
/* 8016BF7C 0016749C  C8 82 8C A0 */	lfd f4, lbl_802484A0@sda21(r2)
/* 8016BF80 001674A0  C8 62 8C 98 */	lfd f3, lbl_80248498@sda21(r2)
/* 8016BF84 001674A4  FC 0B 10 28 */	fsub f0, f11, f2
/* 8016BF88 001674A8  FD 4A 02 72 */	fmul f10, f10, f9
/* 8016BF8C 001674AC  C8 42 8C C0 */	lfd f2, lbl_802484C0@sda21(r2)
/* 8016BF90 001674B0  FD 08 00 32 */	fmul f8, f8, f0
/* 8016BF94 001674B4  C8 02 8B C0 */	lfd f0, lbl_802483C0@sda21(r2)
/* 8016BF98 001674B8  FD 68 38 2A */	fadd f11, f8, f7
/* 8016BF9C 001674BC  FD 2A 58 2A */	fadd f9, f10, f11
/* 8016BFA0 001674C0  FC E9 02 72 */	fmul f7, f9, f9
/* 8016BFA4 001674C4  FD 09 50 28 */	fsub f8, f9, f10
/* 8016BFA8 001674C8  FC C6 01 F2 */	fmul f6, f6, f7
/* 8016BFAC 001674CC  D8 E1 00 28 */	stfd f7, 0x28(r1)
/* 8016BFB0 001674D0  FD 0B 40 28 */	fsub f8, f11, f8
/* 8016BFB4 001674D4  FC C1 30 2A */	fadd f6, f1, f6
/* 8016BFB8 001674D8  FC 29 02 32 */	fmul f1, f9, f8
/* 8016BFBC 001674DC  FC C7 01 B2 */	fmul f6, f7, f6
/* 8016BFC0 001674E0  FC 28 08 2A */	fadd f1, f8, f1
/* 8016BFC4 001674E4  FC A5 30 2A */	fadd f5, f5, f6
/* 8016BFC8 001674E8  FC A7 01 72 */	fmul f5, f7, f5
/* 8016BFCC 001674EC  FC 84 28 2A */	fadd f4, f4, f5
/* 8016BFD0 001674F0  FC 87 01 32 */	fmul f4, f7, f4
/* 8016BFD4 001674F4  FC 63 20 2A */	fadd f3, f3, f4
/* 8016BFD8 001674F8  FC 67 00 F2 */	fmul f3, f7, f3
/* 8016BFDC 001674FC  FC 89 18 28 */	fsub f4, f9, f3
/* 8016BFE0 00167500  FC 69 01 32 */	fmul f3, f9, f4
/* 8016BFE4 00167504  D8 81 00 30 */	stfd f4, 0x30(r1)
/* 8016BFE8 00167508  FC 44 10 28 */	fsub f2, f4, f2
/* 8016BFEC 0016750C  FC 43 10 24 */	fdiv f2, f3, f2
/* 8016BFF0 00167510  FC 22 08 28 */	fsub f1, f2, f1
/* 8016BFF4 00167514  FC 21 48 28 */	fsub f1, f1, f9
/* 8016BFF8 00167518  FC 20 08 28 */	fsub f1, f0, f1
/* 8016BFFC 0016751C  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8016C000 00167520  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8016C004 00167524  7C 00 22 14 */	add r0, r0, r4
/* 8016C008 00167528  7C 00 A6 71 */	srawi. r0, r0, 0x14
/* 8016C00C 0016752C  41 81 00 10 */	bgt .L_8016C01C
/* 8016C010 00167530  4B FF E6 31 */	bl scalbn
/* 8016C014 00167534  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8016C018 00167538  48 00 00 10 */	b .L_8016C028
.L_8016C01C:
/* 8016C01C 0016753C  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8016C020 00167540  7C 00 22 14 */	add r0, r0, r4
/* 8016C024 00167544  90 01 00 50 */	stw r0, 0x50(r1)
.L_8016C028:
/* 8016C028 00167548  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8016C02C 0016754C  FC 3F 00 32 */	fmul f1, f31, f0
.L_8016C030:
/* 8016C030 00167550  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8016C034 00167554  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8016C038 00167558  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 8016C03C 0016755C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8016C040 00167560  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 8016C044 00167564  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8016C048 00167568  E3 81 00 88 */	psq_l f28, 136(r1), 0, qr0
/* 8016C04C 0016756C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8016C050 00167570  E3 61 00 78 */	psq_l f27, 120(r1), 0, qr0
/* 8016C054 00167574  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8016C058 00167578  E3 41 00 68 */	psq_l f26, 104(r1), 0, qr0
/* 8016C05C 0016757C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8016C060 00167580  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8016C064 00167584  7C 08 03 A6 */	mtlr r0
/* 8016C068 00167588  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8016C06C 0016758C  4E 80 00 20 */	blr
