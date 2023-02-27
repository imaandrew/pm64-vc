.include "macros.inc"

.section .text, "ax"

glabel C_MTXOrtho
/* 800A32A4 0009E7C4  ED 64 18 28 */	fsubs f11, f4, f3
/* 800A32A8 0009E7C8  C1 02 86 38 */	lfs f8, lbl_80247E38@sda21(r2)
/* 800A32AC 0009E7CC  C1 42 86 30 */	lfs f10, lbl_80247E30@sda21(r2)
/* 800A32B0 0009E7D0  EC E1 10 28 */	fsubs f7, f1, f2
/* 800A32B4 0009E7D4  EC 06 28 28 */	fsubs f0, f6, f5
/* 800A32B8 0009E7D8  C1 22 86 34 */	lfs f9, lbl_80247E34@sda21(r2)
/* 800A32BC 0009E7DC  ED 8A 58 24 */	fdivs f12, f10, f11
/* 800A32C0 0009E7E0  C0 A2 86 3C */	lfs f5, lbl_80247E3C@sda21(r2)
/* 800A32C4 0009E7E4  D1 03 00 04 */	stfs f8, 4(r3)
/* 800A32C8 0009E7E8  D1 03 00 08 */	stfs f8, 8(r3)
/* 800A32CC 0009E7EC  D1 03 00 10 */	stfs f8, 0x10(r3)
/* 800A32D0 0009E7F0  D1 03 00 18 */	stfs f8, 0x18(r3)
/* 800A32D4 0009E7F4  ED 6A 38 24 */	fdivs f11, f10, f7
/* 800A32D8 0009E7F8  D1 03 00 20 */	stfs f8, 0x20(r3)
/* 800A32DC 0009E7FC  D1 03 00 24 */	stfs f8, 0x24(r3)
/* 800A32E0 0009E800  D1 03 00 30 */	stfs f8, 0x30(r3)
/* 800A32E4 0009E804  D1 03 00 34 */	stfs f8, 0x34(r3)
/* 800A32E8 0009E808  D1 03 00 38 */	stfs f8, 0x38(r3)
/* 800A32EC 0009E80C  EC EA 00 24 */	fdivs f7, f10, f0
/* 800A32F0 0009E810  D1 43 00 3C */	stfs f10, 0x3c(r3)
/* 800A32F4 0009E814  FC 00 30 50 */	fneg f0, f6
/* 800A32F8 0009E818  EC 21 10 2A */	fadds f1, f1, f2
/* 800A32FC 0009E81C  EC 64 18 2A */	fadds f3, f4, f3
/* 800A3300 0009E820  EC C9 03 32 */	fmuls f6, f9, f12
/* 800A3304 0009E824  EC 00 01 F2 */	fmuls f0, f0, f7
/* 800A3308 0009E828  FC 40 18 50 */	fneg f2, f3
/* 800A330C 0009E82C  EC 69 02 F2 */	fmuls f3, f9, f11
/* 800A3310 0009E830  D0 C3 00 00 */	stfs f6, 0(r3)
/* 800A3314 0009E834  FC 20 08 50 */	fneg f1, f1
/* 800A3318 0009E838  EC 8C 00 B2 */	fmuls f4, f12, f2
/* 800A331C 0009E83C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 800A3320 0009E840  EC 4B 00 72 */	fmuls f2, f11, f1
/* 800A3324 0009E844  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 800A3328 0009E848  EC 25 01 F2 */	fmuls f1, f5, f7
/* 800A332C 0009E84C  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 800A3330 0009E850  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 800A3334 0009E854  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 800A3338 0009E858  4E 80 00 20 */	blr 

glabel PSMTX44Identity
/* 800A333C 0009E85C  C0 22 86 38 */	lfs f1, lbl_80247E38@sda21(r2)
/* 800A3340 0009E860  C0 02 86 30 */	lfs f0, lbl_80247E30@sda21(r2)
/* 800A3344 0009E864  F0 23 00 04 */	psq_st f1, 4(r3), 0, qr0
/* 800A3348 0009E868  D0 03 00 00 */	stfs f0, 0(r3)
/* 800A334C 0009E86C  F0 23 00 0C */	psq_st f1, 12(r3), 0, qr0
/* 800A3350 0009E870  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 800A3354 0009E874  F0 23 00 18 */	psq_st f1, 24(r3), 0, qr0
/* 800A3358 0009E878  F0 23 00 20 */	psq_st f1, 32(r3), 0, qr0
/* 800A335C 0009E87C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 800A3360 0009E880  F0 23 00 2C */	psq_st f1, 44(r3), 0, qr0
/* 800A3364 0009E884  F0 23 00 34 */	psq_st f1, 52(r3), 0, qr0
/* 800A3368 0009E888  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 800A336C 0009E88C  4E 80 00 20 */	blr 

