.include "macros.inc"

.section .text, "ax"

glabel TRK_strlen
/* 80171470 0016C990  38 83 FF FF */	addi r4, r3, -1
/* 80171474 0016C994  38 60 FF FF */	li r3, -1
.L_80171478:
/* 80171478 0016C998  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8017147C 0016C99C  38 63 00 01 */	addi r3, r3, 1
/* 80171480 0016C9A0  28 00 00 00 */	cmplwi r0, 0
/* 80171484 0016C9A4  40 82 FF F4 */	bne .L_80171478
/* 80171488 0016C9A8  4E 80 00 20 */	blr 

