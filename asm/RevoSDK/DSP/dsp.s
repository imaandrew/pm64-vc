.include "macros.inc"

.section .text, "ax"

glabel DSPCheckMailToDSP
/* 800B8548 000B3A68  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 800B854C 000B3A6C  A0 03 50 00 */	lhz r0, 0xCC005000@l(r3)
/* 800B8550 000B3A70  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 800B8554 000B3A74  4E 80 00 20 */	blr

glabel DSPCheckMailFromDSP
/* 800B8558 000B3A78  3C 60 CC 00 */	lis r3, 0xCC005004@ha
/* 800B855C 000B3A7C  A0 03 50 04 */	lhz r0, 0xCC005004@l(r3)
/* 800B8560 000B3A80  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 800B8564 000B3A84  4E 80 00 20 */	blr

glabel DSPReadMailFromDSP
/* 800B8568 000B3A88  3C 60 CC 00 */	lis r3, 0xCC005004@ha
/* 800B856C 000B3A8C  A0 03 50 04 */	lhz r0, 0xCC005004@l(r3)
/* 800B8570 000B3A90  A0 63 50 06 */	lhz r3, 0x5006(r3)
/* 800B8574 000B3A94  50 03 80 1E */	rlwimi r3, r0, 0x10, 0, 0xf
/* 800B8578 000B3A98  4E 80 00 20 */	blr

glabel DSPSendMailToDSP
/* 800B857C 000B3A9C  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 800B8580 000B3AA0  54 60 84 3E */	srwi r0, r3, 0x10
/* 800B8584 000B3AA4  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
/* 800B8588 000B3AA8  B0 64 50 02 */	sth r3, 0x5002(r4)
/* 800B858C 000B3AAC  4E 80 00 20 */	blr

glabel DSPInit
/* 800B8590 000B3AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B8594 000B3AB4  7C 08 02 A6 */	mflr r0
/* 800B8598 000B3AB8  3C A0 80 19 */	lis r5, lbl_80196990@ha
/* 800B859C 000B3ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B85A0 000B3AC0  38 A5 69 90 */	addi r5, r5, lbl_80196990@l
/* 800B85A4 000B3AC4  38 65 00 48 */	addi r3, r5, 0x48
/* 800B85A8 000B3AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B85AC 000B3ACC  38 85 00 68 */	addi r4, r5, 0x68
/* 800B85B0 000B3AD0  38 A5 00 74 */	addi r5, r5, 0x74
/* 800B85B4 000B3AD4  4C C6 31 82 */	crclr 6
/* 800B85B8 000B3AD8  48 00 02 0D */	bl __DSP_debug_printf
/* 800B85BC 000B3ADC  80 0D 91 80 */	lwz r0, lbl_80247600@sda21(r13)
/* 800B85C0 000B3AE0  2C 00 00 01 */	cmpwi r0, 1
/* 800B85C4 000B3AE4  41 82 00 78 */	beq .L_800B863C
/* 800B85C8 000B3AE8  80 6D 83 98 */	lwz r3, lbl_80246818@sda21(r13)
/* 800B85CC 000B3AEC  4B FD 77 D5 */	bl OSRegisterVersion
/* 800B85D0 000B3AF0  4B FD CC E5 */	bl OSDisableInterrupts
/* 800B85D4 000B3AF4  3C 80 80 0C */	lis r4, __DSPHandler@ha
/* 800B85D8 000B3AF8  7C 7F 1B 78 */	mr r31, r3
/* 800B85DC 000B3AFC  38 84 88 14 */	addi r4, r4, __DSPHandler@l
/* 800B85E0 000B3B00  38 60 00 07 */	li r3, 7
/* 800B85E4 000B3B04  4B FD CD 1D */	bl __OSSetInterruptHandler
/* 800B85E8 000B3B08  3C 60 01 00 */	lis r3, 0x100
/* 800B85EC 000B3B0C  4B FD D0 D9 */	bl __OSUnmaskInterrupts
/* 800B85F0 000B3B10  3C E0 CC 00 */	lis r7, 0xCC00500A@ha
/* 800B85F4 000B3B14  38 60 FF 57 */	li r3, -169
/* 800B85F8 000B3B18  A0 C7 50 0A */	lhz r6, 0xCC00500A@l(r7)
/* 800B85FC 000B3B1C  38 A0 FF 53 */	li r5, -173
/* 800B8600 000B3B20  38 80 00 00 */	li r4, 0
/* 800B8604 000B3B24  38 00 00 01 */	li r0, 1
/* 800B8608 000B3B28  7C C3 18 38 */	and r3, r6, r3
/* 800B860C 000B3B2C  60 63 08 00 */	ori r3, r3, 0x800
/* 800B8610 000B3B30  B0 67 50 0A */	sth r3, 0x500a(r7)
/* 800B8614 000B3B34  7F E3 FB 78 */	mr r3, r31
/* 800B8618 000B3B38  A0 C7 50 0A */	lhz r6, 0x500a(r7)
/* 800B861C 000B3B3C  7C C5 28 38 */	and r5, r6, r5
/* 800B8620 000B3B40  B0 A7 50 0A */	sth r5, 0x500a(r7)
/* 800B8624 000B3B44  90 8D 91 90 */	stw r4, lbl_80247610@sda21(r13)
/* 800B8628 000B3B48  90 8D 91 9C */	stw r4, lbl_8024761C@sda21(r13)
/* 800B862C 000B3B4C  90 8D 91 94 */	stw r4, lbl_80247614@sda21(r13)
/* 800B8630 000B3B50  90 8D 91 98 */	stw r4, lbl_80247618@sda21(r13)
/* 800B8634 000B3B54  90 0D 91 80 */	stw r0, lbl_80247600@sda21(r13)
/* 800B8638 000B3B58  4B FD CC A5 */	bl OSRestoreInterrupts
.L_800B863C:
/* 800B863C 000B3B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B8640 000B3B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B8644 000B3B64  7C 08 03 A6 */	mtlr r0
/* 800B8648 000B3B68  38 21 00 10 */	addi r1, r1, 0x10
/* 800B864C 000B3B6C  4E 80 00 20 */	blr

