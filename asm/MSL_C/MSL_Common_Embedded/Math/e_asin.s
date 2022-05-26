.include "macros.inc"

.section .text, "ax"

glabel __ieee754_asin
/* 8016A9F4 00165F14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8016A9F8 00165F18  7C 08 02 A6 */	mflr r0
/* 8016A9FC 00165F1C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8016AA00 00165F20  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8016AA04 00165F24  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8016AA08 00165F28  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8016AA0C 00165F2C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8016AA10 00165F30  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8016AA14 00165F34  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 8016AA18 00165F38  3C 00 3F F0 */	lis r0, 0x3ff0
/* 8016AA1C 00165F3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016AA20 00165F40  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016AA24 00165F44  83 E1 00 08 */	lwz r31, 8(r1)
/* 8016AA28 00165F48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016AA2C 00165F4C  57 FE 00 7E */	clrlwi r30, r31, 1
/* 8016AA30 00165F50  7C 1E 00 00 */	cmpw r30, r0
/* 8016AA34 00165F54  41 80 00 38 */	blt lbl_8016AA6C
/* 8016AA38 00165F58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016AA3C 00165F5C  3C 7E C0 10 */	addis r3, r30, 0xc010
/* 8016AA40 00165F60  7C 60 03 79 */	or. r0, r3, r0
/* 8016AA44 00165F64  40 82 00 1C */	bne lbl_8016AA60
/* 8016AA48 00165F68  C8 42 89 B8 */	lfd f2, lbl_802481B8@sda21(r2)
/* 8016AA4C 00165F6C  C8 02 89 C0 */	lfd f0, lbl_802481C0@sda21(r2)
/* 8016AA50 00165F70  FC 42 00 72 */	fmul f2, f2, f1
/* 8016AA54 00165F74  FC 00 00 72 */	fmul f0, f0, f1
/* 8016AA58 00165F78  FC 22 00 2A */	fadd f1, f2, f0
/* 8016AA5C 00165F7C  48 00 02 00 */	b lbl_8016AC5C
lbl_8016AA60:
/* 8016AA60 00165F80  3C 60 80 24 */	lis r3, lbl_80246B48@ha
/* 8016AA64 00165F84  C0 23 6B 48 */	lfs f1, lbl_80246B48@l(r3)
/* 8016AA68 00165F88  48 00 01 F4 */	b lbl_8016AC5C
lbl_8016AA6C:
/* 8016AA6C 00165F8C  3C 00 3F E0 */	lis r0, 0x3fe0
/* 8016AA70 00165F90  7C 1E 00 00 */	cmpw r30, r0
/* 8016AA74 00165F94  40 80 00 B8 */	bge lbl_8016AB2C
/* 8016AA78 00165F98  3C 00 3E 40 */	lis r0, 0x3e40
/* 8016AA7C 00165F9C  7C 1E 00 00 */	cmpw r30, r0
/* 8016AA80 00165FA0  40 80 00 1C */	bge lbl_8016AA9C
/* 8016AA84 00165FA4  C8 42 89 C8 */	lfd f2, lbl_802481C8@sda21(r2)
/* 8016AA88 00165FA8  C8 02 89 D0 */	lfd f0, lbl_802481D0@sda21(r2)
/* 8016AA8C 00165FAC  FC 42 08 2A */	fadd f2, f2, f1
/* 8016AA90 00165FB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8016AA94 00165FB4  40 81 00 0C */	ble lbl_8016AAA0
/* 8016AA98 00165FB8  48 00 01 C4 */	b lbl_8016AC5C
lbl_8016AA9C:
/* 8016AA9C 00165FBC  FF E1 00 72 */	fmul f31, f1, f1
lbl_8016AAA0:
/* 8016AAA0 00165FC0  C8 42 8A 00 */	lfd f2, lbl_80248200@sda21(r2)
/* 8016AAA4 00165FC4  C8 02 8A 20 */	lfd f0, lbl_80248220@sda21(r2)
/* 8016AAA8 00165FC8  FC 82 07 F2 */	fmul f4, f2, f31
/* 8016AAAC 00165FCC  C8 62 89 F8 */	lfd f3, lbl_802481F8@sda21(r2)
/* 8016AAB0 00165FD0  C9 02 89 F0 */	lfd f8, lbl_802481F0@sda21(r2)
/* 8016AAB4 00165FD4  FC 40 07 F2 */	fmul f2, f0, f31
/* 8016AAB8 00165FD8  C8 02 8A 18 */	lfd f0, lbl_80248218@sda21(r2)
/* 8016AABC 00165FDC  C8 E2 89 E8 */	lfd f7, lbl_802481E8@sda21(r2)
/* 8016AAC0 00165FE0  FC 83 20 2A */	fadd f4, f3, f4
/* 8016AAC4 00165FE4  C8 62 8A 10 */	lfd f3, lbl_80248210@sda21(r2)
/* 8016AAC8 00165FE8  FC 00 10 2A */	fadd f0, f0, f2
/* 8016AACC 00165FEC  C8 42 8A 08 */	lfd f2, lbl_80248208@sda21(r2)
/* 8016AAD0 00165FF0  FD 3F 01 32 */	fmul f9, f31, f4
/* 8016AAD4 00165FF4  C8 C2 89 E0 */	lfd f6, lbl_802481E0@sda21(r2)
/* 8016AAD8 00165FF8  C8 A2 89 D8 */	lfd f5, lbl_802481D8@sda21(r2)
/* 8016AADC 00165FFC  FC 9F 00 32 */	fmul f4, f31, f0
/* 8016AAE0 00166000  C8 02 89 D0 */	lfd f0, lbl_802481D0@sda21(r2)
/* 8016AAE4 00166004  FD 08 48 2A */	fadd f8, f8, f9
/* 8016AAE8 00166008  FC 63 20 2A */	fadd f3, f3, f4
/* 8016AAEC 0016600C  FC 9F 02 32 */	fmul f4, f31, f8
/* 8016AAF0 00166010  FC 7F 00 F2 */	fmul f3, f31, f3
/* 8016AAF4 00166014  FC 87 20 2A */	fadd f4, f7, f4
/* 8016AAF8 00166018  FC 42 18 2A */	fadd f2, f2, f3
/* 8016AAFC 0016601C  FC 7F 01 32 */	fmul f3, f31, f4
/* 8016AB00 00166020  FC 5F 00 B2 */	fmul f2, f31, f2
/* 8016AB04 00166024  FC 66 18 2A */	fadd f3, f6, f3
/* 8016AB08 00166028  FC 40 10 2A */	fadd f2, f0, f2
/* 8016AB0C 0016602C  FC 1F 00 F2 */	fmul f0, f31, f3
/* 8016AB10 00166030  FC 05 00 2A */	fadd f0, f5, f0
/* 8016AB14 00166034  FC 1F 00 32 */	fmul f0, f31, f0
/* 8016AB18 00166038  FC 40 10 24 */	fdiv f2, f0, f2
/* 8016AB1C 0016603C  FC 01 00 B2 */	fmul f0, f1, f2
/* 8016AB20 00166040  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8016AB24 00166044  FC 21 00 2A */	fadd f1, f1, f0
/* 8016AB28 00166048  48 00 01 34 */	b lbl_8016AC5C
lbl_8016AB2C:
/* 8016AB2C 0016604C  FC 20 0A 10 */	fabs f1, f1
/* 8016AB30 00166050  C9 62 89 D0 */	lfd f11, lbl_802481D0@sda21(r2)
/* 8016AB34 00166054  C8 42 8A 28 */	lfd f2, lbl_80248228@sda21(r2)
/* 8016AB38 00166058  C8 02 8A 00 */	lfd f0, lbl_80248200@sda21(r2)
/* 8016AB3C 0016605C  FC 6B 08 28 */	fsub f3, f11, f1
/* 8016AB40 00166060  C8 22 8A 20 */	lfd f1, lbl_80248220@sda21(r2)
/* 8016AB44 00166064  C9 22 89 F8 */	lfd f9, lbl_802481F8@sda21(r2)
/* 8016AB48 00166068  C9 02 89 F0 */	lfd f8, lbl_802481F0@sda21(r2)
/* 8016AB4C 0016606C  FF E2 00 F2 */	fmul f31, f2, f3
/* 8016AB50 00166070  C8 62 8A 18 */	lfd f3, lbl_80248218@sda21(r2)
/* 8016AB54 00166074  C8 42 8A 10 */	lfd f2, lbl_80248210@sda21(r2)
/* 8016AB58 00166078  C8 E2 89 E8 */	lfd f7, lbl_802481E8@sda21(r2)
/* 8016AB5C 0016607C  C8 C2 89 E0 */	lfd f6, lbl_802481E0@sda21(r2)
/* 8016AB60 00166080  FD 40 07 F2 */	fmul f10, f0, f31
/* 8016AB64 00166084  C8 02 8A 08 */	lfd f0, lbl_80248208@sda21(r2)
/* 8016AB68 00166088  FC 81 07 F2 */	fmul f4, f1, f31
/* 8016AB6C 0016608C  C8 A2 89 D8 */	lfd f5, lbl_802481D8@sda21(r2)
/* 8016AB70 00166090  FD 29 50 2A */	fadd f9, f9, f10
/* 8016AB74 00166094  FC 20 F8 90 */	fmr f1, f31
/* 8016AB78 00166098  FC 63 20 2A */	fadd f3, f3, f4
/* 8016AB7C 0016609C  FC 9F 02 72 */	fmul f4, f31, f9
/* 8016AB80 001660A0  FC 7F 00 F2 */	fmul f3, f31, f3
/* 8016AB84 001660A4  FC 88 20 2A */	fadd f4, f8, f4
/* 8016AB88 001660A8  FC 42 18 2A */	fadd f2, f2, f3
/* 8016AB8C 001660AC  FC 7F 01 32 */	fmul f3, f31, f4
/* 8016AB90 001660B0  FC 5F 00 B2 */	fmul f2, f31, f2
/* 8016AB94 001660B4  FC 67 18 2A */	fadd f3, f7, f3
/* 8016AB98 001660B8  FC 00 10 2A */	fadd f0, f0, f2
/* 8016AB9C 001660BC  FC 5F 00 F2 */	fmul f2, f31, f3
/* 8016ABA0 001660C0  FC 1F 00 32 */	fmul f0, f31, f0
/* 8016ABA4 001660C4  FC 46 10 2A */	fadd f2, f6, f2
/* 8016ABA8 001660C8  FF AB 00 2A */	fadd f29, f11, f0
/* 8016ABAC 001660CC  FC 1F 00 B2 */	fmul f0, f31, f2
/* 8016ABB0 001660D0  FC 05 00 2A */	fadd f0, f5, f0
/* 8016ABB4 001660D4  FF DF 00 32 */	fmul f30, f31, f0
/* 8016ABB8 001660D8  48 00 3E F9 */	bl sqrt
/* 8016ABBC 001660DC  3C 60 3F EF */	lis r3, 0x3FEF3333@ha
/* 8016ABC0 001660E0  38 03 33 33 */	addi r0, r3, 0x3FEF3333@l
/* 8016ABC4 001660E4  7C 1E 00 00 */	cmpw r30, r0
/* 8016ABC8 001660E8  41 80 00 30 */	blt lbl_8016ABF8
/* 8016ABCC 001660EC  FC BE E8 24 */	fdiv f5, f30, f29
/* 8016ABD0 001660F0  C8 62 8A 30 */	lfd f3, lbl_80248230@sda21(r2)
/* 8016ABD4 001660F4  C8 42 89 C0 */	lfd f2, lbl_802481C0@sda21(r2)
/* 8016ABD8 001660F8  C8 02 89 B8 */	lfd f0, lbl_802481B8@sda21(r2)
/* 8016ABDC 001660FC  FC 81 01 72 */	fmul f4, f1, f5
/* 8016ABE0 00166100  D8 A1 00 10 */	stfd f5, 0x10(r1)
/* 8016ABE4 00166104  FC 21 20 2A */	fadd f1, f1, f4
/* 8016ABE8 00166108  FC 23 00 72 */	fmul f1, f3, f1
/* 8016ABEC 0016610C  FC 21 10 28 */	fsub f1, f1, f2
/* 8016ABF0 00166110  FC 20 08 28 */	fsub f1, f0, f1
/* 8016ABF4 00166114  48 00 00 58 */	b lbl_8016AC4C
lbl_8016ABF8:
/* 8016ABF8 00166118  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8016ABFC 0016611C  38 00 00 00 */	li r0, 0
/* 8016AC00 00166120  C8 A2 8A 30 */	lfd f5, lbl_80248230@sda21(r2)
/* 8016AC04 00166124  FD 1E E8 24 */	fdiv f8, f30, f29
/* 8016AC08 00166128  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016AC0C 0016612C  C8 62 89 C0 */	lfd f3, lbl_802481C0@sda21(r2)
/* 8016AC10 00166130  C8 E1 00 10 */	lfd f7, 0x10(r1)
/* 8016AC14 00166134  C8 42 8A 38 */	lfd f2, lbl_80248238@sda21(r2)
/* 8016AC18 00166138  FC 85 00 72 */	fmul f4, f5, f1
/* 8016AC1C 0016613C  FC 07 01 F2 */	fmul f0, f7, f7
/* 8016AC20 00166140  FC C1 38 2A */	fadd f6, f1, f7
/* 8016AC24 00166144  FC 84 02 32 */	fmul f4, f4, f8
/* 8016AC28 00166148  FC 3F 00 28 */	fsub f1, f31, f0
/* 8016AC2C 0016614C  FC 05 01 F2 */	fmul f0, f5, f7
/* 8016AC30 00166150  FC 21 30 24 */	fdiv f1, f1, f6
/* 8016AC34 00166154  FC 25 00 72 */	fmul f1, f5, f1
/* 8016AC38 00166158  FC 23 08 28 */	fsub f1, f3, f1
/* 8016AC3C 0016615C  FC 62 00 28 */	fsub f3, f2, f0
/* 8016AC40 00166160  FC 04 08 28 */	fsub f0, f4, f1
/* 8016AC44 00166164  FC 00 18 28 */	fsub f0, f0, f3
/* 8016AC48 00166168  FC 22 00 28 */	fsub f1, f2, f0
lbl_8016AC4C:
/* 8016AC4C 0016616C  2C 1F 00 00 */	cmpwi r31, 0
/* 8016AC50 00166170  40 81 00 08 */	ble lbl_8016AC58
/* 8016AC54 00166174  48 00 00 08 */	b lbl_8016AC5C
lbl_8016AC58:
/* 8016AC58 00166178  FC 20 08 50 */	fneg f1, f1
lbl_8016AC5C:
/* 8016AC5C 0016617C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8016AC60 00166180  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8016AC64 00166184  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8016AC68 00166188  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8016AC6C 0016618C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 8016AC70 00166190  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8016AC74 00166194  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016AC78 00166198  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8016AC7C 0016619C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016AC80 001661A0  7C 08 03 A6 */	mtlr r0
/* 8016AC84 001661A4  38 21 00 50 */	addi r1, r1, 0x50
/* 8016AC88 001661A8  4E 80 00 20 */	blr 