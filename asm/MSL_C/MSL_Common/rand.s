.include "macros.inc"

.section .text, "ax"

glabel rand
/* 80164EF0 00160410  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 80164EF4 00160414  80 8D 86 C0 */	lwz r4, lbl_80246B40@sda21(r13)
/* 80164EF8 00160418  38 03 4E 6D */	addi r0, r3, 0x41C64E6D@l
/* 80164EFC 0016041C  7C 64 01 D6 */	mullw r3, r4, r0
/* 80164F00 00160420  38 03 30 39 */	addi r0, r3, 0x3039
/* 80164F04 00160424  90 0D 86 C0 */	stw r0, lbl_80246B40@sda21(r13)
/* 80164F08 00160428  54 03 84 7E */	rlwinm r3, r0, 0x10, 0x11, 0x1f
/* 80164F0C 0016042C  4E 80 00 20 */	blr 

glabel srand
/* 80164F10 00160430  90 6D 86 C0 */	stw r3, lbl_80246B40@sda21(r13)
/* 80164F14 00160434  4E 80 00 20 */	blr