.include "macros.inc"

.section .text, "ax"

glabel OSInitMutex
/* 80096468 00091988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009646C 0009198C  7C 08 02 A6 */	mflr r0
/* 80096470 00091990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80096474 00091994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80096478 00091998  7C 7F 1B 78 */	mr r31, r3
/* 8009647C 0009199C  48 00 16 E1 */	bl OSInitThreadQueue
/* 80096480 000919A0  38 00 00 00 */	li r0, 0
/* 80096484 000919A4  90 1F 00 08 */	stw r0, 8(r31)
/* 80096488 000919A8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8009648C 000919AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80096490 000919B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80096494 000919B4  7C 08 03 A6 */	mtlr r0
/* 80096498 000919B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009649C 000919BC  4E 80 00 20 */	blr 

glabel OSLockMutex
/* 800964A0 000919C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800964A4 000919C4  7C 08 02 A6 */	mflr r0
/* 800964A8 000919C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800964AC 000919CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800964B0 000919D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800964B4 000919D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800964B8 000919D8  93 81 00 10 */	stw r28, 0x10(r1)
/* 800964BC 000919DC  7C 7C 1B 78 */	mr r28, r3
/* 800964C0 000919E0  4B FF ED F5 */	bl OSDisableInterrupts
/* 800964C4 000919E4  7C 7D 1B 78 */	mr r29, r3
/* 800964C8 000919E8  48 00 16 A5 */	bl OSGetCurrentThread
/* 800964CC 000919EC  7C 7E 1B 78 */	mr r30, r3
/* 800964D0 000919F0  3B E0 00 00 */	li r31, 0
lbl_800964D4:
/* 800964D4 000919F4  80 1C 00 08 */	lwz r0, 8(r28)
/* 800964D8 000919F8  2C 00 00 00 */	cmpwi r0, 0
/* 800964DC 000919FC  40 82 00 40 */	bne lbl_8009651C
/* 800964E0 00091A00  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 800964E4 00091A04  93 DC 00 08 */	stw r30, 8(r28)
/* 800964E8 00091A08  38 03 00 01 */	addi r0, r3, 1
/* 800964EC 00091A0C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 800964F0 00091A10  80 7E 02 F8 */	lwz r3, 0x2f8(r30)
/* 800964F4 00091A14  2C 03 00 00 */	cmpwi r3, 0
/* 800964F8 00091A18  40 82 00 0C */	bne lbl_80096504
/* 800964FC 00091A1C  93 9E 02 F4 */	stw r28, 0x2f4(r30)
/* 80096500 00091A20  48 00 00 08 */	b lbl_80096508
lbl_80096504:
/* 80096504 00091A24  93 83 00 10 */	stw r28, 0x10(r3)
lbl_80096508:
/* 80096508 00091A28  38 00 00 00 */	li r0, 0
/* 8009650C 00091A2C  90 7C 00 14 */	stw r3, 0x14(r28)
/* 80096510 00091A30  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80096514 00091A34  93 9E 02 F8 */	stw r28, 0x2f8(r30)
/* 80096518 00091A38  48 00 00 3C */	b lbl_80096554
lbl_8009651C:
/* 8009651C 00091A3C  7C 00 F0 40 */	cmplw r0, r30
/* 80096520 00091A40  40 82 00 14 */	bne lbl_80096534
/* 80096524 00091A44  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80096528 00091A48  38 03 00 01 */	addi r0, r3, 1
/* 8009652C 00091A4C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80096530 00091A50  48 00 00 24 */	b lbl_80096554
lbl_80096534:
/* 80096534 00091A54  93 9E 02 F0 */	stw r28, 0x2f0(r30)
/* 80096538 00091A58  80 7C 00 08 */	lwz r3, 8(r28)
/* 8009653C 00091A5C  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 80096540 00091A60  48 00 19 49 */	bl __OSPromoteThread
/* 80096544 00091A64  7F 83 E3 78 */	mr r3, r28
/* 80096548 00091A68  48 00 26 A1 */	bl OSSleepThread
/* 8009654C 00091A6C  93 FE 02 F0 */	stw r31, 0x2f0(r30)
/* 80096550 00091A70  4B FF FF 84 */	b lbl_800964D4
lbl_80096554:
/* 80096554 00091A74  7F A3 EB 78 */	mr r3, r29
/* 80096558 00091A78  4B FF ED 85 */	bl OSRestoreInterrupts
/* 8009655C 00091A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80096560 00091A80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80096564 00091A84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80096568 00091A88  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8009656C 00091A8C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80096570 00091A90  7C 08 03 A6 */	mtlr r0
/* 80096574 00091A94  38 21 00 20 */	addi r1, r1, 0x20
/* 80096578 00091A98  4E 80 00 20 */	blr 

