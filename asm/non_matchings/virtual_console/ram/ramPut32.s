glabel ramPut32
/* 80041528 0003CA48  80 03 00 08 */	lwz r0, 8(r3)
/* 8004152C 0003CA4C  54 86 01 BE */	clrlwi r6, r4, 6
/* 80041530 0003CA50  7C 06 00 40 */	cmplw r6, r0
/* 80041534 0003CA54  40 80 00 14 */	bge lbl_80041548
/* 80041538 0003CA58  80 85 00 00 */	lwz r4, 0(r5)
/* 8004153C 0003CA5C  54 C0 00 3A */	rlwinm r0, r6, 0, 0, 0x1d
/* 80041540 0003CA60  80 63 00 04 */	lwz r3, 4(r3)
/* 80041544 0003CA64  7C 83 01 2E */	stwx r4, r3, r0
lbl_80041548:
/* 80041548 0003CA68  38 60 00 01 */	li r3, 1
/* 8004154C 0003CA6C  4E 80 00 20 */	blr 

