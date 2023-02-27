.include "macros.inc"

.section .text, "ax"

glabel copysign
/* 8016E2BC 001697DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016E2C0 001697E0  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016E2C4 001697E4  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8016E2C8 001697E8  80 61 00 08 */	lwz r3, 8(r1)
/* 8016E2CC 001697EC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8016E2D0 001697F0  54 00 00 00 */	rlwinm r0, r0, 0, 0, 0
/* 8016E2D4 001697F4  50 60 00 7E */	rlwimi r0, r3, 0, 1, 0x1f
/* 8016E2D8 001697F8  90 01 00 08 */	stw r0, 8(r1)
/* 8016E2DC 001697FC  C8 21 00 08 */	lfd f1, 8(r1)
/* 8016E2E0 00169800  38 21 00 20 */	addi r1, r1, 0x20
/* 8016E2E4 00169804  4E 80 00 20 */	blr
