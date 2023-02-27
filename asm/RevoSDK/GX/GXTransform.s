.include "macros.inc"

.section .text, "ax"

glabel __GXSetProjection
/* 800A96A8 000A4BC8  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800A96AC 000A4BCC  38 00 00 10 */	li r0, 0x10
/* 800A96B0 000A4BD0  3C 60 00 06 */	lis r3, 0x00061020@ha
/* 800A96B4 000A4BD4  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800A96B8 000A4BD8  38 03 10 20 */	addi r0, r3, 0x00061020@l
/* 800A96BC 000A4BDC  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A96C0 000A4BE0  90 04 80 00 */	stw r0, -0x8000(r4)
/* 800A96C4 000A4BE4  38 A4 80 00 */	addi r5, r4, -32768
/* 800A96C8 000A4BE8  E0 43 05 2C */	psq_l f2, 1324(r3), 0, qr0
/* 800A96CC 000A4BEC  E0 23 05 34 */	psq_l f1, 1332(r3), 0, qr0
/* 800A96D0 000A4BF0  E0 03 05 3C */	psq_l f0, 1340(r3), 0, qr0
/* 800A96D4 000A4BF4  F0 45 00 00 */	psq_st f2, 0(r5), 0, qr0
/* 800A96D8 000A4BF8  F0 25 00 00 */	psq_st f1, 0(r5), 0, qr0
/* 800A96DC 000A4BFC  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 800A96E0 000A4C00  80 03 05 28 */	lwz r0, 0x528(r3)
/* 800A96E4 000A4C04  90 04 80 00 */	stw r0, -0x8000(r4)
/* 800A96E8 000A4C08  4E 80 00 20 */	blr

glabel GXSetProjection
/* 800A96EC 000A4C0C  80 A2 86 40 */	lwz r5, lbl_80247E40@sda21(r2)
/* 800A96F0 000A4C10  2C 04 00 01 */	cmpwi r4, 1
/* 800A96F4 000A4C14  C0 23 00 00 */	lfs f1, 0(r3)
/* 800A96F8 000A4C18  90 85 05 28 */	stw r4, 0x528(r5)
/* 800A96FC 000A4C1C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800A9700 000A4C20  D0 25 05 2C */	stfs f1, 0x52c(r5)
/* 800A9704 000A4C24  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 800A9708 000A4C28  D0 05 05 34 */	stfs f0, 0x534(r5)
/* 800A970C 000A4C2C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800A9710 000A4C30  D0 25 05 3C */	stfs f1, 0x53c(r5)
/* 800A9714 000A4C34  D0 05 05 40 */	stfs f0, 0x540(r5)
/* 800A9718 000A4C38  40 82 00 18 */	bne .L_800A9730
/* 800A971C 000A4C3C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800A9720 000A4C40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800A9724 000A4C44  D0 25 05 30 */	stfs f1, 0x530(r5)
/* 800A9728 000A4C48  D0 05 05 38 */	stfs f0, 0x538(r5)
/* 800A972C 000A4C4C  48 00 00 14 */	b .L_800A9740
.L_800A9730:
/* 800A9730 000A4C50  C0 23 00 08 */	lfs f1, 8(r3)
/* 800A9734 000A4C54  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 800A9738 000A4C58  D0 25 05 30 */	stfs f1, 0x530(r5)
/* 800A973C 000A4C5C  D0 05 05 38 */	stfs f0, 0x538(r5)
.L_800A9740:
/* 800A9740 000A4C60  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 800A9744 000A4C64  64 00 08 00 */	oris r0, r0, 0x800
/* 800A9748 000A4C68  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 800A974C 000A4C6C  4E 80 00 20 */	blr

