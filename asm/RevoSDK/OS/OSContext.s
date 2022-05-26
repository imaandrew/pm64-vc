.include "macros.inc"

.section .text, "ax"

glabel __OSLoadFPUContext
/* 80091024 0008C544  A0 A4 01 A2 */	lhz r5, 0x1a2(r4)
/* 80091028 0008C548  54 A5 07 FF */	clrlwi. r5, r5, 0x1f
/* 8009102C 0008C54C  41 82 01 18 */	beq lbl_80091144
/* 80091030 0008C550  C8 04 01 90 */	lfd f0, 0x190(r4)
/* 80091034 0008C554  FD FE 05 8E */	mtfsf 0xff, f0
/* 80091038 0008C558  7C B8 E2 A6 */	mfspr r5, 0x398
/* 8009103C 0008C55C  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 80091040 0008C560  41 82 00 84 */	beq lbl_800910C4
/* 80091044 0008C564  E0 04 01 C8 */	psq_l f0, 456(r4), 0, qr0
/* 80091048 0008C568  E0 24 01 D0 */	psq_l f1, 464(r4), 0, qr0
/* 8009104C 0008C56C  E0 44 01 D8 */	psq_l f2, 472(r4), 0, qr0
/* 80091050 0008C570  E0 64 01 E0 */	psq_l f3, 480(r4), 0, qr0
/* 80091054 0008C574  E0 84 01 E8 */	psq_l f4, 488(r4), 0, qr0
/* 80091058 0008C578  E0 A4 01 F0 */	psq_l f5, 496(r4), 0, qr0
/* 8009105C 0008C57C  E0 C4 01 F8 */	psq_l f6, 504(r4), 0, qr0
/* 80091060 0008C580  E0 E4 02 00 */	psq_l f7, 512(r4), 0, qr0
/* 80091064 0008C584  E1 04 02 08 */	psq_l f8, 520(r4), 0, qr0
/* 80091068 0008C588  E1 24 02 10 */	psq_l f9, 528(r4), 0, qr0
/* 8009106C 0008C58C  E1 44 02 18 */	psq_l f10, 536(r4), 0, qr0
/* 80091070 0008C590  E1 64 02 20 */	psq_l f11, 544(r4), 0, qr0
/* 80091074 0008C594  E1 84 02 28 */	psq_l f12, 552(r4), 0, qr0
/* 80091078 0008C598  E1 A4 02 30 */	psq_l f13, 560(r4), 0, qr0
/* 8009107C 0008C59C  E1 C4 02 38 */	psq_l f14, 568(r4), 0, qr0
/* 80091080 0008C5A0  E1 E4 02 40 */	psq_l f15, 576(r4), 0, qr0
/* 80091084 0008C5A4  E2 04 02 48 */	psq_l f16, 584(r4), 0, qr0
/* 80091088 0008C5A8  E2 24 02 50 */	psq_l f17, 592(r4), 0, qr0
/* 8009108C 0008C5AC  E2 44 02 58 */	psq_l f18, 600(r4), 0, qr0
/* 80091090 0008C5B0  E2 64 02 60 */	psq_l f19, 608(r4), 0, qr0
/* 80091094 0008C5B4  E2 84 02 68 */	psq_l f20, 616(r4), 0, qr0
/* 80091098 0008C5B8  E2 A4 02 70 */	psq_l f21, 624(r4), 0, qr0
/* 8009109C 0008C5BC  E2 C4 02 78 */	psq_l f22, 632(r4), 0, qr0
/* 800910A0 0008C5C0  E2 E4 02 80 */	psq_l f23, 640(r4), 0, qr0
/* 800910A4 0008C5C4  E3 04 02 88 */	psq_l f24, 648(r4), 0, qr0
/* 800910A8 0008C5C8  E3 24 02 90 */	psq_l f25, 656(r4), 0, qr0
/* 800910AC 0008C5CC  E3 44 02 98 */	psq_l f26, 664(r4), 0, qr0
/* 800910B0 0008C5D0  E3 64 02 A0 */	psq_l f27, 672(r4), 0, qr0
/* 800910B4 0008C5D4  E3 84 02 A8 */	psq_l f28, 680(r4), 0, qr0
/* 800910B8 0008C5D8  E3 A4 02 B0 */	psq_l f29, 688(r4), 0, qr0
/* 800910BC 0008C5DC  E3 C4 02 B8 */	psq_l f30, 696(r4), 0, qr0
/* 800910C0 0008C5E0  E3 E4 02 C0 */	psq_l f31, 704(r4), 0, qr0
lbl_800910C4:
/* 800910C4 0008C5E4  C8 04 00 90 */	lfd f0, 0x90(r4)
/* 800910C8 0008C5E8  C8 24 00 98 */	lfd f1, 0x98(r4)
/* 800910CC 0008C5EC  C8 44 00 A0 */	lfd f2, 0xa0(r4)
/* 800910D0 0008C5F0  C8 64 00 A8 */	lfd f3, 0xa8(r4)
/* 800910D4 0008C5F4  C8 84 00 B0 */	lfd f4, 0xb0(r4)
/* 800910D8 0008C5F8  C8 A4 00 B8 */	lfd f5, 0xb8(r4)
/* 800910DC 0008C5FC  C8 C4 00 C0 */	lfd f6, 0xc0(r4)
/* 800910E0 0008C600  C8 E4 00 C8 */	lfd f7, 0xc8(r4)
/* 800910E4 0008C604  C9 04 00 D0 */	lfd f8, 0xd0(r4)
/* 800910E8 0008C608  C9 24 00 D8 */	lfd f9, 0xd8(r4)
/* 800910EC 0008C60C  C9 44 00 E0 */	lfd f10, 0xe0(r4)
/* 800910F0 0008C610  C9 64 00 E8 */	lfd f11, 0xe8(r4)
/* 800910F4 0008C614  C9 84 00 F0 */	lfd f12, 0xf0(r4)
/* 800910F8 0008C618  C9 A4 00 F8 */	lfd f13, 0xf8(r4)
/* 800910FC 0008C61C  C9 C4 01 00 */	lfd f14, 0x100(r4)
/* 80091100 0008C620  C9 E4 01 08 */	lfd f15, 0x108(r4)
/* 80091104 0008C624  CA 04 01 10 */	lfd f16, 0x110(r4)
/* 80091108 0008C628  CA 24 01 18 */	lfd f17, 0x118(r4)
/* 8009110C 0008C62C  CA 44 01 20 */	lfd f18, 0x120(r4)
/* 80091110 0008C630  CA 64 01 28 */	lfd f19, 0x128(r4)
/* 80091114 0008C634  CA 84 01 30 */	lfd f20, 0x130(r4)
/* 80091118 0008C638  CA A4 01 38 */	lfd f21, 0x138(r4)
/* 8009111C 0008C63C  CA C4 01 40 */	lfd f22, 0x140(r4)
/* 80091120 0008C640  CA E4 01 48 */	lfd f23, 0x148(r4)
/* 80091124 0008C644  CB 04 01 50 */	lfd f24, 0x150(r4)
/* 80091128 0008C648  CB 24 01 58 */	lfd f25, 0x158(r4)
/* 8009112C 0008C64C  CB 44 01 60 */	lfd f26, 0x160(r4)
/* 80091130 0008C650  CB 64 01 68 */	lfd f27, 0x168(r4)
/* 80091134 0008C654  CB 84 01 70 */	lfd f28, 0x170(r4)
/* 80091138 0008C658  CB A4 01 78 */	lfd f29, 0x178(r4)
/* 8009113C 0008C65C  CB C4 01 80 */	lfd f30, 0x180(r4)
/* 80091140 0008C660  CB E4 01 88 */	lfd f31, 0x188(r4)
lbl_80091144:
/* 80091144 0008C664  4E 80 00 20 */	blr 

