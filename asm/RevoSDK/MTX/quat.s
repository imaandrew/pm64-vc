.include "macros.inc"

.section .text, "ax"

glabel PSQUATNormalize
/* 800A34D8 0009E9F8  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800A34DC 0009E9FC  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 800A34E0 0009EA00  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800A34E4 0009EA04  11 00 01 B2 */	ps_mul f8, f0, f6
/* 800A34E8 0009EA08  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 800A34EC 0009EA0C  11 42 01 B2 */	ps_mul f10, f2, f6
/* 800A34F0 0009EA10  E0 E4 80 08 */	psq_l f7, 8(r4), 1, qr0
/* 800A34F4 0009EA14  11 84 01 B2 */	ps_mul f12, f4, f6
/* 800A34F8 0009EA18  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800A34FC 0009EA1C  11 08 42 14 */	ps_sum0 f8, f8, f8, f8
/* 800A3500 0009EA20  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 800A3504 0009EA24  11 4A 52 94 */	ps_sum0 f10, f10, f10, f10
/* 800A3508 0009EA28  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800A350C 0009EA2C  11 8C 63 14 */	ps_sum0 f12, f12, f12, f12
/* 800A3510 0009EA30  11 21 41 FA */	ps_madd f9, f1, f7, f8
/* 800A3514 0009EA34  F1 25 80 00 */	psq_st f9, 0(r5), 1, qr0
/* 800A3518 0009EA38  11 63 51 FA */	ps_madd f11, f3, f7, f10
/* 800A351C 0009EA3C  F1 65 80 04 */	psq_st f11, 4(r5), 1, qr0
/* 800A3520 0009EA40  11 A5 61 FA */	ps_madd f13, f5, f7, f12
/* 800A3524 0009EA44  F1 A5 80 08 */	psq_st f13, 8(r5), 1, qr0
/* 800A3528 0009EA48  4E 80 00 20 */	blr

