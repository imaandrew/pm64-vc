.include "macros.inc"

.section .text, "ax"

glabel Read__Q36nw4hbm2ut8IOStreamFPvUl
/* 8014BCC8 001471E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BCCC 001471EC  7C 08 02 A6 */	mflr r0
/* 8014BCD0 001471F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BCD4 001471F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8014BCD8 001471F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8014BCDC 001471FC  7D 89 03 A6 */	mtctr r12
/* 8014BCE0 00147200  4E 80 04 21 */	bctrl
/* 8014BCE4 00147204  2C 03 00 00 */	cmpwi r3, 0
/* 8014BCE8 00147208  40 82 00 20 */	bne .L_8014BD08
/* 8014BCEC 0014720C  3C 60 80 1B */	lis r3, lbl_801ABC20@ha
/* 8014BCF0 00147210  3C A0 80 1B */	lis r5, lbl_801ABC30@ha
/* 8014BCF4 00147214  38 63 BC 20 */	addi r3, r3, lbl_801ABC20@l
/* 8014BCF8 00147218  38 80 00 29 */	li r4, 0x29
/* 8014BCFC 0014721C  38 A5 BC 30 */	addi r5, r5, lbl_801ABC30@l
/* 8014BD00 00147220  4C C6 31 82 */	crclr 6
/* 8014BD04 00147224  4B FC A0 BD */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BD08:
/* 8014BD08 00147228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BD0C 0014722C  38 60 00 00 */	li r3, 0
/* 8014BD10 00147230  7C 08 03 A6 */	mtlr r0
/* 8014BD14 00147234  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BD18 00147238  4E 80 00 20 */	blr

glabel ReadAsync__Q36nw4hbm2ut8IOStreamFPvUlPFlPQ36nw4hbm2ut8IOStreamPv_vPv
/* 8014BD1C 0014723C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BD20 00147240  7C 08 02 A6 */	mflr r0
/* 8014BD24 00147244  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BD28 00147248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014BD2C 0014724C  3F E0 80 1B */	lis r31, lbl_801ABC20@ha
/* 8014BD30 00147250  3B FF BC 20 */	addi r31, r31, lbl_801ABC20@l
/* 8014BD34 00147254  93 C1 00 08 */	stw r30, 8(r1)
/* 8014BD38 00147258  7C 7E 1B 78 */	mr r30, r3
/* 8014BD3C 0014725C  81 83 00 00 */	lwz r12, 0(r3)
/* 8014BD40 00147260  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8014BD44 00147264  7D 89 03 A6 */	mtctr r12
/* 8014BD48 00147268  4E 80 04 21 */	bctrl
/* 8014BD4C 0014726C  2C 03 00 00 */	cmpwi r3, 0
/* 8014BD50 00147270  40 82 00 18 */	bne .L_8014BD68
/* 8014BD54 00147274  38 7F 00 00 */	addi r3, r31, 0
/* 8014BD58 00147278  38 BF 00 10 */	addi r5, r31, 0x10
/* 8014BD5C 0014727C  38 80 00 3E */	li r4, 0x3e
/* 8014BD60 00147280  4C C6 31 82 */	crclr 6
/* 8014BD64 00147284  4B FC A0 5D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BD68:
/* 8014BD68 00147288  81 9E 00 00 */	lwz r12, 0(r30)
/* 8014BD6C 0014728C  7F C3 F3 78 */	mr r3, r30
/* 8014BD70 00147290  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8014BD74 00147294  7D 89 03 A6 */	mtctr r12
/* 8014BD78 00147298  4E 80 04 21 */	bctrl
/* 8014BD7C 0014729C  2C 03 00 00 */	cmpwi r3, 0
/* 8014BD80 001472A0  40 82 00 18 */	bne .L_8014BD98
/* 8014BD84 001472A4  38 7F 00 00 */	addi r3, r31, 0
/* 8014BD88 001472A8  38 BF 00 34 */	addi r5, r31, 0x34
/* 8014BD8C 001472AC  38 80 00 3F */	li r4, 0x3f
/* 8014BD90 001472B0  4C C6 31 82 */	crclr 6
/* 8014BD94 001472B4  4B FC A0 2D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BD98:
/* 8014BD98 001472B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014BD9C 001472BC  38 60 00 00 */	li r3, 0
/* 8014BDA0 001472C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014BDA4 001472C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BDA8 001472C8  7C 08 03 A6 */	mtlr r0
/* 8014BDAC 001472CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BDB0 001472D0  4E 80 00 20 */	blr

glabel Write__Q36nw4hbm2ut8IOStreamFPCvUl
/* 8014BDB4 001472D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BDB8 001472D8  7C 08 02 A6 */	mflr r0
/* 8014BDBC 001472DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BDC0 001472E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8014BDC4 001472E4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8014BDC8 001472E8  7D 89 03 A6 */	mtctr r12
/* 8014BDCC 001472EC  4E 80 04 21 */	bctrl
/* 8014BDD0 001472F0  2C 03 00 00 */	cmpwi r3, 0
/* 8014BDD4 001472F4  40 82 00 20 */	bne .L_8014BDF4
/* 8014BDD8 001472F8  3C 60 80 1B */	lis r3, lbl_801ABC20@ha
/* 8014BDDC 001472FC  3C A0 80 1B */	lis r5, lbl_801ABC7C@ha
/* 8014BDE0 00147300  38 63 BC 20 */	addi r3, r3, lbl_801ABC20@l
/* 8014BDE4 00147304  38 80 00 52 */	li r4, 0x52
/* 8014BDE8 00147308  38 A5 BC 7C */	addi r5, r5, lbl_801ABC7C@l
/* 8014BDEC 0014730C  4C C6 31 82 */	crclr 6
/* 8014BDF0 00147310  4B FC 9F D1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BDF4:
/* 8014BDF4 00147314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BDF8 00147318  7C 08 03 A6 */	mtlr r0
/* 8014BDFC 0014731C  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BE00 00147320  4E 80 00 20 */	blr

