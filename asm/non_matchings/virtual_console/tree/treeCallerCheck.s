glabel treeCallerCheck
/* 8003E750 00039C70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003E754 00039C74  7C 08 02 A6 */	mflr r0
/* 8003E758 00039C78  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003E75C 00039C7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8003E760 00039C80  48 11 E1 D5 */	bl _savegpr_23
/* 8003E764 00039C84  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8003E768 00039C88  7C 79 1B 78 */	mr r25, r3
/* 8003E76C 00039C8C  7C 9A 23 78 */	mr r26, r4
/* 8003E770 00039C90  7C BB 2B 78 */	mr r27, r5
/* 8003E774 00039C94  2C 00 00 00 */	cmpwi r0, 0
/* 8003E778 00039C98  7C DC 33 78 */	mr r28, r6
/* 8003E77C 00039C9C  7C FD 3B 78 */	mr r29, r7
/* 8003E780 00039CA0  40 82 00 0C */	bne lbl_8003E78C
/* 8003E784 00039CA4  38 60 00 00 */	li r3, 0
/* 8003E788 00039CA8  48 00 00 B8 */	b lbl_8003E840
lbl_8003E78C:
/* 8003E78C 00039CAC  83 E4 00 18 */	lwz r31, 0x18(r4)
/* 8003E790 00039CB0  2C 1F 00 00 */	cmpwi r31, 0
/* 8003E794 00039CB4  41 82 00 A8 */	beq lbl_8003E83C
/* 8003E798 00039CB8  3B C0 00 00 */	li r30, 0
/* 8003E79C 00039CBC  3B 00 00 00 */	li r24, 0
/* 8003E7A0 00039CC0  48 00 00 90 */	b lbl_8003E830
lbl_8003E7A4:
/* 8003E7A4 00039CC4  80 BF 00 00 */	lwz r5, 0(r31)
/* 8003E7A8 00039CC8  80 DF 00 04 */	lwz r6, 4(r31)
/* 8003E7AC 00039CCC  7C 05 E0 00 */	cmpw r5, r28
/* 8003E7B0 00039CD0  41 80 00 78 */	blt lbl_8003E828
/* 8003E7B4 00039CD4  7C 05 E8 00 */	cmpw r5, r29
/* 8003E7B8 00039CD8  41 81 00 70 */	bgt lbl_8003E828
/* 8003E7BC 00039CDC  2C 06 00 00 */	cmpwi r6, 0
/* 8003E7C0 00039CE0  41 82 00 68 */	beq lbl_8003E828
/* 8003E7C4 00039CE4  7C 1B 00 D0 */	neg r0, r27
/* 8003E7C8 00039CE8  54 A3 84 3E */	srwi r3, r5, 0x10
/* 8003E7CC 00039CEC  7C 04 DB 78 */	or r4, r0, r27
/* 8003E7D0 00039CF0  54 84 0F FE */	srwi r4, r4, 0x1f
/* 8003E7D4 00039CF4  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8003E7D8 00039CF8  38 84 00 02 */	addi r4, r4, 2
/* 8003E7DC 00039CFC  64 63 3C A0 */	oris r3, r3, 0x3ca0
/* 8003E7E0 00039D00  54 85 10 3A */	slwi r5, r4, 2
/* 8003E7E4 00039D04  64 00 60 A5 */	oris r0, r0, 0x60a5
/* 8003E7E8 00039D08  7E E5 30 50 */	subf r23, r5, r6
/* 8003E7EC 00039D0C  38 80 00 10 */	li r4, 0x10
/* 8003E7F0 00039D10  90 77 00 00 */	stw r3, 0(r23)
/* 8003E7F4 00039D14  7E E3 BB 78 */	mr r3, r23
/* 8003E7F8 00039D18  90 17 00 04 */	stw r0, 4(r23)
/* 8003E7FC 00039D1C  80 19 0B 50 */	lwz r0, 0xb50(r25)
/* 8003E800 00039D20  7C 06 00 50 */	subf r0, r6, r0
/* 8003E804 00039D24  54 00 01 BA */	rlwinm r0, r0, 0, 6, 0x1d
/* 8003E808 00039D28  64 00 48 00 */	oris r0, r0, 0x4800
/* 8003E80C 00039D2C  60 00 00 01 */	ori r0, r0, 1
/* 8003E810 00039D30  90 06 00 00 */	stw r0, 0(r6)
/* 8003E814 00039D34  93 1F 00 04 */	stw r24, 4(r31)
/* 8003E818 00039D38  48 05 24 85 */	bl DCStoreRange
/* 8003E81C 00039D3C  7E E3 BB 78 */	mr r3, r23
/* 8003E820 00039D40  38 80 00 10 */	li r4, 0x10
/* 8003E824 00039D44  48 05 25 01 */	bl ICInvalidateRange
lbl_8003E828:
/* 8003E828 00039D48  3B FF 00 08 */	addi r31, r31, 8
/* 8003E82C 00039D4C  3B DE 00 01 */	addi r30, r30, 1
lbl_8003E830:
/* 8003E830 00039D50  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8003E834 00039D54  7C 1E 00 00 */	cmpw r30, r0
/* 8003E838 00039D58  41 80 FF 6C */	blt lbl_8003E7A4
lbl_8003E83C:
/* 8003E83C 00039D5C  38 60 00 01 */	li r3, 1
lbl_8003E840:
/* 8003E840 00039D60  39 61 00 30 */	addi r11, r1, 0x30
/* 8003E844 00039D64  48 11 E1 3D */	bl _restgpr_23
/* 8003E848 00039D68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003E84C 00039D6C  7C 08 03 A6 */	mtlr r0
/* 8003E850 00039D70  38 21 00 30 */	addi r1, r1, 0x30
/* 8003E854 00039D74  4E 80 00 20 */	blr