glabel GXSetProjectionv
/* 800A9750 000A4C70  C0 22 86 E0 */	lfs f1, lbl_80247EE0@sda21(r2)
/* 800A9754 000A4C74  C0 03 00 00 */	lfs f0, 0(r3)
/* 800A9758 000A4C78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800A975C 000A4C7C  40 82 00 0C */	bne .L_800A9768
/* 800A9760 000A4C80  38 00 00 00 */	li r0, 0
/* 800A9764 000A4C84  48 00 00 08 */	b .L_800A976C
.L_800A9768:
/* 800A9768 000A4C88  38 00 00 01 */	li r0, 1
.L_800A976C:
/* 800A976C 000A4C8C  80 82 86 40 */	lwz r4, lbl_80247E40@sda21(r2)
/* 800A9770 000A4C90  90 04 05 28 */	stw r0, 0x528(r4)
/* 800A9774 000A4C94  E0 43 00 04 */	psq_l f2, 4(r3), 0, qr0
/* 800A9778 000A4C98  E0 23 00 0C */	psq_l f1, 12(r3), 0, qr0
/* 800A977C 000A4C9C  E0 03 00 14 */	psq_l f0, 20(r3), 0, qr0
/* 800A9780 000A4CA0  F0 44 05 2C */	psq_st f2, 1324(r4), 0, qr0
/* 800A9784 000A4CA4  F0 24 05 34 */	psq_st f1, 1332(r4), 0, qr0
/* 800A9788 000A4CA8  F0 04 05 3C */	psq_st f0, 1340(r4), 0, qr0
/* 800A978C 000A4CAC  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 800A9790 000A4CB0  64 00 08 00 */	oris r0, r0, 0x800
/* 800A9794 000A4CB4  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 800A9798 000A4CB8  4E 80 00 20 */	blr

glabel GXLoadPosMtxImm
/* 800A979C 000A4CBC  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800A97A0 000A4CC0  38 00 00 10 */	li r0, 0x10
/* 800A97A4 000A4CC4  54 84 10 3A */	slwi r4, r4, 2
/* 800A97A8 000A4CC8  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800A97AC 000A4CCC  64 80 00 0B */	oris r0, r4, 0xb
/* 800A97B0 000A4CD0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800A97B4 000A4CD4  38 85 80 00 */	addi r4, r5, -32768
/* 800A97B8 000A4CD8  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 800A97BC 000A4CDC  E0 83 00 08 */	psq_l f4, 8(r3), 0, qr0
/* 800A97C0 000A4CE0  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 800A97C4 000A4CE4  E0 43 00 18 */	psq_l f2, 24(r3), 0, qr0
/* 800A97C8 000A4CE8  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 800A97CC 000A4CEC  E0 03 00 28 */	psq_l f0, 40(r3), 0, qr0
/* 800A97D0 000A4CF0  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 800A97D4 000A4CF4  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800A97D8 000A4CF8  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 800A97DC 000A4CFC  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 800A97E0 000A4D00  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 800A97E4 000A4D04  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 800A97E8 000A4D08  4E 80 00 20 */	blr

glabel GXLoadNrmMtxImm
/* 800A97EC 000A4D0C  54 80 10 3A */	slwi r0, r4, 2
/* 800A97F0 000A4D10  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800A97F4 000A4D14  7C 84 00 50 */	subf r4, r4, r0
/* 800A97F8 000A4D18  38 00 00 10 */	li r0, 0x10
/* 800A97FC 000A4D1C  38 84 04 00 */	addi r4, r4, 0x400
/* 800A9800 000A4D20  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800A9804 000A4D24  64 80 00 08 */	oris r0, r4, 8
/* 800A9808 000A4D28  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800A980C 000A4D2C  38 85 80 00 */	addi r4, r5, -32768
/* 800A9810 000A4D30  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 800A9814 000A4D34  C0 83 00 08 */	lfs f4, 8(r3)
/* 800A9818 000A4D38  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 800A981C 000A4D3C  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 800A9820 000A4D40  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 800A9824 000A4D44  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800A9828 000A4D48  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 800A982C 000A4D4C  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 800A9830 000A4D50  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 800A9834 000A4D54  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 800A9838 000A4D58  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 800A983C 000A4D5C  D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 800A9840 000A4D60  4E 80 00 20 */	blr

