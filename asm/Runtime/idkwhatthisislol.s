.include "macros.inc"

.section .text, "ax"

glabel __setjmp
/* 8015D174 00158694  7C A8 02 A6 */	mflr r5
/* 8015D178 00158698  7C C0 00 26 */	mfcr r6
/* 8015D17C 0015869C  90 A3 00 00 */	stw r5, 0(r3)
/* 8015D180 001586A0  90 C3 00 04 */	stw r6, 4(r3)
/* 8015D184 001586A4  90 23 00 08 */	stw r1, 8(r3)
/* 8015D188 001586A8  90 43 00 0C */	stw r2, 0xc(r3)
/* 8015D18C 001586AC  BD A3 00 14 */	stmw r13, 0x14(r3)
/* 8015D190 001586B0  FC 00 04 8E */	mffs f0
/* 8015D194 001586B4  D9 C3 00 60 */	stfd f14, 0x60(r3)
/* 8015D198 001586B8  38 83 00 68 */	addi r4, r3, 0x68
/* 8015D19C 001586BC  11 C0 20 0E */	psq_stx f14, r0, r4, 0, qr0
/* 8015D1A0 001586C0  D9 E3 00 70 */	stfd f15, 0x70(r3)
/* 8015D1A4 001586C4  38 83 00 78 */	addi r4, r3, 0x78
/* 8015D1A8 001586C8  11 E0 20 0E */	psq_stx f15, r0, r4, 0, qr0
/* 8015D1AC 001586CC  DA 03 00 80 */	stfd f16, 0x80(r3)
/* 8015D1B0 001586D0  38 83 00 88 */	addi r4, r3, 0x88
/* 8015D1B4 001586D4  12 00 20 0E */	psq_stx f16, r0, r4, 0, qr0
/* 8015D1B8 001586D8  DA 23 00 90 */	stfd f17, 0x90(r3)
/* 8015D1BC 001586DC  38 83 00 98 */	addi r4, r3, 0x98
/* 8015D1C0 001586E0  12 20 20 0E */	psq_stx f17, r0, r4, 0, qr0
/* 8015D1C4 001586E4  DA 43 00 A0 */	stfd f18, 0xa0(r3)
/* 8015D1C8 001586E8  38 83 00 A8 */	addi r4, r3, 0xa8
/* 8015D1CC 001586EC  12 40 20 0E */	psq_stx f18, r0, r4, 0, qr0
/* 8015D1D0 001586F0  DA 63 00 B0 */	stfd f19, 0xb0(r3)
/* 8015D1D4 001586F4  38 83 00 B8 */	addi r4, r3, 0xb8
/* 8015D1D8 001586F8  12 60 20 0E */	psq_stx f19, r0, r4, 0, qr0
/* 8015D1DC 001586FC  DA 83 00 C0 */	stfd f20, 0xc0(r3)
/* 8015D1E0 00158700  38 83 00 C8 */	addi r4, r3, 0xc8
/* 8015D1E4 00158704  12 80 20 0E */	psq_stx f20, r0, r4, 0, qr0
/* 8015D1E8 00158708  DA A3 00 D0 */	stfd f21, 0xd0(r3)
/* 8015D1EC 0015870C  38 83 00 D8 */	addi r4, r3, 0xd8
/* 8015D1F0 00158710  12 A0 20 0E */	psq_stx f21, r0, r4, 0, qr0
/* 8015D1F4 00158714  DA C3 00 E0 */	stfd f22, 0xe0(r3)
/* 8015D1F8 00158718  38 83 00 E8 */	addi r4, r3, 0xe8
/* 8015D1FC 0015871C  12 C0 20 0E */	psq_stx f22, r0, r4, 0, qr0
/* 8015D200 00158720  DA E3 00 F0 */	stfd f23, 0xf0(r3)
/* 8015D204 00158724  38 83 00 F8 */	addi r4, r3, 0xf8
/* 8015D208 00158728  12 E0 20 0E */	psq_stx f23, r0, r4, 0, qr0
/* 8015D20C 0015872C  DB 03 01 00 */	stfd f24, 0x100(r3)
/* 8015D210 00158730  38 83 01 08 */	addi r4, r3, 0x108
/* 8015D214 00158734  13 00 20 0E */	psq_stx f24, r0, r4, 0, qr0
/* 8015D218 00158738  DB 23 01 10 */	stfd f25, 0x110(r3)
/* 8015D21C 0015873C  38 83 01 18 */	addi r4, r3, 0x118
/* 8015D220 00158740  13 20 20 0E */	psq_stx f25, r0, r4, 0, qr0
/* 8015D224 00158744  DB 43 01 20 */	stfd f26, 0x120(r3)
/* 8015D228 00158748  38 83 01 28 */	addi r4, r3, 0x128
/* 8015D22C 0015874C  13 40 20 0E */	psq_stx f26, r0, r4, 0, qr0
/* 8015D230 00158750  DB 63 01 30 */	stfd f27, 0x130(r3)
/* 8015D234 00158754  38 83 01 38 */	addi r4, r3, 0x138
/* 8015D238 00158758  13 60 20 0E */	psq_stx f27, r0, r4, 0, qr0
/* 8015D23C 0015875C  DB 83 01 40 */	stfd f28, 0x140(r3)
/* 8015D240 00158760  38 83 01 48 */	addi r4, r3, 0x148
/* 8015D244 00158764  13 80 20 0E */	psq_stx f28, r0, r4, 0, qr0
/* 8015D248 00158768  DB A3 01 50 */	stfd f29, 0x150(r3)
/* 8015D24C 0015876C  38 83 01 58 */	addi r4, r3, 0x158
/* 8015D250 00158770  13 A0 20 0E */	psq_stx f29, r0, r4, 0, qr0
/* 8015D254 00158774  DB C3 01 60 */	stfd f30, 0x160(r3)
/* 8015D258 00158778  38 83 01 68 */	addi r4, r3, 0x168
/* 8015D25C 0015877C  13 C0 20 0E */	psq_stx f30, r0, r4, 0, qr0
/* 8015D260 00158780  DB E3 01 70 */	stfd f31, 0x170(r3)
/* 8015D264 00158784  38 83 01 78 */	addi r4, r3, 0x178
/* 8015D268 00158788  13 E0 20 0E */	psq_stx f31, r0, r4, 0, qr0
/* 8015D26C 0015878C  D8 03 01 80 */	stfd f0, 0x180(r3)
/* 8015D270 00158790  38 60 00 00 */	li r3, 0
/* 8015D274 00158794  4E 80 00 20 */	blr

