.include "macros.inc"

.section .text, "ax"

glabel PSMTXIdentity
/* 800A2E58 0009E378  C0 02 86 2C */	lfs f0, lbl_80247E2C@sda21(r2)
/* 800A2E5C 0009E37C  C0 22 86 28 */	lfs f1, lbl_80247E28@sda21(r2)
/* 800A2E60 0009E380  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800A2E64 0009E384  10 41 04 A0 */	ps_merge10 f2, f1, f0
/* 800A2E68 0009E388  10 20 0C 60 */	ps_merge01 f1, f0, f1
/* 800A2E6C 0009E38C  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800A2E70 0009E390  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800A2E74 0009E394  F0 23 00 10 */	psq_st f1, 16(r3), 0, qr0
/* 800A2E78 0009E398  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 800A2E7C 0009E39C  F0 43 00 28 */	psq_st f2, 40(r3), 0, qr0
/* 800A2E80 0009E3A0  4E 80 00 20 */	blr

glabel PSMTXCopy
/* 800A2E84 0009E3A4  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800A2E88 0009E3A8  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 800A2E8C 0009E3AC  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800A2E90 0009E3B0  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 800A2E94 0009E3B4  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800A2E98 0009E3B8  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 800A2E9C 0009E3BC  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800A2EA0 0009E3C0  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 800A2EA4 0009E3C4  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 800A2EA8 0009E3C8  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 800A2EAC 0009E3CC  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 800A2EB0 0009E3D0  F0 A4 00 28 */	psq_st f5, 40(r4), 0, qr0
/* 800A2EB4 0009E3D4  4E 80 00 20 */	blr

glabel PSMTXConcat
/* 800A2EB8 0009E3D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800A2EBC 0009E3DC  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800A2EC0 0009E3E0  D9 C1 00 08 */	stfd f14, 8(r1)
/* 800A2EC4 0009E3E4  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 800A2EC8 0009E3E8  3C C0 80 24 */	lis r6, lbl_80246760@ha
/* 800A2ECC 0009E3EC  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 800A2ED0 0009E3F0  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 800A2ED4 0009E3F4  38 C6 67 60 */	addi r6, r6, lbl_80246760@l
/* 800A2ED8 0009E3F8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 800A2EDC 0009E3FC  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 800A2EE0 0009E400  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 800A2EE4 0009E404  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800A2EE8 0009E408  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 800A2EEC 0009E40C  E3 E6 00 00 */	psq_l f31, 0(r6), 0, qr0
/* 800A2EF0 0009E410  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 800A2EF4 0009E414  E1 24 00 18 */	psq_l f9, 24(r4), 0, qr0
/* 800A2EF8 0009E418  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 800A2EFC 0009E41C  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800A2F00 0009E420  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 800A2F04 0009E424  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800A2F08 0009E428  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 800A2F0C 0009E42C  E1 44 00 20 */	psq_l f10, 32(r4), 0, qr0
/* 800A2F10 0009E430  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 800A2F14 0009E434  E1 64 00 28 */	psq_l f11, 40(r4), 0, qr0
/* 800A2F18 0009E438  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 800A2F1C 0009E43C  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 800A2F20 0009E440  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 800A2F24 0009E444  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 800A2F28 0009E448  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 800A2F2C 0009E44C  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 800A2F30 0009E450  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 800A2F34 0009E454  F1 85 00 00 */	psq_st f12, 0(r5), 0, qr0
/* 800A2F38 0009E458  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 800A2F3C 0009E45C  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 800A2F40 0009E460  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 800A2F44 0009E464  F1 C5 00 10 */	psq_st f14, 16(r5), 0, qr0
/* 800A2F48 0009E468  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 800A2F4C 0009E46C  F1 A5 00 08 */	psq_st f13, 8(r5), 0, qr0
/* 800A2F50 0009E470  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 800A2F54 0009E474  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 800A2F58 0009E478  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 800A2F5C 0009E47C  C9 C1 00 08 */	lfd f14, 8(r1)
/* 800A2F60 0009E480  F1 E5 00 18 */	psq_st f15, 24(r5), 0, qr0
/* 800A2F64 0009E484  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 800A2F68 0009E488  F0 45 00 20 */	psq_st f2, 32(r5), 0, qr0
/* 800A2F6C 0009E48C  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 800A2F70 0009E490  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 800A2F74 0009E494  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 800A2F78 0009E498  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 800A2F7C 0009E49C  38 21 00 40 */	addi r1, r1, 0x40
/* 800A2F80 0009E4A0  4E 80 00 20 */	blr

