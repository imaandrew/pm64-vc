glabel cpuCompile_LW
/* 80034CB4 000301D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80034CB8 000301D8  7C 08 02 A6 */	mflr r0
/* 80034CBC 000301DC  3C A0 30 00 */	lis r5, 0x30000028@ha
/* 80034CC0 000301E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80034CC4 000301E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80034CC8 000301E8  7C 9F 23 78 */	mr r31, r4
/* 80034CCC 000301EC  38 85 00 28 */	addi r4, r5, 0x30000028@l
/* 80034CD0 000301F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80034CD4 000301F4  7C 7E 1B 78 */	mr r30, r3
/* 80034CD8 000301F8  38 61 00 08 */	addi r3, r1, 8
/* 80034CDC 000301FC  48 05 12 6D */	bl xlHeapTake
/* 80034CE0 00030200  2C 03 00 00 */	cmpwi r3, 0
/* 80034CE4 00030204  40 82 00 0C */	bne lbl_80034CF0
/* 80034CE8 00030208  38 60 00 00 */	li r3, 0
/* 80034CEC 0003020C  48 00 00 B4 */	b lbl_80034DA0
lbl_80034CF0:
/* 80034CF0 00030210  80 01 00 08 */	lwz r0, 8(r1)
/* 80034CF4 00030214  3C E0 7C C6 */	lis r7, 0x7CC6382E@ha
/* 80034CF8 00030218  3C 60 54 C6 */	lis r3, 0x54C6103A@ha
/* 80034CFC 0003021C  3C C0 80 E6 */	lis r6, 0x80E60008@ha
/* 80034D00 00030220  90 1F 00 00 */	stw r0, 0(r31)
/* 80034D04 00030224  38 1E 0B 60 */	addi r0, r30, 0xb60
/* 80034D08 00030228  7D 1E 00 50 */	subf r8, r30, r0
/* 80034D0C 0003022C  39 47 38 2E */	addi r10, r7, 0x7CC6382E@l
/* 80034D10 00030230  81 21 00 08 */	lwz r9, 8(r1)
/* 80034D14 00030234  38 03 10 3A */	addi r0, r3, 0x54C6103A@l
/* 80034D18 00030238  3C 60 4E 80 */	lis r3, 0x4E800020@ha
/* 80034D1C 0003023C  3C A0 7C A5 */	lis r5, 0x7CA53A14@ha
/* 80034D20 00030240  90 09 00 00 */	stw r0, 0(r9)
/* 80034D24 00030244  3C 08 38 E3 */	addis r0, r8, 0x38e3
/* 80034D28 00030248  39 05 3A 14 */	addi r8, r5, 0x7CA53A14@l
/* 80034D2C 0003024C  39 26 00 08 */	addi r9, r6, 0x80E60008@l
/* 80034D30 00030250  81 61 00 08 */	lwz r11, 8(r1)
/* 80034D34 00030254  38 E6 00 04 */	addi r7, r6, 4
/* 80034D38 00030258  3C 80 80 E7 */	lis r4, 0x80E70004@ha
/* 80034D3C 0003025C  38 A5 38 2E */	addi r5, r5, 0x382e
/* 80034D40 00030260  90 0B 00 04 */	stw r0, 4(r11)
/* 80034D44 00030264  38 03 00 20 */	addi r0, r3, 0x4E800020@l
/* 80034D48 00030268  38 C4 00 04 */	addi r6, r4, 0x80E70004@l
/* 80034D4C 0003026C  38 80 00 24 */	li r4, 0x24
/* 80034D50 00030270  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D54 00030274  91 43 00 08 */	stw r10, 8(r3)
/* 80034D58 00030278  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D5C 0003027C  91 23 00 0C */	stw r9, 0xc(r3)
/* 80034D60 00030280  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D64 00030284  91 03 00 10 */	stw r8, 0x10(r3)
/* 80034D68 00030288  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D6C 0003028C  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80034D70 00030290  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D74 00030294  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80034D78 00030298  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D7C 0003029C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80034D80 000302A0  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D84 000302A4  90 03 00 20 */	stw r0, 0x20(r3)
/* 80034D88 000302A8  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D8C 000302AC  48 05 BF 11 */	bl DCStoreRange
/* 80034D90 000302B0  80 61 00 08 */	lwz r3, 8(r1)
/* 80034D94 000302B4  38 80 00 24 */	li r4, 0x24
/* 80034D98 000302B8  48 05 BF 8D */	bl ICInvalidateRange
/* 80034D9C 000302BC  38 60 00 01 */	li r3, 1
lbl_80034DA0:
/* 80034DA0 000302C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80034DA4 000302C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80034DA8 000302C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80034DAC 000302CC  7C 08 03 A6 */	mtlr r0
/* 80034DB0 000302D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80034DB4 000302D4  4E 80 00 20 */	blr 
