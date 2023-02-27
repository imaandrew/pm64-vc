.include "macros.inc"

.section .text, "ax"

glabel MEMAllocFromAllocator
/* 800B7ED8 000B33F8  80 A3 00 00 */	lwz r5, 0(r3)
/* 800B7EDC 000B33FC  81 85 00 00 */	lwz r12, 0(r5)
/* 800B7EE0 000B3400  7D 89 03 A6 */	mtctr r12
/* 800B7EE4 000B3404  4E 80 04 20 */	bctr 

glabel MEMFreeToAllocator
/* 800B7EE8 000B3408  80 A3 00 00 */	lwz r5, 0(r3)
/* 800B7EEC 000B340C  81 85 00 04 */	lwz r12, 4(r5)
/* 800B7EF0 000B3410  7D 89 03 A6 */	mtctr r12
/* 800B7EF4 000B3414  4E 80 04 20 */	bctr 

glabel MEMInitAllocatorForExpHeap
/* 800B7EF8 000B3418  38 C2 87 88 */	addi r6, r2, lbl_80247F88@sda21
/* 800B7EFC 000B341C  38 00 00 00 */	li r0, 0
/* 800B7F00 000B3420  90 C3 00 00 */	stw r6, 0(r3)
/* 800B7F04 000B3424  90 83 00 04 */	stw r4, 4(r3)
/* 800B7F08 000B3428  90 A3 00 08 */	stw r5, 8(r3)
/* 800B7F0C 000B342C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800B7F10 000B3430  4E 80 00 20 */	blr 

glabel MEMInitAllocatorForFrmHeap
/* 800B7F14 000B3434  38 C2 87 90 */	addi r6, r2, lbl_80247F90@sda21
/* 800B7F18 000B3438  38 00 00 00 */	li r0, 0
/* 800B7F1C 000B343C  90 C3 00 00 */	stw r6, 0(r3)
/* 800B7F20 000B3440  90 83 00 04 */	stw r4, 4(r3)
/* 800B7F24 000B3444  90 A3 00 08 */	stw r5, 8(r3)
/* 800B7F28 000B3448  90 03 00 0C */	stw r0, 0xc(r3)
/* 800B7F2C 000B344C  4E 80 00 20 */	blr 

