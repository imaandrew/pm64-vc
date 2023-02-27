.include "macros.inc"

.section .text, "ax"

glabel TRKMessageSend
/* 8016EF58 0016A478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016EF5C 0016A47C  7C 08 02 A6 */	mflr r0
/* 8016EF60 0016A480  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016EF64 0016A484  80 83 00 08 */	lwz r4, 8(r3)
/* 8016EF68 0016A488  38 63 00 10 */	addi r3, r3, 0x10
/* 8016EF6C 0016A48C  48 00 49 21 */	bl TRKWriteUARTN
/* 8016EF70 0016A490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016EF74 0016A494  38 60 00 00 */	li r3, 0
/* 8016EF78 0016A498  7C 08 03 A6 */	mtlr r0
/* 8016EF7C 0016A49C  38 21 00 10 */	addi r1, r1, 0x10
/* 8016EF80 0016A4A0  4E 80 00 20 */	blr 