glabel PSMTX44Concat
/* 800A3370 0009E890  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800A3374 0009E894  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 800A3378 0009E898  10 C2 00 18 */	ps_muls0 f6, f2, f0
/* 800A337C 0009E89C  E0 64 00 10 */	psq_l f3, 16(r4), 0, qr0
/* 800A3380 0009E8A0  E0 84 00 20 */	psq_l f4, 32(r4), 0, qr0
/* 800A3384 0009E8A4  10 C3 30 1E */	ps_madds1 f6, f3, f0, f6
/* 800A3388 0009E8A8  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800A338C 0009E8AC  E0 A4 00 30 */	psq_l f5, 48(r4), 0, qr0
/* 800A3390 0009E8B0  10 C4 30 5C */	ps_madds0 f6, f4, f1, f6
/* 800A3394 0009E8B4  E0 03 00 10 */	psq_l f0, 16(r3), 0, qr0
/* 800A3398 0009E8B8  10 C5 30 5E */	ps_madds1 f6, f5, f1, f6
/* 800A339C 0009E8BC  E0 23 00 18 */	psq_l f1, 24(r3), 0, qr0
/* 800A33A0 0009E8C0  11 02 00 18 */	ps_muls0 f8, f2, f0
/* 800A33A4 0009E8C4  11 03 40 1E */	ps_madds1 f8, f3, f0, f8
/* 800A33A8 0009E8C8  E0 03 00 20 */	psq_l f0, 32(r3), 0, qr0
/* 800A33AC 0009E8CC  11 04 40 5C */	ps_madds0 f8, f4, f1, f8
/* 800A33B0 0009E8D0  11 05 40 5E */	ps_madds1 f8, f5, f1, f8
/* 800A33B4 0009E8D4  E0 23 00 28 */	psq_l f1, 40(r3), 0, qr0
/* 800A33B8 0009E8D8  11 42 00 18 */	ps_muls0 f10, f2, f0
/* 800A33BC 0009E8DC  11 43 50 1E */	ps_madds1 f10, f3, f0, f10
/* 800A33C0 0009E8E0  E0 03 00 30 */	psq_l f0, 48(r3), 0, qr0
/* 800A33C4 0009E8E4  11 44 50 5C */	ps_madds0 f10, f4, f1, f10
/* 800A33C8 0009E8E8  11 45 50 5E */	ps_madds1 f10, f5, f1, f10
/* 800A33CC 0009E8EC  E0 23 00 38 */	psq_l f1, 56(r3), 0, qr0
/* 800A33D0 0009E8F0  11 82 00 18 */	ps_muls0 f12, f2, f0
/* 800A33D4 0009E8F4  E0 44 00 08 */	psq_l f2, 8(r4), 0, qr0
/* 800A33D8 0009E8F8  11 83 60 1E */	ps_madds1 f12, f3, f0, f12
/* 800A33DC 0009E8FC  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800A33E0 0009E900  11 84 60 5C */	ps_madds0 f12, f4, f1, f12
/* 800A33E4 0009E904  E0 64 00 18 */	psq_l f3, 24(r4), 0, qr0
/* 800A33E8 0009E908  11 85 60 5E */	ps_madds1 f12, f5, f1, f12
/* 800A33EC 0009E90C  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800A33F0 0009E910  10 E2 00 18 */	ps_muls0 f7, f2, f0
/* 800A33F4 0009E914  E0 84 00 28 */	psq_l f4, 40(r4), 0, qr0
/* 800A33F8 0009E918  10 E3 38 1E */	ps_madds1 f7, f3, f0, f7
/* 800A33FC 0009E91C  E0 A4 00 38 */	psq_l f5, 56(r4), 0, qr0
/* 800A3400 0009E920  10 E4 38 5C */	ps_madds0 f7, f4, f1, f7
/* 800A3404 0009E924  E0 03 00 10 */	psq_l f0, 16(r3), 0, qr0
/* 800A3408 0009E928  10 E5 38 5E */	ps_madds1 f7, f5, f1, f7
/* 800A340C 0009E92C  E0 23 00 18 */	psq_l f1, 24(r3), 0, qr0
/* 800A3410 0009E930  11 22 00 18 */	ps_muls0 f9, f2, f0
/* 800A3414 0009E934  F0 C5 00 00 */	psq_st f6, 0(r5), 0, qr0
/* 800A3418 0009E938  11 23 48 1E */	ps_madds1 f9, f3, f0, f9
/* 800A341C 0009E93C  E0 03 00 20 */	psq_l f0, 32(r3), 0, qr0
/* 800A3420 0009E940  11 24 48 5C */	ps_madds0 f9, f4, f1, f9
/* 800A3424 0009E944  F1 05 00 10 */	psq_st f8, 16(r5), 0, qr0
/* 800A3428 0009E948  11 25 48 5E */	ps_madds1 f9, f5, f1, f9
/* 800A342C 0009E94C  E0 23 00 28 */	psq_l f1, 40(r3), 0, qr0
/* 800A3430 0009E950  11 62 00 18 */	ps_muls0 f11, f2, f0
/* 800A3434 0009E954  F1 45 00 20 */	psq_st f10, 32(r5), 0, qr0
/* 800A3438 0009E958  11 63 58 1E */	ps_madds1 f11, f3, f0, f11
/* 800A343C 0009E95C  E0 03 00 30 */	psq_l f0, 48(r3), 0, qr0
/* 800A3440 0009E960  11 64 58 5C */	ps_madds0 f11, f4, f1, f11
/* 800A3444 0009E964  F1 85 00 30 */	psq_st f12, 48(r5), 0, qr0
/* 800A3448 0009E968  11 65 58 5E */	ps_madds1 f11, f5, f1, f11
/* 800A344C 0009E96C  E0 23 00 38 */	psq_l f1, 56(r3), 0, qr0
/* 800A3450 0009E970  11 A2 00 18 */	ps_muls0 f13, f2, f0
/* 800A3454 0009E974  F0 E5 00 08 */	psq_st f7, 8(r5), 0, qr0
/* 800A3458 0009E978  11 A3 68 1E */	ps_madds1 f13, f3, f0, f13
/* 800A345C 0009E97C  F1 25 00 18 */	psq_st f9, 24(r5), 0, qr0
/* 800A3460 0009E980  11 A4 68 5C */	ps_madds0 f13, f4, f1, f13
/* 800A3464 0009E984  F1 65 00 28 */	psq_st f11, 40(r5), 0, qr0
/* 800A3468 0009E988  11 A5 68 5E */	ps_madds1 f13, f5, f1, f13
/* 800A346C 0009E98C  F1 A5 00 38 */	psq_st f13, 56(r5), 0, qr0
/* 800A3470 0009E990  4E 80 00 20 */	blr 

