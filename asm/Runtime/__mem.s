.include "macros.inc"

.section .text, "ax"

glabel strlen
/* 8015BFE4 00157504  38 83 FF FF */	addi r4, r3, -1
/* 8015BFE8 00157508  38 60 FF FF */	li r3, -1
.L_8015BFEC:
/* 8015BFEC 0015750C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8015BFF0 00157510  38 63 00 01 */	addi r3, r3, 1
/* 8015BFF4 00157514  2C 00 00 00 */	cmpwi r0, 0
/* 8015BFF8 00157518  40 82 FF F4 */	bne .L_8015BFEC
/* 8015BFFC 0015751C  4E 80 00 20 */	blr
