glabel cpuSetXPC
/* 8003CF60 00038480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003CF64 00038484  7C 08 02 A6 */	mflr r0
/* 8003CF68 00038488  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003CF6C 0003848C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CF70 00038490  48 11 F9 D1 */	bl _savegpr_26
/* 8003CF74 00038494  3C 80 80 18 */	lis r4, lbl_8017C0F0@ha
/* 8003CF78 00038498  7C 7A 1B 78 */	mr r26, r3
/* 8003CF7C 0003849C  7C DB 33 78 */	mr r27, r6
/* 8003CF80 000384A0  7C FD 3B 78 */	mr r29, r7
/* 8003CF84 000384A4  7D 1C 43 78 */	mr r28, r8
/* 8003CF88 000384A8  7D 3F 4B 78 */	mr r31, r9
/* 8003CF8C 000384AC  7D 5E 53 78 */	mr r30, r10
/* 8003CF90 000384B0  38 84 C0 F0 */	addi r4, r4, lbl_8017C0F0@l
/* 8003CF94 000384B4  48 04 A2 A1 */	bl xlObjectTest
/* 8003CF98 000384B8  2C 03 00 00 */	cmpwi r3, 0
/* 8003CF9C 000384BC  40 82 00 0C */	bne lbl_8003CFA8
/* 8003CFA0 000384C0  38 60 00 00 */	li r3, 0
/* 8003CFA4 000384C4  48 00 00 28 */	b lbl_8003CFCC
lbl_8003CFA8:
/* 8003CFA8 000384C8  80 1A 00 00 */	lwz r0, 0(r26)
/* 8003CFAC 000384CC  38 60 00 01 */	li r3, 1
/* 8003CFB0 000384D0  93 7A 00 20 */	stw r27, 0x20(r26)
/* 8003CFB4 000384D4  60 00 00 04 */	ori r0, r0, 4
/* 8003CFB8 000384D8  90 1A 00 00 */	stw r0, 0(r26)
/* 8003CFBC 000384DC  93 9A 00 0C */	stw r28, 0xc(r26)
/* 8003CFC0 000384E0  93 BA 00 08 */	stw r29, 8(r26)
/* 8003CFC4 000384E4  93 DA 00 14 */	stw r30, 0x14(r26)
/* 8003CFC8 000384E8  93 FA 00 10 */	stw r31, 0x10(r26)
lbl_8003CFCC:
/* 8003CFCC 000384EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CFD0 000384F0  48 11 F9 BD */	bl _restgpr_26
/* 8003CFD4 000384F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003CFD8 000384F8  7C 08 03 A6 */	mtlr r0
/* 8003CFDC 000384FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003CFE0 00038500  4E 80 00 20 */	blr

