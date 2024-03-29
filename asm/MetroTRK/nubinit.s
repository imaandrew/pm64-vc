.include "macros.inc"

.section .text, "ax"

glabel TRKNubWelcome
/* 8016EDD4 0016A2F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016EDD8 0016A2F8  7C 08 02 A6 */	mflr r0
/* 8016EDDC 0016A2FC  3C 60 80 18 */	lis r3, lbl_80179528@ha
/* 8016EDE0 0016A300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016EDE4 0016A304  38 63 95 28 */	addi r3, r3, lbl_80179528@l
/* 8016EDE8 0016A308  48 00 4A 15 */	bl TRK_board_display
/* 8016EDEC 0016A30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016EDF0 0016A310  7C 08 03 A6 */	mtlr r0
/* 8016EDF4 0016A314  38 21 00 10 */	addi r1, r1, 0x10
/* 8016EDF8 0016A318  4E 80 00 20 */	blr

glabel TRKTerminateNub
/* 8016EDFC 0016A31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016EE00 0016A320  7C 08 02 A6 */	mflr r0
/* 8016EE04 0016A324  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016EE08 0016A328  48 00 09 B9 */	bl TRKTerminateSerialHandler
/* 8016EE0C 0016A32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016EE10 0016A330  38 60 00 00 */	li r3, 0
/* 8016EE14 0016A334  7C 08 03 A6 */	mtlr r0
/* 8016EE18 0016A338  38 21 00 10 */	addi r1, r1, 0x10
/* 8016EE1C 0016A33C  4E 80 00 20 */	blr