glabel WriteAsync__Q36nw4hbm2ut8IOStreamFPCvUlPFlPQ36nw4hbm2ut8IOStreamPv_vPv
/* 8014BE04 00147324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BE08 00147328  7C 08 02 A6 */	mflr r0
/* 8014BE0C 0014732C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BE10 00147330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014BE14 00147334  3F E0 80 1B */	lis r31, lbl_801ABC20@ha
/* 8014BE18 00147338  3B FF BC 20 */	addi r31, r31, lbl_801ABC20@l
/* 8014BE1C 0014733C  93 C1 00 08 */	stw r30, 8(r1)
/* 8014BE20 00147340  7C 7E 1B 78 */	mr r30, r3
/* 8014BE24 00147344  81 83 00 00 */	lwz r12, 0(r3)
/* 8014BE28 00147348  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8014BE2C 0014734C  7D 89 03 A6 */	mtctr r12
/* 8014BE30 00147350  4E 80 04 21 */	bctrl
/* 8014BE34 00147354  2C 03 00 00 */	cmpwi r3, 0
/* 8014BE38 00147358  40 82 00 18 */	bne .L_8014BE50
/* 8014BE3C 0014735C  38 7F 00 00 */	addi r3, r31, 0
/* 8014BE40 00147360  38 BF 00 5C */	addi r5, r31, 0x5c
/* 8014BE44 00147364  38 80 00 66 */	li r4, 0x66
/* 8014BE48 00147368  4C C6 31 82 */	crclr 6
/* 8014BE4C 0014736C  4B FC 9F 75 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BE50:
/* 8014BE50 00147370  81 9E 00 00 */	lwz r12, 0(r30)
/* 8014BE54 00147374  7F C3 F3 78 */	mr r3, r30
/* 8014BE58 00147378  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8014BE5C 0014737C  7D 89 03 A6 */	mtctr r12
/* 8014BE60 00147380  4E 80 04 21 */	bctrl
/* 8014BE64 00147384  2C 03 00 00 */	cmpwi r3, 0
/* 8014BE68 00147388  40 82 00 18 */	bne .L_8014BE80
/* 8014BE6C 0014738C  38 7F 00 00 */	addi r3, r31, 0
/* 8014BE70 00147390  38 BF 00 34 */	addi r5, r31, 0x34
/* 8014BE74 00147394  38 80 00 67 */	li r4, 0x67
/* 8014BE78 00147398  4C C6 31 82 */	crclr 6
/* 8014BE7C 0014739C  4B FC 9F 45 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BE80:
/* 8014BE80 001473A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014BE84 001473A4  38 60 00 00 */	li r3, 0
/* 8014BE88 001473A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014BE8C 001473AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BE90 001473B0  7C 08 03 A6 */	mtlr r0
/* 8014BE94 001473B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BE98 001473B8  4E 80 00 20 */	blr

glabel IsBusy__Q36nw4hbm2ut8IOStreamCFv
/* 8014BE9C 001473BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BEA0 001473C0  7C 08 02 A6 */	mflr r0
/* 8014BEA4 001473C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BEA8 001473C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8014BEAC 001473CC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8014BEB0 001473D0  7D 89 03 A6 */	mtctr r12
/* 8014BEB4 001473D4  4E 80 04 21 */	bctrl
/* 8014BEB8 001473D8  2C 03 00 00 */	cmpwi r3, 0
/* 8014BEBC 001473DC  40 82 00 20 */	bne .L_8014BEDC
/* 8014BEC0 001473E0  3C 60 80 1B */	lis r3, lbl_801ABC20@ha
/* 8014BEC4 001473E4  3C A0 80 1B */	lis r5, lbl_801ABC54@ha
/* 8014BEC8 001473E8  38 63 BC 20 */	addi r3, r3, lbl_801ABC20@l
/* 8014BECC 001473EC  38 80 00 8E */	li r4, 0x8e
/* 8014BED0 001473F0  38 A5 BC 54 */	addi r5, r5, lbl_801ABC54@l
/* 8014BED4 001473F4  4C C6 31 82 */	crclr 6
/* 8014BED8 001473F8  4B FC 9E E9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BEDC:
/* 8014BEDC 001473FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BEE0 00147400  38 60 00 00 */	li r3, 0
/* 8014BEE4 00147404  7C 08 03 A6 */	mtlr r0
/* 8014BEE8 00147408  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BEEC 0014740C  4E 80 00 20 */	blr

glabel GetRuntimeTypeInfo__Q36nw4hbm2ut8IOStreamCFv
/* 8014BEF0 00147410  3C 60 80 24 */	lis r3, lbl_80243B98@ha
/* 8014BEF4 00147414  38 63 3B 98 */	addi r3, r3, lbl_80243B98@l
/* 8014BEF8 00147418  4E 80 00 20 */	blr

glabel __sinit_ut_IOStream_cpp
/* 8014BEFC 0014741C  38 00 00 00 */	li r0, 0
/* 8014BF00 00147420  3C 60 80 24 */	lis r3, lbl_80243B98@ha
/* 8014BF04 00147424  90 03 3B 98 */	stw r0, lbl_80243B98@l(r3)
/* 8014BF08 00147428  4E 80 00 20 */	blr
