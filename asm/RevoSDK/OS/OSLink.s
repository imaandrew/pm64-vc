.include "macros.inc"

.section .text, "ax"

glabel __OSModuleInit
/* 80095A38 00090F58  38 00 00 00 */	li r0, 0
/* 80095A3C 00090F5C  3C 60 80 00 */	lis r3, 0x800030CC@ha
/* 80095A40 00090F60  90 03 30 CC */	stw r0, 0x800030CC@l(r3)
/* 80095A44 00090F64  90 03 30 C8 */	stw r0, 0x30c8(r3)
/* 80095A48 00090F68  90 03 30 D0 */	stw r0, 0x30d0(r3)
/* 80095A4C 00090F6C  4E 80 00 20 */	blr 