glabel TRKInitializeNub
/* 8016EE20 0016A340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016EE24 0016A344  7C 08 02 A6 */	mflr r0
/* 8016EE28 0016A348  38 A0 00 12 */	li r5, 0x12
/* 8016EE2C 0016A34C  38 80 00 34 */	li r4, 0x34
/* 8016EE30 0016A350  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016EE34 0016A354  38 60 00 56 */	li r3, 0x56
/* 8016EE38 0016A358  38 00 00 78 */	li r0, 0x78
/* 8016EE3C 0016A35C  38 C0 00 01 */	li r6, 1
/* 8016EE40 0016A360  98 A1 00 08 */	stb r5, 8(r1)
/* 8016EE44 0016A364  3C A0 80 24 */	lis r5, lbl_80243FE8@ha
/* 8016EE48 0016A368  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016EE4C 0016A36C  3B E0 00 00 */	li r31, 0
/* 8016EE50 0016A370  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016EE54 0016A374  98 81 00 09 */	stb r4, 9(r1)
/* 8016EE58 0016A378  98 61 00 0A */	stb r3, 0xa(r1)
/* 8016EE5C 0016A37C  98 01 00 0B */	stb r0, 0xb(r1)
/* 8016EE60 0016A380  80 61 00 08 */	lwz r3, 8(r1)
/* 8016EE64 0016A384  94 C5 3F E8 */	stwu r6, lbl_80243FE8@l(r5)
/* 8016EE68 0016A388  3C 03 ED CC */	addis r0, r3, 0xedcc
/* 8016EE6C 0016A38C  28 00 56 78 */	cmplwi r0, 0x5678
/* 8016EE70 0016A390  40 82 00 0C */	bne .L_8016EE7C
/* 8016EE74 0016A394  90 C5 00 00 */	stw r6, 0(r5)
/* 8016EE78 0016A398  48 00 00 1C */	b .L_8016EE94
.L_8016EE7C:
/* 8016EE7C 0016A39C  3C 03 87 AA */	addis r0, r3, 0x87aa
/* 8016EE80 0016A3A0  28 00 34 12 */	cmplwi r0, 0x3412
/* 8016EE84 0016A3A4  40 82 00 0C */	bne .L_8016EE90
/* 8016EE88 0016A3A8  93 E5 00 00 */	stw r31, 0(r5)
/* 8016EE8C 0016A3AC  48 00 00 08 */	b .L_8016EE94
.L_8016EE90:
/* 8016EE90 0016A3B0  7C DF 33 78 */	mr r31, r6
.L_8016EE94:
/* 8016EE94 0016A3B4  2C 1F 00 00 */	cmpwi r31, 0
/* 8016EE98 0016A3B8  40 82 00 08 */	bne .L_8016EEA0
/* 8016EE9C 0016A3BC  48 00 0A D1 */	bl usr_put_initialize
.L_8016EEA0:
/* 8016EEA0 0016A3C0  2C 1F 00 00 */	cmpwi r31, 0
/* 8016EEA4 0016A3C4  40 82 00 0C */	bne .L_8016EEB0
/* 8016EEA8 0016A3C8  4B FF FE D5 */	bl TRKInitializeEventQueue
/* 8016EEAC 0016A3CC  7C 7F 1B 78 */	mr r31, r3
.L_8016EEB0:
/* 8016EEB0 0016A3D0  2C 1F 00 00 */	cmpwi r31, 0
/* 8016EEB4 0016A3D4  40 82 00 0C */	bne .L_8016EEC0
/* 8016EEB8 0016A3D8  48 00 08 95 */	bl TRKInitializeMessageBuffers
/* 8016EEBC 0016A3DC  7C 7F 1B 78 */	mr r31, r3
.L_8016EEC0:
/* 8016EEC0 0016A3E0  2C 1F 00 00 */	cmpwi r31, 0
/* 8016EEC4 0016A3E4  40 82 00 0C */	bne .L_8016EED0
/* 8016EEC8 0016A3E8  48 00 0C 71 */	bl TRKInitializeDispatcher
/* 8016EECC 0016A3EC  7C 7F 1B 78 */	mr r31, r3
.L_8016EED0:
/* 8016EED0 0016A3F0  48 00 48 D5 */	bl InitializeProgramEndTrap
/* 8016EED4 0016A3F4  2C 1F 00 00 */	cmpwi r31, 0
/* 8016EED8 0016A3F8  40 82 00 0C */	bne .L_8016EEE4
/* 8016EEDC 0016A3FC  48 00 08 ED */	bl TRKInitializeSerialHandler
/* 8016EEE0 0016A400  7C 7F 1B 78 */	mr r31, r3
.L_8016EEE4:
/* 8016EEE4 0016A404  2C 1F 00 00 */	cmpwi r31, 0
/* 8016EEE8 0016A408  40 82 00 0C */	bne .L_8016EEF4
/* 8016EEEC 0016A40C  48 00 45 F9 */	bl TRKInitializeTarget
/* 8016EEF0 0016A410  7C 7F 1B 78 */	mr r31, r3
.L_8016EEF4:
/* 8016EEF4 0016A414  2C 1F 00 00 */	cmpwi r31, 0
/* 8016EEF8 0016A418  40 82 00 44 */	bne .L_8016EF3C
/* 8016EEFC 0016A41C  3C 60 80 24 */	lis r3, lbl_802477E8@ha
/* 8016EF00 0016A420  3C A0 00 01 */	lis r5, 0x0000E100@ha
/* 8016EF04 0016A424  38 C3 77 E8 */	addi r6, r3, lbl_802477E8@l
/* 8016EF08 0016A428  38 80 00 01 */	li r4, 1
/* 8016EF0C 0016A42C  38 65 E1 00 */	addi r3, r5, 0x0000E100@l
/* 8016EF10 0016A430  38 A0 00 00 */	li r5, 0
/* 8016EF14 0016A434  48 00 4A 69 */	bl TRKInitializeIntDrivenUART
/* 8016EF18 0016A438  3C 80 80 24 */	lis r4, lbl_802477E8@ha
/* 8016EF1C 0016A43C  7C 60 1B 78 */	mr r0, r3
/* 8016EF20 0016A440  38 64 77 E8 */	addi r3, r4, lbl_802477E8@l
/* 8016EF24 0016A444  80 63 00 00 */	lwz r3, 0(r3)
/* 8016EF28 0016A448  7C 1E 03 78 */	mr r30, r0
/* 8016EF2C 0016A44C  48 00 29 3D */	bl TRKTargetSetInputPendingPtr
/* 8016EF30 0016A450  2C 1E 00 00 */	cmpwi r30, 0
/* 8016EF34 0016A454  41 82 00 08 */	beq .L_8016EF3C
/* 8016EF38 0016A458  7F DF F3 78 */	mr r31, r30
.L_8016EF3C:
/* 8016EF3C 0016A45C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016EF40 0016A460  7F E3 FB 78 */	mr r3, r31
/* 8016EF44 0016A464  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016EF48 0016A468  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016EF4C 0016A46C  7C 08 03 A6 */	mtlr r0
/* 8016EF50 0016A470  38 21 00 20 */	addi r1, r1, 0x20
/* 8016EF54 0016A474  4E 80 00 20 */	blr
