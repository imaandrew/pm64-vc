.include "macros.inc"

.section .text, "ax"

glabel WBT_ExtCreateRecord
/* 800EED2C 000EA24C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 800EED30 000EA250  7C 08 02 A6 */	mflr r0
/* 800EED34 000EA254  90 01 01 24 */	stw r0, 0x124(r1)
/* 800EED38 000EA258  38 00 10 02 */	li r0, 0x1002
/* 800EED3C 000EA25C  38 61 00 14 */	addi r3, r1, 0x14
/* 800EED40 000EA260  38 81 00 10 */	addi r4, r1, 0x10
/* 800EED44 000EA264  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 800EED48 000EA268  3B E0 00 00 */	li r31, 0
/* 800EED4C 000EA26C  93 C1 01 18 */	stw r30, 0x118(r1)
/* 800EED50 000EA270  93 E1 00 10 */	stw r31, 0x10(r1)
/* 800EED54 000EA274  B0 01 00 08 */	sth r0, 8(r1)
/* 800EED58 000EA278  48 01 3C 01 */	bl SDP_GetLocalDiRecord
/* 800EED5C 000EA27C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800EED60 000EA280  41 82 00 4C */	beq .L_800EEDAC
/* 800EED64 000EA284  3B C1 00 16 */	addi r30, r1, 0x16
/* 800EED68 000EA288  38 80 00 00 */	li r4, 0
/* 800EED6C 000EA28C  7F C3 F3 78 */	mr r3, r30
/* 800EED70 000EA290  38 A0 00 FA */	li r5, 0xfa
/* 800EED74 000EA294  4B F1 56 C9 */	bl memset
/* 800EED78 000EA298  38 00 00 01 */	li r0, 1
/* 800EED7C 000EA29C  38 60 00 0F */	li r3, 0xf
/* 800EED80 000EA2A0  B0 61 00 16 */	sth r3, 0x16(r1)
/* 800EED84 000EA2A4  7F C3 F3 78 */	mr r3, r30
/* 800EED88 000EA2A8  38 81 00 10 */	addi r4, r1, 0x10
/* 800EED8C 000EA2AC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 800EED90 000EA2B0  98 01 00 1E */	stb r0, 0x1e(r1)
/* 800EED94 000EA2B4  48 01 38 65 */	bl SDP_SetLocalDiRecord
/* 800EED98 000EA2B8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800EED9C 000EA2BC  41 82 00 10 */	beq .L_800EEDAC
/* 800EEDA0 000EA2C0  93 E1 00 10 */	stw r31, 0x10(r1)
/* 800EEDA4 000EA2C4  38 60 00 00 */	li r3, 0
/* 800EEDA8 000EA2C8  48 00 00 4C */	b .L_800EEDF4
.L_800EEDAC:
/* 800EEDAC 000EA2CC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800EEDB0 000EA2D0  38 C1 00 08 */	addi r6, r1, 8
/* 800EEDB4 000EA2D4  38 80 00 05 */	li r4, 5
/* 800EEDB8 000EA2D8  38 A0 00 01 */	li r5, 1
/* 800EEDBC 000EA2DC  48 01 48 AD */	bl SDP_AddUuidSequence
/* 800EEDC0 000EA2E0  38 00 00 00 */	li r0, 0
/* 800EEDC4 000EA2E4  38 80 00 01 */	li r4, 1
/* 800EEDC8 000EA2E8  3C 60 00 01 */	lis r3, 0x00008001@ha
/* 800EEDCC 000EA2EC  98 01 00 0C */	stb r0, 0xc(r1)
/* 800EEDD0 000EA2F0  38 03 80 01 */	addi r0, r3, 0x00008001@l
/* 800EEDD4 000EA2F4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800EEDD8 000EA2F8  98 81 00 0D */	stb r4, 0xd(r1)
/* 800EEDDC 000EA2FC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 800EEDE0 000EA300  38 E1 00 0C */	addi r7, r1, 0xc
/* 800EEDE4 000EA304  38 A0 00 01 */	li r5, 1
/* 800EEDE8 000EA308  38 C0 00 02 */	li r6, 2
/* 800EEDEC 000EA30C  48 01 44 E5 */	bl SDP_AddAttribute
/* 800EEDF0 000EA310  38 60 00 01 */	li r3, 1
.L_800EEDF4:
/* 800EEDF4 000EA314  80 01 01 24 */	lwz r0, 0x124(r1)
/* 800EEDF8 000EA318  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 800EEDFC 000EA31C  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 800EEE00 000EA320  7C 08 03 A6 */	mtlr r0
/* 800EEE04 000EA324  38 21 01 20 */	addi r1, r1, 0x120
/* 800EEE08 000EA328  4E 80 00 20 */	blr