glabel PSMTXInverse
/* 800A2F84 0009E4A4  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 800A2F88 0009E4A8  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 800A2F8C 0009E4AC  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 800A2F90 0009E4B0  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 800A2F94 0009E4B4  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 800A2F98 0009E4B8  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 800A2F9C 0009E4BC  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 800A2FA0 0009E4C0  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 800A2FA4 0009E4C4  11 63 01 B2 */	ps_mul f11, f3, f6
/* 800A2FA8 0009E4C8  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 800A2FAC 0009E4CC  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 800A2FB0 0009E4D0  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 800A2FB4 0009E4D4  11 81 02 32 */	ps_mul f12, f1, f8
/* 800A2FB8 0009E4D8  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 800A2FBC 0009E4DC  11 43 01 32 */	ps_mul f10, f3, f4
/* 800A2FC0 0009E4E0  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 800A2FC4 0009E4E4  11 20 01 72 */	ps_mul f9, f0, f5
/* 800A2FC8 0009E4E8  11 01 00 B2 */	ps_mul f8, f1, f2
/* 800A2FCC 0009E4EC  10 C6 30 28 */	ps_sub f6, f6, f6
/* 800A2FD0 0009E4F0  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 800A2FD4 0009E4F4  10 E0 03 72 */	ps_mul f7, f0, f13
/* 800A2FD8 0009E4F8  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 800A2FDC 0009E4FC  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 800A2FE0 0009E500  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 800A2FE4 0009E504  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 800A2FE8 0009E508  10 07 30 40 */	ps_cmpo0 cr0, f7, f6
/* 800A2FEC 0009E50C  40 82 00 0C */	bne .L_800A2FF8
/* 800A2FF0 0009E510  38 60 00 00 */	li r3, 0
/* 800A2FF4 0009E514  4E 80 00 20 */	blr
.L_800A2FF8:
/* 800A2FF8 0009E518  EC 00 38 30 */	fres f0, f7
/* 800A2FFC 0009E51C  10 C0 00 2A */	ps_add f6, f0, f0
/* 800A3000 0009E520  10 A0 00 32 */	ps_mul f5, f0, f0
/* 800A3004 0009E524  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 800A3008 0009E528  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800A300C 0009E52C  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 800A3010 0009E530  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 800A3014 0009E534  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 800A3018 0009E538  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 800A301C 0009E53C  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 800A3020 0009E540  10 AD 64 20 */	ps_merge00 f5, f13, f12
/* 800A3024 0009E544  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 800A3028 0009E548  10 8D 64 E0 */	ps_merge11 f4, f13, f12
/* 800A302C 0009E54C  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 800A3030 0009E550  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 800A3034 0009E554  10 CD 00 72 */	ps_mul f6, f13, f1
/* 800A3038 0009E558  F0 84 00 10 */	psq_st f4, 16(r4), 0, qr0
/* 800A303C 0009E55C  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 800A3040 0009E560  10 CC 30 BA */	ps_madd f6, f12, f2, f6
/* 800A3044 0009E564  F1 44 80 20 */	psq_st f10, 32(r4), 1, qr0
/* 800A3048 0009E568  10 CB 30 FE */	ps_nmadd f6, f11, f3, f6
/* 800A304C 0009E56C  F1 24 80 24 */	psq_st f9, 36(r4), 1, qr0
/* 800A3050 0009E570  10 EA 00 72 */	ps_mul f7, f10, f1
/* 800A3054 0009E574  10 AB 34 20 */	ps_merge00 f5, f11, f6
/* 800A3058 0009E578  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 800A305C 0009E57C  10 8B 34 E0 */	ps_merge11 f4, f11, f6
/* 800A3060 0009E580  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800A3064 0009E584  10 E9 38 BA */	ps_madd f7, f9, f2, f7
/* 800A3068 0009E588  F0 84 00 18 */	psq_st f4, 24(r4), 0, qr0
/* 800A306C 0009E58C  10 E8 38 FE */	ps_nmadd f7, f8, f3, f7
/* 800A3070 0009E590  38 60 00 01 */	li r3, 1
/* 800A3074 0009E594  F0 E4 80 2C */	psq_st f7, 44(r4), 1, qr0
/* 800A3078 0009E598  4E 80 00 20 */	blr

