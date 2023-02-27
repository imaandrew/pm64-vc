.include "macros.inc"

.section .text, "ax"

glabel DetachSound__Q36nw4hbm3snd15WaveSoundHandleFv
/* 801444D8 0013F9F8  80 83 00 00 */	lwz r4, 0(r3)
/* 801444DC 0013F9FC  2C 04 00 00 */	cmpwi r4, 0
/* 801444E0 0013FA00  41 82 00 18 */	beq .L_801444F8
/* 801444E4 0013FA04  80 04 01 AC */	lwz r0, 0x1ac(r4)
/* 801444E8 0013FA08  7C 00 18 40 */	cmplw r0, r3
/* 801444EC 0013FA0C  40 82 00 0C */	bne .L_801444F8
/* 801444F0 0013FA10  38 00 00 00 */	li r0, 0
/* 801444F4 0013FA14  90 04 01 AC */	stw r0, 0x1ac(r4)
.L_801444F8:
/* 801444F8 0013FA18  80 03 00 00 */	lwz r0, 0(r3)
/* 801444FC 0013FA1C  2C 00 00 00 */	cmpwi r0, 0
/* 80144500 0013FA20  4D 82 00 20 */	beqlr 
/* 80144504 0013FA24  38 00 00 00 */	li r0, 0
/* 80144508 0013FA28  90 03 00 00 */	stw r0, 0(r3)
/* 8014450C 0013FA2C  4E 80 00 20 */	blr 