glabel GXSetCurrentMtx
/* 800A9844 000A4D64  80 82 86 40 */	lwz r4, lbl_80247E40@sda21(r2)
/* 800A9848 000A4D68  80 04 00 80 */	lwz r0, 0x80(r4)
/* 800A984C 000A4D6C  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 800A9850 000A4D70  90 04 00 80 */	stw r0, 0x80(r4)
/* 800A9854 000A4D74  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 800A9858 000A4D78  64 00 04 00 */	oris r0, r0, 0x400
/* 800A985C 000A4D7C  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 800A9860 000A4D80  4E 80 00 20 */	blr

glabel GXLoadTexMtxImm
/* 800A9864 000A4D84  28 04 00 40 */	cmplwi r4, 0x40
/* 800A9868 000A4D88  41 80 00 14 */	blt .L_800A987C
/* 800A986C 000A4D8C  38 04 FF C0 */	addi r0, r4, -64
/* 800A9870 000A4D90  54 04 10 3A */	slwi r4, r0, 2
/* 800A9874 000A4D94  38 E4 05 00 */	addi r7, r4, 0x500
/* 800A9878 000A4D98  48 00 00 08 */	b .L_800A9880
.L_800A987C:
/* 800A987C 000A4D9C  54 87 10 3A */	slwi r7, r4, 2
.L_800A9880:
/* 800A9880 000A4DA0  2C 05 00 01 */	cmpwi r5, 1
/* 800A9884 000A4DA4  40 82 00 0C */	bne .L_800A9890
/* 800A9888 000A4DA8  38 80 00 08 */	li r4, 8
/* 800A988C 000A4DAC  48 00 00 08 */	b .L_800A9894
.L_800A9890:
/* 800A9890 000A4DB0  38 80 00 0C */	li r4, 0xc
.L_800A9894:
/* 800A9894 000A4DB4  38 C4 FF FF */	addi r6, r4, -1
/* 800A9898 000A4DB8  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800A989C 000A4DBC  38 00 00 10 */	li r0, 0x10
/* 800A98A0 000A4DC0  2C 05 00 00 */	cmpwi r5, 0
/* 800A98A4 000A4DC4  54 C5 80 1E */	slwi r5, r6, 0x10
/* 800A98A8 000A4DC8  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800A98AC 000A4DCC  7C E0 2B 78 */	or r0, r7, r5
/* 800A98B0 000A4DD0  90 04 80 00 */	stw r0, -0x8000(r4)
/* 800A98B4 000A4DD4  40 82 00 3C */	bne .L_800A98F0
/* 800A98B8 000A4DD8  38 84 80 00 */	addi r4, r4, -32768
/* 800A98BC 000A4DDC  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 800A98C0 000A4DE0  E0 83 00 08 */	psq_l f4, 8(r3), 0, qr0
/* 800A98C4 000A4DE4  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 800A98C8 000A4DE8  E0 43 00 18 */	psq_l f2, 24(r3), 0, qr0
/* 800A98CC 000A4DEC  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 800A98D0 000A4DF0  E0 03 00 28 */	psq_l f0, 40(r3), 0, qr0
/* 800A98D4 000A4DF4  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 800A98D8 000A4DF8  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 800A98DC 000A4DFC  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 800A98E0 000A4E00  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 800A98E4 000A4E04  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 800A98E8 000A4E08  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 800A98EC 000A4E0C  4E 80 00 20 */	blr
.L_800A98F0:
/* 800A98F0 000A4E10  38 84 80 00 */	addi r4, r4, -32768
/* 800A98F4 000A4E14  E0 63 00 00 */	psq_l f3, 0(r3), 0, qr0
/* 800A98F8 000A4E18  E0 43 00 08 */	psq_l f2, 8(r3), 0, qr0
/* 800A98FC 000A4E1C  E0 23 00 10 */	psq_l f1, 16(r3), 0, qr0
/* 800A9900 000A4E20  E0 03 00 18 */	psq_l f0, 24(r3), 0, qr0
/* 800A9904 000A4E24  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 800A9908 000A4E28  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 800A990C 000A4E2C  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 800A9910 000A4E30  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 800A9914 000A4E34  4E 80 00 20 */	blr

