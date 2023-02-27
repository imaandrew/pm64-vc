.include "macros.inc"

.section .text, "ax"

glabel PSMTXMultVec
/* 800A3250 0009E770  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 800A3254 0009E774  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 800A3258 0009E778  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 800A325C 0009E77C  10 82 00 32 */	ps_mul f4, f2, f0
/* 800A3260 0009E780  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 800A3264 0009E784  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 800A3268 0009E788  E1 03 00 10 */	psq_l f8, 16(r3), 0, qr0
/* 800A326C 0009E78C  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 800A3270 0009E790  E1 23 00 18 */	psq_l f9, 24(r3), 0, qr0
/* 800A3274 0009E794  11 48 00 32 */	ps_mul f10, f8, f0
/* 800A3278 0009E798  F0 C5 80 00 */	psq_st f6, 0(r5), 1, qr0
/* 800A327C 0009E79C  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 800A3280 0009E7A0  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 800A3284 0009E7A4  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 800A3288 0009E7A8  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 800A328C 0009E7AC  10 82 00 32 */	ps_mul f4, f2, f0
/* 800A3290 0009E7B0  F1 85 80 04 */	psq_st f12, 4(r5), 1, qr0
/* 800A3294 0009E7B4  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 800A3298 0009E7B8  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 800A329C 0009E7BC  F0 C5 80 08 */	psq_st f6, 8(r5), 1, qr0
/* 800A32A0 0009E7C0  4E 80 00 20 */	blr