glabel longjmp
/* 8015D278 00158798  80 A3 00 00 */	lwz r5, 0(r3)
/* 8015D27C 0015879C  80 C3 00 04 */	lwz r6, 4(r3)
/* 8015D280 001587A0  7C A8 03 A6 */	mtlr r5
/* 8015D284 001587A4  7C CF F1 20 */	mtcrf 0xff, r6
/* 8015D288 001587A8  80 23 00 08 */	lwz r1, 8(r3)
/* 8015D28C 001587AC  80 43 00 0C */	lwz r2, 0xc(r3)
/* 8015D290 001587B0  B9 A3 00 14 */	lmw r13, 0x14(r3)
/* 8015D294 001587B4  C9 C3 00 60 */	lfd f14, 0x60(r3)
/* 8015D298 001587B8  38 E3 00 68 */	addi r7, r3, 0x68
/* 8015D29C 001587BC  11 C0 38 0C */	psq_lx f14, r0, r7, 0, qr0
/* 8015D2A0 001587C0  C9 E3 00 70 */	lfd f15, 0x70(r3)
/* 8015D2A4 001587C4  38 E3 00 78 */	addi r7, r3, 0x78
/* 8015D2A8 001587C8  11 E0 38 0C */	psq_lx f15, r0, r7, 0, qr0
/* 8015D2AC 001587CC  CA 03 00 80 */	lfd f16, 0x80(r3)
/* 8015D2B0 001587D0  38 E3 00 88 */	addi r7, r3, 0x88
/* 8015D2B4 001587D4  12 00 38 0C */	psq_lx f16, r0, r7, 0, qr0
/* 8015D2B8 001587D8  CA 23 00 90 */	lfd f17, 0x90(r3)
/* 8015D2BC 001587DC  38 E3 00 98 */	addi r7, r3, 0x98
/* 8015D2C0 001587E0  12 20 38 0C */	psq_lx f17, r0, r7, 0, qr0
/* 8015D2C4 001587E4  CA 43 00 A0 */	lfd f18, 0xa0(r3)
/* 8015D2C8 001587E8  38 E3 00 A8 */	addi r7, r3, 0xa8
/* 8015D2CC 001587EC  12 40 38 0C */	psq_lx f18, r0, r7, 0, qr0
/* 8015D2D0 001587F0  CA 63 00 B0 */	lfd f19, 0xb0(r3)
/* 8015D2D4 001587F4  38 E3 00 B8 */	addi r7, r3, 0xb8
/* 8015D2D8 001587F8  12 60 38 0C */	psq_lx f19, r0, r7, 0, qr0
/* 8015D2DC 001587FC  CA 83 00 C0 */	lfd f20, 0xc0(r3)
/* 8015D2E0 00158800  38 E3 00 C8 */	addi r7, r3, 0xc8
/* 8015D2E4 00158804  12 80 38 0C */	psq_lx f20, r0, r7, 0, qr0
/* 8015D2E8 00158808  CA A3 00 D0 */	lfd f21, 0xd0(r3)
/* 8015D2EC 0015880C  38 E3 00 D8 */	addi r7, r3, 0xd8
/* 8015D2F0 00158810  12 A0 38 0C */	psq_lx f21, r0, r7, 0, qr0
/* 8015D2F4 00158814  CA C3 00 E0 */	lfd f22, 0xe0(r3)
/* 8015D2F8 00158818  38 E3 00 E8 */	addi r7, r3, 0xe8
/* 8015D2FC 0015881C  12 C0 38 0C */	psq_lx f22, r0, r7, 0, qr0
/* 8015D300 00158820  CA E3 00 F0 */	lfd f23, 0xf0(r3)
/* 8015D304 00158824  38 E3 00 F8 */	addi r7, r3, 0xf8
/* 8015D308 00158828  12 E0 38 0C */	psq_lx f23, r0, r7, 0, qr0
/* 8015D30C 0015882C  CB 03 01 00 */	lfd f24, 0x100(r3)
/* 8015D310 00158830  38 E3 01 08 */	addi r7, r3, 0x108
/* 8015D314 00158834  13 00 38 0C */	psq_lx f24, r0, r7, 0, qr0
/* 8015D318 00158838  CB 23 01 10 */	lfd f25, 0x110(r3)
/* 8015D31C 0015883C  38 E3 01 18 */	addi r7, r3, 0x118
/* 8015D320 00158840  13 20 38 0C */	psq_lx f25, r0, r7, 0, qr0
/* 8015D324 00158844  CB 43 01 20 */	lfd f26, 0x120(r3)
/* 8015D328 00158848  38 E3 01 28 */	addi r7, r3, 0x128
/* 8015D32C 0015884C  13 40 38 0C */	psq_lx f26, r0, r7, 0, qr0
/* 8015D330 00158850  CB 63 01 30 */	lfd f27, 0x130(r3)
/* 8015D334 00158854  38 E3 01 38 */	addi r7, r3, 0x138
/* 8015D338 00158858  13 60 38 0C */	psq_lx f27, r0, r7, 0, qr0
/* 8015D33C 0015885C  CB 83 01 40 */	lfd f28, 0x140(r3)
/* 8015D340 00158860  38 E3 01 48 */	addi r7, r3, 0x148
/* 8015D344 00158864  13 80 38 0C */	psq_lx f28, r0, r7, 0, qr0
/* 8015D348 00158868  CB A3 01 50 */	lfd f29, 0x150(r3)
/* 8015D34C 0015886C  38 E3 01 58 */	addi r7, r3, 0x158
/* 8015D350 00158870  13 A0 38 0C */	psq_lx f29, r0, r7, 0, qr0
/* 8015D354 00158874  CB C3 01 60 */	lfd f30, 0x160(r3)
/* 8015D358 00158878  38 E3 01 68 */	addi r7, r3, 0x168
/* 8015D35C 0015887C  13 C0 38 0C */	psq_lx f30, r0, r7, 0, qr0
/* 8015D360 00158880  CB E3 01 70 */	lfd f31, 0x170(r3)
/* 8015D364 00158884  38 E3 01 78 */	addi r7, r3, 0x178
/* 8015D368 00158888  13 E0 38 0C */	psq_lx f31, r0, r7, 0, qr0
/* 8015D36C 0015888C  C8 03 01 80 */	lfd f0, 0x180(r3)
/* 8015D370 00158890  2C 04 00 00 */	cmpwi r4, 0
/* 8015D374 00158894  7C 83 23 78 */	mr r3, r4
/* 8015D378 00158898  FD FE 05 8E */	mtfsf 0xff, f0
/* 8015D37C 0015889C  4C 82 00 20 */	bnelr
/* 8015D380 001588A0  38 60 00 01 */	li r3, 1
/* 8015D384 001588A4  4E 80 00 20 */	blr
