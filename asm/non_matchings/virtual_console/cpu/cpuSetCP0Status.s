glabel cpuSetCP0Status
/* 8000DEB4 000093D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000DEB8 000093D8  7C 08 02 A6 */	mflr r0
/* 8000DEBC 000093DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000DEC0 000093E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8000DEC4 000093E4  7C BF 2B 78 */	mr r31, r5
/* 8000DEC8 000093E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8000DECC 000093EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8000DED0 000093F0  7C DE 33 78 */	mr r30, r6
/* 8000DED4 000093F4  7F C4 F3 78 */	mr r4, r30
/* 8000DED8 000093F8  38 C1 00 14 */	addi r6, r1, 0x14
/* 8000DEDC 000093FC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8000DEE0 00009400  7C 7D 1B 78 */	mr r29, r3
/* 8000DEE4 00009404  7F E3 FB 78 */	mr r3, r31
/* 8000DEE8 00009408  4B FF FE C5 */	bl cpuGetSize
/* 8000DEEC 0000940C  2C 03 00 00 */	cmpwi r3, 0
/* 8000DEF0 00009410  40 82 00 0C */	bne lbl_8000DEFC
/* 8000DEF4 00009414  38 60 00 00 */	li r3, 0
/* 8000DEF8 00009418  48 00 00 34 */	b lbl_8000DF2C
lbl_8000DEFC:
/* 8000DEFC 0000941C  80 7D 0A A8 */	lwz r3, 0xaa8(r29)
/* 8000DF00 00009420  38 A1 00 08 */	addi r5, r1, 8
/* 8000DF04 00009424  80 9D 0A AC */	lwz r4, 0xaac(r29)
/* 8000DF08 00009428  38 C1 00 10 */	addi r6, r1, 0x10
/* 8000DF0C 0000942C  4B FF FE A1 */	bl cpuGetSize
/* 8000DF10 00009430  2C 03 00 00 */	cmpwi r3, 0
/* 8000DF14 00009434  40 82 00 0C */	bne lbl_8000DF20
/* 8000DF18 00009438  38 60 00 00 */	li r3, 0
/* 8000DF1C 0000943C  48 00 00 10 */	b lbl_8000DF2C
lbl_8000DF20:
/* 8000DF20 00009440  93 DD 0A AC */	stw r30, 0xaac(r29)
/* 8000DF24 00009444  38 60 00 01 */	li r3, 1
/* 8000DF28 00009448  93 FD 0A A8 */	stw r31, 0xaa8(r29)
lbl_8000DF2C:
/* 8000DF2C 0000944C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000DF30 00009450  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8000DF34 00009454  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8000DF38 00009458  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8000DF3C 0000945C  7C 08 03 A6 */	mtlr r0
/* 8000DF40 00009460  38 21 00 30 */	addi r1, r1, 0x30
/* 8000DF44 00009464  4E 80 00 20 */	blr 