glabel DSPCheckInit
/* 800B8650 000B3B70  80 6D 91 80 */	lwz r3, lbl_80247600@sda21(r13)
/* 800B8654 000B3B74  4E 80 00 20 */	blr

glabel DSPAddTask
/* 800B8658 000B3B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B865C 000B3B7C  7C 08 02 A6 */	mflr r0
/* 800B8660 000B3B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B8664 000B3B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B8668 000B3B88  93 C1 00 08 */	stw r30, 8(r1)
/* 800B866C 000B3B8C  7C 7E 1B 78 */	mr r30, r3
/* 800B8670 000B3B90  4B FD CC 45 */	bl OSDisableInterrupts
/* 800B8674 000B3B94  7C 7F 1B 78 */	mr r31, r3
/* 800B8678 000B3B98  7F C3 F3 78 */	mr r3, r30
/* 800B867C 000B3B9C  48 00 08 FD */	bl __DSP_insert_task
/* 800B8680 000B3BA0  38 60 00 00 */	li r3, 0
/* 800B8684 000B3BA4  38 00 00 01 */	li r0, 1
/* 800B8688 000B3BA8  90 7E 00 00 */	stw r3, 0(r30)
/* 800B868C 000B3BAC  7F E3 FB 78 */	mr r3, r31
/* 800B8690 000B3BB0  90 1E 00 08 */	stw r0, 8(r30)
/* 800B8694 000B3BB4  4B FD CC 49 */	bl OSRestoreInterrupts
/* 800B8698 000B3BB8  80 0D 91 98 */	lwz r0, lbl_80247618@sda21(r13)
/* 800B869C 000B3BBC  7C 1E 00 40 */	cmplw r30, r0
/* 800B86A0 000B3BC0  40 82 00 0C */	bne .L_800B86AC
/* 800B86A4 000B3BC4  7F C3 F3 78 */	mr r3, r30
/* 800B86A8 000B3BC8  48 00 07 45 */	bl __DSP_boot_task
.L_800B86AC:
/* 800B86AC 000B3BCC  7F C3 F3 78 */	mr r3, r30
/* 800B86B0 000B3BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B86B4 000B3BD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B86B8 000B3BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B86BC 000B3BDC  7C 08 03 A6 */	mtlr r0
/* 800B86C0 000B3BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 800B86C4 000B3BE4  4E 80 00 20 */	blr

glabel DSPCancelTask
/* 800B86C8 000B3BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B86CC 000B3BEC  7C 08 02 A6 */	mflr r0
/* 800B86D0 000B3BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B86D4 000B3BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B86D8 000B3BF8  7C 7F 1B 78 */	mr r31, r3
/* 800B86DC 000B3BFC  4B FD CB D9 */	bl OSDisableInterrupts
/* 800B86E0 000B3C00  80 1F 00 08 */	lwz r0, 8(r31)
/* 800B86E4 000B3C04  60 00 00 02 */	ori r0, r0, 2
/* 800B86E8 000B3C08  90 1F 00 08 */	stw r0, 8(r31)
/* 800B86EC 000B3C0C  4B FD CB F1 */	bl OSRestoreInterrupts
/* 800B86F0 000B3C10  7F E3 FB 78 */	mr r3, r31
/* 800B86F4 000B3C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B86F8 000B3C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B86FC 000B3C1C  7C 08 03 A6 */	mtlr r0
/* 800B8700 000B3C20  38 21 00 10 */	addi r1, r1, 0x10
/* 800B8704 000B3C24  4E 80 00 20 */	blr