glabel __GXSetViewport
/* 800A9918 000A4E38  80 C2 86 40 */	lwz r6, lbl_80247E40@sda21(r2)
/* 800A991C 000A4E3C  3C 60 00 05 */	lis r3, 0x0005101A@ha
/* 800A9920 000A4E40  C0 C2 86 E8 */	lfs f6, lbl_80247EE8@sda21(r2)
/* 800A9924 000A4E44  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800A9928 000A4E48  C0 46 05 50 */	lfs f2, 0x550(r6)
/* 800A992C 000A4E4C  38 A0 00 10 */	li r5, 0x10
/* 800A9930 000A4E50  C0 66 05 4C */	lfs f3, 0x54c(r6)
/* 800A9934 000A4E54  38 03 10 1A */	addi r0, r3, 0x0005101A@l
/* 800A9938 000A4E58  FC 20 10 50 */	fneg f1, f2
/* 800A993C 000A4E5C  C0 06 05 44 */	lfs f0, 0x544(r6)
/* 800A9940 000A4E60  EC E3 01 B2 */	fmuls f7, f3, f6
/* 800A9944 000A4E64  C0 86 05 48 */	lfs f4, 0x548(r6)
/* 800A9948 000A4E68  EC A2 01 B2 */	fmuls f5, f2, f6
/* 800A994C 000A4E6C  C0 66 05 54 */	lfs f3, 0x554(r6)
/* 800A9950 000A4E70  ED 01 01 B2 */	fmuls f8, f1, f6
/* 800A9954 000A4E74  C0 46 05 60 */	lfs f2, 0x560(r6)
/* 800A9958 000A4E78  C0 26 05 58 */	lfs f1, 0x558(r6)
/* 800A995C 000A4E7C  EC C0 38 2A */	fadds f6, f0, f7
/* 800A9960 000A4E80  C0 06 05 5C */	lfs f0, 0x55c(r6)
/* 800A9964 000A4E84  EC 63 00 B2 */	fmuls f3, f3, f2
/* 800A9968 000A4E88  ED 21 00 B2 */	fmuls f9, f1, f2
/* 800A996C 000A4E8C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800A9970 000A4E90  C0 42 86 EC */	lfs f2, lbl_80247EEC@sda21(r2)
/* 800A9974 000A4E94  EC 24 28 2A */	fadds f1, f4, f5
/* 800A9978 000A4E98  90 04 80 00 */	stw r0, -0x8000(r4)
/* 800A997C 000A4E9C  EC 69 18 28 */	fsubs f3, f9, f3
/* 800A9980 000A4EA0  D0 E4 80 00 */	stfs f7, -0x8000(r4)
/* 800A9984 000A4EA4  EC 82 30 2A */	fadds f4, f2, f6
/* 800A9988 000A4EA8  EC 22 08 2A */	fadds f1, f2, f1
/* 800A998C 000A4EAC  D1 04 80 00 */	stfs f8, -0x8000(r4)
/* 800A9990 000A4EB0  EC 09 00 2A */	fadds f0, f9, f0
/* 800A9994 000A4EB4  D0 64 80 00 */	stfs f3, -0x8000(r4)
/* 800A9998 000A4EB8  D0 84 80 00 */	stfs f4, -0x8000(r4)
/* 800A999C 000A4EBC  D0 24 80 00 */	stfs f1, -0x8000(r4)
/* 800A99A0 000A4EC0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 800A99A4 000A4EC4  4E 80 00 20 */	blr

