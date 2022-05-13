.include "macros.inc"

.section .text, "ax"

glabel TRK_flush_cache
/* 80171380 0016C8A0  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 80171384 0016C8A4  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 80171388 0016C8A8  7C A5 18 38 */	and r5, r5, r3
/* 8017138C 0016C8AC  7C 65 18 50 */	subf r3, r5, r3
/* 80171390 0016C8B0  7C 84 1A 14 */	add r4, r4, r3
lbl_80171394:
/* 80171394 0016C8B4  7C 00 28 6C */	dcbst 0, r5
/* 80171398 0016C8B8  7C 00 28 AC */	dcbf 0, r5
/* 8017139C 0016C8BC  7C 00 04 AC */	sync 0
/* 801713A0 0016C8C0  7C 00 2F AC */	icbi 0, r5
/* 801713A4 0016C8C4  30 A5 00 08 */	addic r5, r5, 8
/* 801713A8 0016C8C8  34 84 FF F8 */	addic. r4, r4, -8
/* 801713AC 0016C8CC  40 80 FF E8 */	bge lbl_80171394
/* 801713B0 0016C8D0  4C 00 01 2C */	isync 
/* 801713B4 0016C8D4  4E 80 00 20 */	blr 
