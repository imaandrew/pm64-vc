.include "macros.inc"

.section .text, "ax"

glabel IPCInit
/* 800BEDEC 000BA30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BEDF0 000BA310  7C 08 02 A6 */	mflr r0
/* 800BEDF4 000BA314  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BEDF8 000BA318  88 0D 91 C8 */	lbz r0, lbl_80247648@sda21(r13)
/* 800BEDFC 000BA31C  2C 00 00 00 */	cmpwi r0, 0
/* 800BEE00 000BA320  40 82 00 28 */	bne .L_800BEE28
/* 800BEE04 000BA324  4B FD A8 B1 */	bl __OSGetIPCBufferHi
/* 800BEE08 000BA328  90 6D 91 D8 */	stw r3, lbl_80247658@sda21(r13)
/* 800BEE0C 000BA32C  4B FD A8 B1 */	bl __OSGetIPCBufferLo
/* 800BEE10 000BA330  80 8D 91 D8 */	lwz r4, lbl_80247658@sda21(r13)
/* 800BEE14 000BA334  38 00 00 01 */	li r0, 1
/* 800BEE18 000BA338  90 6D 91 D4 */	stw r3, lbl_80247654@sda21(r13)
/* 800BEE1C 000BA33C  90 8D 91 D0 */	stw r4, lbl_80247650@sda21(r13)
/* 800BEE20 000BA340  90 6D 91 CC */	stw r3, lbl_8024764C@sda21(r13)
/* 800BEE24 000BA344  98 0D 91 C8 */	stb r0, lbl_80247648@sda21(r13)
.L_800BEE28:
/* 800BEE28 000BA348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BEE2C 000BA34C  7C 08 03 A6 */	mtlr r0
/* 800BEE30 000BA350  38 21 00 10 */	addi r1, r1, 0x10
/* 800BEE34 000BA354  4E 80 00 20 */	blr 

glabel IPCReadReg
/* 800BEE38 000BA358  54 60 10 3A */	slwi r0, r3, 2
/* 800BEE3C 000BA35C  3C 60 CD 00 */	lis r3, 0xcd00
/* 800BEE40 000BA360  7C 63 00 2E */	lwzx r3, r3, r0
/* 800BEE44 000BA364  4E 80 00 20 */	blr 

glabel IPCWriteReg
/* 800BEE48 000BA368  54 60 10 3A */	slwi r0, r3, 2
/* 800BEE4C 000BA36C  3C 60 CD 00 */	lis r3, 0xcd00
/* 800BEE50 000BA370  7C 83 01 2E */	stwx r4, r3, r0
/* 800BEE54 000BA374  4E 80 00 20 */	blr 

glabel IPCGetBufferHi
/* 800BEE58 000BA378  80 6D 91 D0 */	lwz r3, lbl_80247650@sda21(r13)
/* 800BEE5C 000BA37C  4E 80 00 20 */	blr 

glabel IPCGetBufferLo
/* 800BEE60 000BA380  80 6D 91 CC */	lwz r3, lbl_8024764C@sda21(r13)
/* 800BEE64 000BA384  4E 80 00 20 */	blr 

glabel IPCSetBufferLo
/* 800BEE68 000BA388  90 6D 91 CC */	stw r3, lbl_8024764C@sda21(r13)
/* 800BEE6C 000BA38C  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247648
	.skip 0x4

glabel lbl_8024764C
	.skip 0x4

glabel lbl_80247650
	.skip 0x4

glabel lbl_80247654
	.skip 0x4

glabel lbl_80247658
	.skip 0x8
