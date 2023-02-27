.include "macros.inc"

.section .text, "ax"

glabel __AIClockInit
/* 80090778 0008BC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009077C 0008BC9C  7C 08 02 A6 */	mflr r0
/* 80090780 0008BCA0  3C 80 CD 80 */	lis r4, 0xCD800180@ha
/* 80090784 0008BCA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80090788 0008BCA8  54 60 40 2E */	slwi r0, r3, 8
/* 8009078C 0008BCAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80090790 0008BCB0  7C 7F 1B 78 */	mr r31, r3
/* 80090794 0008BCB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80090798 0008BCB8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8009079C 0008BCBC  93 81 00 10 */	stw r28, 0x10(r1)
/* 800907A0 0008BCC0  80 A4 01 80 */	lwz r5, 0xCD800180@l(r4)
/* 800907A4 0008BCC4  54 A5 06 2C */	rlwinm r5, r5, 0, 0x18, 0x16
/* 800907A8 0008BCC8  7C A5 03 78 */	or r5, r5, r0
/* 800907AC 0008BCCC  54 A0 06 6E */	rlwinm r0, r5, 0, 0x19, 0x17
/* 800907B0 0008BCD0  90 04 01 80 */	stw r0, 0x180(r4)
/* 800907B4 0008BCD4  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 800907B8 0008BCD8  54 00 00 BE */	clrlwi r0, r0, 2
/* 800907BC 0008BCDC  90 04 01 D0 */	stw r0, 0x1d0(r4)
/* 800907C0 0008BCE0  48 00 86 21 */	bl OSGetTick
/* 800907C4 0008BCE4  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 800907C8 0008BCE8  7C 7C 1B 78 */	mr r28, r3
/* 800907CC 0008BCEC  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 800907D0 0008BCF0  3F A0 80 00 */	lis r29, 0x8000
.L_800907D4:
/* 800907D4 0008BCF4  48 00 86 0D */	bl OSGetTick
/* 800907D8 0008BCF8  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 800907DC 0008BCFC  7C 7C 18 50 */	subf r3, r28, r3
/* 800907E0 0008BD00  54 63 18 38 */	slwi r3, r3, 3
/* 800907E4 0008BD04  54 00 F0 BE */	srwi r0, r0, 2
/* 800907E8 0008BD08  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 800907EC 0008BD0C  54 00 8B FE */	srwi r0, r0, 0xf
/* 800907F0 0008BD10  7C 03 03 96 */	divwu r0, r3, r0
/* 800907F4 0008BD14  28 00 00 64 */	cmplwi r0, 0x64
/* 800907F8 0008BD18  41 80 FF DC */	blt .L_800907D4
/* 800907FC 0008BD1C  2C 1F 00 00 */	cmpwi r31, 0
/* 80090800 0008BD20  40 82 00 2C */	bne .L_8009082C
/* 80090804 0008BD24  3C 80 CD 80 */	lis r4, 0xCD8001CC@ha
/* 80090808 0008BD28  3C 60 F8 04 */	lis r3, 0xF803FFC0@ha
/* 8009080C 0008BD2C  80 A4 01 CC */	lwz r5, 0xCD8001CC@l(r4)
/* 80090810 0008BD30  38 03 FF C0 */	addi r0, r3, 0xF803FFC0@l
/* 80090814 0008BD34  54 A3 06 9A */	rlwinm r3, r5, 0, 0x1a, 0xd
/* 80090818 0008BD38  60 63 0F C0 */	ori r3, r3, 0xfc0
/* 8009081C 0008BD3C  7C 60 00 38 */	and r0, r3, r0
/* 80090820 0008BD40  64 00 04 64 */	oris r0, r0, 0x464
/* 80090824 0008BD44  90 04 01 CC */	stw r0, 0x1cc(r4)
/* 80090828 0008BD48  48 00 00 28 */	b .L_80090850
.L_8009082C:
/* 8009082C 0008BD4C  3C 60 CD 80 */	lis r3, 0xCD8001CC@ha
/* 80090830 0008BD50  80 03 01 CC */	lwz r0, 0xCD8001CC@l(r3)
/* 80090834 0008BD54  54 00 06 9A */	rlwinm r0, r0, 0, 0x1a, 0xd
/* 80090838 0008BD58  60 00 FF C0 */	ori r0, r0, 0xffc0
/* 8009083C 0008BD5C  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80090840 0008BD60  60 00 00 0E */	ori r0, r0, 0xe
/* 80090844 0008BD64  54 00 03 88 */	rlwinm r0, r0, 0, 0xe, 4
/* 80090848 0008BD68  64 00 04 B0 */	oris r0, r0, 0x4b0
/* 8009084C 0008BD6C  90 03 01 CC */	stw r0, 0x1cc(r3)
.L_80090850:
/* 80090850 0008BD70  48 00 85 91 */	bl OSGetTick
/* 80090854 0008BD74  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 80090858 0008BD78  7C 7F 1B 78 */	mr r31, r3
/* 8009085C 0008BD7C  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 80090860 0008BD80  3F A0 80 00 */	lis r29, 0x8000
.L_80090864:
/* 80090864 0008BD84  48 00 85 7D */	bl OSGetTick
/* 80090868 0008BD88  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 8009086C 0008BD8C  7C 7F 18 50 */	subf r3, r31, r3
/* 80090870 0008BD90  54 63 18 38 */	slwi r3, r3, 3
/* 80090874 0008BD94  54 00 F0 BE */	srwi r0, r0, 2
/* 80090878 0008BD98  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 8009087C 0008BD9C  54 00 8B FE */	srwi r0, r0, 0xf
/* 80090880 0008BDA0  7C 03 03 96 */	divwu r0, r3, r0
/* 80090884 0008BDA4  28 00 00 64 */	cmplwi r0, 0x64
/* 80090888 0008BDA8  41 80 FF DC */	blt .L_80090864
/* 8009088C 0008BDAC  3C 60 CD 80 */	lis r3, 0xCD8001D0@ha
/* 80090890 0008BDB0  80 03 01 D0 */	lwz r0, 0xCD8001D0@l(r3)
/* 80090894 0008BDB4  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 80090898 0008BDB8  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 8009089C 0008BDBC  48 00 85 45 */	bl OSGetTick
/* 800908A0 0008BDC0  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 800908A4 0008BDC4  7C 7F 1B 78 */	mr r31, r3
/* 800908A8 0008BDC8  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 800908AC 0008BDCC  3F A0 80 00 */	lis r29, 0x8000
.L_800908B0:
/* 800908B0 0008BDD0  48 00 85 31 */	bl OSGetTick
/* 800908B4 0008BDD4  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 800908B8 0008BDD8  7C 7F 18 50 */	subf r3, r31, r3
/* 800908BC 0008BDDC  54 63 18 38 */	slwi r3, r3, 3
/* 800908C0 0008BDE0  54 00 F0 BE */	srwi r0, r0, 2
/* 800908C4 0008BDE4  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 800908C8 0008BDE8  54 00 8B FE */	srwi r0, r0, 0xf
/* 800908CC 0008BDEC  7C 03 03 96 */	divwu r0, r3, r0
/* 800908D0 0008BDF0  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 800908D4 0008BDF4  41 80 FF DC */	blt .L_800908B0
/* 800908D8 0008BDF8  3C 60 CD 80 */	lis r3, 0xCD8001D0@ha
/* 800908DC 0008BDFC  80 03 01 D0 */	lwz r0, 0xCD8001D0@l(r3)
/* 800908E0 0008BE00  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 800908E4 0008BE04  64 00 40 00 */	oris r0, r0, 0x4000
/* 800908E8 0008BE08  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 800908EC 0008BE0C  48 00 84 F5 */	bl OSGetTick
/* 800908F0 0008BE10  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 800908F4 0008BE14  7C 7F 1B 78 */	mr r31, r3
/* 800908F8 0008BE18  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 800908FC 0008BE1C  3F A0 80 00 */	lis r29, 0x8000
.L_80090900:
/* 80090900 0008BE20  48 00 84 E1 */	bl OSGetTick
/* 80090904 0008BE24  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 80090908 0008BE28  7C 7F 18 50 */	subf r3, r31, r3
/* 8009090C 0008BE2C  54 63 18 38 */	slwi r3, r3, 3
/* 80090910 0008BE30  54 00 F0 BE */	srwi r0, r0, 2
/* 80090914 0008BE34  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 80090918 0008BE38  54 00 8B FE */	srwi r0, r0, 0xf
/* 8009091C 0008BE3C  7C 03 03 96 */	divwu r0, r3, r0
/* 80090920 0008BE40  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 80090924 0008BE44  41 80 FF DC */	blt .L_80090900
/* 80090928 0008BE48  3C 60 CD 80 */	lis r3, 0xCD8001D0@ha
/* 8009092C 0008BE4C  80 03 01 D0 */	lwz r0, 0xCD8001D0@l(r3)
/* 80090930 0008BE50  54 00 00 7E */	clrlwi r0, r0, 1
/* 80090934 0008BE54  64 00 80 00 */	oris r0, r0, 0x8000
/* 80090938 0008BE58  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 8009093C 0008BE5C  48 00 84 A5 */	bl OSGetTick
/* 80090940 0008BE60  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 80090944 0008BE64  7C 7D 1B 78 */	mr r29, r3
/* 80090948 0008BE68  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 8009094C 0008BE6C  3F E0 80 00 */	lis r31, 0x8000
.L_80090950:
/* 80090950 0008BE70  48 00 84 91 */	bl OSGetTick
/* 80090954 0008BE74  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80090958 0008BE78  7C 7D 18 50 */	subf r3, r29, r3
/* 8009095C 0008BE7C  54 63 18 38 */	slwi r3, r3, 3
/* 80090960 0008BE80  54 00 F0 BE */	srwi r0, r0, 2
/* 80090964 0008BE84  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 80090968 0008BE88  54 00 8B FE */	srwi r0, r0, 0xf
/* 8009096C 0008BE8C  7C 03 03 96 */	divwu r0, r3, r0
/* 80090970 0008BE90  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 80090974 0008BE94  41 80 FF DC */	blt .L_80090950
/* 80090978 0008BE98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009097C 0008BE9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80090980 0008BEA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80090984 0008BEA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80090988 0008BEA8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8009098C 0008BEAC  7C 08 03 A6 */	mtlr r0
/* 80090990 0008BEB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80090994 0008BEB4  4E 80 00 20 */	blr

