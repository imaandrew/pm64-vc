.include "macros.inc"

.section .text, "ax"

glabel OSSetCurrentHeap
/* 800905F8 0008BB18  80 0D 82 38 */	lwz r0, lbl_802466B8@sda21(r13)
/* 800905FC 0008BB1C  90 6D 82 38 */	stw r3, lbl_802466B8@sda21(r13)
/* 80090600 0008BB20  7C 03 03 78 */	mr r3, r0
/* 80090604 0008BB24  4E 80 00 20 */	blr 

glabel OSInitAlloc
/* 80090608 0008BB28  1C E5 00 0C */	mulli r7, r5, 0xc
/* 8009060C 0008BB2C  90 6D 8C A4 */	stw r3, lbl_80247124@sda21(r13)
/* 80090610 0008BB30  39 00 00 00 */	li r8, 0
/* 80090614 0008BB34  90 AD 8C A0 */	stw r5, lbl_80247120@sda21(r13)
/* 80090618 0008BB38  38 C0 00 00 */	li r6, 0
/* 8009061C 0008BB3C  38 A0 FF FF */	li r5, -1
/* 80090620 0008BB40  38 60 00 00 */	li r3, 0
/* 80090624 0008BB44  48 00 00 20 */	b lbl_80090644
lbl_80090628:
/* 80090628 0008BB48  80 0D 8C A4 */	lwz r0, lbl_80247124@sda21(r13)
/* 8009062C 0008BB4C  39 08 00 01 */	addi r8, r8, 1
/* 80090630 0008BB50  7C A6 01 2E */	stwx r5, r6, r0
/* 80090634 0008BB54  7D 20 32 14 */	add r9, r0, r6
/* 80090638 0008BB58  38 C6 00 0C */	addi r6, r6, 0xc
/* 8009063C 0008BB5C  90 69 00 08 */	stw r3, 8(r9)
/* 80090640 0008BB60  90 69 00 04 */	stw r3, 4(r9)
lbl_80090644:
/* 80090644 0008BB64  80 0D 8C A0 */	lwz r0, lbl_80247120@sda21(r13)
/* 80090648 0008BB68  7C 08 00 00 */	cmpw r8, r0
/* 8009064C 0008BB6C  41 80 FF DC */	blt lbl_80090628
/* 80090650 0008BB70  80 6D 8C A4 */	lwz r3, lbl_80247124@sda21(r13)
/* 80090654 0008BB74  54 80 00 34 */	rlwinm r0, r4, 0, 0, 0x1a
/* 80090658 0008BB78  38 80 FF FF */	li r4, -1
/* 8009065C 0008BB7C  90 0D 8C 98 */	stw r0, lbl_80247118@sda21(r13)
/* 80090660 0008BB80  7C 63 3A 14 */	add r3, r3, r7
/* 80090664 0008BB84  38 03 00 1F */	addi r0, r3, 0x1f
/* 80090668 0008BB88  90 8D 82 38 */	stw r4, lbl_802466B8@sda21(r13)
/* 8009066C 0008BB8C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80090670 0008BB90  90 6D 8C 9C */	stw r3, lbl_8024711C@sda21(r13)
/* 80090674 0008BB94  4E 80 00 20 */	blr 

glabel OSCreateHeap
/* 80090678 0008BB98  80 CD 8C A0 */	lwz r6, lbl_80247120@sda21(r13)
/* 8009067C 0008BB9C  38 03 00 1F */	addi r0, r3, 0x1f
/* 80090680 0008BBA0  54 07 00 34 */	rlwinm r7, r0, 0, 0, 0x1a
/* 80090684 0008BBA4  54 84 00 34 */	rlwinm r4, r4, 0, 0, 0x1a
/* 80090688 0008BBA8  80 AD 8C A4 */	lwz r5, lbl_80247124@sda21(r13)
/* 8009068C 0008BBAC  38 60 00 00 */	li r3, 0
/* 80090690 0008BBB0  7C C9 03 A6 */	mtctr r6
/* 80090694 0008BBB4  2C 06 00 00 */	cmpwi r6, 0
/* 80090698 0008BBB8  40 81 00 44 */	ble lbl_800906DC
lbl_8009069C:
/* 8009069C 0008BBBC  80 05 00 00 */	lwz r0, 0(r5)
/* 800906A0 0008BBC0  2C 00 00 00 */	cmpwi r0, 0
/* 800906A4 0008BBC4  40 80 00 2C */	bge lbl_800906D0
/* 800906A8 0008BBC8  7C 07 20 50 */	subf r0, r7, r4
/* 800906AC 0008BBCC  38 80 00 00 */	li r4, 0
/* 800906B0 0008BBD0  90 05 00 00 */	stw r0, 0(r5)
/* 800906B4 0008BBD4  90 87 00 00 */	stw r4, 0(r7)
/* 800906B8 0008BBD8  90 87 00 04 */	stw r4, 4(r7)
/* 800906BC 0008BBDC  80 05 00 00 */	lwz r0, 0(r5)
/* 800906C0 0008BBE0  90 07 00 08 */	stw r0, 8(r7)
/* 800906C4 0008BBE4  90 E5 00 04 */	stw r7, 4(r5)
/* 800906C8 0008BBE8  90 85 00 08 */	stw r4, 8(r5)
/* 800906CC 0008BBEC  4E 80 00 20 */	blr 
lbl_800906D0:
/* 800906D0 0008BBF0  38 A5 00 0C */	addi r5, r5, 0xc
/* 800906D4 0008BBF4  38 63 00 01 */	addi r3, r3, 1
/* 800906D8 0008BBF8  42 00 FF C4 */	bdnz lbl_8009069C
lbl_800906DC:
/* 800906DC 0008BBFC  38 60 FF FF */	li r3, -1
/* 800906E0 0008BC00  4E 80 00 20 */	blr 