glabel GXSetViewportJitter
/* 800A99A8 000A4EC8  2C 03 00 00 */	cmpwi r3, 0
/* 800A99AC 000A4ECC  40 82 00 0C */	bne .L_800A99B8
/* 800A99B0 000A4ED0  C0 02 86 E8 */	lfs f0, lbl_80247EE8@sda21(r2)
/* 800A99B4 000A4ED4  EC 42 00 28 */	fsubs f2, f2, f0
.L_800A99B8:
/* 800A99B8 000A4ED8  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A99BC 000A4EDC  D0 23 05 44 */	stfs f1, 0x544(r3)
/* 800A99C0 000A4EE0  D0 43 05 48 */	stfs f2, 0x548(r3)
/* 800A99C4 000A4EE4  D0 63 05 4C */	stfs f3, 0x54c(r3)
/* 800A99C8 000A4EE8  D0 83 05 50 */	stfs f4, 0x550(r3)
/* 800A99CC 000A4EEC  D0 A3 05 54 */	stfs f5, 0x554(r3)
/* 800A99D0 000A4EF0  D0 C3 05 58 */	stfs f6, 0x558(r3)
/* 800A99D4 000A4EF4  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 800A99D8 000A4EF8  64 00 10 00 */	oris r0, r0, 0x1000
/* 800A99DC 000A4EFC  90 03 05 FC */	stw r0, 0x5fc(r3)
/* 800A99E0 000A4F00  4E 80 00 20 */	blr

glabel GXSetViewport
/* 800A99E4 000A4F04  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A99E8 000A4F08  D0 23 05 44 */	stfs f1, 0x544(r3)
/* 800A99EC 000A4F0C  D0 43 05 48 */	stfs f2, 0x548(r3)
/* 800A99F0 000A4F10  D0 63 05 4C */	stfs f3, 0x54c(r3)
/* 800A99F4 000A4F14  D0 83 05 50 */	stfs f4, 0x550(r3)
/* 800A99F8 000A4F18  D0 A3 05 54 */	stfs f5, 0x554(r3)
/* 800A99FC 000A4F1C  D0 C3 05 58 */	stfs f6, 0x558(r3)
/* 800A9A00 000A4F20  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 800A9A04 000A4F24  64 00 10 00 */	oris r0, r0, 0x1000
/* 800A9A08 000A4F28  90 03 05 FC */	stw r0, 0x5fc(r3)
/* 800A9A0C 000A4F2C  4E 80 00 20 */	blr

glabel GXGetViewportv
/* 800A9A10 000A4F30  80 82 86 40 */	lwz r4, lbl_80247E40@sda21(r2)
/* 800A9A14 000A4F34  E0 44 05 44 */	psq_l f2, 1348(r4), 0, qr0
/* 800A9A18 000A4F38  E0 24 05 4C */	psq_l f1, 1356(r4), 0, qr0
/* 800A9A1C 000A4F3C  E0 04 05 54 */	psq_l f0, 1364(r4), 0, qr0
/* 800A9A20 000A4F40  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 800A9A24 000A4F44  F0 23 00 08 */	psq_st f1, 8(r3), 0, qr0
/* 800A9A28 000A4F48  F0 03 00 10 */	psq_st f0, 16(r3), 0, qr0
/* 800A9A2C 000A4F4C  4E 80 00 20 */	blr

glabel GXSetZScaleOffset
/* 800A9A30 000A4F50  C0 62 86 F0 */	lfs f3, lbl_80247EF0@sda21(r2)
/* 800A9A34 000A4F54  C0 02 86 E4 */	lfs f0, lbl_80247EE4@sda21(r2)
/* 800A9A38 000A4F58  EC 23 00 72 */	fmuls f1, f3, f1
/* 800A9A3C 000A4F5C  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A9A40 000A4F60  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800A9A44 000A4F64  EC 00 08 2A */	fadds f0, f0, f1
/* 800A9A48 000A4F68  D0 43 05 5C */	stfs f2, 0x55c(r3)
/* 800A9A4C 000A4F6C  D0 03 05 60 */	stfs f0, 0x560(r3)
/* 800A9A50 000A4F70  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 800A9A54 000A4F74  64 00 10 00 */	oris r0, r0, 0x1000
/* 800A9A58 000A4F78  90 03 05 FC */	stw r0, 0x5fc(r3)
/* 800A9A5C 000A4F7C  4E 80 00 20 */	blr