glabel __OSSaveFPUContext
/* 80091148 0008C668  A0 65 01 A2 */	lhz r3, 0x1a2(r5)
/* 8009114C 0008C66C  60 63 00 01 */	ori r3, r3, 1
/* 80091150 0008C670  B0 65 01 A2 */	sth r3, 0x1a2(r5)
/* 80091154 0008C674  D8 05 00 90 */	stfd f0, 0x90(r5)
/* 80091158 0008C678  D8 25 00 98 */	stfd f1, 0x98(r5)
/* 8009115C 0008C67C  D8 45 00 A0 */	stfd f2, 0xa0(r5)
/* 80091160 0008C680  D8 65 00 A8 */	stfd f3, 0xa8(r5)
/* 80091164 0008C684  D8 85 00 B0 */	stfd f4, 0xb0(r5)
/* 80091168 0008C688  D8 A5 00 B8 */	stfd f5, 0xb8(r5)
/* 8009116C 0008C68C  D8 C5 00 C0 */	stfd f6, 0xc0(r5)
/* 80091170 0008C690  D8 E5 00 C8 */	stfd f7, 0xc8(r5)
/* 80091174 0008C694  D9 05 00 D0 */	stfd f8, 0xd0(r5)
/* 80091178 0008C698  D9 25 00 D8 */	stfd f9, 0xd8(r5)
/* 8009117C 0008C69C  D9 45 00 E0 */	stfd f10, 0xe0(r5)
/* 80091180 0008C6A0  D9 65 00 E8 */	stfd f11, 0xe8(r5)
/* 80091184 0008C6A4  D9 85 00 F0 */	stfd f12, 0xf0(r5)
/* 80091188 0008C6A8  D9 A5 00 F8 */	stfd f13, 0xf8(r5)
/* 8009118C 0008C6AC  D9 C5 01 00 */	stfd f14, 0x100(r5)
/* 80091190 0008C6B0  D9 E5 01 08 */	stfd f15, 0x108(r5)
/* 80091194 0008C6B4  DA 05 01 10 */	stfd f16, 0x110(r5)
/* 80091198 0008C6B8  DA 25 01 18 */	stfd f17, 0x118(r5)
/* 8009119C 0008C6BC  DA 45 01 20 */	stfd f18, 0x120(r5)
/* 800911A0 0008C6C0  DA 65 01 28 */	stfd f19, 0x128(r5)
/* 800911A4 0008C6C4  DA 85 01 30 */	stfd f20, 0x130(r5)
/* 800911A8 0008C6C8  DA A5 01 38 */	stfd f21, 0x138(r5)
/* 800911AC 0008C6CC  DA C5 01 40 */	stfd f22, 0x140(r5)
/* 800911B0 0008C6D0  DA E5 01 48 */	stfd f23, 0x148(r5)
/* 800911B4 0008C6D4  DB 05 01 50 */	stfd f24, 0x150(r5)
/* 800911B8 0008C6D8  DB 25 01 58 */	stfd f25, 0x158(r5)
/* 800911BC 0008C6DC  DB 45 01 60 */	stfd f26, 0x160(r5)
/* 800911C0 0008C6E0  DB 65 01 68 */	stfd f27, 0x168(r5)
/* 800911C4 0008C6E4  DB 85 01 70 */	stfd f28, 0x170(r5)
/* 800911C8 0008C6E8  DB A5 01 78 */	stfd f29, 0x178(r5)
/* 800911CC 0008C6EC  DB C5 01 80 */	stfd f30, 0x180(r5)
/* 800911D0 0008C6F0  DB E5 01 88 */	stfd f31, 0x188(r5)
/* 800911D4 0008C6F4  FC 00 04 8E */	mffs f0
/* 800911D8 0008C6F8  D8 05 01 90 */	stfd f0, 0x190(r5)
/* 800911DC 0008C6FC  C8 05 00 90 */	lfd f0, 0x90(r5)
/* 800911E0 0008C700  7C 78 E2 A6 */	mfspr r3, 0x398
/* 800911E4 0008C704  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 800911E8 0008C708  41 82 00 84 */	beq lbl_8009126C
/* 800911EC 0008C70C  F0 05 01 C8 */	psq_st f0, 456(r5), 0, qr0
/* 800911F0 0008C710  F0 25 01 D0 */	psq_st f1, 464(r5), 0, qr0
/* 800911F4 0008C714  F0 45 01 D8 */	psq_st f2, 472(r5), 0, qr0
/* 800911F8 0008C718  F0 65 01 E0 */	psq_st f3, 480(r5), 0, qr0
/* 800911FC 0008C71C  F0 85 01 E8 */	psq_st f4, 488(r5), 0, qr0
/* 80091200 0008C720  F0 A5 01 F0 */	psq_st f5, 496(r5), 0, qr0
/* 80091204 0008C724  F0 C5 01 F8 */	psq_st f6, 504(r5), 0, qr0
/* 80091208 0008C728  F0 E5 02 00 */	psq_st f7, 512(r5), 0, qr0
/* 8009120C 0008C72C  F1 05 02 08 */	psq_st f8, 520(r5), 0, qr0
/* 80091210 0008C730  F1 25 02 10 */	psq_st f9, 528(r5), 0, qr0
/* 80091214 0008C734  F1 45 02 18 */	psq_st f10, 536(r5), 0, qr0
/* 80091218 0008C738  F1 65 02 20 */	psq_st f11, 544(r5), 0, qr0
/* 8009121C 0008C73C  F1 85 02 28 */	psq_st f12, 552(r5), 0, qr0
/* 80091220 0008C740  F1 A5 02 30 */	psq_st f13, 560(r5), 0, qr0
/* 80091224 0008C744  F1 C5 02 38 */	psq_st f14, 568(r5), 0, qr0
/* 80091228 0008C748  F1 E5 02 40 */	psq_st f15, 576(r5), 0, qr0
/* 8009122C 0008C74C  F2 05 02 48 */	psq_st f16, 584(r5), 0, qr0
/* 80091230 0008C750  F2 25 02 50 */	psq_st f17, 592(r5), 0, qr0
/* 80091234 0008C754  F2 45 02 58 */	psq_st f18, 600(r5), 0, qr0
/* 80091238 0008C758  F2 65 02 60 */	psq_st f19, 608(r5), 0, qr0
/* 8009123C 0008C75C  F2 85 02 68 */	psq_st f20, 616(r5), 0, qr0
/* 80091240 0008C760  F2 A5 02 70 */	psq_st f21, 624(r5), 0, qr0
/* 80091244 0008C764  F2 C5 02 78 */	psq_st f22, 632(r5), 0, qr0
/* 80091248 0008C768  F2 E5 02 80 */	psq_st f23, 640(r5), 0, qr0
/* 8009124C 0008C76C  F3 05 02 88 */	psq_st f24, 648(r5), 0, qr0
/* 80091250 0008C770  F3 25 02 90 */	psq_st f25, 656(r5), 0, qr0
/* 80091254 0008C774  F3 45 02 98 */	psq_st f26, 664(r5), 0, qr0
/* 80091258 0008C778  F3 65 02 A0 */	psq_st f27, 672(r5), 0, qr0
/* 8009125C 0008C77C  F3 85 02 A8 */	psq_st f28, 680(r5), 0, qr0
/* 80091260 0008C780  F3 A5 02 B0 */	psq_st f29, 688(r5), 0, qr0
/* 80091264 0008C784  F3 C5 02 B8 */	psq_st f30, 696(r5), 0, qr0
/* 80091268 0008C788  F3 E5 02 C0 */	psq_st f31, 704(r5), 0, qr0
lbl_8009126C:
/* 8009126C 0008C78C  4E 80 00 20 */	blr 

