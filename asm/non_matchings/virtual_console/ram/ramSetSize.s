glabel ramSetSize
/* 80041754 0003CC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80041758 0003CC78  7C 08 02 A6 */	mflr r0
/* 8004175C 0003CC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80041760 0003CC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80041764 0003CC84  93 C1 00 08 */	stw r30, 8(r1)
/* 80041768 0003CC88  7C 7E 1B 78 */	mr r30, r3
/* 8004176C 0003CC8C  80 03 00 04 */	lwz r0, 4(r3)
/* 80041770 0003CC90  2C 00 00 00 */	cmpwi r0, 0
/* 80041774 0003CC94  41 82 00 0C */	beq lbl_80041780
/* 80041778 0003CC98  38 60 00 00 */	li r3, 0
/* 8004177C 0003CC9C  48 00 00 30 */	b lbl_800417AC
lbl_80041780:
/* 80041780 0003CCA0  38 04 03 FF */	addi r0, r4, 0x3ff
/* 80041784 0003CCA4  38 63 00 04 */	addi r3, r3, 4
/* 80041788 0003CCA8  54 1F 00 2A */	rlwinm r31, r0, 0, 0, 0x15
/* 8004178C 0003CCAC  67 E4 30 00 */	oris r4, r31, 0x3000
/* 80041790 0003CCB0  48 04 47 B9 */	bl xlHeapTake
/* 80041794 0003CCB4  2C 03 00 00 */	cmpwi r3, 0
/* 80041798 0003CCB8  40 82 00 0C */	bne lbl_800417A4
/* 8004179C 0003CCBC  38 60 00 00 */	li r3, 0
/* 800417A0 0003CCC0  48 00 00 0C */	b lbl_800417AC
lbl_800417A4:
/* 800417A4 0003CCC4  93 FE 00 08 */	stw r31, 8(r30)
/* 800417A8 0003CCC8  38 60 00 01 */	li r3, 1
lbl_800417AC:
/* 800417AC 0003CCCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800417B0 0003CCD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800417B4 0003CCD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800417B8 0003CCD8  7C 08 03 A6 */	mtlr r0
/* 800417BC 0003CCDC  38 21 00 10 */	addi r1, r1, 0x10
/* 800417C0 0003CCE0  4E 80 00 20 */	blr 