glabel PSMTXRotRad
/* 800A307C 0009E59C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A3080 0009E5A0  7C 08 02 A6 */	mflr r0
/* 800A3084 0009E5A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A3088 0009E5A8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800A308C 0009E5AC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 800A3090 0009E5B0  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 800A3094 0009E5B4  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 800A3098 0009E5B8  FF C0 08 90 */	fmr f30, f1
/* 800A309C 0009E5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A30A0 0009E5C0  7C 9F 23 78 */	mr r31, r4
/* 800A30A4 0009E5C4  93 C1 00 08 */	stw r30, 8(r1)
/* 800A30A8 0009E5C8  7C 7E 1B 78 */	mr r30, r3
/* 800A30AC 0009E5CC  48 0C B6 49 */	bl sin
/* 800A30B0 0009E5D0  FF E0 08 18 */	frsp f31, f1
/* 800A30B4 0009E5D4  FC 20 F0 90 */	fmr f1, f30
/* 800A30B8 0009E5D8  48 0C B2 31 */	bl cos
/* 800A30BC 0009E5DC  FC 40 08 18 */	frsp f2, f1
/* 800A30C0 0009E5E0  7F C3 F3 78 */	mr r3, r30
/* 800A30C4 0009E5E4  FC 20 F8 90 */	fmr f1, f31
/* 800A30C8 0009E5E8  7F E4 07 74 */	extsb r4, r31
/* 800A30CC 0009E5EC  48 00 00 2D */	bl PSMTXRotTrig
/* 800A30D0 0009E5F0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 800A30D4 0009E5F4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800A30D8 0009E5F8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 800A30DC 0009E5FC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 800A30E0 0009E600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A30E4 0009E604  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A30E8 0009E608  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A30EC 0009E60C  7C 08 03 A6 */	mtlr r0
/* 800A30F0 0009E610  38 21 00 30 */	addi r1, r1, 0x30
/* 800A30F4 0009E614  4E 80 00 20 */	blr

glabel PSMTXRotTrig
/* 800A30F8 0009E618  FC A0 08 18 */	frsp f5, f1
/* 800A30FC 0009E61C  60 80 00 20 */	ori r0, r4, 0x20
/* 800A3100 0009E620  FC 80 10 18 */	frsp f4, f2
/* 800A3104 0009E624  28 00 00 78 */	cmplwi r0, 0x78
/* 800A3108 0009E628  C0 02 86 2C */	lfs f0, lbl_80247E2C@sda21(r2)
/* 800A310C 0009E62C  10 40 28 50 */	ps_neg f2, f5
/* 800A3110 0009E630  C0 22 86 28 */	lfs f1, lbl_80247E28@sda21(r2)
/* 800A3114 0009E634  41 82 00 18 */	beq .L_800A312C
/* 800A3118 0009E638  28 00 00 79 */	cmplwi r0, 0x79
/* 800A311C 0009E63C  41 82 00 38 */	beq .L_800A3154
/* 800A3120 0009E640  28 00 00 7A */	cmplwi r0, 0x7a
/* 800A3124 0009E644  41 82 00 5C */	beq .L_800A3180
/* 800A3128 0009E648  4E 80 00 20 */	blr
.L_800A312C:
/* 800A312C 0009E64C  10 65 24 20 */	ps_merge00 f3, f5, f4
/* 800A3130 0009E650  F0 23 80 00 */	psq_st f1, 0(r3), 1, qr0
/* 800A3134 0009E654  10 24 14 20 */	ps_merge00 f1, f4, f2
/* 800A3138 0009E658  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800A313C 0009E65C  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 800A3140 0009E660  F0 03 00 1C */	psq_st f0, 28(r3), 0, qr0
/* 800A3144 0009E664  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 800A3148 0009E668  F0 63 00 24 */	psq_st f3, 36(r3), 0, qr0
/* 800A314C 0009E66C  F0 23 00 14 */	psq_st f1, 20(r3), 0, qr0
/* 800A3150 0009E670  4E 80 00 20 */	blr
.L_800A3154:
/* 800A3154 0009E674  10 64 04 20 */	ps_merge00 f3, f4, f0
/* 800A3158 0009E678  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800A315C 0009E67C  10 20 0C 20 */	ps_merge00 f1, f0, f1
/* 800A3160 0009E680  10 42 04 20 */	ps_merge00 f2, f2, f0
/* 800A3164 0009E684  10 05 04 20 */	ps_merge00 f0, f5, f0
/* 800A3168 0009E688  F0 63 00 00 */	psq_st f3, 0(r3), 0, qr0
/* 800A316C 0009E68C  F0 63 00 28 */	psq_st f3, 40(r3), 0, qr0
/* 800A3170 0009E690  F0 23 00 10 */	psq_st f1, 16(r3), 0, qr0
/* 800A3174 0009E694  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800A3178 0009E698  F0 43 00 20 */	psq_st f2, 32(r3), 0, qr0
/* 800A317C 0009E69C  4E 80 00 20 */	blr
.L_800A3180:
/* 800A3180 0009E6A0  10 65 24 20 */	ps_merge00 f3, f5, f4
/* 800A3184 0009E6A4  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800A3188 0009E6A8  10 44 14 20 */	ps_merge00 f2, f4, f2
/* 800A318C 0009E6AC  10 21 04 20 */	ps_merge00 f1, f1, f0
/* 800A3190 0009E6B0  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800A3194 0009E6B4  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800A3198 0009E6B8  F0 63 00 10 */	psq_st f3, 16(r3), 0, qr0
/* 800A319C 0009E6BC  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 800A31A0 0009E6C0  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 800A31A4 0009E6C4  4E 80 00 20 */	blr

