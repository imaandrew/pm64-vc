.include "macros.inc"

.section .text, "ax"

glabel udp_cc_post_stop
/* 80173C28 0016F148  38 60 FF FF */	li r3, -1
/* 80173C2C 0016F14C  4E 80 00 20 */	blr

glabel udp_cc_pre_continue
/* 80173C30 0016F150  38 60 FF FF */	li r3, -1
/* 80173C34 0016F154  4E 80 00 20 */	blr

glabel udp_cc_peek
/* 80173C38 0016F158  38 60 00 00 */	li r3, 0
/* 80173C3C 0016F15C  4E 80 00 20 */	blr

glabel udp_cc_write
/* 80173C40 0016F160  38 60 00 00 */	li r3, 0
/* 80173C44 0016F164  4E 80 00 20 */	blr

glabel udp_cc_read
/* 80173C48 0016F168  38 60 00 00 */	li r3, 0
/* 80173C4C 0016F16C  4E 80 00 20 */	blr

glabel udp_cc_close
/* 80173C50 0016F170  38 60 FF FF */	li r3, -1
/* 80173C54 0016F174  4E 80 00 20 */	blr

glabel udp_cc_open
/* 80173C58 0016F178  38 60 FF FF */	li r3, -1
/* 80173C5C 0016F17C  4E 80 00 20 */	blr

glabel udp_cc_shutdown
/* 80173C60 0016F180  38 60 FF FF */	li r3, -1
/* 80173C64 0016F184  4E 80 00 20 */	blr

glabel udp_cc_initialize
/* 80173C68 0016F188  38 60 FF FF */	li r3, -1
/* 80173C6C 0016F18C  4E 80 00 20 */	blr

