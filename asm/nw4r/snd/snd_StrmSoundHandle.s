.include "macros.inc"

.section .text, "ax"

glabel DetachSound__Q36nw4hbm3snd15StrmSoundHandleFv
/* 80142430 0013D950  80 83 00 00 */	lwz r4, 0(r3)
/* 80142434 0013D954  2C 04 00 00 */	cmpwi r4, 0
/* 80142438 0013D958  41 82 00 18 */	beq .L_80142450
/* 8014243C 0013D95C  80 04 05 F4 */	lwz r0, 0x5f4(r4)
/* 80142440 0013D960  7C 00 18 40 */	cmplw r0, r3
/* 80142444 0013D964  40 82 00 0C */	bne .L_80142450
/* 80142448 0013D968  38 00 00 00 */	li r0, 0
/* 8014244C 0013D96C  90 04 05 F4 */	stw r0, 0x5f4(r4)
.L_80142450:
/* 80142450 0013D970  80 03 00 00 */	lwz r0, 0(r3)
/* 80142454 0013D974  2C 00 00 00 */	cmpwi r0, 0
/* 80142458 0013D978  4D 82 00 20 */	beqlr
/* 8014245C 0013D97C  38 00 00 00 */	li r0, 0
/* 80142460 0013D980  90 03 00 00 */	stw r0, 0(r3)
/* 80142464 0013D984  4E 80 00 20 */	blr
