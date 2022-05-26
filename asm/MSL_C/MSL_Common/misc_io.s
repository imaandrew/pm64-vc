.include "macros.inc"

.section .text, "ax"

glabel __stdio_atexit
/* 8016281C 0015DD3C  3C 60 80 16 */	lis r3, __close_all@ha
/* 80162820 0015DD40  38 63 FA 40 */	addi r3, r3, __close_all@l
/* 80162824 0015DD44  90 6D 93 54 */	stw r3, lbl_802477D4@sda21(r13)
/* 80162828 0015DD48  4E 80 00 20 */	blr