glabel cpuFindCachedAddress
/* 8000CCF8 00008218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000CCFC 0000821C  3C C3 00 10 */	addis r6, r3, 0x10
/* 8000CD00 00008220  38 C6 16 98 */	addi r6, r6, 0x1698
/* 8000CD04 00008224  39 40 00 00 */	li r10, 0
/* 8000CD08 00008228  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8000CD0C 0000822C  7C C7 33 78 */	mr r7, r6
/* 8000CD10 00008230  7C 09 03 A6 */	mtctr r0
/* 8000CD14 00008234  2C 00 00 00 */	cmpwi r0, 0
/* 8000CD18 00008238  40 81 01 A8 */	ble lbl_8000CEC0
lbl_8000CD1C:
/* 8000CD1C 0000823C  80 07 00 00 */	lwz r0, 0(r7)
/* 8000CD20 00008240  7C 04 00 00 */	cmpw r4, r0
/* 8000CD24 00008244  40 82 01 90 */	bne lbl_8000CEB4
/* 8000CD28 00008248  2C 0A 00 80 */	cmpwi r10, 0x80
/* 8000CD2C 0000824C  40 81 01 54 */	ble lbl_8000CE80
/* 8000CD30 00008250  1C 0A 00 0C */	mulli r0, r10, 0xc
/* 8000CD34 00008254  2C 0A 00 00 */	cmpwi r10, 0
/* 8000CD38 00008258  7D 47 53 78 */	mr r7, r10
/* 8000CD3C 0000825C  7D 26 02 14 */	add r9, r6, r0
/* 8000CD40 00008260  7D 06 00 2E */	lwzx r8, r6, r0
/* 8000CD44 00008264  80 89 00 04 */	lwz r4, 4(r9)
/* 8000CD48 00008268  80 09 00 08 */	lwz r0, 8(r9)
/* 8000CD4C 0000826C  91 01 00 08 */	stw r8, 8(r1)
/* 8000CD50 00008270  90 81 00 0C */	stw r4, 0xc(r1)
/* 8000CD54 00008274  90 01 00 10 */	stw r0, 0x10(r1)
/* 8000CD58 00008278  40 81 01 0C */	ble lbl_8000CE64
/* 8000CD5C 0000827C  55 44 E8 FF */	rlwinm. r4, r10, 0x1d, 3, 0x1f
/* 8000CD60 00008280  7C 0A 00 D0 */	neg r0, r10
/* 8000CD64 00008284  7C 89 03 A6 */	mtctr r4
/* 8000CD68 00008288  41 82 00 D4 */	beq lbl_8000CE3C
lbl_8000CD6C:
/* 8000CD6C 0000828C  80 E9 FF F4 */	lwz r7, -0xc(r9)
/* 8000CD70 00008290  80 89 FF F8 */	lwz r4, -8(r9)
/* 8000CD74 00008294  90 E9 00 00 */	stw r7, 0(r9)
/* 8000CD78 00008298  90 89 00 04 */	stw r4, 4(r9)
/* 8000CD7C 0000829C  80 89 FF FC */	lwz r4, -4(r9)
/* 8000CD80 000082A0  90 89 00 08 */	stw r4, 8(r9)
/* 8000CD84 000082A4  80 E9 FF E8 */	lwz r7, -0x18(r9)
/* 8000CD88 000082A8  80 89 FF EC */	lwz r4, -0x14(r9)
/* 8000CD8C 000082AC  90 E9 FF F4 */	stw r7, -0xc(r9)
/* 8000CD90 000082B0  90 89 FF F8 */	stw r4, -8(r9)
/* 8000CD94 000082B4  80 89 FF F0 */	lwz r4, -0x10(r9)
/* 8000CD98 000082B8  90 89 FF FC */	stw r4, -4(r9)
/* 8000CD9C 000082BC  80 E9 FF DC */	lwz r7, -0x24(r9)
/* 8000CDA0 000082C0  80 89 FF E0 */	lwz r4, -0x20(r9)
/* 8000CDA4 000082C4  90 E9 FF E8 */	stw r7, -0x18(r9)
/* 8000CDA8 000082C8  90 89 FF EC */	stw r4, -0x14(r9)
/* 8000CDAC 000082CC  80 89 FF E4 */	lwz r4, -0x1c(r9)
/* 8000CDB0 000082D0  90 89 FF F0 */	stw r4, -0x10(r9)
/* 8000CDB4 000082D4  80 E9 FF D0 */	lwz r7, -0x30(r9)
/* 8000CDB8 000082D8  80 89 FF D4 */	lwz r4, -0x2c(r9)
/* 8000CDBC 000082DC  90 E9 FF DC */	stw r7, -0x24(r9)
/* 8000CDC0 000082E0  90 89 FF E0 */	stw r4, -0x20(r9)
/* 8000CDC4 000082E4  80 89 FF D8 */	lwz r4, -0x28(r9)
/* 8000CDC8 000082E8  90 89 FF E4 */	stw r4, -0x1c(r9)
/* 8000CDCC 000082EC  80 E9 FF C4 */	lwz r7, -0x3c(r9)
/* 8000CDD0 000082F0  80 89 FF C8 */	lwz r4, -0x38(r9)
/* 8000CDD4 000082F4  90 E9 FF D0 */	stw r7, -0x30(r9)
/* 8000CDD8 000082F8  90 89 FF D4 */	stw r4, -0x2c(r9)
/* 8000CDDC 000082FC  80 89 FF CC */	lwz r4, -0x34(r9)
/* 8000CDE0 00008300  90 89 FF D8 */	stw r4, -0x28(r9)
/* 8000CDE4 00008304  80 E9 FF B8 */	lwz r7, -0x48(r9)
/* 8000CDE8 00008308  80 89 FF BC */	lwz r4, -0x44(r9)
/* 8000CDEC 0000830C  90 E9 FF C4 */	stw r7, -0x3c(r9)
/* 8000CDF0 00008310  90 89 FF C8 */	stw r4, -0x38(r9)
/* 8000CDF4 00008314  80 89 FF C0 */	lwz r4, -0x40(r9)
/* 8000CDF8 00008318  90 89 FF CC */	stw r4, -0x34(r9)
/* 8000CDFC 0000831C  80 E9 FF AC */	lwz r7, -0x54(r9)
/* 8000CE00 00008320  80 89 FF B0 */	lwz r4, -0x50(r9)
/* 8000CE04 00008324  90 E9 FF B8 */	stw r7, -0x48(r9)
/* 8000CE08 00008328  90 89 FF BC */	stw r4, -0x44(r9)
/* 8000CE0C 0000832C  80 89 FF B4 */	lwz r4, -0x4c(r9)
/* 8000CE10 00008330  90 89 FF C0 */	stw r4, -0x40(r9)
/* 8000CE14 00008334  80 E9 FF A0 */	lwz r7, -0x60(r9)
/* 8000CE18 00008338  80 89 FF A4 */	lwz r4, -0x5c(r9)
/* 8000CE1C 0000833C  90 E9 FF AC */	stw r7, -0x54(r9)
/* 8000CE20 00008340  90 89 FF B0 */	stw r4, -0x50(r9)
/* 8000CE24 00008344  80 89 FF A8 */	lwz r4, -0x58(r9)
/* 8000CE28 00008348  90 89 FF B4 */	stw r4, -0x4c(r9)
/* 8000CE2C 0000834C  39 29 FF A0 */	addi r9, r9, -96
/* 8000CE30 00008350  42 00 FF 3C */	bdnz lbl_8000CD6C
/* 8000CE34 00008354  71 47 00 07 */	andi. r7, r10, 7
/* 8000CE38 00008358  41 82 00 28 */	beq lbl_8000CE60
lbl_8000CE3C:
/* 8000CE3C 0000835C  7C E9 03 A6 */	mtctr r7
lbl_8000CE40:
/* 8000CE40 00008360  80 E9 FF F4 */	lwz r7, -0xc(r9)
/* 8000CE44 00008364  80 89 FF F8 */	lwz r4, -8(r9)
/* 8000CE48 00008368  90 E9 00 00 */	stw r7, 0(r9)
/* 8000CE4C 0000836C  90 89 00 04 */	stw r4, 4(r9)
/* 8000CE50 00008370  80 89 FF FC */	lwz r4, -4(r9)
/* 8000CE54 00008374  90 89 00 08 */	stw r4, 8(r9)
/* 8000CE58 00008378  39 29 FF F4 */	addi r9, r9, -12
/* 8000CE5C 0000837C  42 00 FF E4 */	bdnz lbl_8000CE40
lbl_8000CE60:
/* 8000CE60 00008380  7D 4A 02 14 */	add r10, r10, r0
lbl_8000CE64:
/* 8000CE64 00008384  80 E1 00 08 */	lwz r7, 8(r1)
/* 8000CE68 00008388  1D 0A 00 0C */	mulli r8, r10, 0xc
/* 8000CE6C 0000838C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8000CE70 00008390  7C E8 31 6E */	stwux r7, r8, r6
/* 8000CE74 00008394  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8000CE78 00008398  90 88 00 04 */	stw r4, 4(r8)
/* 8000CE7C 0000839C  90 08 00 08 */	stw r0, 8(r8)
lbl_8000CE80:
/* 8000CE80 000083A0  1C EA 00 0C */	mulli r7, r10, 0xc
/* 8000CE84 000083A4  7C 86 3A 14 */	add r4, r6, r7
/* 8000CE88 000083A8  80 84 00 08 */	lwz r4, 8(r4)
/* 8000CE8C 000083AC  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8000CE90 000083B0  2C 00 00 00 */	cmpwi r0, 0
/* 8000CE94 000083B4  40 81 00 0C */	ble lbl_8000CEA0
/* 8000CE98 000083B8  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8000CE9C 000083BC  90 04 00 28 */	stw r0, 0x28(r4)
lbl_8000CEA0:
/* 8000CEA0 000083C0  7C 86 3A 14 */	add r4, r6, r7
/* 8000CEA4 000083C4  38 60 00 01 */	li r3, 1
/* 8000CEA8 000083C8  80 04 00 04 */	lwz r0, 4(r4)
/* 8000CEAC 000083CC  90 05 00 00 */	stw r0, 0(r5)
/* 8000CEB0 000083D0  48 00 00 14 */	b lbl_8000CEC4
lbl_8000CEB4:
/* 8000CEB4 000083D4  38 E7 00 0C */	addi r7, r7, 0xc
/* 8000CEB8 000083D8  39 4A 00 01 */	addi r10, r10, 1
/* 8000CEBC 000083DC  42 00 FE 60 */	bdnz lbl_8000CD1C
lbl_8000CEC0:
/* 8000CEC0 000083E0  38 60 00 00 */	li r3, 0
lbl_8000CEC4:
/* 8000CEC4 000083E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8000CEC8 000083E8  4E 80 00 20 */	blr 