glabel __OSInitAudioSystem
/* 80090998 0008BEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009099C 0008BEBC  7C 08 02 A6 */	mflr r0
/* 800909A0 0008BEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800909A4 0008BEC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800909A8 0008BEC8  80 0D 8C 48 */	lwz r0, lbl_802470C8@sda21(r13)
/* 800909AC 0008BECC  2C 00 00 00 */	cmpwi r0, 0
/* 800909B0 0008BED0  40 82 00 0C */	bne .L_800909BC
/* 800909B4 0008BED4  38 60 00 01 */	li r3, 1
/* 800909B8 0008BED8  4B FF FD C1 */	bl __AIClockInit
.L_800909BC:
/* 800909BC 0008BEDC  4B FF FD 39 */	bl OSGetArenaHi
/* 800909C0 0008BEE0  3C 80 81 00 */	lis r4, 0x8100
/* 800909C4 0008BEE4  38 A0 00 80 */	li r5, 0x80
/* 800909C8 0008BEE8  38 63 FF 80 */	addi r3, r3, -128
/* 800909CC 0008BEEC  4B F7 39 6D */	bl memcpy
/* 800909D0 0008BEF0  3C 80 80 18 */	lis r4, lbl_80182D88@ha
/* 800909D4 0008BEF4  3C 60 81 00 */	lis r3, 0x8100
/* 800909D8 0008BEF8  38 84 2D 88 */	addi r4, r4, lbl_80182D88@l
/* 800909DC 0008BEFC  38 A0 00 80 */	li r5, 0x80
/* 800909E0 0008BF00  4B F7 39 59 */	bl memcpy
/* 800909E4 0008BF04  3C 60 81 00 */	lis r3, 0x8100
/* 800909E8 0008BF08  38 80 00 80 */	li r4, 0x80
/* 800909EC 0008BF0C  48 00 02 81 */	bl DCFlushRange
/* 800909F0 0008BF10  3C 60 CC 00 */	lis r3, 0xCC005012@ha
/* 800909F4 0008BF14  38 00 00 43 */	li r0, 0x43
/* 800909F8 0008BF18  B0 03 50 12 */	sth r0, 0xCC005012@l(r3)
/* 800909FC 0008BF1C  38 00 08 AC */	li r0, 0x8ac
/* 80090A00 0008BF20  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 80090A04 0008BF24  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80090A08 0008BF28  60 00 00 01 */	ori r0, r0, 1
/* 80090A0C 0008BF2C  B0 03 50 0A */	sth r0, 0x500a(r3)
.L_80090A10:
/* 80090A10 0008BF30  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80090A14 0008BF34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80090A18 0008BF38  40 82 FF F8 */	bne .L_80090A10
/* 80090A1C 0008BF3C  38 00 00 00 */	li r0, 0
/* 80090A20 0008BF40  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 80090A24 0008BF44  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
.L_80090A28:
/* 80090A28 0008BF48  A0 64 50 04 */	lhz r3, 0x5004(r4)
/* 80090A2C 0008BF4C  A0 04 50 06 */	lhz r0, 0x5006(r4)
/* 80090A30 0008BF50  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 80090A34 0008BF54  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80090A38 0008BF58  40 82 FF F0 */	bne .L_80090A28
/* 80090A3C 0008BF5C  3C 80 CC 00 */	lis r4, 0xCC005020@ha
/* 80090A40 0008BF60  3C 00 01 00 */	lis r0, 0x100
/* 80090A44 0008BF64  90 04 50 20 */	stw r0, 0xCC005020@l(r4)
/* 80090A48 0008BF68  38 60 00 00 */	li r3, 0
/* 80090A4C 0008BF6C  38 00 00 20 */	li r0, 0x20
/* 80090A50 0008BF70  90 64 50 24 */	stw r3, 0x5024(r4)
/* 80090A54 0008BF74  90 04 50 28 */	stw r0, 0x5028(r4)
/* 80090A58 0008BF78  A0 A4 50 0A */	lhz r5, 0x500a(r4)
/* 80090A5C 0008BF7C  48 00 00 08 */	b .L_80090A64
.L_80090A60:
/* 80090A60 0008BF80  A0 A4 50 0A */	lhz r5, 0x500a(r4)
.L_80090A64:
/* 80090A64 0008BF84  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 80090A68 0008BF88  41 82 FF F8 */	beq .L_80090A60
/* 80090A6C 0008BF8C  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80090A70 0008BF90  B0 A3 50 0A */	sth r5, 0xCC00500A@l(r3)
/* 80090A74 0008BF94  48 00 83 6D */	bl OSGetTick
/* 80090A78 0008BF98  7C 7F 1B 78 */	mr r31, r3
.L_80090A7C:
/* 80090A7C 0008BF9C  48 00 83 65 */	bl OSGetTick
/* 80090A80 0008BFA0  7C 1F 18 50 */	subf r0, r31, r3
/* 80090A84 0008BFA4  2C 00 08 92 */	cmpwi r0, 0x892
/* 80090A88 0008BFA8  41 80 FF F4 */	blt .L_80090A7C
/* 80090A8C 0008BFAC  3C 80 CC 00 */	lis r4, 0xCC005020@ha
/* 80090A90 0008BFB0  3C 00 01 00 */	lis r0, 0x100
/* 80090A94 0008BFB4  90 04 50 20 */	stw r0, 0xCC005020@l(r4)
/* 80090A98 0008BFB8  38 60 00 00 */	li r3, 0
/* 80090A9C 0008BFBC  38 00 00 20 */	li r0, 0x20
/* 80090AA0 0008BFC0  90 64 50 24 */	stw r3, 0x5024(r4)
/* 80090AA4 0008BFC4  90 04 50 28 */	stw r0, 0x5028(r4)
/* 80090AA8 0008BFC8  A0 A4 50 0A */	lhz r5, 0x500a(r4)
/* 80090AAC 0008BFCC  48 00 00 08 */	b .L_80090AB4
.L_80090AB0:
/* 80090AB0 0008BFD0  A0 A4 50 0A */	lhz r5, 0x500a(r4)
.L_80090AB4:
/* 80090AB4 0008BFD4  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 80090AB8 0008BFD8  41 82 FF F8 */	beq .L_80090AB0
/* 80090ABC 0008BFDC  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80090AC0 0008BFE0  B0 A3 50 0A */	sth r5, 0xCC00500A@l(r3)
/* 80090AC4 0008BFE4  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80090AC8 0008BFE8  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80090ACC 0008BFEC  B0 03 50 0A */	sth r0, 0x500a(r3)
.L_80090AD0:
/* 80090AD0 0008BFF0  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80090AD4 0008BFF4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80090AD8 0008BFF8  40 82 FF F8 */	bne .L_80090AD0
/* 80090ADC 0008BFFC  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80090AE0 0008C000  A0 03 50 0A */	lhz r0, 0xCC00500A@l(r3)
/* 80090AE4 0008C004  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80090AE8 0008C008  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 80090AEC 0008C00C  A0 03 50 04 */	lhz r0, 0x5004(r3)
/* 80090AF0 0008C010  48 00 00 08 */	b .L_80090AF8
.L_80090AF4:
/* 80090AF4 0008C014  A0 03 50 04 */	lhz r0, 0x5004(r3)
.L_80090AF8:
/* 80090AF8 0008C018  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80090AFC 0008C01C  41 82 FF F8 */	beq .L_80090AF4
/* 80090B00 0008C020  3C 80 CC 00 */	lis r4, 0xCC005006@ha
/* 80090B04 0008C024  38 00 08 AC */	li r0, 0x8ac
/* 80090B08 0008C028  A0 64 50 06 */	lhz r3, 0xCC005006@l(r4)
/* 80090B0C 0008C02C  A0 64 50 0A */	lhz r3, 0x500a(r4)
/* 80090B10 0008C030  60 63 00 04 */	ori r3, r3, 4
/* 80090B14 0008C034  B0 64 50 0A */	sth r3, 0x500a(r4)
/* 80090B18 0008C038  B0 04 50 0A */	sth r0, 0x500a(r4)
/* 80090B1C 0008C03C  A0 04 50 0A */	lhz r0, 0x500a(r4)
/* 80090B20 0008C040  60 00 00 01 */	ori r0, r0, 1
/* 80090B24 0008C044  B0 04 50 0A */	sth r0, 0x500a(r4)
.L_80090B28:
/* 80090B28 0008C048  A0 04 50 0A */	lhz r0, 0x500a(r4)
/* 80090B2C 0008C04C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80090B30 0008C050  40 82 FF F8 */	bne .L_80090B28
/* 80090B34 0008C054  4B FF FB C1 */	bl OSGetArenaHi
/* 80090B38 0008C058  7C 64 1B 78 */	mr r4, r3
/* 80090B3C 0008C05C  3C 60 81 00 */	lis r3, 0x8100
/* 80090B40 0008C060  38 84 FF 80 */	addi r4, r4, -128
/* 80090B44 0008C064  38 A0 00 80 */	li r5, 0x80
/* 80090B48 0008C068  4B F7 37 F1 */	bl memcpy
/* 80090B4C 0008C06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80090B50 0008C070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090B54 0008C074  7C 08 03 A6 */	mtlr r0
/* 80090B58 0008C078  38 21 00 10 */	addi r1, r1, 0x10
/* 80090B5C 0008C07C  4E 80 00 20 */	blr