glabel OSSaveFPUContext
/* 80091270 0008C790  38 A3 00 00 */	addi r5, r3, 0
/* 80091274 0008C794  4B FF FE D4 */	b __OSSaveFPUContext

glabel OSSetCurrentContext
/* 80091278 0008C798  3C 80 80 00 */	lis r4, 0x800000D4@ha
/* 8009127C 0008C79C  90 64 00 D4 */	stw r3, 0x800000D4@l(r4)
/* 80091280 0008C7A0  54 65 00 BE */	clrlwi r5, r3, 2
/* 80091284 0008C7A4  90 A4 00 C0 */	stw r5, 0xc0(r4)
/* 80091288 0008C7A8  80 A4 00 D8 */	lwz r5, 0xd8(r4)
/* 8009128C 0008C7AC  7C 05 18 00 */	cmpw r5, r3
/* 80091290 0008C7B0  40 82 00 20 */	bne lbl_800912B0
/* 80091294 0008C7B4  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 80091298 0008C7B8  60 C6 20 00 */	ori r6, r6, 0x2000
/* 8009129C 0008C7BC  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 800912A0 0008C7C0  7C C0 00 A6 */	mfmsr r6
/* 800912A4 0008C7C4  60 C6 00 02 */	ori r6, r6, 2
/* 800912A8 0008C7C8  7C C0 01 24 */	mtmsr r6
/* 800912AC 0008C7CC  4E 80 00 20 */	blr 
lbl_800912B0:
/* 800912B0 0008C7D0  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 800912B4 0008C7D4  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 800912B8 0008C7D8  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 800912BC 0008C7DC  7C C0 00 A6 */	mfmsr r6
/* 800912C0 0008C7E0  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 800912C4 0008C7E4  60 C6 00 02 */	ori r6, r6, 2
/* 800912C8 0008C7E8  7C C0 01 24 */	mtmsr r6
/* 800912CC 0008C7EC  4C 00 01 2C */	isync 
/* 800912D0 0008C7F0  4E 80 00 20 */	blr 

glabel OSGetCurrentContext
/* 800912D4 0008C7F4  3C 60 80 00 */	lis r3, 0x800000D4@ha
/* 800912D8 0008C7F8  80 63 00 D4 */	lwz r3, 0x800000D4@l(r3)
/* 800912DC 0008C7FC  4E 80 00 20 */	blr 

