.include "macros.inc"

.section .text, "ax"

glabel __AXFXAllocFunction
/* 800B6CD8 000B21F8  7C 64 1B 78 */	mr r4, r3
/* 800B6CDC 000B21FC  80 6D 82 38 */	lwz r3, lbl_802466B8@sda21(r13)
/* 800B6CE0 000B2200  4B FA E3 7C */	b func_8006505C

glabel __AXFXFreeFunction
/* 800B6CE4 000B2204  7C 64 1B 78 */	mr r4, r3
/* 800B6CE8 000B2208  80 6D 82 38 */	lwz r3, lbl_802466B8@sda21(r13)
/* 800B6CEC 000B220C  4B FA E3 9C */	b func_80065088

glabel AXFXSetHooks
/* 800B6CF0 000B2210  90 6D 83 90 */	stw r3, lbl_80246810@sda21(r13)
/* 800B6CF4 000B2214  90 8D 83 94 */	stw r4, lbl_80246814@sda21(r13)
/* 800B6CF8 000B2218  4E 80 00 20 */	blr

glabel AXFXGetHooks
/* 800B6CFC 000B221C  80 0D 83 90 */	lwz r0, lbl_80246810@sda21(r13)
/* 800B6D00 000B2220  90 03 00 00 */	stw r0, 0(r3)
/* 800B6D04 000B2224  80 0D 83 94 */	lwz r0, lbl_80246814@sda21(r13)
/* 800B6D08 000B2228  90 04 00 00 */	stw r0, 0(r4)
/* 800B6D0C 000B222C  4E 80 00 20 */	blr

