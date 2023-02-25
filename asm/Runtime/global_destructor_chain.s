.include "macros.inc"

.section .text, "ax"

glabel __register_global_object_tmp
/* 8015C0C8 001575E8  80 0D 93 28 */	lwz r0, lbl_802477A8@sda21(r13)
/* 8015C0CC 001575EC  90 05 00 00 */	stw r0, 0(r5)
/* 8015C0D0 001575F0  90 85 00 04 */	stw r4, 4(r5)
/* 8015C0D4 001575F4  90 65 00 08 */	stw r3, 8(r5)
/* 8015C0D8 001575F8  90 AD 93 28 */	stw r5, lbl_802477A8@sda21(r13)
/* 8015C0DC 001575FC  4E 80 00 20 */	blr 

glabel __destroy_global_chain_tmp
/* 8015C0E0 00157600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C0E4 00157604  7C 08 02 A6 */	mflr r0
/* 8015C0E8 00157608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C0EC 0015760C  48 00 00 20 */	b lbl_8015C10C
lbl_8015C0F0:
/* 8015C0F0 00157610  80 03 00 00 */	lwz r0, 0(r3)
/* 8015C0F4 00157614  38 80 FF FF */	li r4, -1
/* 8015C0F8 00157618  90 0D 93 28 */	stw r0, lbl_802477A8@sda21(r13)
/* 8015C0FC 0015761C  81 83 00 04 */	lwz r12, 4(r3)
/* 8015C100 00157620  80 63 00 08 */	lwz r3, 8(r3)
/* 8015C104 00157624  7D 89 03 A6 */	mtctr r12
/* 8015C108 00157628  4E 80 04 21 */	bctrl 
lbl_8015C10C:
/* 8015C10C 0015762C  80 6D 93 28 */	lwz r3, lbl_802477A8@sda21(r13)
/* 8015C110 00157630  2C 03 00 00 */	cmpwi r3, 0
/* 8015C114 00157634  40 82 FF DC */	bne lbl_8015C0F0
/* 8015C118 00157638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C11C 0015763C  7C 08 03 A6 */	mtlr r0
/* 8015C120 00157640  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C124 00157644  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_802477A8
	.skip 0x8