glabel OSSaveContext
/* 800912E0 0008C800  BD A3 00 34 */	stmw r13, 0x34(r3)
/* 800912E4 0008C804  7C 11 E2 A6 */	mfspr r0, 0x391
/* 800912E8 0008C808  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 800912EC 0008C80C  7C 12 E2 A6 */	mfspr r0, 0x392
/* 800912F0 0008C810  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 800912F4 0008C814  7C 13 E2 A6 */	mfspr r0, 0x393
/* 800912F8 0008C818  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 800912FC 0008C81C  7C 14 E2 A6 */	mfspr r0, 0x394
/* 80091300 0008C820  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 80091304 0008C824  7C 15 E2 A6 */	mfspr r0, 0x395
/* 80091308 0008C828  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 8009130C 0008C82C  7C 16 E2 A6 */	mfspr r0, 0x396
/* 80091310 0008C830  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 80091314 0008C834  7C 17 E2 A6 */	mfspr r0, 0x397
/* 80091318 0008C838  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 8009131C 0008C83C  7C 00 00 26 */	mfcr r0
/* 80091320 0008C840  90 03 00 80 */	stw r0, 0x80(r3)
/* 80091324 0008C844  7C 08 02 A6 */	mflr r0
/* 80091328 0008C848  90 03 00 84 */	stw r0, 0x84(r3)
/* 8009132C 0008C84C  90 03 01 98 */	stw r0, 0x198(r3)
/* 80091330 0008C850  7C 00 00 A6 */	mfmsr r0
/* 80091334 0008C854  90 03 01 9C */	stw r0, 0x19c(r3)
/* 80091338 0008C858  7C 09 02 A6 */	mfctr r0
/* 8009133C 0008C85C  90 03 00 88 */	stw r0, 0x88(r3)
/* 80091340 0008C860  7C 01 02 A6 */	mfxer r0
/* 80091344 0008C864  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80091348 0008C868  90 23 00 04 */	stw r1, 4(r3)
/* 8009134C 0008C86C  90 43 00 08 */	stw r2, 8(r3)
/* 80091350 0008C870  38 00 00 01 */	li r0, 1
/* 80091354 0008C874  90 03 00 0C */	stw r0, 0xc(r3)
/* 80091358 0008C878  38 60 00 00 */	li r3, 0
/* 8009135C 0008C87C  4E 80 00 20 */	blr 

glabel OSLoadContext
/* 80091360 0008C880  3C 80 80 09 */	lis r4, OSDisableInterrupts@ha
/* 80091364 0008C884  80 C3 01 98 */	lwz r6, 0x198(r3)
/* 80091368 0008C888  38 A4 52 B4 */	addi r5, r4, OSDisableInterrupts@l
/* 8009136C 0008C88C  7C 06 28 40 */	cmplw r6, r5
/* 80091370 0008C890  40 81 00 18 */	ble lbl_80091388
/* 80091374 0008C894  3C 80 80 09 */	lis r4, __RAS_OSDisableInterrupts_end@ha
/* 80091378 0008C898  38 04 52 C0 */	addi r0, r4, __RAS_OSDisableInterrupts_end@l
/* 8009137C 0008C89C  7C 06 00 40 */	cmplw r6, r0
/* 80091380 0008C8A0  40 80 00 08 */	bge lbl_80091388
/* 80091384 0008C8A4  90 A3 01 98 */	stw r5, 0x198(r3)
lbl_80091388:
/* 80091388 0008C8A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8009138C 0008C8AC  80 23 00 04 */	lwz r1, 4(r3)
/* 80091390 0008C8B0  80 43 00 08 */	lwz r2, 8(r3)
/* 80091394 0008C8B4  A0 83 01 A2 */	lhz r4, 0x1a2(r3)
/* 80091398 0008C8B8  54 85 07 BD */	rlwinm. r5, r4, 0, 0x1e, 0x1e
/* 8009139C 0008C8BC  41 82 00 14 */	beq lbl_800913B0
/* 800913A0 0008C8C0  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 800913A4 0008C8C4  B0 83 01 A2 */	sth r4, 0x1a2(r3)
/* 800913A8 0008C8C8  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 800913AC 0008C8CC  48 00 00 08 */	b lbl_800913B4
lbl_800913B0:
/* 800913B0 0008C8D0  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_800913B4:
/* 800913B4 0008C8D4  80 83 01 A8 */	lwz r4, 0x1a8(r3)
/* 800913B8 0008C8D8  7C 91 E3 A6 */	mtspr 0x391, r4
/* 800913BC 0008C8DC  80 83 01 AC */	lwz r4, 0x1ac(r3)
/* 800913C0 0008C8E0  7C 92 E3 A6 */	mtspr 0x392, r4
/* 800913C4 0008C8E4  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 800913C8 0008C8E8  7C 93 E3 A6 */	mtspr 0x393, r4
/* 800913CC 0008C8EC  80 83 01 B4 */	lwz r4, 0x1b4(r3)
/* 800913D0 0008C8F0  7C 94 E3 A6 */	mtspr 0x394, r4
/* 800913D4 0008C8F4  80 83 01 B8 */	lwz r4, 0x1b8(r3)
/* 800913D8 0008C8F8  7C 95 E3 A6 */	mtspr 0x395, r4
/* 800913DC 0008C8FC  80 83 01 BC */	lwz r4, 0x1bc(r3)
/* 800913E0 0008C900  7C 96 E3 A6 */	mtspr 0x396, r4
/* 800913E4 0008C904  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 800913E8 0008C908  7C 97 E3 A6 */	mtspr 0x397, r4
/* 800913EC 0008C90C  80 83 00 80 */	lwz r4, 0x80(r3)
/* 800913F0 0008C910  7C 8F F1 20 */	mtcrf 0xff, r4
/* 800913F4 0008C914  80 83 00 84 */	lwz r4, 0x84(r3)
/* 800913F8 0008C918  7C 88 03 A6 */	mtlr r4
/* 800913FC 0008C91C  80 83 00 88 */	lwz r4, 0x88(r3)
/* 80091400 0008C920  7C 89 03 A6 */	mtctr r4
/* 80091404 0008C924  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 80091408 0008C928  7C 81 03 A6 */	mtxer r4
/* 8009140C 0008C92C  7C 80 00 A6 */	mfmsr r4
/* 80091410 0008C930  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 80091414 0008C934  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 80091418 0008C938  7C 80 01 24 */	mtmsr r4
/* 8009141C 0008C93C  80 83 01 98 */	lwz r4, 0x198(r3)
/* 80091420 0008C940  7C 9A 03 A6 */	mtspr 0x1a, r4
/* 80091424 0008C944  80 83 01 9C */	lwz r4, 0x19c(r3)
/* 80091428 0008C948  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 8009142C 0008C94C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80091430 0008C950  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80091434 0008C954  4C 00 00 64 */	rfi 

