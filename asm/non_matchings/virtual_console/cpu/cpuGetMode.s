glabel cpuGetMode
/* 8000DD0C 0000922C  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8000DD10 00009230  41 82 00 14 */	beq lbl_8000DD24
/* 8000DD14 00009234  38 00 00 02 */	li r0, 2
/* 8000DD18 00009238  38 60 00 01 */	li r3, 1
/* 8000DD1C 0000923C  90 05 00 00 */	stw r0, 0(r5)
/* 8000DD20 00009240  4E 80 00 20 */	blr 
lbl_8000DD24:
/* 8000DD24 00009244  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8000DD28 00009248  40 82 00 7C */	bne lbl_8000DDA4
/* 8000DD2C 0000924C  54 86 06 F8 */	rlwinm r6, r4, 0, 0x1b, 0x1c
/* 8000DD30 00009250  38 80 00 00 */	li r4, 0
/* 8000DD34 00009254  68 C0 00 08 */	xori r0, r6, 8
/* 8000DD38 00009258  2C 00 00 00 */	cmpwi r0, 0
/* 8000DD3C 0000925C  41 82 00 40 */	beq lbl_8000DD7C
/* 8000DD40 00009260  38 60 00 08 */	li r3, 8
/* 8000DD44 00009264  7C 63 30 10 */	subfc r3, r3, r6
/* 8000DD48 00009268  7C 04 21 10 */	subfe r0, r4, r4
/* 8000DD4C 0000926C  7C 03 19 10 */	subfe r0, r3, r3
/* 8000DD50 00009270  7C 00 00 D1 */	neg. r0, r0
/* 8000DD54 00009274  41 82 00 10 */	beq lbl_8000DD64
/* 8000DD58 00009278  2C 06 00 00 */	cmpwi r6, 0
/* 8000DD5C 0000927C  41 82 00 2C */	beq lbl_8000DD88
/* 8000DD60 00009280  48 00 00 34 */	b lbl_8000DD94
lbl_8000DD64:
/* 8000DD64 00009284  68 C0 00 10 */	xori r0, r6, 0x10
/* 8000DD68 00009288  2C 00 00 00 */	cmpwi r0, 0
/* 8000DD6C 0000928C  41 82 00 08 */	beq lbl_8000DD74
/* 8000DD70 00009290  48 00 00 24 */	b lbl_8000DD94
lbl_8000DD74:
/* 8000DD74 00009294  90 85 00 00 */	stw r4, 0(r5)
/* 8000DD78 00009298  48 00 00 24 */	b lbl_8000DD9C
lbl_8000DD7C:
/* 8000DD7C 0000929C  38 00 00 01 */	li r0, 1
/* 8000DD80 000092A0  90 05 00 00 */	stw r0, 0(r5)
/* 8000DD84 000092A4  48 00 00 18 */	b lbl_8000DD9C
lbl_8000DD88:
/* 8000DD88 000092A8  38 00 00 02 */	li r0, 2
/* 8000DD8C 000092AC  90 05 00 00 */	stw r0, 0(r5)
/* 8000DD90 000092B0  48 00 00 0C */	b lbl_8000DD9C
lbl_8000DD94:
/* 8000DD94 000092B4  38 60 00 00 */	li r3, 0
/* 8000DD98 000092B8  4E 80 00 20 */	blr 
lbl_8000DD9C:
/* 8000DD9C 000092BC  38 60 00 01 */	li r3, 1
/* 8000DDA0 000092C0  4E 80 00 20 */	blr 
lbl_8000DDA4:
/* 8000DDA4 000092C4  38 60 00 00 */	li r3, 0
/* 8000DDA8 000092C8  4E 80 00 20 */	blr 
