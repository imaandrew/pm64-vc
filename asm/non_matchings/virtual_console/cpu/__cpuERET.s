glabel __cpuERET
/* 8000E2BC 000097DC  80 E3 0A AC */	lwz r7, 0xaac(r3)
/* 8000E2C0 000097E0  80 C3 0A A8 */	lwz r6, 0xaa8(r3)
/* 8000E2C4 000097E4  54 E0 07 7B */	rlwinm. r0, r7, 0, 0x1d, 0x1d
/* 8000E2C8 000097E8  41 82 00 28 */	beq lbl_8000E2F0
/* 8000E2CC 000097EC  80 A3 0B 3C */	lwz r5, 0xb3c(r3)
/* 8000E2D0 000097F0  38 80 FF FB */	li r4, -5
/* 8000E2D4 000097F4  38 00 FF FF */	li r0, -1
/* 8000E2D8 000097F8  7C E4 20 38 */	and r4, r7, r4
/* 8000E2DC 000097FC  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8000E2E0 00009800  7C C0 00 38 */	and r0, r6, r0
/* 8000E2E4 00009804  90 83 0A AC */	stw r4, 0xaac(r3)
/* 8000E2E8 00009808  90 03 0A A8 */	stw r0, 0xaa8(r3)
/* 8000E2EC 0000980C  48 00 00 24 */	b lbl_8000E310
lbl_8000E2F0:
/* 8000E2F0 00009810  80 A3 0A BC */	lwz r5, 0xabc(r3)
/* 8000E2F4 00009814  38 80 FF FD */	li r4, -3
/* 8000E2F8 00009818  38 00 FF FF */	li r0, -1
/* 8000E2FC 0000981C  7C E4 20 38 */	and r4, r7, r4
/* 8000E300 00009820  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8000E304 00009824  7C C0 00 38 */	and r0, r6, r0
/* 8000E308 00009828  90 83 0A AC */	stw r4, 0xaac(r3)
/* 8000E30C 0000982C  90 03 0A A8 */	stw r0, 0xaa8(r3)
lbl_8000E310:
/* 8000E310 00009830  80 03 00 00 */	lwz r0, 0(r3)
/* 8000E314 00009834  60 00 00 24 */	ori r0, r0, 0x24
/* 8000E318 00009838  90 03 00 00 */	stw r0, 0(r3)
/* 8000E31C 0000983C  38 60 00 01 */	li r3, 1
/* 8000E320 00009840  4E 80 00 20 */	blr 