glabel PSMTX44Transpose
/* 800A3474 0009E994  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800A3478 0009E998  E0 23 00 10 */	psq_l f1, 16(r3), 0, qr0
/* 800A347C 0009E99C  10 80 0C 20 */	ps_merge00 f4, f0, f1
/* 800A3480 0009E9A0  E0 43 00 08 */	psq_l f2, 8(r3), 0, qr0
/* 800A3484 0009E9A4  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800A3488 0009E9A8  10 A0 0C E0 */	ps_merge11 f5, f0, f1
/* 800A348C 0009E9AC  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800A3490 0009E9B0  F0 A4 00 10 */	psq_st f5, 16(r4), 0, qr0
/* 800A3494 0009E9B4  10 82 1C 20 */	ps_merge00 f4, f2, f3
/* 800A3498 0009E9B8  E0 03 00 20 */	psq_l f0, 32(r3), 0, qr0
/* 800A349C 0009E9BC  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 800A34A0 0009E9C0  10 A2 1C E0 */	ps_merge11 f5, f2, f3
/* 800A34A4 0009E9C4  E0 23 00 30 */	psq_l f1, 48(r3), 0, qr0
/* 800A34A8 0009E9C8  F0 A4 00 30 */	psq_st f5, 48(r4), 0, qr0
/* 800A34AC 0009E9CC  10 80 0C 20 */	ps_merge00 f4, f0, f1
/* 800A34B0 0009E9D0  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 800A34B4 0009E9D4  F0 84 00 08 */	psq_st f4, 8(r4), 0, qr0
/* 800A34B8 0009E9D8  10 A0 0C E0 */	ps_merge11 f5, f0, f1
/* 800A34BC 0009E9DC  E0 63 00 38 */	psq_l f3, 56(r3), 0, qr0
/* 800A34C0 0009E9E0  F0 A4 00 18 */	psq_st f5, 24(r4), 0, qr0
/* 800A34C4 0009E9E4  10 82 1C 20 */	ps_merge00 f4, f2, f3
/* 800A34C8 0009E9E8  F0 84 00 28 */	psq_st f4, 40(r4), 0, qr0
/* 800A34CC 0009E9EC  10 A2 1C E0 */	ps_merge11 f5, f2, f3
/* 800A34D0 0009E9F0  F0 A4 00 38 */	psq_st f5, 56(r4), 0, qr0
/* 800A34D4 0009E9F4  4E 80 00 20 */	blr 

