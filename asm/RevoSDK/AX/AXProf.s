.include "macros.inc"

.section .text, "ax"

glabel __AXGetCurrentProfile
/* 800B5E34 000B1354  80 0D 91 50 */	lwz r0, lbl_802475D0@sda21(r13)
/* 800B5E38 000B1358  2C 00 00 00 */	cmpwi r0, 0
/* 800B5E3C 000B135C  41 82 00 30 */	beq lbl_800B5E6C
/* 800B5E40 000B1360  80 AD 91 54 */	lwz r5, lbl_802475D4@sda21(r13)
/* 800B5E44 000B1364  80 6D 91 58 */	lwz r3, lbl_802475D8@sda21(r13)
/* 800B5E48 000B1368  38 85 00 01 */	addi r4, r5, 1
/* 800B5E4C 000B136C  80 CD 91 5C */	lwz r6, lbl_802475DC@sda21(r13)
/* 800B5E50 000B1370  7C 04 1B 96 */	divwu r0, r4, r3
/* 800B5E54 000B1374  7C 00 19 D6 */	mullw r0, r0, r3
/* 800B5E58 000B1378  1C 65 00 38 */	mulli r3, r5, 0x38
/* 800B5E5C 000B137C  7C 00 20 50 */	subf r0, r0, r4
/* 800B5E60 000B1380  90 0D 91 54 */	stw r0, lbl_802475D4@sda21(r13)
/* 800B5E64 000B1384  7C 66 1A 14 */	add r3, r6, r3
/* 800B5E68 000B1388  4E 80 00 20 */	blr 
lbl_800B5E6C:
/* 800B5E6C 000B138C  38 60 00 00 */	li r3, 0
/* 800B5E70 000B1390  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_802475D0
	.skip 0x4

glabel lbl_802475D4
	.skip 0x4

glabel lbl_802475D8
	.skip 0x4

glabel lbl_802475DC
	.skip 0x4