glabel OSGetStackPointer
/* 80091438 0008C958  7C 23 0B 78 */	mr r3, r1
/* 8009143C 0008C95C  4E 80 00 20 */	blr 

glabel OSSwitchFiber
/* 80091440 0008C960  7C 08 02 A6 */	mflr r0
/* 80091444 0008C964  7C 25 0B 78 */	mr r5, r1
/* 80091448 0008C968  94 A4 FF F8 */	stwu r5, -8(r4)
/* 8009144C 0008C96C  7C 81 23 78 */	mr r1, r4
/* 80091450 0008C970  90 05 00 04 */	stw r0, 4(r5)
/* 80091454 0008C974  7C 68 03 A6 */	mtlr r3
/* 80091458 0008C978  4E 80 00 21 */	blrl 
/* 8009145C 0008C97C  80 A1 00 00 */	lwz r5, 0(r1)
/* 80091460 0008C980  80 05 00 04 */	lwz r0, 4(r5)
/* 80091464 0008C984  7C 08 03 A6 */	mtlr r0
/* 80091468 0008C988  7C A1 2B 78 */	mr r1, r5
/* 8009146C 0008C98C  4E 80 00 20 */	blr 

glabel OSSwitchFiberEx
/* 80091470 0008C990  7C 08 02 A6 */	mflr r0
/* 80091474 0008C994  7C 29 0B 78 */	mr r9, r1
/* 80091478 0008C998  95 28 FF F8 */	stwu r9, -8(r8)
/* 8009147C 0008C99C  7D 01 43 78 */	mr r1, r8
/* 80091480 0008C9A0  90 09 00 04 */	stw r0, 4(r9)
/* 80091484 0008C9A4  7C E8 03 A6 */	mtlr r7
/* 80091488 0008C9A8  4E 80 00 21 */	blrl 
/* 8009148C 0008C9AC  80 A1 00 00 */	lwz r5, 0(r1)
/* 80091490 0008C9B0  80 05 00 04 */	lwz r0, 4(r5)
/* 80091494 0008C9B4  7C 08 03 A6 */	mtlr r0
/* 80091498 0008C9B8  7C A1 2B 78 */	mr r1, r5
/* 8009149C 0008C9BC  4E 80 00 20 */	blr 

glabel OSClearContext
/* 800914A0 0008C9C0  38 A0 00 00 */	li r5, 0
/* 800914A4 0008C9C4  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 800914A8 0008C9C8  B0 A3 01 A0 */	sth r5, 0x1a0(r3)
/* 800914AC 0008C9CC  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 800914B0 0008C9D0  80 04 00 D8 */	lwz r0, 0x800000D8@l(r4)
/* 800914B4 0008C9D4  7C 03 00 40 */	cmplw r3, r0
/* 800914B8 0008C9D8  4C 82 00 20 */	bnelr 
/* 800914BC 0008C9DC  90 A4 00 D8 */	stw r5, 0xd8(r4)
/* 800914C0 0008C9E0  4E 80 00 20 */	blr 

glabel OSInitContext
/* 800914C4 0008C9E4  90 83 01 98 */	stw r4, 0x198(r3)
/* 800914C8 0008C9E8  90 A3 00 04 */	stw r5, 4(r3)
/* 800914CC 0008C9EC  39 60 00 00 */	li r11, 0
/* 800914D0 0008C9F0  61 6B 90 32 */	ori r11, r11, 0x9032
/* 800914D4 0008C9F4  91 63 01 9C */	stw r11, 0x19c(r3)
/* 800914D8 0008C9F8  38 00 00 00 */	li r0, 0
/* 800914DC 0008C9FC  90 03 00 80 */	stw r0, 0x80(r3)
/* 800914E0 0008CA00  90 03 00 8C */	stw r0, 0x8c(r3)
/* 800914E4 0008CA04  90 43 00 08 */	stw r2, 8(r3)
/* 800914E8 0008CA08  91 A3 00 34 */	stw r13, 0x34(r3)
/* 800914EC 0008CA0C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800914F0 0008CA10  90 03 00 10 */	stw r0, 0x10(r3)
/* 800914F4 0008CA14  90 03 00 14 */	stw r0, 0x14(r3)
/* 800914F8 0008CA18  90 03 00 18 */	stw r0, 0x18(r3)
/* 800914FC 0008CA1C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80091500 0008CA20  90 03 00 20 */	stw r0, 0x20(r3)
/* 80091504 0008CA24  90 03 00 24 */	stw r0, 0x24(r3)
/* 80091508 0008CA28  90 03 00 28 */	stw r0, 0x28(r3)
/* 8009150C 0008CA2C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80091510 0008CA30  90 03 00 30 */	stw r0, 0x30(r3)
/* 80091514 0008CA34  90 03 00 38 */	stw r0, 0x38(r3)
/* 80091518 0008CA38  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8009151C 0008CA3C  90 03 00 40 */	stw r0, 0x40(r3)
/* 80091520 0008CA40  90 03 00 44 */	stw r0, 0x44(r3)
/* 80091524 0008CA44  90 03 00 48 */	stw r0, 0x48(r3)
/* 80091528 0008CA48  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8009152C 0008CA4C  90 03 00 50 */	stw r0, 0x50(r3)
/* 80091530 0008CA50  90 03 00 54 */	stw r0, 0x54(r3)
/* 80091534 0008CA54  90 03 00 58 */	stw r0, 0x58(r3)
/* 80091538 0008CA58  90 03 00 5C */	stw r0, 0x5c(r3)
/* 8009153C 0008CA5C  90 03 00 60 */	stw r0, 0x60(r3)
/* 80091540 0008CA60  90 03 00 64 */	stw r0, 0x64(r3)
/* 80091544 0008CA64  90 03 00 68 */	stw r0, 0x68(r3)
/* 80091548 0008CA68  90 03 00 6C */	stw r0, 0x6c(r3)
/* 8009154C 0008CA6C  90 03 00 70 */	stw r0, 0x70(r3)
/* 80091550 0008CA70  90 03 00 74 */	stw r0, 0x74(r3)
/* 80091554 0008CA74  90 03 00 78 */	stw r0, 0x78(r3)
/* 80091558 0008CA78  90 03 00 7C */	stw r0, 0x7c(r3)
/* 8009155C 0008CA7C  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 80091560 0008CA80  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 80091564 0008CA84  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 80091568 0008CA88  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8009156C 0008CA8C  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 80091570 0008CA90  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 80091574 0008CA94  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 80091578 0008CA98  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 8009157C 0008CA9C  4B FF FF 24 */	b OSClearContext

