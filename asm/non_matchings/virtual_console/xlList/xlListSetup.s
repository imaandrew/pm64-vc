glabel xlListSetup
/* 800857C0 00080CE0  3C A0 80 1B */	lis r5, lbl_801B0778@ha
/* 800857C4 00080CE4  38 00 00 10 */	li r0, 0x10
/* 800857C8 00080CE8  38 85 07 78 */	addi r4, r5, lbl_801B0778@l
/* 800857CC 00080CEC  38 C0 00 00 */	li r6, 0
/* 800857D0 00080CF0  90 C4 00 04 */	stw r6, 4(r4)
/* 800857D4 00080CF4  38 60 00 01 */	li r3, 1
/* 800857D8 00080CF8  90 05 07 78 */	stw r0, 0x778(r5)
/* 800857DC 00080CFC  90 C4 00 0C */	stw r6, 0xc(r4)
/* 800857E0 00080D00  90 C4 00 08 */	stw r6, 8(r4)
/* 800857E4 00080D04  4E 80 00 20 */	blr 