glabel DSPAssertTask
/* 800B8708 000B3C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B870C 000B3C2C  7C 08 02 A6 */	mflr r0
/* 800B8710 000B3C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B8714 000B3C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B8718 000B3C38  93 C1 00 08 */	stw r30, 8(r1)
/* 800B871C 000B3C3C  7C 7E 1B 78 */	mr r30, r3
/* 800B8720 000B3C40  4B FD CB 95 */	bl OSDisableInterrupts
/* 800B8724 000B3C44  80 AD 91 9C */	lwz r5, lbl_8024761C@sda21(r13)
/* 800B8728 000B3C48  7C 7F 1B 78 */	mr r31, r3
/* 800B872C 000B3C4C  7C 05 F0 40 */	cmplw r5, r30
/* 800B8730 000B3C50  40 82 00 1C */	bne .L_800B874C
/* 800B8734 000B3C54  38 00 00 01 */	li r0, 1
/* 800B8738 000B3C58  93 CD 91 8C */	stw r30, lbl_8024760C@sda21(r13)
/* 800B873C 000B3C5C  90 0D 91 88 */	stw r0, lbl_80247608@sda21(r13)
/* 800B8740 000B3C60  4B FD CB 9D */	bl OSRestoreInterrupts
/* 800B8744 000B3C64  7F C3 F3 78 */	mr r3, r30
/* 800B8748 000B3C68  48 00 00 64 */	b .L_800B87AC
.L_800B874C:
/* 800B874C 000B3C6C  80 9E 00 04 */	lwz r4, 4(r30)
/* 800B8750 000B3C70  80 05 00 04 */	lwz r0, 4(r5)
/* 800B8754 000B3C74  7C 04 00 40 */	cmplw r4, r0
/* 800B8758 000B3C78  40 80 00 4C */	bge .L_800B87A4
/* 800B875C 000B3C7C  38 00 00 01 */	li r0, 1
/* 800B8760 000B3C80  93 CD 91 8C */	stw r30, lbl_8024760C@sda21(r13)
/* 800B8764 000B3C84  90 0D 91 88 */	stw r0, lbl_80247608@sda21(r13)
/* 800B8768 000B3C88  80 05 00 00 */	lwz r0, 0(r5)
/* 800B876C 000B3C8C  28 00 00 01 */	cmplwi r0, 1
/* 800B8770 000B3C90  40 82 00 24 */	bne .L_800B8794
/* 800B8774 000B3C94  4B FD CB 41 */	bl OSDisableInterrupts
/* 800B8778 000B3C98  3C A0 CC 00 */	lis r5, 0xCC00500A@ha
/* 800B877C 000B3C9C  38 00 FF 57 */	li r0, -169
/* 800B8780 000B3CA0  A0 85 50 0A */	lhz r4, 0xCC00500A@l(r5)
/* 800B8784 000B3CA4  7C 80 00 38 */	and r0, r4, r0
/* 800B8788 000B3CA8  60 00 00 02 */	ori r0, r0, 2
/* 800B878C 000B3CAC  B0 05 50 0A */	sth r0, 0x500a(r5)
/* 800B8790 000B3CB0  4B FD CB 4D */	bl OSRestoreInterrupts
.L_800B8794:
/* 800B8794 000B3CB4  7F E3 FB 78 */	mr r3, r31
/* 800B8798 000B3CB8  4B FD CB 45 */	bl OSRestoreInterrupts
/* 800B879C 000B3CBC  7F C3 F3 78 */	mr r3, r30
/* 800B87A0 000B3CC0  48 00 00 0C */	b .L_800B87AC
.L_800B87A4:
/* 800B87A4 000B3CC4  4B FD CB 39 */	bl OSRestoreInterrupts
/* 800B87A8 000B3CC8  38 60 00 00 */	li r3, 0
.L_800B87AC:
/* 800B87AC 000B3CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B87B0 000B3CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B87B4 000B3CD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B87B8 000B3CD8  7C 08 03 A6 */	mtlr r0
/* 800B87BC 000B3CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 800B87C0 000B3CE0  4E 80 00 20 */	blr

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247600
	.skip 0x8

glabel lbl_80247608
	.skip 0x4

glabel lbl_8024760C
	.skip 0x4

glabel lbl_80247610
	.skip 0x4

glabel lbl_80247614
	.skip 0x4

glabel lbl_80247618
	.skip 0x4

glabel lbl_8024761C
	.skip 0x4
