.include "macros.inc"

.section .text, "ax"

glabel SystemCallVector
/* 80097854 00092D74  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 80097858 00092D78  61 2A 00 08 */	ori r10, r9, 8
/* 8009785C 00092D7C  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 80097860 00092D80  4C 00 01 2C */	isync 
/* 80097864 00092D84  7C 00 04 AC */	sync 0
/* 80097868 00092D88  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 8009786C 00092D8C  4C 00 00 64 */	rfi 

glabel __OSSystemCallVectorEnd
/* 80097870 00092D90  60 00 00 00 */	nop 

glabel __OSInitSystemCall
/* 80097874 00092D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80097878 00092D98  7C 08 02 A6 */	mflr r0
/* 8009787C 00092D9C  3C 80 80 09 */	lis r4, SystemCallVector@ha
/* 80097880 00092DA0  3C A0 80 09 */	lis r5, __OSSystemCallVectorEnd@ha
/* 80097884 00092DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80097888 00092DA8  38 84 78 54 */	addi r4, r4, SystemCallVector@l
/* 8009788C 00092DAC  38 A5 78 70 */	addi r5, r5, __OSSystemCallVectorEnd@l
/* 80097890 00092DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80097894 00092DB4  3F E0 80 00 */	lis r31, 0x80000C00@ha
/* 80097898 00092DB8  38 7F 0C 00 */	addi r3, r31, 0x80000C00@l
/* 8009789C 00092DBC  7C A4 28 50 */	subf r5, r4, r5
/* 800978A0 00092DC0  4B F6 CA 99 */	bl memcpy
/* 800978A4 00092DC4  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 800978A8 00092DC8  38 80 01 00 */	li r4, 0x100
/* 800978AC 00092DCC  4B FF 94 21 */	bl DCFlushRangeNoSync
/* 800978B0 00092DD0  7C 00 04 AC */	sync 0
/* 800978B4 00092DD4  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 800978B8 00092DD8  38 80 01 00 */	li r4, 0x100
/* 800978BC 00092DDC  4B FF 94 69 */	bl ICInvalidateRange
/* 800978C0 00092DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800978C4 00092DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800978C8 00092DE8  7C 08 03 A6 */	mtlr r0
/* 800978CC 00092DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800978D0 00092DF0  4E 80 00 20 */	blr 