glabel OSDumpContext
/* 80091580 0008CAA0  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 80091584 0008CAA4  7C 08 02 A6 */	mflr r0
/* 80091588 0008CAA8  90 01 02 F4 */	stw r0, 0x2f4(r1)
/* 8009158C 0008CAAC  39 61 02 F0 */	addi r11, r1, 0x2f0
/* 80091590 0008CAB0  48 0C B3 AD */	bl _savegpr_25
/* 80091594 0008CAB4  3F 80 80 18 */	lis r28, lbl_80183040@ha
/* 80091598 0008CAB8  7C 7E 1B 78 */	mr r30, r3
/* 8009159C 0008CABC  3B 9C 30 40 */	addi r28, r28, lbl_80183040@l
/* 800915A0 0008CAC0  7F C4 F3 78 */	mr r4, r30
/* 800915A4 0008CAC4  38 7C 00 00 */	addi r3, r28, 0
/* 800915A8 0008CAC8  4C C6 31 82 */	crclr 6
/* 800915AC 0008CACC  48 00 03 01 */	bl OSReport
/* 800915B0 0008CAD0  7F DA F3 78 */	mr r26, r30
/* 800915B4 0008CAD4  3B 20 00 00 */	li r25, 0
lbl_800915B8:
/* 800915B8 0008CAD8  81 1A 00 40 */	lwz r8, 0x40(r26)
/* 800915BC 0008CADC  7F 24 CB 78 */	mr r4, r25
/* 800915C0 0008CAE0  80 BA 00 00 */	lwz r5, 0(r26)
/* 800915C4 0008CAE4  38 7C 00 48 */	addi r3, r28, 0x48
/* 800915C8 0008CAE8  7D 09 43 78 */	mr r9, r8
/* 800915CC 0008CAEC  38 F9 00 10 */	addi r7, r25, 0x10
/* 800915D0 0008CAF0  7C A6 2B 78 */	mr r6, r5
/* 800915D4 0008CAF4  4C C6 31 82 */	crclr 6
/* 800915D8 0008CAF8  48 00 02 D5 */	bl OSReport
/* 800915DC 0008CAFC  3B 39 00 01 */	addi r25, r25, 1
/* 800915E0 0008CB00  3B 5A 00 04 */	addi r26, r26, 4
/* 800915E4 0008CB04  28 19 00 10 */	cmplwi r25, 0x10
/* 800915E8 0008CB08  41 80 FF D0 */	blt lbl_800915B8
/* 800915EC 0008CB0C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 800915F0 0008CB10  38 7C 00 78 */	addi r3, r28, 0x78
/* 800915F4 0008CB14  80 BE 00 80 */	lwz r5, 0x80(r30)
/* 800915F8 0008CB18  4C C6 31 82 */	crclr 6
/* 800915FC 0008CB1C  48 00 02 B1 */	bl OSReport
/* 80091600 0008CB20  80 9E 01 98 */	lwz r4, 0x198(r30)
/* 80091604 0008CB24  38 7C 00 A8 */	addi r3, r28, 0xa8
/* 80091608 0008CB28  80 BE 01 9C */	lwz r5, 0x19c(r30)
/* 8009160C 0008CB2C  4C C6 31 82 */	crclr 6
/* 80091610 0008CB30  48 00 02 9D */	bl OSReport
/* 80091614 0008CB34  38 7C 00 D8 */	addi r3, r28, 0xd8
/* 80091618 0008CB38  4C C6 31 82 */	crclr 6
/* 8009161C 0008CB3C  48 00 02 91 */	bl OSReport
/* 80091620 0008CB40  7F DA F3 78 */	mr r26, r30
/* 80091624 0008CB44  3B 20 00 00 */	li r25, 0
lbl_80091628:
/* 80091628 0008CB48  80 BA 01 A4 */	lwz r5, 0x1a4(r26)
/* 8009162C 0008CB4C  7F 24 CB 78 */	mr r4, r25
/* 80091630 0008CB50  80 FA 01 B4 */	lwz r7, 0x1b4(r26)
/* 80091634 0008CB54  38 7C 00 EC */	addi r3, r28, 0xec
/* 80091638 0008CB58  38 D9 00 04 */	addi r6, r25, 4
/* 8009163C 0008CB5C  4C C6 31 82 */	crclr 6
/* 80091640 0008CB60  48 00 02 6D */	bl OSReport
/* 80091644 0008CB64  3B 39 00 01 */	addi r25, r25, 1
/* 80091648 0008CB68  3B 5A 00 04 */	addi r26, r26, 4
/* 8009164C 0008CB6C  28 19 00 04 */	cmplwi r25, 4
/* 80091650 0008CB70  41 80 FF D8 */	blt lbl_80091628
/* 80091654 0008CB74  A0 1E 01 A2 */	lhz r0, 0x1a2(r30)
/* 80091658 0008CB78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8009165C 0008CB7C  41 82 01 18 */	beq lbl_80091774
/* 80091660 0008CB80  48 00 3C 55 */	bl OSDisableInterrupts
/* 80091664 0008CB84  3C C0 80 00 */	lis r6, 0x800000D4@ha
/* 80091668 0008CB88  38 A0 00 00 */	li r5, 0
/* 8009166C 0008CB8C  83 66 00 D4 */	lwz r27, 0x800000D4@l(r6)
/* 80091670 0008CB90  38 81 00 08 */	addi r4, r1, 8
/* 80091674 0008CB94  7C 7F 1B 78 */	mr r31, r3
/* 80091678 0008CB98  B0 A1 01 A8 */	sth r5, 0x1a8(r1)
/* 8009167C 0008CB9C  B0 A1 01 AA */	sth r5, 0x1aa(r1)
/* 80091680 0008CBA0  80 06 00 D8 */	lwz r0, 0xd8(r6)
/* 80091684 0008CBA4  7C 04 00 40 */	cmplw r4, r0
/* 80091688 0008CBA8  40 82 00 08 */	bne lbl_80091690
/* 8009168C 0008CBAC  90 A6 00 D8 */	stw r5, 0xd8(r6)
lbl_80091690:
/* 80091690 0008CBB0  38 61 00 08 */	addi r3, r1, 8
/* 80091694 0008CBB4  4B FF FB E5 */	bl OSSetCurrentContext
/* 80091698 0008CBB8  38 7C 01 10 */	addi r3, r28, 0x110
/* 8009169C 0008CBBC  4C C6 31 82 */	crclr 6
/* 800916A0 0008CBC0  48 00 02 0D */	bl OSReport
/* 800916A4 0008CBC4  7F DA F3 78 */	mr r26, r30
/* 800916A8 0008CBC8  3B 20 00 00 */	li r25, 0
lbl_800916AC:
/* 800916AC 0008CBCC  C8 3A 00 98 */	lfd f1, 0x98(r26)
/* 800916B0 0008CBD0  48 0C B1 6D */	bl __cvt_fp2unsigned
/* 800916B4 0008CBD4  C8 3A 00 90 */	lfd f1, 0x90(r26)
/* 800916B8 0008CBD8  7C 7D 1B 78 */	mr r29, r3
/* 800916BC 0008CBDC  48 0C B1 61 */	bl __cvt_fp2unsigned
/* 800916C0 0008CBE0  7C 65 1B 78 */	mr r5, r3
/* 800916C4 0008CBE4  7F 24 CB 78 */	mr r4, r25
/* 800916C8 0008CBE8  7F A7 EB 78 */	mr r7, r29
/* 800916CC 0008CBEC  38 7C 01 24 */	addi r3, r28, 0x124
/* 800916D0 0008CBF0  38 D9 00 01 */	addi r6, r25, 1
/* 800916D4 0008CBF4  4C C6 31 82 */	crclr 6
/* 800916D8 0008CBF8  48 00 01 D5 */	bl OSReport
/* 800916DC 0008CBFC  3B 39 00 02 */	addi r25, r25, 2
/* 800916E0 0008CC00  3B 5A 00 10 */	addi r26, r26, 0x10
/* 800916E4 0008CC04  28 19 00 20 */	cmplwi r25, 0x20
/* 800916E8 0008CC08  41 80 FF C4 */	blt lbl_800916AC
/* 800916EC 0008CC0C  38 7C 01 40 */	addi r3, r28, 0x140
/* 800916F0 0008CC10  4C C6 31 82 */	crclr 6
/* 800916F4 0008CC14  48 00 01 B9 */	bl OSReport
/* 800916F8 0008CC18  7F DA F3 78 */	mr r26, r30
/* 800916FC 0008CC1C  3B 20 00 00 */	li r25, 0
lbl_80091700:
/* 80091700 0008CC20  C8 3A 01 D0 */	lfd f1, 0x1d0(r26)
/* 80091704 0008CC24  48 0C B1 19 */	bl __cvt_fp2unsigned
/* 80091708 0008CC28  C8 3A 01 C8 */	lfd f1, 0x1c8(r26)
/* 8009170C 0008CC2C  7C 7D 1B 78 */	mr r29, r3
/* 80091710 0008CC30  48 0C B1 0D */	bl __cvt_fp2unsigned
/* 80091714 0008CC34  7C 65 1B 78 */	mr r5, r3
/* 80091718 0008CC38  7F 24 CB 78 */	mr r4, r25
/* 8009171C 0008CC3C  7F A7 EB 78 */	mr r7, r29
/* 80091720 0008CC40  38 7C 01 54 */	addi r3, r28, 0x154
/* 80091724 0008CC44  38 D9 00 01 */	addi r6, r25, 1
/* 80091728 0008CC48  4C C6 31 82 */	crclr 6
/* 8009172C 0008CC4C  48 00 01 81 */	bl OSReport
/* 80091730 0008CC50  3B 39 00 02 */	addi r25, r25, 2
/* 80091734 0008CC54  3B 5A 00 10 */	addi r26, r26, 0x10
/* 80091738 0008CC58  28 19 00 20 */	cmplwi r25, 0x20
/* 8009173C 0008CC5C  41 80 FF C4 */	blt lbl_80091700
/* 80091740 0008CC60  38 A0 00 00 */	li r5, 0
/* 80091744 0008CC64  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 80091748 0008CC68  B0 A1 01 A8 */	sth r5, 0x1a8(r1)
/* 8009174C 0008CC6C  38 81 00 08 */	addi r4, r1, 8
/* 80091750 0008CC70  B0 A1 01 AA */	sth r5, 0x1aa(r1)
/* 80091754 0008CC74  80 03 00 D8 */	lwz r0, 0x800000D8@l(r3)
/* 80091758 0008CC78  7C 04 00 40 */	cmplw r4, r0
/* 8009175C 0008CC7C  40 82 00 08 */	bne lbl_80091764
/* 80091760 0008CC80  90 A3 00 D8 */	stw r5, 0xd8(r3)
lbl_80091764:
/* 80091764 0008CC84  7F 63 DB 78 */	mr r3, r27
/* 80091768 0008CC88  4B FF FB 11 */	bl OSSetCurrentContext
/* 8009176C 0008CC8C  7F E3 FB 78 */	mr r3, r31
/* 80091770 0008CC90  48 00 3B 6D */	bl OSRestoreInterrupts
lbl_80091774:
/* 80091774 0008CC94  38 7C 01 74 */	addi r3, r28, 0x174
/* 80091778 0008CC98  4C C6 31 82 */	crclr 6
/* 8009177C 0008CC9C  48 00 01 31 */	bl OSReport
/* 80091780 0008CCA0  83 3E 00 04 */	lwz r25, 4(r30)
/* 80091784 0008CCA4  3B 40 00 00 */	li r26, 0
/* 80091788 0008CCA8  48 00 00 20 */	b lbl_800917A8
lbl_8009178C:
/* 8009178C 0008CCAC  80 B9 00 00 */	lwz r5, 0(r25)
/* 80091790 0008CCB0  7F 24 CB 78 */	mr r4, r25
/* 80091794 0008CCB4  80 D9 00 04 */	lwz r6, 4(r25)
/* 80091798 0008CCB8  38 7C 01 9C */	addi r3, r28, 0x19c
/* 8009179C 0008CCBC  4C C6 31 82 */	crclr 6
/* 800917A0 0008CCC0  48 00 01 0D */	bl OSReport
/* 800917A4 0008CCC4  83 39 00 00 */	lwz r25, 0(r25)
lbl_800917A8:
/* 800917A8 0008CCC8  2C 19 00 00 */	cmpwi r25, 0
/* 800917AC 0008CCCC  41 82 00 1C */	beq lbl_800917C8
/* 800917B0 0008CCD0  3C 19 00 01 */	addis r0, r25, 1
/* 800917B4 0008CCD4  28 00 FF FF */	cmplwi r0, 0xffff
/* 800917B8 0008CCD8  41 82 00 10 */	beq lbl_800917C8
/* 800917BC 0008CCDC  28 1A 00 10 */	cmplwi r26, 0x10
/* 800917C0 0008CCE0  3B 5A 00 01 */	addi r26, r26, 1
/* 800917C4 0008CCE4  41 80 FF C8 */	blt lbl_8009178C
lbl_800917C8:
/* 800917C8 0008CCE8  39 61 02 F0 */	addi r11, r1, 0x2f0
/* 800917CC 0008CCEC  48 0C B1 BD */	bl _restgpr_25
/* 800917D0 0008CCF0  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 800917D4 0008CCF4  7C 08 03 A6 */	mtlr r0
/* 800917D8 0008CCF8  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 800917DC 0008CCFC  4E 80 00 20 */	blr 

