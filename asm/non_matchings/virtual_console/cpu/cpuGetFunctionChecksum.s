glabel cpuGetFunctionChecksum
/* 8003D548 00038A68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003D54C 00038A6C  7C 08 02 A6 */	mflr r0
/* 8003D550 00038A70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003D554 00038A74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003D558 00038A78  7C BF 2B 78 */	mr r31, r5
/* 8003D55C 00038A7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003D560 00038A80  7C 9E 23 78 */	mr r30, r4
/* 8003D564 00038A84  80 05 00 24 */	lwz r0, 0x24(r5)
/* 8003D568 00038A88  2C 00 00 00 */	cmpwi r0, 0
/* 8003D56C 00038A8C  41 82 00 10 */	beq lbl_8003D57C
/* 8003D570 00038A90  90 04 00 00 */	stw r0, 0(r4)
/* 8003D574 00038A94  38 60 00 01 */	li r3, 1
/* 8003D578 00038A98  48 00 01 90 */	b lbl_8003D708
lbl_8003D57C:
/* 8003D57C 00038A9C  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8003D580 00038AA0  38 81 00 08 */	addi r4, r1, 8
/* 8003D584 00038AA4  4B FF FC F9 */	bl cpuGetAddressBuffer
/* 8003D588 00038AA8  2C 03 00 00 */	cmpwi r3, 0
/* 8003D58C 00038AAC  41 82 01 78 */	beq lbl_8003D704
/* 8003D590 00038AB0  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8003D594 00038AB4  3C 60 66 66 */	lis r3, 0x66666667@ha
/* 8003D598 00038AB8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8003D59C 00038ABC  38 E3 66 67 */	addi r7, r3, 0x66666667@l
/* 8003D5A0 00038AC0  80 81 00 08 */	lwz r4, 8(r1)
/* 8003D5A4 00038AC4  39 20 00 00 */	li r9, 0
/* 8003D5A8 00038AC8  7C 05 00 50 */	subf r0, r5, r0
/* 8003D5AC 00038ACC  7C 03 16 70 */	srawi r3, r0, 2
/* 8003D5B0 00038AD0  35 03 00 01 */	addic. r8, r3, 1
/* 8003D5B4 00038AD4  7D 03 43 78 */	mr r3, r8
/* 8003D5B8 00038AD8  40 81 01 3C */	ble lbl_8003D6F4
/* 8003D5BC 00038ADC  55 00 F0 BF */	rlwinm. r0, r8, 0x1e, 2, 0x1f
/* 8003D5C0 00038AE0  7C 09 03 A6 */	mtctr r0
/* 8003D5C4 00038AE4  41 82 00 F0 */	beq lbl_8003D6B4
lbl_8003D5C8:
/* 8003D5C8 00038AE8  39 08 FF FF */	addi r8, r8, -1
/* 8003D5CC 00038AEC  81 44 00 00 */	lwz r10, 0(r4)
/* 8003D5D0 00038AF0  7C C7 40 96 */	mulhw r6, r7, r8
/* 8003D5D4 00038AF4  38 84 00 04 */	addi r4, r4, 4
/* 8003D5D8 00038AF8  55 4A 36 BE */	srwi r10, r10, 0x1a
/* 8003D5DC 00038AFC  90 81 00 08 */	stw r4, 8(r1)
/* 8003D5E0 00038B00  7C C0 0E 70 */	srawi r0, r6, 1
/* 8003D5E4 00038B04  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8003D5E8 00038B08  7C C0 32 14 */	add r6, r0, r6
/* 8003D5EC 00038B0C  1C C6 00 05 */	mulli r6, r6, 5
/* 8003D5F0 00038B10  7C A6 40 50 */	subf r5, r6, r8
/* 8003D5F4 00038B14  39 08 FF FF */	addi r8, r8, -1
/* 8003D5F8 00038B18  7C C7 40 96 */	mulhw r6, r7, r8
/* 8003D5FC 00038B1C  7C C0 0E 70 */	srawi r0, r6, 1
/* 8003D600 00038B20  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8003D604 00038B24  7C C0 32 14 */	add r6, r0, r6
/* 8003D608 00038B28  1C C6 00 05 */	mulli r6, r6, 5
/* 8003D60C 00038B2C  1C 05 00 06 */	mulli r0, r5, 6
/* 8003D610 00038B30  7C A6 40 50 */	subf r5, r6, r8
/* 8003D614 00038B34  39 08 FF FF */	addi r8, r8, -1
/* 8003D618 00038B38  7C C7 40 96 */	mulhw r6, r7, r8
/* 8003D61C 00038B3C  7D 4A 00 30 */	slw r10, r10, r0
/* 8003D620 00038B40  7D 29 52 14 */	add r9, r9, r10
/* 8003D624 00038B44  81 44 00 00 */	lwz r10, 0(r4)
/* 8003D628 00038B48  38 84 00 04 */	addi r4, r4, 4
/* 8003D62C 00038B4C  7C C0 0E 70 */	srawi r0, r6, 1
/* 8003D630 00038B50  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8003D634 00038B54  55 4A 36 BE */	srwi r10, r10, 0x1a
/* 8003D638 00038B58  7C C0 32 14 */	add r6, r0, r6
/* 8003D63C 00038B5C  90 81 00 08 */	stw r4, 8(r1)
/* 8003D640 00038B60  1C C6 00 05 */	mulli r6, r6, 5
/* 8003D644 00038B64  1C 05 00 06 */	mulli r0, r5, 6
/* 8003D648 00038B68  7C A6 40 50 */	subf r5, r6, r8
/* 8003D64C 00038B6C  39 08 FF FF */	addi r8, r8, -1
/* 8003D650 00038B70  7C C7 40 96 */	mulhw r6, r7, r8
/* 8003D654 00038B74  7D 4A 00 30 */	slw r10, r10, r0
/* 8003D658 00038B78  7D 29 52 14 */	add r9, r9, r10
/* 8003D65C 00038B7C  81 44 00 00 */	lwz r10, 0(r4)
/* 8003D660 00038B80  38 84 00 04 */	addi r4, r4, 4
/* 8003D664 00038B84  7C C0 0E 70 */	srawi r0, r6, 1
/* 8003D668 00038B88  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8003D66C 00038B8C  90 81 00 08 */	stw r4, 8(r1)
/* 8003D670 00038B90  7C C0 32 14 */	add r6, r0, r6
/* 8003D674 00038B94  55 4A 36 BE */	srwi r10, r10, 0x1a
/* 8003D678 00038B98  1C 05 00 06 */	mulli r0, r5, 6
/* 8003D67C 00038B9C  1C C6 00 05 */	mulli r6, r6, 5
/* 8003D680 00038BA0  7D 4A 00 30 */	slw r10, r10, r0
/* 8003D684 00038BA4  7C A6 40 50 */	subf r5, r6, r8
/* 8003D688 00038BA8  7D 29 52 14 */	add r9, r9, r10
/* 8003D68C 00038BAC  81 44 00 00 */	lwz r10, 0(r4)
/* 8003D690 00038BB0  38 84 00 04 */	addi r4, r4, 4
/* 8003D694 00038BB4  1C 05 00 06 */	mulli r0, r5, 6
/* 8003D698 00038BB8  55 4A 36 BE */	srwi r10, r10, 0x1a
/* 8003D69C 00038BBC  90 81 00 08 */	stw r4, 8(r1)
/* 8003D6A0 00038BC0  7D 4A 00 30 */	slw r10, r10, r0
/* 8003D6A4 00038BC4  7D 29 52 14 */	add r9, r9, r10
/* 8003D6A8 00038BC8  42 00 FF 20 */	bdnz lbl_8003D5C8
/* 8003D6AC 00038BCC  70 63 00 03 */	andi. r3, r3, 3
/* 8003D6B0 00038BD0  41 82 00 44 */	beq lbl_8003D6F4
lbl_8003D6B4:
/* 8003D6B4 00038BD4  7C 69 03 A6 */	mtctr r3
lbl_8003D6B8:
/* 8003D6B8 00038BD8  39 08 FF FF */	addi r8, r8, -1
/* 8003D6BC 00038BDC  81 44 00 00 */	lwz r10, 0(r4)
/* 8003D6C0 00038BE0  7C C7 40 96 */	mulhw r6, r7, r8
/* 8003D6C4 00038BE4  38 84 00 04 */	addi r4, r4, 4
/* 8003D6C8 00038BE8  55 4A 36 BE */	srwi r10, r10, 0x1a
/* 8003D6CC 00038BEC  90 81 00 08 */	stw r4, 8(r1)
/* 8003D6D0 00038BF0  7C C0 0E 70 */	srawi r0, r6, 1
/* 8003D6D4 00038BF4  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8003D6D8 00038BF8  7C C0 32 14 */	add r6, r0, r6
/* 8003D6DC 00038BFC  1C C6 00 05 */	mulli r6, r6, 5
/* 8003D6E0 00038C00  7C A6 40 50 */	subf r5, r6, r8
/* 8003D6E4 00038C04  1C 05 00 06 */	mulli r0, r5, 6
/* 8003D6E8 00038C08  7D 4A 00 30 */	slw r10, r10, r0
/* 8003D6EC 00038C0C  7D 29 52 14 */	add r9, r9, r10
/* 8003D6F0 00038C10  42 00 FF C8 */	bdnz lbl_8003D6B8
lbl_8003D6F4:
/* 8003D6F4 00038C14  91 3E 00 00 */	stw r9, 0(r30)
/* 8003D6F8 00038C18  38 60 00 01 */	li r3, 1
/* 8003D6FC 00038C1C  91 3F 00 24 */	stw r9, 0x24(r31)
/* 8003D700 00038C20  48 00 00 08 */	b lbl_8003D708
lbl_8003D704:
/* 8003D704 00038C24  38 60 00 00 */	li r3, 0
lbl_8003D708:
/* 8003D708 00038C28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003D70C 00038C2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003D710 00038C30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003D714 00038C34  7C 08 03 A6 */	mtlr r0
/* 8003D718 00038C38  38 21 00 20 */	addi r1, r1, 0x20
/* 8003D71C 00038C3C  4E 80 00 20 */	blr 

