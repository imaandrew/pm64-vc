glabel treeKill
/* 8003EA80 00039FA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003EA84 00039FA4  7C 08 02 A6 */	mflr r0
/* 8003EA88 00039FA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003EA8C 00039FAC  39 61 00 30 */	addi r11, r1, 0x30
/* 8003EA90 00039FB0  48 11 DE B5 */	bl _savegpr_27
/* 8003EA94 00039FB4  3C 83 00 10 */	addis r4, r3, 0x10
/* 8003EA98 00039FB8  7C 7E 1B 78 */	mr r30, r3
/* 8003EA9C 00039FBC  83 E4 16 94 */	lwz r31, 0x1694(r4)
/* 8003EAA0 00039FC0  3B A0 00 00 */	li r29, 0
/* 8003EAA4 00039FC4  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 8003EAA8 00039FC8  2C 04 00 00 */	cmpwi r4, 0
/* 8003EAAC 00039FCC  41 82 00 C4 */	beq lbl_8003EB70
/* 8003EAB0 00039FD0  48 00 01 E1 */	bl treeKillNodes
/* 8003EAB4 00039FD4  83 9F 00 68 */	lwz r28, 0x68(r31)
/* 8003EAB8 00039FD8  7C 7D 1B 78 */	mr r29, r3
/* 8003EABC 00039FDC  80 1C 00 04 */	lwz r0, 4(r28)
/* 8003EAC0 00039FE0  2C 00 00 00 */	cmpwi r0, 0
/* 8003EAC4 00039FE4  41 82 00 5C */	beq lbl_8003EB20
/* 8003EAC8 00039FE8  3C 7E 00 10 */	addis r3, r30, 0x10
/* 8003EACC 00039FEC  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8003EAD0 00039FF0  83 63 16 94 */	lwz r27, 0x1694(r3)
/* 8003EAD4 00039FF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8003EAD8 00039FF8  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8003EADC 00039FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003EAE0 0003A000  80 9B 00 68 */	lwz r4, 0x68(r27)
/* 8003EAE4 0003A004  2C 04 00 00 */	cmpwi r4, 0
/* 8003EAE8 0003A008  41 82 00 18 */	beq lbl_8003EB00
/* 8003EAEC 0003A00C  7F C3 F3 78 */	mr r3, r30
/* 8003EAF0 0003A010  38 C1 00 10 */	addi r6, r1, 0x10
/* 8003EAF4 0003A014  38 E1 00 14 */	addi r7, r1, 0x14
/* 8003EAF8 0003A018  38 A0 00 10 */	li r5, 0x10
/* 8003EAFC 0003A01C  48 00 17 C9 */	bl treePrintNode
lbl_8003EB00:
/* 8003EB00 0003A020  80 9B 00 6C */	lwz r4, 0x6c(r27)
/* 8003EB04 0003A024  2C 04 00 00 */	cmpwi r4, 0
/* 8003EB08 0003A028  41 82 00 18 */	beq lbl_8003EB20
/* 8003EB0C 0003A02C  7F C3 F3 78 */	mr r3, r30
/* 8003EB10 0003A030  38 C1 00 10 */	addi r6, r1, 0x10
/* 8003EB14 0003A034  38 E1 00 14 */	addi r7, r1, 0x14
/* 8003EB18 0003A038  38 A0 00 10 */	li r5, 0x10
/* 8003EB1C 0003A03C  48 00 17 A9 */	bl treePrintNode
lbl_8003EB20:
/* 8003EB20 0003A040  3C 7E 00 10 */	addis r3, r30, 0x10
/* 8003EB24 0003A044  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 8003EB28 0003A048  80 63 16 94 */	lwz r3, 0x1694(r3)
/* 8003EB2C 0003A04C  38 84 00 50 */	addi r4, r4, 0x50
/* 8003EB30 0003A050  80 03 00 04 */	lwz r0, 4(r3)
/* 8003EB34 0003A054  7C 04 00 50 */	subf r0, r4, r0
/* 8003EB38 0003A058  90 03 00 04 */	stw r0, 4(r3)
/* 8003EB3C 0003A05C  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 8003EB40 0003A060  80 04 00 04 */	lwz r0, 4(r4)
/* 8003EB44 0003A064  2C 00 00 00 */	cmpwi r0, 0
/* 8003EB48 0003A068  41 82 00 0C */	beq lbl_8003EB54
/* 8003EB4C 0003A06C  7F C3 F3 78 */	mr r3, r30
/* 8003EB50 0003A070  4B FF EE 15 */	bl cpuHeapFree
lbl_8003EB54:
/* 8003EB54 0003A074  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8003EB58 0003A078  4B FF EF E9 */	bl cpuTreeFree
/* 8003EB5C 0003A07C  2C 03 00 00 */	cmpwi r3, 0
/* 8003EB60 0003A080  40 82 00 0C */	bne lbl_8003EB6C
/* 8003EB64 0003A084  38 60 00 00 */	li r3, 0
/* 8003EB68 0003A088  48 00 01 10 */	b lbl_8003EC78
lbl_8003EB6C:
/* 8003EB6C 0003A08C  3B BD 00 01 */	addi r29, r29, 1
lbl_8003EB70:
/* 8003EB70 0003A090  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 8003EB74 0003A094  2C 04 00 00 */	cmpwi r4, 0
/* 8003EB78 0003A098  41 82 00 C8 */	beq lbl_8003EC40
/* 8003EB7C 0003A09C  7F C3 F3 78 */	mr r3, r30
/* 8003EB80 0003A0A0  48 00 01 11 */	bl treeKillNodes
/* 8003EB84 0003A0A4  83 7F 00 6C */	lwz r27, 0x6c(r31)
/* 8003EB88 0003A0A8  7F BD 1A 14 */	add r29, r29, r3
/* 8003EB8C 0003A0AC  80 1B 00 04 */	lwz r0, 4(r27)
/* 8003EB90 0003A0B0  2C 00 00 00 */	cmpwi r0, 0
/* 8003EB94 0003A0B4  41 82 00 5C */	beq lbl_8003EBF0
/* 8003EB98 0003A0B8  3C 7E 00 10 */	addis r3, r30, 0x10
/* 8003EB9C 0003A0BC  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8003EBA0 0003A0C0  83 83 16 94 */	lwz r28, 0x1694(r3)
/* 8003EBA4 0003A0C4  90 01 00 08 */	stw r0, 8(r1)
/* 8003EBA8 0003A0C8  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8003EBAC 0003A0CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003EBB0 0003A0D0  80 9C 00 68 */	lwz r4, 0x68(r28)
/* 8003EBB4 0003A0D4  2C 04 00 00 */	cmpwi r4, 0
/* 8003EBB8 0003A0D8  41 82 00 18 */	beq lbl_8003EBD0
/* 8003EBBC 0003A0DC  7F C3 F3 78 */	mr r3, r30
/* 8003EBC0 0003A0E0  38 C1 00 08 */	addi r6, r1, 8
/* 8003EBC4 0003A0E4  38 E1 00 0C */	addi r7, r1, 0xc
/* 8003EBC8 0003A0E8  38 A0 00 10 */	li r5, 0x10
/* 8003EBCC 0003A0EC  48 00 16 F9 */	bl treePrintNode
lbl_8003EBD0:
/* 8003EBD0 0003A0F0  80 9C 00 6C */	lwz r4, 0x6c(r28)
/* 8003EBD4 0003A0F4  2C 04 00 00 */	cmpwi r4, 0
/* 8003EBD8 0003A0F8  41 82 00 18 */	beq lbl_8003EBF0
/* 8003EBDC 0003A0FC  7F C3 F3 78 */	mr r3, r30
/* 8003EBE0 0003A100  38 C1 00 08 */	addi r6, r1, 8
/* 8003EBE4 0003A104  38 E1 00 0C */	addi r7, r1, 0xc
/* 8003EBE8 0003A108  38 A0 00 10 */	li r5, 0x10
/* 8003EBEC 0003A10C  48 00 16 D9 */	bl treePrintNode
lbl_8003EBF0:
/* 8003EBF0 0003A110  3C 7E 00 10 */	addis r3, r30, 0x10
/* 8003EBF4 0003A114  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 8003EBF8 0003A118  80 63 16 94 */	lwz r3, 0x1694(r3)
/* 8003EBFC 0003A11C  38 84 00 50 */	addi r4, r4, 0x50
/* 8003EC00 0003A120  80 03 00 04 */	lwz r0, 4(r3)
/* 8003EC04 0003A124  7C 04 00 50 */	subf r0, r4, r0
/* 8003EC08 0003A128  90 03 00 04 */	stw r0, 4(r3)
/* 8003EC0C 0003A12C  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 8003EC10 0003A130  80 04 00 04 */	lwz r0, 4(r4)
/* 8003EC14 0003A134  2C 00 00 00 */	cmpwi r0, 0
/* 8003EC18 0003A138  41 82 00 0C */	beq lbl_8003EC24
/* 8003EC1C 0003A13C  7F C3 F3 78 */	mr r3, r30
/* 8003EC20 0003A140  4B FF ED 45 */	bl cpuHeapFree
lbl_8003EC24:
/* 8003EC24 0003A144  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8003EC28 0003A148  4B FF EF 19 */	bl cpuTreeFree
/* 8003EC2C 0003A14C  2C 03 00 00 */	cmpwi r3, 0
/* 8003EC30 0003A150  40 82 00 0C */	bne lbl_8003EC3C
/* 8003EC34 0003A154  38 60 00 00 */	li r3, 0
/* 8003EC38 0003A158  48 00 00 40 */	b lbl_8003EC78
lbl_8003EC3C:
/* 8003EC3C 0003A15C  3B BD 00 01 */	addi r29, r29, 1
lbl_8003EC40:
/* 8003EC40 0003A160  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8003EC44 0003A164  3C 7E 00 10 */	addis r3, r30, 0x10
/* 8003EC48 0003A168  38 63 16 94 */	addi r3, r3, 0x1694
/* 8003EC4C 0003A16C  7C 1D 00 50 */	subf r0, r29, r0
/* 8003EC50 0003A170  B0 1F 00 00 */	sth r0, 0(r31)
/* 8003EC54 0003A174  48 04 75 61 */	bl xlHeapFree
/* 8003EC58 0003A178  2C 03 00 00 */	cmpwi r3, 0
/* 8003EC5C 0003A17C  40 82 00 0C */	bne lbl_8003EC68
/* 8003EC60 0003A180  38 60 00 00 */	li r3, 0
/* 8003EC64 0003A184  48 00 00 14 */	b lbl_8003EC78
lbl_8003EC68:
/* 8003EC68 0003A188  3C 7E 00 10 */	addis r3, r30, 0x10
/* 8003EC6C 0003A18C  38 00 00 00 */	li r0, 0
/* 8003EC70 0003A190  90 03 16 94 */	stw r0, 0x1694(r3)
/* 8003EC74 0003A194  38 60 00 01 */	li r3, 1
lbl_8003EC78:
/* 8003EC78 0003A198  39 61 00 30 */	addi r11, r1, 0x30
/* 8003EC7C 0003A19C  48 11 DD 15 */	bl _restgpr_27
/* 8003EC80 0003A1A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003EC84 0003A1A4  7C 08 03 A6 */	mtlr r0
/* 8003EC88 0003A1A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8003EC8C 0003A1AC  4E 80 00 20 */	blr 
