glabel cpuUpdateLoadStoreBase
/* 800326BC 0002DBDC  2C 05 00 00 */	cmpwi r5, 0
/* 800326C0 0002DBE0  40 82 00 0C */	bne lbl_800326CC
/* 800326C4 0002DBE4  38 60 00 00 */	li r3, 0
/* 800326C8 0002DBE8  4E 80 00 20 */	blr 
lbl_800326CC:
/* 800326CC 0002DBEC  3C A3 00 10 */	addis r5, r3, 0x10
/* 800326D0 0002DBF0  80 05 24 70 */	lwz r0, 0x2470(r5)
/* 800326D4 0002DBF4  2C 00 00 00 */	cmpwi r0, 0
/* 800326D8 0002DBF8  40 82 00 0C */	bne lbl_800326E4
/* 800326DC 0002DBFC  38 60 00 00 */	li r3, 0
/* 800326E0 0002DC00  4E 80 00 20 */	blr 
lbl_800326E4:
/* 800326E4 0002DC04  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 800326E8 0002DC08  39 20 00 00 */	li r9, 0
/* 800326EC 0002DC0C  80 08 00 08 */	lwz r0, 8(r8)
/* 800326F0 0002DC10  7C 09 03 A6 */	mtctr r0
/* 800326F4 0002DC14  2C 00 00 00 */	cmpwi r0, 0
/* 800326F8 0002DC18  40 81 00 28 */	ble lbl_80032720
lbl_800326FC:
/* 800326FC 0002DC1C  80 08 00 0C */	lwz r0, 0xc(r8)
/* 80032700 0002DC20  7C A0 4A 14 */	add r5, r0, r9
/* 80032704 0002DC24  80 05 00 04 */	lwz r0, 4(r5)
/* 80032708 0002DC28  7C 04 00 00 */	cmpw r4, r0
/* 8003270C 0002DC2C  40 82 00 0C */	bne lbl_80032718
/* 80032710 0002DC30  38 00 00 00 */	li r0, 0
/* 80032714 0002DC34  48 00 00 10 */	b lbl_80032724
lbl_80032718:
/* 80032718 0002DC38  39 29 00 08 */	addi r9, r9, 8
/* 8003271C 0002DC3C  42 00 FF E0 */	bdnz lbl_800326FC
lbl_80032720:
/* 80032720 0002DC40  38 00 00 01 */	li r0, 1
lbl_80032724:
/* 80032724 0002DC44  2C 00 00 00 */	cmpwi r0, 0
/* 80032728 0002DC48  40 82 00 0C */	bne lbl_80032734
/* 8003272C 0002DC4C  38 60 00 00 */	li r3, 0
/* 80032730 0002DC50  4E 80 00 20 */	blr 
lbl_80032734:
/* 80032734 0002DC54  7C 06 38 00 */	cmpw r6, r7
/* 80032738 0002DC58  3C 83 00 10 */	addis r4, r3, 0x10
/* 8003273C 0002DC5C  38 00 00 01 */	li r0, 1
/* 80032740 0002DC60  90 04 24 88 */	stw r0, 0x2488(r4)
/* 80032744 0002DC64  40 82 00 14 */	bne lbl_80032758
/* 80032748 0002DC68  38 00 FF FF */	li r0, -1
/* 8003274C 0002DC6C  38 60 00 00 */	li r3, 0
/* 80032750 0002DC70  90 04 24 8C */	stw r0, 0x248c(r4)
/* 80032754 0002DC74  4E 80 00 20 */	blr 
lbl_80032758:
/* 80032758 0002DC78  80 04 24 8C */	lwz r0, 0x248c(r4)
/* 8003275C 0002DC7C  7C 00 30 00 */	cmpw r0, r6
/* 80032760 0002DC80  41 82 00 10 */	beq lbl_80032770
/* 80032764 0002DC84  90 C4 24 8C */	stw r6, 0x248c(r4)
/* 80032768 0002DC88  38 60 00 00 */	li r3, 0
/* 8003276C 0002DC8C  4E 80 00 20 */	blr 
lbl_80032770:
/* 80032770 0002DC90  38 60 00 01 */	li r3, 1
/* 80032774 0002DC94  4E 80 00 20 */	blr 