glabel OSUnlockMutex
/* 8009657C 00091A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80096580 00091AA0  7C 08 02 A6 */	mflr r0
/* 80096584 00091AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80096588 00091AA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8009658C 00091AAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80096590 00091AB0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80096594 00091AB4  7C 7D 1B 78 */	mr r29, r3
/* 80096598 00091AB8  4B FF ED 1D */	bl OSDisableInterrupts
/* 8009659C 00091ABC  7C 7F 1B 78 */	mr r31, r3
/* 800965A0 00091AC0  48 00 15 CD */	bl OSGetCurrentThread
/* 800965A4 00091AC4  80 1D 00 08 */	lwz r0, 8(r29)
/* 800965A8 00091AC8  7C 7E 1B 78 */	mr r30, r3
/* 800965AC 00091ACC  7C 00 18 40 */	cmplw r0, r3
/* 800965B0 00091AD0  40 82 00 70 */	bne lbl_80096620
/* 800965B4 00091AD4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800965B8 00091AD8  34 00 FF FF */	addic. r0, r0, -1
/* 800965BC 00091ADC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 800965C0 00091AE0  40 82 00 60 */	bne lbl_80096620
/* 800965C4 00091AE4  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 800965C8 00091AE8  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 800965CC 00091AEC  2C 04 00 00 */	cmpwi r4, 0
/* 800965D0 00091AF0  40 82 00 0C */	bne lbl_800965DC
/* 800965D4 00091AF4  90 A3 02 F8 */	stw r5, 0x2f8(r3)
/* 800965D8 00091AF8  48 00 00 08 */	b lbl_800965E0
lbl_800965DC:
/* 800965DC 00091AFC  90 A4 00 14 */	stw r5, 0x14(r4)
lbl_800965E0:
/* 800965E0 00091B00  2C 05 00 00 */	cmpwi r5, 0
/* 800965E4 00091B04  40 82 00 0C */	bne lbl_800965F0
/* 800965E8 00091B08  90 83 02 F4 */	stw r4, 0x2f4(r3)
/* 800965EC 00091B0C  48 00 00 08 */	b lbl_800965F4
lbl_800965F0:
/* 800965F0 00091B10  90 85 00 10 */	stw r4, 0x10(r5)
lbl_800965F4:
/* 800965F4 00091B14  38 00 00 00 */	li r0, 0
/* 800965F8 00091B18  90 1D 00 08 */	stw r0, 8(r29)
/* 800965FC 00091B1C  80 83 02 D0 */	lwz r4, 0x2d0(r3)
/* 80096600 00091B20  80 03 02 D4 */	lwz r0, 0x2d4(r3)
/* 80096604 00091B24  7C 04 00 00 */	cmpw r4, r0
/* 80096608 00091B28  40 80 00 10 */	bge lbl_80096618
/* 8009660C 00091B2C  7F C3 F3 78 */	mr r3, r30
/* 80096610 00091B30  48 00 16 89 */	bl __OSGetEffectivePriority
/* 80096614 00091B34  90 7E 02 D0 */	stw r3, 0x2d0(r30)
lbl_80096618:
/* 80096618 00091B38  7F A3 EB 78 */	mr r3, r29
/* 8009661C 00091B3C  48 00 26 B9 */	bl OSWakeupThread
lbl_80096620:
/* 80096620 00091B40  7F E3 FB 78 */	mr r3, r31
/* 80096624 00091B44  4B FF EC B9 */	bl OSRestoreInterrupts
/* 80096628 00091B48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009662C 00091B4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80096630 00091B50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80096634 00091B54  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80096638 00091B58  7C 08 03 A6 */	mtlr r0
/* 8009663C 00091B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80096640 00091B60  4E 80 00 20 */	blr 

glabel __OSUnlockAllMutex
/* 80096644 00091B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80096648 00091B68  7C 08 02 A6 */	mflr r0
/* 8009664C 00091B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80096650 00091B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80096654 00091B74  3B E0 00 00 */	li r31, 0
/* 80096658 00091B78  93 C1 00 08 */	stw r30, 8(r1)
/* 8009665C 00091B7C  7C 7E 1B 78 */	mr r30, r3
/* 80096660 00091B80  48 00 00 2C */	b lbl_8009668C
lbl_80096664:
/* 80096664 00091B84  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80096668 00091B88  2C 04 00 00 */	cmpwi r4, 0
/* 8009666C 00091B8C  40 82 00 0C */	bne lbl_80096678
/* 80096670 00091B90  93 FE 02 F8 */	stw r31, 0x2f8(r30)
/* 80096674 00091B94  48 00 00 08 */	b lbl_8009667C
lbl_80096678:
/* 80096678 00091B98  93 E4 00 14 */	stw r31, 0x14(r4)
lbl_8009667C:
/* 8009667C 00091B9C  90 9E 02 F4 */	stw r4, 0x2f4(r30)
/* 80096680 00091BA0  93 E3 00 0C */	stw r31, 0xc(r3)
/* 80096684 00091BA4  93 E3 00 08 */	stw r31, 8(r3)
/* 80096688 00091BA8  48 00 26 4D */	bl OSWakeupThread
lbl_8009668C:
/* 8009668C 00091BAC  80 7E 02 F4 */	lwz r3, 0x2f4(r30)
/* 80096690 00091BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80096694 00091BB4  40 82 FF D0 */	bne lbl_80096664
/* 80096698 00091BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009669C 00091BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800966A0 00091BC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800966A4 00091BC4  7C 08 03 A6 */	mtlr r0
/* 800966A8 00091BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 800966AC 00091BCC  4E 80 00 20 */	blr 