glabel __OSStopAudioSystem
/* 80090B60 0008C080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80090B64 0008C084  7C 08 02 A6 */	mflr r0
/* 80090B68 0008C088  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80090B6C 0008C08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090B70 0008C090  38 00 08 04 */	li r0, 0x804
/* 80090B74 0008C094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090B78 0008C098  B0 03 50 0A */	sth r0, 0xCC00500A@l(r3)
/* 80090B7C 0008C09C  A0 03 50 36 */	lhz r0, 0x5036(r3)
/* 80090B80 0008C0A0  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 80090B84 0008C0A4  B0 03 50 36 */	sth r0, 0x5036(r3)
/* 80090B88 0008C0A8  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80090B8C 0008C0AC  48 00 00 08 */	b .L_80090B94
.L_80090B90:
/* 80090B90 0008C0B0  A0 03 50 0A */	lhz r0, 0x500a(r3)
.L_80090B94:
/* 80090B94 0008C0B4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80090B98 0008C0B8  40 82 FF F8 */	bne .L_80090B90
/* 80090B9C 0008C0BC  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80090BA0 0008C0C0  A0 03 50 0A */	lhz r0, 0xCC00500A@l(r3)
/* 80090BA4 0008C0C4  48 00 00 08 */	b .L_80090BAC
.L_80090BA8:
/* 80090BA8 0008C0C8  A0 03 50 0A */	lhz r0, 0x500a(r3)
.L_80090BAC:
/* 80090BAC 0008C0CC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80090BB0 0008C0D0  40 82 FF F8 */	bne .L_80090BA8
/* 80090BB4 0008C0D4  3C 80 CC 00 */	lis r4, 0xCC00500A@ha
/* 80090BB8 0008C0D8  38 00 08 AC */	li r0, 0x8ac
/* 80090BBC 0008C0DC  B0 04 50 0A */	sth r0, 0xCC00500A@l(r4)
/* 80090BC0 0008C0E0  38 00 00 00 */	li r0, 0
/* 80090BC4 0008C0E4  B0 04 50 00 */	sth r0, 0x5000(r4)
.L_80090BC8:
/* 80090BC8 0008C0E8  A0 64 50 04 */	lhz r3, 0x5004(r4)
/* 80090BCC 0008C0EC  A0 04 50 06 */	lhz r0, 0x5006(r4)
/* 80090BD0 0008C0F0  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 80090BD4 0008C0F4  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80090BD8 0008C0F8  40 82 FF F0 */	bne .L_80090BC8
/* 80090BDC 0008C0FC  48 00 82 05 */	bl OSGetTick
/* 80090BE0 0008C100  7C 7F 1B 78 */	mr r31, r3
.L_80090BE4:
/* 80090BE4 0008C104  48 00 81 FD */	bl OSGetTick
/* 80090BE8 0008C108  7C 1F 18 50 */	subf r0, r31, r3
/* 80090BEC 0008C10C  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80090BF0 0008C110  41 80 FF F4 */	blt .L_80090BE4
/* 80090BF4 0008C114  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80090BF8 0008C118  A0 03 50 0A */	lhz r0, 0xCC00500A@l(r3)
/* 80090BFC 0008C11C  60 00 00 01 */	ori r0, r0, 1
/* 80090C00 0008C120  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 80090C04 0008C124  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80090C08 0008C128  48 00 00 08 */	b .L_80090C10
.L_80090C0C:
/* 80090C0C 0008C12C  A0 03 50 0A */	lhz r0, 0x500a(r3)
.L_80090C10:
/* 80090C10 0008C130  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80090C14 0008C134  40 82 FF F8 */	bne .L_80090C0C
/* 80090C18 0008C138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80090C1C 0008C13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090C20 0008C140  7C 08 03 A6 */	mtlr r0
/* 80090C24 0008C144  38 21 00 10 */	addi r1, r1, 0x10
/* 80090C28 0008C148  4E 80 00 20 */	blr

