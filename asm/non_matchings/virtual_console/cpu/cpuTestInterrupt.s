glabel cpuTestInterrupt
/* 8000CECC 000083EC  81 23 0A AC */	lwz r9, 0xaac(r3)
/* 8000CED0 000083F0  54 85 44 2E */	rlwinm r5, r4, 8, 0x10, 0x17
/* 8000CED4 000083F4  81 03 0A B4 */	lwz r8, 0xab4(r3)
/* 8000CED8 000083F8  7C A6 FE 70 */	srawi r6, r5, 0x1f
/* 8000CEDC 000083FC  80 E3 0A B0 */	lwz r7, 0xab0(r3)
/* 8000CEE0 00008400  55 20 07 7D */	rlwinm. r0, r9, 0, 0x1d, 0x1e
/* 8000CEE4 00008404  7D 05 2B 78 */	or r5, r8, r5
/* 8000CEE8 00008408  54 88 06 3E */	clrlwi r8, r4, 0x18
/* 8000CEEC 0000840C  7C E0 33 78 */	or r0, r7, r6
/* 8000CEF0 00008410  90 A3 0A B4 */	stw r5, 0xab4(r3)
/* 8000CEF4 00008414  90 03 0A B0 */	stw r0, 0xab0(r3)
/* 8000CEF8 00008418  41 82 00 0C */	beq lbl_8000CF04
/* 8000CEFC 0000841C  38 60 00 00 */	li r3, 0
/* 8000CF00 00008420  4E 80 00 20 */	blr 
lbl_8000CF04:
/* 8000CF04 00008424  55 20 07 FF */	clrlwi. r0, r9, 0x1f
/* 8000CF08 00008428  40 82 00 0C */	bne lbl_8000CF14
/* 8000CF0C 0000842C  38 60 00 00 */	li r3, 0
/* 8000CF10 00008430  4E 80 00 20 */	blr 
lbl_8000CF14:
/* 8000CF14 00008434  3C 60 00 01 */	lis r3, 0x0000FF00@ha
/* 8000CF18 00008438  38 00 00 00 */	li r0, 0
/* 8000CF1C 0000843C  38 63 FF 00 */	addi r3, r3, 0x0000FF00@l
/* 8000CF20 00008440  7D 23 18 38 */	and r3, r9, r3
/* 8000CF24 00008444  7C 04 46 70 */	srawi r4, r0, 8
/* 8000CF28 00008448  7D 00 FE 70 */	srawi r0, r8, 0x1f
/* 8000CF2C 0000844C  54 63 C2 3E */	srwi r3, r3, 8
/* 8000CF30 00008450  7C 63 40 38 */	and r3, r3, r8
/* 8000CF34 00008454  7C 80 00 38 */	and r0, r4, r0
/* 8000CF38 00008458  7C 60 03 78 */	or r0, r3, r0
/* 8000CF3C 0000845C  30 60 FF FF */	addic r3, r0, -1
/* 8000CF40 00008460  7C 63 01 10 */	subfe r3, r3, r0
/* 8000CF44 00008464  4E 80 00 20 */	blr 

