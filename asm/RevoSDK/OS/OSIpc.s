.include "macros.inc"

.section .text, "ax"

glabel __OSGetIPCBufferHi
/* 800996B4 00094BD4  80 6D 8D 20 */	lwz r3, lbl_802471A0@sda21(r13)
/* 800996B8 00094BD8  4E 80 00 20 */	blr 

glabel __OSGetIPCBufferLo
/* 800996BC 00094BDC  80 6D 82 78 */	lwz r3, lbl_802466F8@sda21(r13)
/* 800996C0 00094BE0  4E 80 00 20 */	blr 

glabel __OSInitIPCBuffer
/* 800996C4 00094BE4  3C 60 80 00 */	lis r3, 0x80003130@ha
/* 800996C8 00094BE8  80 03 31 30 */	lwz r0, 0x80003130@l(r3)
/* 800996CC 00094BEC  90 0D 82 78 */	stw r0, lbl_802466F8@sda21(r13)
/* 800996D0 00094BF0  80 03 31 34 */	lwz r0, 0x3134(r3)
/* 800996D4 00094BF4  90 0D 8D 20 */	stw r0, lbl_802471A0@sda21(r13)
/* 800996D8 00094BF8  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_802471A0
	.skip 0x8