glabel GXSetScissor
/* 800A9A60 000A4F80  81 02 86 40 */	lwz r8, lbl_80247E40@sda21(r2)
/* 800A9A64 000A4F84  38 84 01 56 */	addi r4, r4, 0x156
/* 800A9A68 000A4F88  39 23 01 56 */	addi r9, r3, 0x156
/* 800A9A6C 000A4F8C  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 800A9A70 000A4F90  80 08 01 48 */	lwz r0, 0x148(r8)
/* 800A9A74 000A4F94  50 80 05 7E */	rlwimi r0, r4, 0, 0x15, 0x1f
/* 800A9A78 000A4F98  51 20 62 66 */	rlwimi r0, r9, 0xc, 9, 0x13
/* 800A9A7C 000A4F9C  7C C4 32 14 */	add r6, r4, r6
/* 800A9A80 000A4FA0  90 08 01 48 */	stw r0, 0x148(r8)
/* 800A9A84 000A4FA4  7C 69 2A 14 */	add r3, r9, r5
/* 800A9A88 000A4FA8  38 A6 FF FF */	addi r5, r6, -1
/* 800A9A8C 000A4FAC  38 80 00 61 */	li r4, 0x61
/* 800A9A90 000A4FB0  80 C8 01 4C */	lwz r6, 0x14c(r8)
/* 800A9A94 000A4FB4  38 63 FF FF */	addi r3, r3, -1
/* 800A9A98 000A4FB8  50 A6 05 7E */	rlwimi r6, r5, 0, 0x15, 0x1f
/* 800A9A9C 000A4FBC  38 00 00 00 */	li r0, 0
/* 800A9AA0 000A4FC0  50 66 62 66 */	rlwimi r6, r3, 0xc, 9, 0x13
/* 800A9AA4 000A4FC4  90 C8 01 4C */	stw r6, 0x14c(r8)
/* 800A9AA8 000A4FC8  98 87 80 00 */	stb r4, 0xCC008000@l(r7)
/* 800A9AAC 000A4FCC  80 68 01 48 */	lwz r3, 0x148(r8)
/* 800A9AB0 000A4FD0  90 67 80 00 */	stw r3, -0x8000(r7)
/* 800A9AB4 000A4FD4  98 87 80 00 */	stb r4, -0x8000(r7)
/* 800A9AB8 000A4FD8  80 68 01 4C */	lwz r3, 0x14c(r8)
/* 800A9ABC 000A4FDC  90 67 80 00 */	stw r3, -0x8000(r7)
/* 800A9AC0 000A4FE0  B0 08 00 02 */	sth r0, 2(r8)
/* 800A9AC4 000A4FE4  4E 80 00 20 */	blr

glabel GXSetScissorBoxOffset
/* 800A9AC8 000A4FE8  38 03 01 56 */	addi r0, r3, 0x156
/* 800A9ACC 000A4FEC  38 C0 00 00 */	li r6, 0
/* 800A9AD0 000A4FF0  50 06 FD BE */	rlwimi r6, r0, 0x1f, 0x16, 0x1f
/* 800A9AD4 000A4FF4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800A9AD8 000A4FF8  38 00 00 61 */	li r0, 0x61
/* 800A9ADC 000A4FFC  38 64 01 56 */	addi r3, r4, 0x156
/* 800A9AE0 000A5000  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800A9AE4 000A5004  50 66 4B 2A */	rlwimi r6, r3, 9, 0xc, 0x15
/* 800A9AE8 000A5008  38 00 00 59 */	li r0, 0x59
/* 800A9AEC 000A500C  80 62 86 40 */	lwz r3, lbl_80247E40@sda21(r2)
/* 800A9AF0 000A5010  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 800A9AF4 000A5014  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 800A9AF8 000A5018  38 00 00 00 */	li r0, 0
/* 800A9AFC 000A501C  B0 03 00 02 */	sth r0, 2(r3)
/* 800A9B00 000A5020  4E 80 00 20 */	blr

