.include "macros.inc"

.section .text, "ax"

glabel qsort
/* 80164D80 001602A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80164D84 001602A4  7C 08 02 A6 */	mflr r0
/* 80164D88 001602A8  28 04 00 02 */	cmplwi r4, 2
/* 80164D8C 001602AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80164D90 001602B0  BE 61 00 0C */	stmw r19, 0xc(r1)
/* 80164D94 001602B4  7C 7B 1B 78 */	mr r27, r3
/* 80164D98 001602B8  7C BC 2B 78 */	mr r28, r5
/* 80164D9C 001602BC  7C DD 33 78 */	mr r29, r6
/* 80164DA0 001602C0  41 80 01 3C */	blt .L_80164EDC
/* 80164DA4 001602C4  54 87 F8 7E */	srwi r7, r4, 1
/* 80164DA8 001602C8  54 A0 08 3C */	slwi r0, r5, 1
/* 80164DAC 001602CC  3B E7 00 01 */	addi r31, r7, 1
/* 80164DB0 001602D0  38 C4 FF FF */	addi r6, r4, -1
/* 80164DB4 001602D4  38 FF FF FF */	addi r7, r31, -1
/* 80164DB8 001602D8  7C 9E 23 78 */	mr r30, r4
/* 80164DBC 001602DC  7C 85 39 D6 */	mullw r4, r5, r7
/* 80164DC0 001602E0  7F 20 28 50 */	subf r25, r0, r5
/* 80164DC4 001602E4  7C 05 31 D6 */	mullw r0, r5, r6
/* 80164DC8 001602E8  7E E3 22 14 */	add r23, r3, r4
/* 80164DCC 001602EC  7F 5F 29 D6 */	mullw r26, r31, r5
/* 80164DD0 001602F0  7E C3 02 14 */	add r22, r3, r0
.L_80164DD4:
/* 80164DD4 001602F4  28 1F 00 01 */	cmplwi r31, 1
/* 80164DD8 001602F8  40 81 00 14 */	ble .L_80164DEC
/* 80164DDC 001602FC  7F 5C D0 50 */	subf r26, r28, r26
/* 80164DE0 00160300  7E FC B8 50 */	subf r23, r28, r23
/* 80164DE4 00160304  3B FF FF FF */	addi r31, r31, -1
/* 80164DE8 00160308  48 00 00 40 */	b .L_80164E28
.L_80164DEC:
/* 80164DEC 0016030C  38 76 FF FF */	addi r3, r22, -1
/* 80164DF0 00160310  38 97 FF FF */	addi r4, r23, -1
/* 80164DF4 00160314  38 BC 00 01 */	addi r5, r28, 1
/* 80164DF8 00160318  48 00 00 18 */	b .L_80164E10
.L_80164DFC:
/* 80164DFC 0016031C  88 C4 00 01 */	lbz r6, 1(r4)
/* 80164E00 00160320  88 03 00 01 */	lbz r0, 1(r3)
/* 80164E04 00160324  7C C6 07 74 */	extsb r6, r6
/* 80164E08 00160328  9C 04 00 01 */	stbu r0, 1(r4)
/* 80164E0C 0016032C  9C C3 00 01 */	stbu r6, 1(r3)
.L_80164E10:
/* 80164E10 00160330  34 A5 FF FF */	addic. r5, r5, -1
/* 80164E14 00160334  40 82 FF E8 */	bne .L_80164DFC
/* 80164E18 00160338  3B DE FF FF */	addi r30, r30, -1
/* 80164E1C 0016033C  28 1E 00 01 */	cmplwi r30, 1
/* 80164E20 00160340  41 82 00 BC */	beq .L_80164EDC
/* 80164E24 00160344  7E DC B0 50 */	subf r22, r28, r22
.L_80164E28:
/* 80164E28 00160348  7C 1A CA 14 */	add r0, r26, r25
/* 80164E2C 0016034C  7F F8 FB 78 */	mr r24, r31
/* 80164E30 00160350  7E 9B 02 14 */	add r20, r27, r0
/* 80164E34 00160354  48 00 00 98 */	b .L_80164ECC
.L_80164E38:
/* 80164E38 00160358  57 18 08 3C */	slwi r24, r24, 1
/* 80164E3C 0016035C  7E 95 A3 78 */	mr r21, r20
/* 80164E40 00160360  38 18 FF FF */	addi r0, r24, -1
/* 80164E44 00160364  7C 1C 01 D6 */	mullw r0, r28, r0
/* 80164E48 00160368  7C 18 F0 40 */	cmplw r24, r30
/* 80164E4C 0016036C  7E 9B 02 14 */	add r20, r27, r0
/* 80164E50 00160370  40 80 00 2C */	bge .L_80164E7C
/* 80164E54 00160374  7E 74 E2 14 */	add r19, r20, r28
/* 80164E58 00160378  7F AC EB 78 */	mr r12, r29
/* 80164E5C 0016037C  7E 83 A3 78 */	mr r3, r20
/* 80164E60 00160380  7E 64 9B 78 */	mr r4, r19
/* 80164E64 00160384  7D 89 03 A6 */	mtctr r12
/* 80164E68 00160388  4E 80 04 21 */	bctrl
/* 80164E6C 0016038C  2C 03 00 00 */	cmpwi r3, 0
/* 80164E70 00160390  40 80 00 0C */	bge .L_80164E7C
/* 80164E74 00160394  7E 74 9B 78 */	mr r20, r19
/* 80164E78 00160398  3B 18 00 01 */	addi r24, r24, 1
.L_80164E7C:
/* 80164E7C 0016039C  7F AC EB 78 */	mr r12, r29
/* 80164E80 001603A0  7E A3 AB 78 */	mr r3, r21
/* 80164E84 001603A4  7E 84 A3 78 */	mr r4, r20
/* 80164E88 001603A8  7D 89 03 A6 */	mtctr r12
/* 80164E8C 001603AC  4E 80 04 21 */	bctrl
/* 80164E90 001603B0  2C 03 00 00 */	cmpwi r3, 0
/* 80164E94 001603B4  40 80 FF 40 */	bge .L_80164DD4
/* 80164E98 001603B8  38 74 FF FF */	addi r3, r20, -1
/* 80164E9C 001603BC  38 95 FF FF */	addi r4, r21, -1
/* 80164EA0 001603C0  38 BC 00 01 */	addi r5, r28, 1
/* 80164EA4 001603C4  48 00 00 20 */	b .L_80164EC4
.L_80164EA8:
/* 80164EA8 001603C8  88 C4 00 01 */	lbz r6, 1(r4)
/* 80164EAC 001603CC  88 03 00 01 */	lbz r0, 1(r3)
/* 80164EB0 001603D0  7C C6 07 74 */	extsb r6, r6
/* 80164EB4 001603D4  98 04 00 01 */	stb r0, 1(r4)
/* 80164EB8 001603D8  38 84 00 01 */	addi r4, r4, 1
/* 80164EBC 001603DC  98 C3 00 01 */	stb r6, 1(r3)
/* 80164EC0 001603E0  38 63 00 01 */	addi r3, r3, 1
.L_80164EC4:
/* 80164EC4 001603E4  34 A5 FF FF */	addic. r5, r5, -1
/* 80164EC8 001603E8  40 82 FF E0 */	bne .L_80164EA8
.L_80164ECC:
/* 80164ECC 001603EC  57 00 08 3C */	slwi r0, r24, 1
/* 80164ED0 001603F0  7C 00 F0 40 */	cmplw r0, r30
/* 80164ED4 001603F4  40 81 FF 64 */	ble .L_80164E38
/* 80164ED8 001603F8  4B FF FE FC */	b .L_80164DD4
.L_80164EDC:
/* 80164EDC 001603FC  BA 61 00 0C */	lmw r19, 0xc(r1)
/* 80164EE0 00160400  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80164EE4 00160404  7C 08 03 A6 */	mtlr r0
/* 80164EE8 00160408  38 21 00 40 */	addi r1, r1, 0x40
/* 80164EEC 0016040C  4E 80 00 20 */	blr
