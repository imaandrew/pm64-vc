.include "macros.inc"

.section .text, "ax"

glabel DetachSound__Q36nw4hbm3snd14SeqSoundHandleFv
/* 801353B4 001308D4  80 83 00 00 */	lwz r4, 0(r3)
/* 801353B8 001308D8  2C 04 00 00 */	cmpwi r4, 0
/* 801353BC 001308DC  41 82 00 18 */	beq .L_801353D4
/* 801353C0 001308E0  80 04 01 E0 */	lwz r0, 0x1e0(r4)
/* 801353C4 001308E4  7C 00 18 40 */	cmplw r0, r3
/* 801353C8 001308E8  40 82 00 0C */	bne .L_801353D4
/* 801353CC 001308EC  38 00 00 00 */	li r0, 0
/* 801353D0 001308F0  90 04 01 E0 */	stw r0, 0x1e0(r4)
.L_801353D4:
/* 801353D4 001308F4  80 03 00 00 */	lwz r0, 0(r3)
/* 801353D8 001308F8  2C 00 00 00 */	cmpwi r0, 0
/* 801353DC 001308FC  4D 82 00 20 */	beqlr
/* 801353E0 00130900  38 00 00 00 */	li r0, 0
/* 801353E4 00130904  90 03 00 00 */	stw r0, 0(r3)
/* 801353E8 00130908  4E 80 00 20 */	blr