glabel OSSwitchFPUContext
/* 800917E0 0008CD00  7C A0 00 A6 */	mfmsr r5
/* 800917E4 0008CD04  60 A5 20 00 */	ori r5, r5, 0x2000
/* 800917E8 0008CD08  7C A0 01 24 */	mtmsr r5
/* 800917EC 0008CD0C  4C 00 01 2C */	isync 
/* 800917F0 0008CD10  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 800917F4 0008CD14  60 A5 20 00 */	ori r5, r5, 0x2000
/* 800917F8 0008CD18  7C BB 03 A6 */	mtspr 0x1b, r5
/* 800917FC 0008CD1C  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 80091800 0008CD20  80 A3 00 D8 */	lwz r5, 0x800000D8@l(r3)
/* 80091804 0008CD24  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 80091808 0008CD28  7C 05 20 00 */	cmpw r5, r4
/* 8009180C 0008CD2C  41 82 00 14 */	beq lbl_80091820
/* 80091810 0008CD30  2C 05 00 00 */	cmpwi r5, 0
/* 80091814 0008CD34  41 82 00 08 */	beq lbl_8009181C
/* 80091818 0008CD38  4B FF F9 31 */	bl __OSSaveFPUContext
lbl_8009181C:
/* 8009181C 0008CD3C  4B FF F8 09 */	bl __OSLoadFPUContext
lbl_80091820:
/* 80091820 0008CD40  80 64 00 80 */	lwz r3, 0x80(r4)
/* 80091824 0008CD44  7C 6F F1 20 */	mtcrf 0xff, r3
/* 80091828 0008CD48  80 64 00 84 */	lwz r3, 0x84(r4)
/* 8009182C 0008CD4C  7C 68 03 A6 */	mtlr r3
/* 80091830 0008CD50  80 64 01 98 */	lwz r3, 0x198(r4)
/* 80091834 0008CD54  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80091838 0008CD58  80 64 00 88 */	lwz r3, 0x88(r4)
/* 8009183C 0008CD5C  7C 69 03 A6 */	mtctr r3
/* 80091840 0008CD60  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 80091844 0008CD64  7C 61 03 A6 */	mtxer r3
/* 80091848 0008CD68  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 8009184C 0008CD6C  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 80091850 0008CD70  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 80091854 0008CD74  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 80091858 0008CD78  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8009185C 0008CD7C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80091860 0008CD80  4C 00 00 64 */	rfi 

