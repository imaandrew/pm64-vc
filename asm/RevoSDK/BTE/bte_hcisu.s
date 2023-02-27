.include "macros.inc"

.section .text, "ax"

glabel bte_hcisu_send
/* 800DCF4C 000D846C  B0 83 00 00 */	sth r4, 0(r3)
/* 800DCF50 000D8470  80 8D 93 08 */	lwz r4, lbl_80247788@sda21(r13)
/* 800DCF54 000D8474  2C 04 00 00 */	cmpwi r4, 0
/* 800DCF58 000D8478  41 82 00 10 */	beq .L_800DCF68
/* 800DCF5C 000D847C  81 84 00 0C */	lwz r12, 0xc(r4)
/* 800DCF60 000D8480  7D 89 03 A6 */	mtctr r12
/* 800DCF64 000D8484  4E 80 04 20 */	bctr
.L_800DCF68:
/* 800DCF68 000D8488  4B FF CF A8 */	b GKI_freebuf

glabel bte_hcisu_task
/* 800DCF6C 000D848C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DCF70 000D8490  7C 08 02 A6 */	mflr r0
/* 800DCF74 000D8494  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DCF78 000D8498  80 6D 93 08 */	lwz r3, lbl_80247788@sda21(r13)
/* 800DCF7C 000D849C  2C 03 00 00 */	cmpwi r3, 0
/* 800DCF80 000D84A0  41 82 00 40 */	beq .L_800DCFC0
/* 800DCF84 000D84A4  81 83 00 00 */	lwz r12, 0(r3)
/* 800DCF88 000D84A8  2C 0C 00 00 */	cmpwi r12, 0
/* 800DCF8C 000D84AC  41 82 00 18 */	beq .L_800DCFA4
/* 800DCF90 000D84B0  38 60 00 02 */	li r3, 2
/* 800DCF94 000D84B4  38 80 00 01 */	li r4, 1
/* 800DCF98 000D84B8  38 A0 08 00 */	li r5, 0x800
/* 800DCF9C 000D84BC  7D 89 03 A6 */	mtctr r12
/* 800DCFA0 000D84C0  4E 80 04 21 */	bctrl
.L_800DCFA4:
/* 800DCFA4 000D84C4  80 6D 93 08 */	lwz r3, lbl_80247788@sda21(r13)
/* 800DCFA8 000D84C8  81 83 00 04 */	lwz r12, 4(r3)
/* 800DCFAC 000D84CC  2C 0C 00 00 */	cmpwi r12, 0
/* 800DCFB0 000D84D0  41 82 00 10 */	beq .L_800DCFC0
/* 800DCFB4 000D84D4  80 6D 93 0C */	lwz r3, lbl_8024778C@sda21(r13)
/* 800DCFB8 000D84D8  7D 89 03 A6 */	mtctr r12
/* 800DCFBC 000D84DC  4E 80 04 21 */	bctrl
.L_800DCFC0:
/* 800DCFC0 000D84E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DCFC4 000D84E4  7C 08 03 A6 */	mtlr r0
/* 800DCFC8 000D84E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800DCFCC 000D84EC  4E 80 00 20 */	blr

glabel bte_hcisu_close
/* 800DCFD0 000D84F0  80 6D 93 08 */	lwz r3, lbl_80247788@sda21(r13)
/* 800DCFD4 000D84F4  2C 03 00 00 */	cmpwi r3, 0
/* 800DCFD8 000D84F8  4D 82 00 20 */	beqlr
/* 800DCFDC 000D84FC  81 83 00 08 */	lwz r12, 8(r3)
/* 800DCFE0 000D8500  2C 0C 00 00 */	cmpwi r12, 0
/* 800DCFE4 000D8504  4D 82 00 20 */	beqlr
/* 800DCFE8 000D8508  7D 89 03 A6 */	mtctr r12
/* 800DCFEC 000D850C  4E 80 04 20 */	bctr
/* 800DCFF0 000D8510  4E 80 00 20 */	blr
glabel lbl_800DCFF4
/* 800DCFF4 000D8514  7C 65 1B 78 */	mr r5, r3
/* 800DCFF8 000D8518  38 60 00 02 */	li r3, 2
/* 800DCFFC 000D851C  38 80 00 00 */	li r4, 0
/* 800DD000 000D8520  4B FF D0 C4 */	b GKI_send_msg

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247788
	.skip 0x4

glabel lbl_8024778C
	.skip 0x4