glabel PSMTXTrans
/* 800A31A8 0009E6C8  C0 02 86 2C */	lfs f0, lbl_80247E2C@sda21(r2)
/* 800A31AC 0009E6CC  C0 82 86 28 */	lfs f4, lbl_80247E28@sda21(r2)
/* 800A31B0 0009E6D0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 800A31B4 0009E6D4  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 800A31B8 0009E6D8  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800A31BC 0009E6DC  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800A31C0 0009E6E0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800A31C4 0009E6E4  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 800A31C8 0009E6E8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800A31CC 0009E6EC  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 800A31D0 0009E6F0  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 800A31D4 0009E6F4  D0 83 00 00 */	stfs f4, 0(r3)
/* 800A31D8 0009E6F8  4E 80 00 20 */	blr

glabel PSMTXTransApply
/* 800A31DC 0009E6FC  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 800A31E0 0009E700  FC 20 08 18 */	frsp f1, f1
/* 800A31E4 0009E704  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 800A31E8 0009E708  FC 40 10 18 */	frsp f2, f2
/* 800A31EC 0009E70C  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 800A31F0 0009E710  FC 60 18 18 */	frsp f3, f3
/* 800A31F4 0009E714  E1 03 00 28 */	psq_l f8, 40(r3), 0, qr0
/* 800A31F8 0009E718  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800A31FC 0009E71C  10 A1 29 56 */	ps_sum1 f5, f1, f5, f5
/* 800A3200 0009E720  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 800A3204 0009E724  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800A3208 0009E728  10 E2 39 D6 */	ps_sum1 f7, f2, f7, f7
/* 800A320C 0009E72C  E1 23 00 20 */	psq_l f9, 32(r3), 0, qr0
/* 800A3210 0009E730  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 800A3214 0009E734  11 03 42 16 */	ps_sum1 f8, f3, f8, f8
/* 800A3218 0009E738  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 800A321C 0009E73C  F1 24 00 20 */	psq_st f9, 32(r4), 0, qr0
/* 800A3220 0009E740  F1 04 00 28 */	psq_st f8, 40(r4), 0, qr0
/* 800A3224 0009E744  4E 80 00 20 */	blr

glabel PSMTXScale
/* 800A3228 0009E748  C0 02 86 2C */	lfs f0, lbl_80247E2C@sda21(r2)
/* 800A322C 0009E74C  D0 23 00 00 */	stfs f1, 0(r3)
/* 800A3230 0009E750  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800A3234 0009E754  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 800A3238 0009E758  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 800A323C 0009E75C  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800A3240 0009E760  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800A3244 0009E764  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 800A3248 0009E768  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 800A324C 0009E76C  4E 80 00 20 */	blr