glabel __OSContextInit
/* 80091864 0008CD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80091868 0008CD88  7C 08 02 A6 */	mflr r0
/* 8009186C 0008CD8C  3C 80 80 09 */	lis r4, OSSwitchFPUContext@ha
/* 80091870 0008CD90  38 60 00 07 */	li r3, 7
/* 80091874 0008CD94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80091878 0008CD98  38 84 17 E0 */	addi r4, r4, OSSwitchFPUContext@l
/* 8009187C 0008CD9C  4B FF E3 A9 */	bl __OSSetExceptionHandler
/* 80091880 0008CDA0  38 00 00 00 */	li r0, 0
/* 80091884 0008CDA4  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 80091888 0008CDA8  3C 60 80 18 */	lis r3, lbl_801831F8@ha
/* 8009188C 0008CDAC  90 04 00 D8 */	stw r0, 0x800000D8@l(r4)
/* 80091890 0008CDB0  38 63 31 F8 */	addi r3, r3, lbl_801831F8@l
/* 80091894 0008CDB4  4C C6 31 82 */	crclr 6
/* 80091898 0008CDB8  48 00 CB 59 */	bl DBPrintf
/* 8009189C 0008CDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800918A0 0008CDC0  7C 08 03 A6 */	mtlr r0
/* 800918A4 0008CDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 800918A8 0008CDC8  4E 80 00 20 */	blr 