glabel GXSetClipMode
/* 800A9B04 000A5024  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 800A9B08 000A5028  38 00 00 10 */	li r0, 0x10
/* 800A9B0C 000A502C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 800A9B10 000A5030  38 A0 10 05 */	li r5, 0x1005
/* 800A9B14 000A5034  80 82 86 40 */	lwz r4, lbl_80247E40@sda21(r2)
/* 800A9B18 000A5038  38 00 00 01 */	li r0, 1
/* 800A9B1C 000A503C  90 A6 80 00 */	stw r5, -0x8000(r6)
/* 800A9B20 000A5040  90 66 80 00 */	stw r3, -0x8000(r6)
/* 800A9B24 000A5044  B0 04 00 02 */	sth r0, 2(r4)
/* 800A9B28 000A5048  4E 80 00 20 */	blr

glabel __GXSetMatrixIndex
/* 800A9B2C 000A504C  2C 03 00 05 */	cmpwi r3, 5
/* 800A9B30 000A5050  40 80 00 40 */	bge .L_800A9B70
/* 800A9B34 000A5054  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800A9B38 000A5058  38 00 00 08 */	li r0, 8
/* 800A9B3C 000A505C  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800A9B40 000A5060  38 00 00 30 */	li r0, 0x30
/* 800A9B44 000A5064  80 C2 86 40 */	lwz r6, lbl_80247E40@sda21(r2)
/* 800A9B48 000A5068  38 60 00 10 */	li r3, 0x10
/* 800A9B4C 000A506C  98 05 80 00 */	stb r0, -0x8000(r5)
/* 800A9B50 000A5070  38 00 10 18 */	li r0, 0x1018
/* 800A9B54 000A5074  80 86 00 80 */	lwz r4, 0x80(r6)
/* 800A9B58 000A5078  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800A9B5C 000A507C  98 65 80 00 */	stb r3, -0x8000(r5)
/* 800A9B60 000A5080  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800A9B64 000A5084  80 06 00 80 */	lwz r0, 0x80(r6)
/* 800A9B68 000A5088  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800A9B6C 000A508C  48 00 00 3C */	b .L_800A9BA8
.L_800A9B70:
/* 800A9B70 000A5090  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800A9B74 000A5094  38 00 00 08 */	li r0, 8
/* 800A9B78 000A5098  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800A9B7C 000A509C  38 00 00 40 */	li r0, 0x40
/* 800A9B80 000A50A0  80 C2 86 40 */	lwz r6, lbl_80247E40@sda21(r2)
/* 800A9B84 000A50A4  38 60 00 10 */	li r3, 0x10
/* 800A9B88 000A50A8  98 05 80 00 */	stb r0, -0x8000(r5)
/* 800A9B8C 000A50AC  38 00 10 19 */	li r0, 0x1019
/* 800A9B90 000A50B0  80 86 00 84 */	lwz r4, 0x84(r6)
/* 800A9B94 000A50B4  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800A9B98 000A50B8  98 65 80 00 */	stb r3, -0x8000(r5)
/* 800A9B9C 000A50BC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800A9BA0 000A50C0  80 06 00 84 */	lwz r0, 0x84(r6)
/* 800A9BA4 000A50C4  90 05 80 00 */	stw r0, -0x8000(r5)
.L_800A9BA8:
/* 800A9BA8 000A50C8  38 00 00 01 */	li r0, 1
/* 800A9BAC 000A50CC  B0 06 00 02 */	sth r0, 2(r6)
/* 800A9BB0 000A50D0  4E 80 00 20 */	blr

