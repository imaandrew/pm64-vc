glabel cpuGetAddressOffset
/* 8003D210 00038730  3C 00 80 00 */	lis r0, 0x8000
/* 8003D214 00038734  7C 05 00 40 */	cmplw r5, r0
/* 8003D218 00038738  41 80 00 1C */	blt lbl_8003D234
/* 8003D21C 0003873C  3C 00 C0 00 */	lis r0, 0xc000
/* 8003D220 00038740  7C 05 00 40 */	cmplw r5, r0
/* 8003D224 00038744  40 80 00 10 */	bge lbl_8003D234
/* 8003D228 00038748  54 A0 02 7E */	clrlwi r0, r5, 9
/* 8003D22C 0003874C  90 04 00 00 */	stw r0, 0(r4)
/* 8003D230 00038750  48 00 00 44 */	b lbl_8003D274
lbl_8003D234:
/* 8003D234 00038754  54 A0 A3 3E */	srwi r0, r5, 0xc
/* 8003D238 00038758  7C C3 02 14 */	add r6, r3, r0
/* 8003D23C 0003875C  88 06 0F 60 */	lbz r0, 0xf60(r6)
/* 8003D240 00038760  54 00 10 3A */	slwi r0, r0, 2
/* 8003D244 00038764  7C 63 02 14 */	add r3, r3, r0
/* 8003D248 00038768  80 63 0B 60 */	lwz r3, 0xb60(r3)
/* 8003D24C 0003876C  80 03 00 00 */	lwz r0, 0(r3)
/* 8003D250 00038770  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8003D254 00038774  41 82 00 18 */	beq lbl_8003D26C
/* 8003D258 00038778  80 03 00 08 */	lwz r0, 8(r3)
/* 8003D25C 0003877C  7C 05 02 14 */	add r0, r5, r0
/* 8003D260 00038780  54 00 02 7E */	clrlwi r0, r0, 9
/* 8003D264 00038784  90 04 00 00 */	stw r0, 0(r4)
/* 8003D268 00038788  48 00 00 0C */	b lbl_8003D274
lbl_8003D26C:
/* 8003D26C 0003878C  38 60 00 00 */	li r3, 0
/* 8003D270 00038790  4E 80 00 20 */	blr 
lbl_8003D274:
/* 8003D274 00038794  38 60 00 01 */	li r3, 1
/* 8003D278 00038798  4E 80 00 20 */	blr 
