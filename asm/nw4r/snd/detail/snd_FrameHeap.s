.include "macros.inc"

.section .text, "ax"

glabel __ct__Q46nw4hbm3snd6detail9FrameHeapFv
/* 8012FC58 0012B178  38 00 00 00 */	li r0, 0
/* 8012FC5C 0012B17C  38 83 00 08 */	addi r4, r3, 8
/* 8012FC60 0012B180  90 03 00 08 */	stw r0, 8(r3)
/* 8012FC64 0012B184  90 03 00 0C */	stw r0, 0xc(r3)
/* 8012FC68 0012B188  90 03 00 00 */	stw r0, 0(r3)
/* 8012FC6C 0012B18C  90 03 00 04 */	stw r0, 4(r3)
/* 8012FC70 0012B190  90 83 00 08 */	stw r4, 8(r3)
/* 8012FC74 0012B194  90 83 00 0C */	stw r4, 0xc(r3)
/* 8012FC78 0012B198  4E 80 00 20 */	blr

glabel __dt__Q46nw4hbm3snd6detail9FrameHeapFv
/* 8012FC7C 0012B19C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8012FC80 0012B1A0  7C 08 02 A6 */	mflr r0
/* 8012FC84 0012B1A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8012FC88 0012B1A8  39 61 00 50 */	addi r11, r1, 0x50
/* 8012FC8C 0012B1AC  48 02 CC 91 */	bl _savegpr_17
/* 8012FC90 0012B1B0  2C 03 00 00 */	cmpwi r3, 0
/* 8012FC94 0012B1B4  7C 7E 1B 78 */	mr r30, r3
/* 8012FC98 0012B1B8  7C 9F 23 78 */	mr r31, r4
/* 8012FC9C 0012B1BC  41 82 01 8C */	beq .L_8012FE28
/* 8012FCA0 0012B1C0  80 03 00 00 */	lwz r0, 0(r3)
/* 8012FCA4 0012B1C4  2C 00 00 00 */	cmpwi r0, 0
/* 8012FCA8 0012B1C8  41 82 01 60 */	beq .L_8012FE08
/* 8012FCAC 0012B1CC  41 82 01 5C */	beq .L_8012FE08
/* 8012FCB0 0012B1D0  80 03 00 04 */	lwz r0, 4(r3)
/* 8012FCB4 0012B1D4  2C 00 00 00 */	cmpwi r0, 0
/* 8012FCB8 0012B1D8  41 82 01 34 */	beq .L_8012FDEC
/* 8012FCBC 0012B1DC  3B A3 00 08 */	addi r29, r3, 8
/* 8012FCC0 0012B1E0  3F 20 80 1A */	lis r25, lbl_801A635C@ha
/* 8012FCC4 0012B1E4  3F 40 80 1A */	lis r26, lbl_801A6338@ha
/* 8012FCC8 0012B1E8  3E 40 80 1A */	lis r18, lbl_801A641C@ha
/* 8012FCCC 0012B1EC  3E 60 80 1A */	lis r19, lbl_801A63F8@ha
/* 8012FCD0 0012B1F0  3E 80 80 1A */	lis r20, lbl_801A63BC@ha
/* 8012FCD4 0012B1F4  3E A0 80 1A */	lis r21, lbl_801A6398@ha
/* 8012FCD8 0012B1F8  3E C0 80 1A */	lis r22, lbl_801A63EC@ha
/* 8012FCDC 0012B1FC  3E E0 80 1A */	lis r23, lbl_801A63C8@ha
/* 8012FCE0 0012B200  3F 60 80 1A */	lis r27, lbl_801A638C@ha
/* 8012FCE4 0012B204  3F 80 80 1A */	lis r28, lbl_801A6368@ha
/* 8012FCE8 0012B208  48 00 00 F8 */	b .L_8012FDE0
.L_8012FCEC:
/* 8012FCEC 0012B20C  2C 00 00 00 */	cmpwi r0, 0
/* 8012FCF0 0012B210  40 82 00 18 */	bne .L_8012FD08
/* 8012FCF4 0012B214  38 72 64 1C */	addi r3, r18, lbl_801A641C@l
/* 8012FCF8 0012B218  38 B3 63 F8 */	addi r5, r19, lbl_801A63F8@l
/* 8012FCFC 0012B21C  38 80 01 FB */	li r4, 0x1fb
/* 8012FD00 0012B220  4C C6 31 82 */	crclr 6
/* 8012FD04 0012B224  4B FE 60 BD */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FD08:
/* 8012FD08 0012B228  82 3D 00 04 */	lwz r17, 4(r29)
/* 8012FD0C 0012B22C  2C 11 00 00 */	cmpwi r17, 0
/* 8012FD10 0012B230  40 82 00 18 */	bne .L_8012FD28
/* 8012FD14 0012B234  38 74 63 BC */	addi r3, r20, lbl_801A63BC@l
/* 8012FD18 0012B238  38 B5 63 98 */	addi r5, r21, lbl_801A6398@l
/* 8012FD1C 0012B23C  38 80 02 3D */	li r4, 0x23d
/* 8012FD20 0012B240  4C C6 31 82 */	crclr 6
/* 8012FD24 0012B244  4B FE 60 9D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FD28:
/* 8012FD28 0012B248  2C 11 00 00 */	cmpwi r17, 0
/* 8012FD2C 0012B24C  40 82 00 18 */	bne .L_8012FD44
/* 8012FD30 0012B250  38 76 63 EC */	addi r3, r22, lbl_801A63EC@l
/* 8012FD34 0012B254  38 B7 63 C8 */	addi r5, r23, lbl_801A63C8@l
/* 8012FD38 0012B258  38 80 01 93 */	li r4, 0x193
/* 8012FD3C 0012B25C  4C C6 31 82 */	crclr 6
/* 8012FD40 0012B260  4B FE 60 81 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FD44:
/* 8012FD44 0012B264  2C 11 00 00 */	cmpwi r17, 0
/* 8012FD48 0012B268  41 82 00 70 */	beq .L_8012FDB8
/* 8012FD4C 0012B26C  3B 11 00 0C */	addi r24, r17, 0xc
/* 8012FD50 0012B270  48 00 00 4C */	b .L_8012FD9C
.L_8012FD54:
/* 8012FD54 0012B274  83 18 00 04 */	lwz r24, 4(r24)
/* 8012FD58 0012B278  2C 18 00 00 */	cmpwi r24, 0
/* 8012FD5C 0012B27C  40 82 00 18 */	bne .L_8012FD74
/* 8012FD60 0012B280  38 79 63 5C */	addi r3, r25, lbl_801A635C@l
/* 8012FD64 0012B284  38 BA 63 38 */	addi r5, r26, lbl_801A6338@l
/* 8012FD68 0012B288  38 80 02 3D */	li r4, 0x23d
/* 8012FD6C 0012B28C  4C C6 31 82 */	crclr 6
/* 8012FD70 0012B290  4B FE 60 51 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FD74:
/* 8012FD74 0012B294  2C 18 00 00 */	cmpwi r24, 0
/* 8012FD78 0012B298  41 82 00 24 */	beq .L_8012FD9C
/* 8012FD7C 0012B29C  81 98 00 0C */	lwz r12, 0xc(r24)
/* 8012FD80 0012B2A0  2C 0C 00 00 */	cmpwi r12, 0
/* 8012FD84 0012B2A4  41 82 00 18 */	beq .L_8012FD9C
/* 8012FD88 0012B2A8  38 78 00 20 */	addi r3, r24, 0x20
/* 8012FD8C 0012B2AC  80 98 00 08 */	lwz r4, 8(r24)
/* 8012FD90 0012B2B0  80 B8 00 10 */	lwz r5, 0x10(r24)
/* 8012FD94 0012B2B4  7D 89 03 A6 */	mtctr r12
/* 8012FD98 0012B2B8  4E 80 04 21 */	bctrl
.L_8012FD9C:
/* 8012FD9C 0012B2BC  80 11 00 0C */	lwz r0, 0xc(r17)
/* 8012FDA0 0012B2C0  7C 18 00 40 */	cmplw r24, r0
/* 8012FDA4 0012B2C4  40 82 FF B0 */	bne .L_8012FD54
/* 8012FDA8 0012B2C8  34 71 00 08 */	addic. r3, r17, 8
/* 8012FDAC 0012B2CC  41 82 00 0C */	beq .L_8012FDB8
/* 8012FDB0 0012B2D0  38 80 00 00 */	li r4, 0
/* 8012FDB4 0012B2D4  48 01 C1 59 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_8012FDB8:
/* 8012FDB8 0012B2D8  2C 11 00 00 */	cmpwi r17, 0
/* 8012FDBC 0012B2DC  40 82 00 18 */	bne .L_8012FDD4
/* 8012FDC0 0012B2E0  38 7B 63 8C */	addi r3, r27, lbl_801A638C@l
/* 8012FDC4 0012B2E4  38 BC 63 68 */	addi r5, r28, lbl_801A6368@l
/* 8012FDC8 0012B2E8  38 80 02 33 */	li r4, 0x233
/* 8012FDCC 0012B2EC  4C C6 31 82 */	crclr 6
/* 8012FDD0 0012B2F0  4B FE 5F F1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FDD4:
/* 8012FDD4 0012B2F4  7E 24 8B 78 */	mr r4, r17
/* 8012FDD8 0012B2F8  38 7E 00 04 */	addi r3, r30, 4
/* 8012FDDC 0012B2FC  48 01 C5 A1 */	bl Erase__Q46nw4hbm2ut6detail12LinkListImplFPQ36nw4hbm2ut12LinkListNode
.L_8012FDE0:
/* 8012FDE0 0012B300  80 1E 00 04 */	lwz r0, 4(r30)
/* 8012FDE4 0012B304  2C 00 00 00 */	cmpwi r0, 0
/* 8012FDE8 0012B308  40 82 FF 04 */	bne .L_8012FCEC
.L_8012FDEC:
/* 8012FDEC 0012B30C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8012FDF0 0012B310  38 80 00 03 */	li r4, 3
/* 8012FDF4 0012B314  4B F8 7C C9 */	bl MEMFreeToFrmHeap
/* 8012FDF8 0012B318  80 7E 00 00 */	lwz r3, 0(r30)
/* 8012FDFC 0012B31C  4B F8 7B 71 */	bl MEMDestroyFrmHeap
/* 8012FE00 0012B320  38 00 00 00 */	li r0, 0
/* 8012FE04 0012B324  90 1E 00 00 */	stw r0, 0(r30)
.L_8012FE08:
/* 8012FE08 0012B328  34 7E 00 04 */	addic. r3, r30, 4
/* 8012FE0C 0012B32C  41 82 00 0C */	beq .L_8012FE18
/* 8012FE10 0012B330  38 80 00 00 */	li r4, 0
/* 8012FE14 0012B334  48 01 C0 F9 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_8012FE18:
/* 8012FE18 0012B338  2C 1F 00 00 */	cmpwi r31, 0
/* 8012FE1C 0012B33C  40 81 00 0C */	ble .L_8012FE28
/* 8012FE20 0012B340  7F C3 F3 78 */	mr r3, r30
/* 8012FE24 0012B344  48 02 C3 ED */	bl operator_delete
.L_8012FE28:
/* 8012FE28 0012B348  39 61 00 50 */	addi r11, r1, 0x50
/* 8012FE2C 0012B34C  7F C3 F3 78 */	mr r3, r30
/* 8012FE30 0012B350  48 02 CB 39 */	bl _restgpr_17
/* 8012FE34 0012B354  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8012FE38 0012B358  7C 08 03 A6 */	mtlr r0
/* 8012FE3C 0012B35C  38 21 00 50 */	addi r1, r1, 0x50
/* 8012FE40 0012B360  4E 80 00 20 */	blr

glabel Create__Q46nw4hbm3snd6detail9FrameHeapFPvUl
/* 8012FE44 0012B364  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8012FE48 0012B368  7C 08 02 A6 */	mflr r0
/* 8012FE4C 0012B36C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8012FE50 0012B370  39 61 00 50 */	addi r11, r1, 0x50
/* 8012FE54 0012B374  48 02 CA C5 */	bl _savegpr_16
/* 8012FE58 0012B378  2C 04 00 00 */	cmpwi r4, 0
/* 8012FE5C 0012B37C  7C 7D 1B 78 */	mr r29, r3
/* 8012FE60 0012B380  7C 9E 23 78 */	mr r30, r4
/* 8012FE64 0012B384  7C BF 2B 78 */	mr r31, r5
/* 8012FE68 0012B388  40 82 00 20 */	bne .L_8012FE88
/* 8012FE6C 0012B38C  3C 60 80 1A */	lis r3, lbl_801A6160@ha
/* 8012FE70 0012B390  3C A0 80 1A */	lis r5, lbl_801A6174@ha
/* 8012FE74 0012B394  38 63 61 60 */	addi r3, r3, lbl_801A6160@l
/* 8012FE78 0012B398  38 80 00 4B */	li r4, 0x4b
/* 8012FE7C 0012B39C  38 A5 61 74 */	addi r5, r5, lbl_801A6174@l
/* 8012FE80 0012B3A0  4C C6 31 82 */	crclr 6
/* 8012FE84 0012B3A4  4B FE 5F 3D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FE88:
/* 8012FE88 0012B3A8  80 1D 00 00 */	lwz r0, 0(r29)
/* 8012FE8C 0012B3AC  2C 00 00 00 */	cmpwi r0, 0
/* 8012FE90 0012B3B0  41 82 01 60 */	beq .L_8012FFF0
/* 8012FE94 0012B3B4  41 82 01 5C */	beq .L_8012FFF0
/* 8012FE98 0012B3B8  80 1D 00 04 */	lwz r0, 4(r29)
/* 8012FE9C 0012B3BC  2C 00 00 00 */	cmpwi r0, 0
/* 8012FEA0 0012B3C0  41 82 01 34 */	beq .L_8012FFD4
/* 8012FEA4 0012B3C4  3B 9D 00 08 */	addi r28, r29, 8
/* 8012FEA8 0012B3C8  3F 00 80 1A */	lis r24, lbl_801A635C@ha
/* 8012FEAC 0012B3CC  3F 20 80 1A */	lis r25, lbl_801A6338@ha
/* 8012FEB0 0012B3D0  3E 20 80 1A */	lis r17, lbl_801A641C@ha
/* 8012FEB4 0012B3D4  3E 40 80 1A */	lis r18, lbl_801A63F8@ha
/* 8012FEB8 0012B3D8  3E 60 80 1A */	lis r19, lbl_801A63BC@ha
/* 8012FEBC 0012B3DC  3E 80 80 1A */	lis r20, lbl_801A6398@ha
/* 8012FEC0 0012B3E0  3E A0 80 1A */	lis r21, lbl_801A63EC@ha
/* 8012FEC4 0012B3E4  3E C0 80 1A */	lis r22, lbl_801A63C8@ha
/* 8012FEC8 0012B3E8  3F 40 80 1A */	lis r26, lbl_801A638C@ha
/* 8012FECC 0012B3EC  3F 60 80 1A */	lis r27, lbl_801A6368@ha
/* 8012FED0 0012B3F0  48 00 00 F8 */	b .L_8012FFC8
.L_8012FED4:
/* 8012FED4 0012B3F4  2C 00 00 00 */	cmpwi r0, 0
/* 8012FED8 0012B3F8  40 82 00 18 */	bne .L_8012FEF0
/* 8012FEDC 0012B3FC  38 71 64 1C */	addi r3, r17, lbl_801A641C@l
/* 8012FEE0 0012B400  38 B2 63 F8 */	addi r5, r18, lbl_801A63F8@l
/* 8012FEE4 0012B404  38 80 01 FB */	li r4, 0x1fb
/* 8012FEE8 0012B408  4C C6 31 82 */	crclr 6
/* 8012FEEC 0012B40C  4B FE 5E D5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FEF0:
/* 8012FEF0 0012B410  82 1C 00 04 */	lwz r16, 4(r28)
/* 8012FEF4 0012B414  2C 10 00 00 */	cmpwi r16, 0
/* 8012FEF8 0012B418  40 82 00 18 */	bne .L_8012FF10
/* 8012FEFC 0012B41C  38 73 63 BC */	addi r3, r19, lbl_801A63BC@l
/* 8012FF00 0012B420  38 B4 63 98 */	addi r5, r20, lbl_801A6398@l
/* 8012FF04 0012B424  38 80 02 3D */	li r4, 0x23d
/* 8012FF08 0012B428  4C C6 31 82 */	crclr 6
/* 8012FF0C 0012B42C  4B FE 5E B5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FF10:
/* 8012FF10 0012B430  2C 10 00 00 */	cmpwi r16, 0
/* 8012FF14 0012B434  40 82 00 18 */	bne .L_8012FF2C
/* 8012FF18 0012B438  38 75 63 EC */	addi r3, r21, lbl_801A63EC@l
/* 8012FF1C 0012B43C  38 B6 63 C8 */	addi r5, r22, lbl_801A63C8@l
/* 8012FF20 0012B440  38 80 01 93 */	li r4, 0x193
/* 8012FF24 0012B444  4C C6 31 82 */	crclr 6
/* 8012FF28 0012B448  4B FE 5E 99 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FF2C:
/* 8012FF2C 0012B44C  2C 10 00 00 */	cmpwi r16, 0
/* 8012FF30 0012B450  41 82 00 70 */	beq .L_8012FFA0
/* 8012FF34 0012B454  3A F0 00 0C */	addi r23, r16, 0xc
/* 8012FF38 0012B458  48 00 00 4C */	b .L_8012FF84
.L_8012FF3C:
/* 8012FF3C 0012B45C  82 F7 00 04 */	lwz r23, 4(r23)
/* 8012FF40 0012B460  2C 17 00 00 */	cmpwi r23, 0
/* 8012FF44 0012B464  40 82 00 18 */	bne .L_8012FF5C
/* 8012FF48 0012B468  38 78 63 5C */	addi r3, r24, lbl_801A635C@l
/* 8012FF4C 0012B46C  38 B9 63 38 */	addi r5, r25, lbl_801A6338@l
/* 8012FF50 0012B470  38 80 02 3D */	li r4, 0x23d
/* 8012FF54 0012B474  4C C6 31 82 */	crclr 6
/* 8012FF58 0012B478  4B FE 5E 69 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FF5C:
/* 8012FF5C 0012B47C  2C 17 00 00 */	cmpwi r23, 0
/* 8012FF60 0012B480  41 82 00 24 */	beq .L_8012FF84
/* 8012FF64 0012B484  81 97 00 0C */	lwz r12, 0xc(r23)
/* 8012FF68 0012B488  2C 0C 00 00 */	cmpwi r12, 0
/* 8012FF6C 0012B48C  41 82 00 18 */	beq .L_8012FF84
/* 8012FF70 0012B490  38 77 00 20 */	addi r3, r23, 0x20
/* 8012FF74 0012B494  80 97 00 08 */	lwz r4, 8(r23)
/* 8012FF78 0012B498  80 B7 00 10 */	lwz r5, 0x10(r23)
/* 8012FF7C 0012B49C  7D 89 03 A6 */	mtctr r12
/* 8012FF80 0012B4A0  4E 80 04 21 */	bctrl
.L_8012FF84:
/* 8012FF84 0012B4A4  80 10 00 0C */	lwz r0, 0xc(r16)
/* 8012FF88 0012B4A8  7C 17 00 40 */	cmplw r23, r0
/* 8012FF8C 0012B4AC  40 82 FF B0 */	bne .L_8012FF3C
/* 8012FF90 0012B4B0  34 70 00 08 */	addic. r3, r16, 8
/* 8012FF94 0012B4B4  41 82 00 0C */	beq .L_8012FFA0
/* 8012FF98 0012B4B8  38 80 00 00 */	li r4, 0
/* 8012FF9C 0012B4BC  48 01 BF 71 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_8012FFA0:
/* 8012FFA0 0012B4C0  2C 10 00 00 */	cmpwi r16, 0
/* 8012FFA4 0012B4C4  40 82 00 18 */	bne .L_8012FFBC
/* 8012FFA8 0012B4C8  38 7A 63 8C */	addi r3, r26, lbl_801A638C@l
/* 8012FFAC 0012B4CC  38 BB 63 68 */	addi r5, r27, lbl_801A6368@l
/* 8012FFB0 0012B4D0  38 80 02 33 */	li r4, 0x233
/* 8012FFB4 0012B4D4  4C C6 31 82 */	crclr 6
/* 8012FFB8 0012B4D8  4B FE 5E 09 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8012FFBC:
/* 8012FFBC 0012B4DC  7E 04 83 78 */	mr r4, r16
/* 8012FFC0 0012B4E0  38 7D 00 04 */	addi r3, r29, 4
/* 8012FFC4 0012B4E4  48 01 C3 B9 */	bl Erase__Q46nw4hbm2ut6detail12LinkListImplFPQ36nw4hbm2ut12LinkListNode
.L_8012FFC8:
/* 8012FFC8 0012B4E8  80 1D 00 04 */	lwz r0, 4(r29)
/* 8012FFCC 0012B4EC  2C 00 00 00 */	cmpwi r0, 0
/* 8012FFD0 0012B4F0  40 82 FF 04 */	bne .L_8012FED4
.L_8012FFD4:
/* 8012FFD4 0012B4F4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8012FFD8 0012B4F8  38 80 00 03 */	li r4, 3
/* 8012FFDC 0012B4FC  4B F8 7A E1 */	bl MEMFreeToFrmHeap
/* 8012FFE0 0012B500  80 7D 00 00 */	lwz r3, 0(r29)
/* 8012FFE4 0012B504  4B F8 79 89 */	bl MEMDestroyFrmHeap
/* 8012FFE8 0012B508  38 00 00 00 */	li r0, 0
/* 8012FFEC 0012B50C  90 1D 00 00 */	stw r0, 0(r29)
.L_8012FFF0:
/* 8012FFF0 0012B510  38 1E 00 03 */	addi r0, r30, 3
/* 8012FFF4 0012B514  7C 9E FA 14 */	add r4, r30, r31
/* 8012FFF8 0012B518  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 8012FFFC 0012B51C  7C 03 20 40 */	cmplw r3, r4
/* 80130000 0012B520  40 81 00 0C */	ble .L_8013000C
/* 80130004 0012B524  38 60 00 00 */	li r3, 0
/* 80130008 0012B528  48 00 00 C0 */	b .L_801300C8
.L_8013000C:
/* 8013000C 0012B52C  7C 83 20 50 */	subf r4, r3, r4
/* 80130010 0012B530  38 A0 00 00 */	li r5, 0
/* 80130014 0012B534  4B F8 78 D5 */	bl MEMCreateFrmHeapEx
/* 80130018 0012B538  2C 03 00 00 */	cmpwi r3, 0
/* 8013001C 0012B53C  90 7D 00 00 */	stw r3, 0(r29)
/* 80130020 0012B540  40 82 00 0C */	bne .L_8013002C
/* 80130024 0012B544  38 60 00 00 */	li r3, 0
/* 80130028 0012B548  48 00 00 A0 */	b .L_801300C8
.L_8013002C:
/* 8013002C 0012B54C  38 80 00 14 */	li r4, 0x14
/* 80130030 0012B550  38 A0 00 04 */	li r5, 4
/* 80130034 0012B554  4B F8 79 69 */	bl MEMAllocFromFrmHeapEx
/* 80130038 0012B558  2C 03 00 00 */	cmpwi r3, 0
/* 8013003C 0012B55C  40 82 00 0C */	bne .L_80130048
/* 80130040 0012B560  38 00 00 00 */	li r0, 0
/* 80130044 0012B564  48 00 00 70 */	b .L_801300B4
.L_80130048:
/* 80130048 0012B568  7C 71 1B 78 */	mr r17, r3
/* 8013004C 0012B56C  41 82 00 28 */	beq .L_80130074
/* 80130050 0012B570  38 00 00 00 */	li r0, 0
/* 80130054 0012B574  38 83 00 0C */	addi r4, r3, 0xc
/* 80130058 0012B578  90 03 00 00 */	stw r0, 0(r3)
/* 8013005C 0012B57C  90 03 00 04 */	stw r0, 4(r3)
/* 80130060 0012B580  90 03 00 0C */	stw r0, 0xc(r3)
/* 80130064 0012B584  90 03 00 10 */	stw r0, 0x10(r3)
/* 80130068 0012B588  90 03 00 08 */	stw r0, 8(r3)
/* 8013006C 0012B58C  90 83 00 0C */	stw r4, 0xc(r3)
/* 80130070 0012B590  90 83 00 10 */	stw r4, 0x10(r3)
.L_80130074:
/* 80130074 0012B594  2C 03 00 00 */	cmpwi r3, 0
/* 80130078 0012B598  3B 9D 00 08 */	addi r28, r29, 8
/* 8013007C 0012B59C  40 82 00 20 */	bne .L_8013009C
/* 80130080 0012B5A0  3C 60 80 1A */	lis r3, lbl_801A638C@ha
/* 80130084 0012B5A4  3C A0 80 1A */	lis r5, lbl_801A6368@ha
/* 80130088 0012B5A8  38 63 63 8C */	addi r3, r3, lbl_801A638C@l
/* 8013008C 0012B5AC  38 80 02 33 */	li r4, 0x233
/* 80130090 0012B5B0  38 A5 63 68 */	addi r5, r5, lbl_801A6368@l
/* 80130094 0012B5B4  4C C6 31 82 */	crclr 6
/* 80130098 0012B5B8  4B FE 5D 29 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013009C:
/* 8013009C 0012B5BC  93 81 00 08 */	stw r28, 8(r1)
/* 801300A0 0012B5C0  7E 25 8B 78 */	mr r5, r17
/* 801300A4 0012B5C4  38 7D 00 04 */	addi r3, r29, 4
/* 801300A8 0012B5C8  38 81 00 08 */	addi r4, r1, 8
/* 801300AC 0012B5CC  48 01 C1 D5 */	bl Insert__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8IteratorPQ36nw4hbm2ut12LinkListNode
/* 801300B0 0012B5D0  38 00 00 01 */	li r0, 1
.L_801300B4:
/* 801300B4 0012B5D4  2C 00 00 00 */	cmpwi r0, 0
/* 801300B8 0012B5D8  40 82 00 0C */	bne .L_801300C4
/* 801300BC 0012B5DC  38 60 00 00 */	li r3, 0
/* 801300C0 0012B5E0  48 00 00 08 */	b .L_801300C8
.L_801300C4:
/* 801300C4 0012B5E4  38 60 00 01 */	li r3, 1
.L_801300C8:
/* 801300C8 0012B5E8  39 61 00 50 */	addi r11, r1, 0x50
/* 801300CC 0012B5EC  48 02 C8 99 */	bl _restgpr_16
/* 801300D0 0012B5F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801300D4 0012B5F4  7C 08 03 A6 */	mtlr r0
/* 801300D8 0012B5F8  38 21 00 50 */	addi r1, r1, 0x50
/* 801300DC 0012B5FC  4E 80 00 20 */	blr

glabel Destroy__Q46nw4hbm3snd6detail9FrameHeapFv
/* 801300E0 0012B600  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801300E4 0012B604  7C 08 02 A6 */	mflr r0
/* 801300E8 0012B608  90 01 00 44 */	stw r0, 0x44(r1)
/* 801300EC 0012B60C  39 61 00 40 */	addi r11, r1, 0x40
/* 801300F0 0012B610  48 02 C8 31 */	bl _savegpr_18
/* 801300F4 0012B614  80 03 00 00 */	lwz r0, 0(r3)
/* 801300F8 0012B618  7C 7F 1B 78 */	mr r31, r3
/* 801300FC 0012B61C  2C 00 00 00 */	cmpwi r0, 0
/* 80130100 0012B620  41 82 01 5C */	beq .L_8013025C
/* 80130104 0012B624  80 03 00 04 */	lwz r0, 4(r3)
/* 80130108 0012B628  2C 00 00 00 */	cmpwi r0, 0
/* 8013010C 0012B62C  41 82 01 34 */	beq .L_80130240
/* 80130110 0012B630  3B C3 00 08 */	addi r30, r3, 8
/* 80130114 0012B634  3F 40 80 1A */	lis r26, lbl_801A635C@ha
/* 80130118 0012B638  3F 60 80 1A */	lis r27, lbl_801A6338@ha
/* 8013011C 0012B63C  3E 60 80 1A */	lis r19, lbl_801A641C@ha
/* 80130120 0012B640  3E 80 80 1A */	lis r20, lbl_801A63F8@ha
/* 80130124 0012B644  3E A0 80 1A */	lis r21, lbl_801A63BC@ha
/* 80130128 0012B648  3E C0 80 1A */	lis r22, lbl_801A6398@ha
/* 8013012C 0012B64C  3E E0 80 1A */	lis r23, lbl_801A63EC@ha
/* 80130130 0012B650  3F 00 80 1A */	lis r24, lbl_801A63C8@ha
/* 80130134 0012B654  3F 80 80 1A */	lis r28, lbl_801A638C@ha
/* 80130138 0012B658  3F A0 80 1A */	lis r29, lbl_801A6368@ha
/* 8013013C 0012B65C  48 00 00 F8 */	b .L_80130234
.L_80130140:
/* 80130140 0012B660  2C 00 00 00 */	cmpwi r0, 0
/* 80130144 0012B664  40 82 00 18 */	bne .L_8013015C
/* 80130148 0012B668  38 73 64 1C */	addi r3, r19, lbl_801A641C@l
/* 8013014C 0012B66C  38 B4 63 F8 */	addi r5, r20, lbl_801A63F8@l
/* 80130150 0012B670  38 80 01 FB */	li r4, 0x1fb
/* 80130154 0012B674  4C C6 31 82 */	crclr 6
/* 80130158 0012B678  4B FE 5C 69 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013015C:
/* 8013015C 0012B67C  82 5E 00 04 */	lwz r18, 4(r30)
/* 80130160 0012B680  2C 12 00 00 */	cmpwi r18, 0
/* 80130164 0012B684  40 82 00 18 */	bne .L_8013017C
/* 80130168 0012B688  38 75 63 BC */	addi r3, r21, lbl_801A63BC@l
/* 8013016C 0012B68C  38 B6 63 98 */	addi r5, r22, lbl_801A6398@l
/* 80130170 0012B690  38 80 02 3D */	li r4, 0x23d
/* 80130174 0012B694  4C C6 31 82 */	crclr 6
/* 80130178 0012B698  4B FE 5C 49 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013017C:
/* 8013017C 0012B69C  2C 12 00 00 */	cmpwi r18, 0
/* 80130180 0012B6A0  40 82 00 18 */	bne .L_80130198
/* 80130184 0012B6A4  38 77 63 EC */	addi r3, r23, lbl_801A63EC@l
/* 80130188 0012B6A8  38 B8 63 C8 */	addi r5, r24, lbl_801A63C8@l
/* 8013018C 0012B6AC  38 80 01 93 */	li r4, 0x193
/* 80130190 0012B6B0  4C C6 31 82 */	crclr 6
/* 80130194 0012B6B4  4B FE 5C 2D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130198:
/* 80130198 0012B6B8  2C 12 00 00 */	cmpwi r18, 0
/* 8013019C 0012B6BC  41 82 00 70 */	beq .L_8013020C
/* 801301A0 0012B6C0  3B 32 00 0C */	addi r25, r18, 0xc
/* 801301A4 0012B6C4  48 00 00 4C */	b .L_801301F0
.L_801301A8:
/* 801301A8 0012B6C8  83 39 00 04 */	lwz r25, 4(r25)
/* 801301AC 0012B6CC  2C 19 00 00 */	cmpwi r25, 0
/* 801301B0 0012B6D0  40 82 00 18 */	bne .L_801301C8
/* 801301B4 0012B6D4  38 7A 63 5C */	addi r3, r26, lbl_801A635C@l
/* 801301B8 0012B6D8  38 BB 63 38 */	addi r5, r27, lbl_801A6338@l
/* 801301BC 0012B6DC  38 80 02 3D */	li r4, 0x23d
/* 801301C0 0012B6E0  4C C6 31 82 */	crclr 6
/* 801301C4 0012B6E4  4B FE 5B FD */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801301C8:
/* 801301C8 0012B6E8  2C 19 00 00 */	cmpwi r25, 0
/* 801301CC 0012B6EC  41 82 00 24 */	beq .L_801301F0
/* 801301D0 0012B6F0  81 99 00 0C */	lwz r12, 0xc(r25)
/* 801301D4 0012B6F4  2C 0C 00 00 */	cmpwi r12, 0
/* 801301D8 0012B6F8  41 82 00 18 */	beq .L_801301F0
/* 801301DC 0012B6FC  38 79 00 20 */	addi r3, r25, 0x20
/* 801301E0 0012B700  80 99 00 08 */	lwz r4, 8(r25)
/* 801301E4 0012B704  80 B9 00 10 */	lwz r5, 0x10(r25)
/* 801301E8 0012B708  7D 89 03 A6 */	mtctr r12
/* 801301EC 0012B70C  4E 80 04 21 */	bctrl
.L_801301F0:
/* 801301F0 0012B710  80 12 00 0C */	lwz r0, 0xc(r18)
/* 801301F4 0012B714  7C 19 00 40 */	cmplw r25, r0
/* 801301F8 0012B718  40 82 FF B0 */	bne .L_801301A8
/* 801301FC 0012B71C  34 72 00 08 */	addic. r3, r18, 8
/* 80130200 0012B720  41 82 00 0C */	beq .L_8013020C
/* 80130204 0012B724  38 80 00 00 */	li r4, 0
/* 80130208 0012B728  48 01 BD 05 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_8013020C:
/* 8013020C 0012B72C  2C 12 00 00 */	cmpwi r18, 0
/* 80130210 0012B730  40 82 00 18 */	bne .L_80130228
/* 80130214 0012B734  38 7C 63 8C */	addi r3, r28, lbl_801A638C@l
/* 80130218 0012B738  38 BD 63 68 */	addi r5, r29, lbl_801A6368@l
/* 8013021C 0012B73C  38 80 02 33 */	li r4, 0x233
/* 80130220 0012B740  4C C6 31 82 */	crclr 6
/* 80130224 0012B744  4B FE 5B 9D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130228:
/* 80130228 0012B748  7E 44 93 78 */	mr r4, r18
/* 8013022C 0012B74C  38 7F 00 04 */	addi r3, r31, 4
/* 80130230 0012B750  48 01 C1 4D */	bl Erase__Q46nw4hbm2ut6detail12LinkListImplFPQ36nw4hbm2ut12LinkListNode
.L_80130234:
/* 80130234 0012B754  80 1F 00 04 */	lwz r0, 4(r31)
/* 80130238 0012B758  2C 00 00 00 */	cmpwi r0, 0
/* 8013023C 0012B75C  40 82 FF 04 */	bne .L_80130140
.L_80130240:
/* 80130240 0012B760  80 7F 00 00 */	lwz r3, 0(r31)
/* 80130244 0012B764  38 80 00 03 */	li r4, 3
/* 80130248 0012B768  4B F8 78 75 */	bl MEMFreeToFrmHeap
/* 8013024C 0012B76C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80130250 0012B770  4B F8 77 1D */	bl MEMDestroyFrmHeap
/* 80130254 0012B774  38 00 00 00 */	li r0, 0
/* 80130258 0012B778  90 1F 00 00 */	stw r0, 0(r31)
.L_8013025C:
/* 8013025C 0012B77C  39 61 00 40 */	addi r11, r1, 0x40
/* 80130260 0012B780  48 02 C7 0D */	bl _restgpr_18
/* 80130264 0012B784  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80130268 0012B788  7C 08 03 A6 */	mtlr r0
/* 8013026C 0012B78C  38 21 00 40 */	addi r1, r1, 0x40
/* 80130270 0012B790  4E 80 00 20 */	blr

glabel Clear__Q46nw4hbm3snd6detail9FrameHeapFv
/* 80130274 0012B794  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80130278 0012B798  7C 08 02 A6 */	mflr r0
/* 8013027C 0012B79C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80130280 0012B7A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80130284 0012B7A4  48 02 C6 99 */	bl _savegpr_17
/* 80130288 0012B7A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8013028C 0012B7AC  3F E0 80 1A */	lis r31, lbl_801A6160@ha
/* 80130290 0012B7B0  7C 7E 1B 78 */	mr r30, r3
/* 80130294 0012B7B4  2C 00 00 00 */	cmpwi r0, 0
/* 80130298 0012B7B8  3B FF 61 60 */	addi r31, r31, lbl_801A6160@l
/* 8013029C 0012B7BC  40 82 00 18 */	bne .L_801302B4
/* 801302A0 0012B7C0  38 7F 00 00 */	addi r3, r31, 0
/* 801302A4 0012B7C4  38 BF 00 44 */	addi r5, r31, 0x44
/* 801302A8 0012B7C8  38 80 00 87 */	li r4, 0x87
/* 801302AC 0012B7CC  4C C6 31 82 */	crclr 6
/* 801302B0 0012B7D0  4B FE 5B 11 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801302B4:
/* 801302B4 0012B7D4  80 1E 00 04 */	lwz r0, 4(r30)
/* 801302B8 0012B7D8  2C 00 00 00 */	cmpwi r0, 0
/* 801302BC 0012B7DC  41 82 01 34 */	beq .L_801303F0
/* 801302C0 0012B7E0  3B BE 00 08 */	addi r29, r30, 8
/* 801302C4 0012B7E4  3F 20 80 1A */	lis r25, lbl_801A635C@ha
/* 801302C8 0012B7E8  3F 40 80 1A */	lis r26, lbl_801A6338@ha
/* 801302CC 0012B7EC  3E 40 80 1A */	lis r18, lbl_801A641C@ha
/* 801302D0 0012B7F0  3E 60 80 1A */	lis r19, lbl_801A63F8@ha
/* 801302D4 0012B7F4  3E 80 80 1A */	lis r20, lbl_801A63BC@ha
/* 801302D8 0012B7F8  3E A0 80 1A */	lis r21, lbl_801A6398@ha
/* 801302DC 0012B7FC  3E C0 80 1A */	lis r22, lbl_801A63EC@ha
/* 801302E0 0012B800  3E E0 80 1A */	lis r23, lbl_801A63C8@ha
/* 801302E4 0012B804  3F 60 80 1A */	lis r27, lbl_801A638C@ha
/* 801302E8 0012B808  3F 80 80 1A */	lis r28, lbl_801A6368@ha
/* 801302EC 0012B80C  48 00 00 F8 */	b .L_801303E4
.L_801302F0:
/* 801302F0 0012B810  2C 00 00 00 */	cmpwi r0, 0
/* 801302F4 0012B814  40 82 00 18 */	bne .L_8013030C
/* 801302F8 0012B818  38 72 64 1C */	addi r3, r18, lbl_801A641C@l
/* 801302FC 0012B81C  38 B3 63 F8 */	addi r5, r19, lbl_801A63F8@l
/* 80130300 0012B820  38 80 01 FB */	li r4, 0x1fb
/* 80130304 0012B824  4C C6 31 82 */	crclr 6
/* 80130308 0012B828  4B FE 5A B9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013030C:
/* 8013030C 0012B82C  82 3D 00 04 */	lwz r17, 4(r29)
/* 80130310 0012B830  2C 11 00 00 */	cmpwi r17, 0
/* 80130314 0012B834  40 82 00 18 */	bne .L_8013032C
/* 80130318 0012B838  38 74 63 BC */	addi r3, r20, lbl_801A63BC@l
/* 8013031C 0012B83C  38 B5 63 98 */	addi r5, r21, lbl_801A6398@l
/* 80130320 0012B840  38 80 02 3D */	li r4, 0x23d
/* 80130324 0012B844  4C C6 31 82 */	crclr 6
/* 80130328 0012B848  4B FE 5A 99 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013032C:
/* 8013032C 0012B84C  2C 11 00 00 */	cmpwi r17, 0
/* 80130330 0012B850  40 82 00 18 */	bne .L_80130348
/* 80130334 0012B854  38 76 63 EC */	addi r3, r22, lbl_801A63EC@l
/* 80130338 0012B858  38 B7 63 C8 */	addi r5, r23, lbl_801A63C8@l
/* 8013033C 0012B85C  38 80 01 93 */	li r4, 0x193
/* 80130340 0012B860  4C C6 31 82 */	crclr 6
/* 80130344 0012B864  4B FE 5A 7D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130348:
/* 80130348 0012B868  2C 11 00 00 */	cmpwi r17, 0
/* 8013034C 0012B86C  41 82 00 70 */	beq .L_801303BC
/* 80130350 0012B870  3B 11 00 0C */	addi r24, r17, 0xc
/* 80130354 0012B874  48 00 00 4C */	b .L_801303A0
.L_80130358:
/* 80130358 0012B878  83 18 00 04 */	lwz r24, 4(r24)
/* 8013035C 0012B87C  2C 18 00 00 */	cmpwi r24, 0
/* 80130360 0012B880  40 82 00 18 */	bne .L_80130378
/* 80130364 0012B884  38 79 63 5C */	addi r3, r25, lbl_801A635C@l
/* 80130368 0012B888  38 BA 63 38 */	addi r5, r26, lbl_801A6338@l
/* 8013036C 0012B88C  38 80 02 3D */	li r4, 0x23d
/* 80130370 0012B890  4C C6 31 82 */	crclr 6
/* 80130374 0012B894  4B FE 5A 4D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130378:
/* 80130378 0012B898  2C 18 00 00 */	cmpwi r24, 0
/* 8013037C 0012B89C  41 82 00 24 */	beq .L_801303A0
/* 80130380 0012B8A0  81 98 00 0C */	lwz r12, 0xc(r24)
/* 80130384 0012B8A4  2C 0C 00 00 */	cmpwi r12, 0
/* 80130388 0012B8A8  41 82 00 18 */	beq .L_801303A0
/* 8013038C 0012B8AC  38 78 00 20 */	addi r3, r24, 0x20
/* 80130390 0012B8B0  80 98 00 08 */	lwz r4, 8(r24)
/* 80130394 0012B8B4  80 B8 00 10 */	lwz r5, 0x10(r24)
/* 80130398 0012B8B8  7D 89 03 A6 */	mtctr r12
/* 8013039C 0012B8BC  4E 80 04 21 */	bctrl
.L_801303A0:
/* 801303A0 0012B8C0  80 11 00 0C */	lwz r0, 0xc(r17)
/* 801303A4 0012B8C4  7C 18 00 40 */	cmplw r24, r0
/* 801303A8 0012B8C8  40 82 FF B0 */	bne .L_80130358
/* 801303AC 0012B8CC  34 71 00 08 */	addic. r3, r17, 8
/* 801303B0 0012B8D0  41 82 00 0C */	beq .L_801303BC
/* 801303B4 0012B8D4  38 80 00 00 */	li r4, 0
/* 801303B8 0012B8D8  48 01 BB 55 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_801303BC:
/* 801303BC 0012B8DC  2C 11 00 00 */	cmpwi r17, 0
/* 801303C0 0012B8E0  40 82 00 18 */	bne .L_801303D8
/* 801303C4 0012B8E4  38 7B 63 8C */	addi r3, r27, lbl_801A638C@l
/* 801303C8 0012B8E8  38 BC 63 68 */	addi r5, r28, lbl_801A6368@l
/* 801303CC 0012B8EC  38 80 02 33 */	li r4, 0x233
/* 801303D0 0012B8F0  4C C6 31 82 */	crclr 6
/* 801303D4 0012B8F4  4B FE 59 ED */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801303D8:
/* 801303D8 0012B8F8  7E 24 8B 78 */	mr r4, r17
/* 801303DC 0012B8FC  38 7E 00 04 */	addi r3, r30, 4
/* 801303E0 0012B900  48 01 BF 9D */	bl Erase__Q46nw4hbm2ut6detail12LinkListImplFPQ36nw4hbm2ut12LinkListNode
.L_801303E4:
/* 801303E4 0012B904  80 1E 00 04 */	lwz r0, 4(r30)
/* 801303E8 0012B908  2C 00 00 00 */	cmpwi r0, 0
/* 801303EC 0012B90C  40 82 FF 04 */	bne .L_801302F0
.L_801303F0:
/* 801303F0 0012B910  80 7E 00 00 */	lwz r3, 0(r30)
/* 801303F4 0012B914  38 80 00 03 */	li r4, 3
/* 801303F8 0012B918  4B F8 76 C5 */	bl MEMFreeToFrmHeap
/* 801303FC 0012B91C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80130400 0012B920  38 80 00 14 */	li r4, 0x14
/* 80130404 0012B924  38 A0 00 04 */	li r5, 4
/* 80130408 0012B928  4B F8 75 95 */	bl MEMAllocFromFrmHeapEx
/* 8013040C 0012B92C  2C 03 00 00 */	cmpwi r3, 0
/* 80130410 0012B930  40 82 00 0C */	bne .L_8013041C
/* 80130414 0012B934  38 00 00 00 */	li r0, 0
/* 80130418 0012B938  48 00 00 70 */	b .L_80130488
.L_8013041C:
/* 8013041C 0012B93C  7C 72 1B 78 */	mr r18, r3
/* 80130420 0012B940  41 82 00 28 */	beq .L_80130448
/* 80130424 0012B944  38 00 00 00 */	li r0, 0
/* 80130428 0012B948  38 83 00 0C */	addi r4, r3, 0xc
/* 8013042C 0012B94C  90 03 00 00 */	stw r0, 0(r3)
/* 80130430 0012B950  90 03 00 04 */	stw r0, 4(r3)
/* 80130434 0012B954  90 03 00 0C */	stw r0, 0xc(r3)
/* 80130438 0012B958  90 03 00 10 */	stw r0, 0x10(r3)
/* 8013043C 0012B95C  90 03 00 08 */	stw r0, 8(r3)
/* 80130440 0012B960  90 83 00 0C */	stw r4, 0xc(r3)
/* 80130444 0012B964  90 83 00 10 */	stw r4, 0x10(r3)
.L_80130448:
/* 80130448 0012B968  2C 03 00 00 */	cmpwi r3, 0
/* 8013044C 0012B96C  3B BE 00 08 */	addi r29, r30, 8
/* 80130450 0012B970  40 82 00 20 */	bne .L_80130470
/* 80130454 0012B974  3C 60 80 1A */	lis r3, lbl_801A638C@ha
/* 80130458 0012B978  3C A0 80 1A */	lis r5, lbl_801A6368@ha
/* 8013045C 0012B97C  38 63 63 8C */	addi r3, r3, lbl_801A638C@l
/* 80130460 0012B980  38 80 02 33 */	li r4, 0x233
/* 80130464 0012B984  38 A5 63 68 */	addi r5, r5, lbl_801A6368@l
/* 80130468 0012B988  4C C6 31 82 */	crclr 6
/* 8013046C 0012B98C  4B FE 59 55 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130470:
/* 80130470 0012B990  93 A1 00 08 */	stw r29, 8(r1)
/* 80130474 0012B994  7E 45 93 78 */	mr r5, r18
/* 80130478 0012B998  38 7E 00 04 */	addi r3, r30, 4
/* 8013047C 0012B99C  38 81 00 08 */	addi r4, r1, 8
/* 80130480 0012B9A0  48 01 BE 01 */	bl Insert__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8IteratorPQ36nw4hbm2ut12LinkListNode
/* 80130484 0012B9A4  38 00 00 01 */	li r0, 1
.L_80130488:
/* 80130488 0012B9A8  2C 00 00 00 */	cmpwi r0, 0
/* 8013048C 0012B9AC  40 82 00 18 */	bne .L_801304A4
/* 80130490 0012B9B0  38 7F 00 00 */	addi r3, r31, 0
/* 80130494 0012B9B4  38 BF 00 68 */	addi r5, r31, 0x68
/* 80130498 0012B9B8  38 80 00 91 */	li r4, 0x91
/* 8013049C 0012B9BC  4C C6 31 82 */	crclr 6
/* 801304A0 0012B9C0  4B FE 59 21 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801304A4:
/* 801304A4 0012B9C4  39 61 00 50 */	addi r11, r1, 0x50
/* 801304A8 0012B9C8  48 02 C4 C1 */	bl _restgpr_17
/* 801304AC 0012B9CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801304B0 0012B9D0  7C 08 03 A6 */	mtlr r0
/* 801304B4 0012B9D4  38 21 00 50 */	addi r1, r1, 0x50
/* 801304B8 0012B9D8  4E 80 00 20 */	blr

glabel Alloc__Q46nw4hbm3snd6detail9FrameHeapFUlPFPvUlPv_vPv
/* 801304BC 0012B9DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801304C0 0012B9E0  7C 08 02 A6 */	mflr r0
/* 801304C4 0012B9E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801304C8 0012B9E8  39 61 00 30 */	addi r11, r1, 0x30
/* 801304CC 0012B9EC  48 02 C4 75 */	bl _savegpr_26
/* 801304D0 0012B9F0  80 03 00 00 */	lwz r0, 0(r3)
/* 801304D4 0012B9F4  3F A0 80 1A */	lis r29, lbl_801A6160@ha
/* 801304D8 0012B9F8  7C 7A 1B 78 */	mr r26, r3
/* 801304DC 0012B9FC  7C 9B 23 78 */	mr r27, r4
/* 801304E0 0012BA00  2C 00 00 00 */	cmpwi r0, 0
/* 801304E4 0012BA04  7C BF 2B 78 */	mr r31, r5
/* 801304E8 0012BA08  7C DE 33 78 */	mr r30, r6
/* 801304EC 0012BA0C  3B BD 61 60 */	addi r29, r29, lbl_801A6160@l
/* 801304F0 0012BA10  40 82 00 18 */	bne .L_80130508
/* 801304F4 0012BA14  38 7D 00 00 */	addi r3, r29, 0
/* 801304F8 0012BA18  38 BD 00 44 */	addi r5, r29, 0x44
/* 801304FC 0012BA1C  38 80 00 A2 */	li r4, 0xa2
/* 80130500 0012BA20  4C C6 31 82 */	crclr 6
/* 80130504 0012BA24  4B FE 58 BD */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130508:
/* 80130508 0012BA28  38 1B 00 1F */	addi r0, r27, 0x1f
/* 8013050C 0012BA2C  80 7A 00 00 */	lwz r3, 0(r26)
/* 80130510 0012BA30  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80130514 0012BA34  38 A0 00 20 */	li r5, 0x20
/* 80130518 0012BA38  38 84 00 20 */	addi r4, r4, 0x20
/* 8013051C 0012BA3C  4B F8 74 81 */	bl MEMAllocFromFrmHeapEx
/* 80130520 0012BA40  2C 03 00 00 */	cmpwi r3, 0
/* 80130524 0012BA44  7C 7C 1B 78 */	mr r28, r3
/* 80130528 0012BA48  40 82 00 0C */	bne .L_80130534
/* 8013052C 0012BA4C  38 60 00 00 */	li r3, 0
/* 80130530 0012BA50  48 00 00 F4 */	b .L_80130624
.L_80130534:
/* 80130534 0012BA54  41 82 00 1C */	beq .L_80130550
/* 80130538 0012BA58  38 00 00 00 */	li r0, 0
/* 8013053C 0012BA5C  90 03 00 00 */	stw r0, 0(r3)
/* 80130540 0012BA60  90 03 00 04 */	stw r0, 4(r3)
/* 80130544 0012BA64  93 63 00 08 */	stw r27, 8(r3)
/* 80130548 0012BA68  93 E3 00 0C */	stw r31, 0xc(r3)
/* 8013054C 0012BA6C  93 C3 00 10 */	stw r30, 0x10(r3)
.L_80130550:
/* 80130550 0012BA70  80 1A 00 04 */	lwz r0, 4(r26)
/* 80130554 0012BA74  2C 00 00 00 */	cmpwi r0, 0
/* 80130558 0012BA78  40 82 00 20 */	bne .L_80130578
/* 8013055C 0012BA7C  3C 60 80 1A */	lis r3, lbl_801A641C@ha
/* 80130560 0012BA80  3C A0 80 1A */	lis r5, lbl_801A63F8@ha
/* 80130564 0012BA84  38 63 64 1C */	addi r3, r3, lbl_801A641C@l
/* 80130568 0012BA88  38 80 01 FB */	li r4, 0x1fb
/* 8013056C 0012BA8C  38 A5 63 F8 */	addi r5, r5, lbl_801A63F8@l
/* 80130570 0012BA90  4C C6 31 82 */	crclr 6
/* 80130574 0012BA94  4B FE 58 4D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130578:
/* 80130578 0012BA98  83 DA 00 0C */	lwz r30, 0xc(r26)
/* 8013057C 0012BA9C  2C 1E 00 00 */	cmpwi r30, 0
/* 80130580 0012BAA0  40 82 00 20 */	bne .L_801305A0
/* 80130584 0012BAA4  3C 60 80 1A */	lis r3, lbl_801A63BC@ha
/* 80130588 0012BAA8  3C A0 80 1A */	lis r5, lbl_801A6398@ha
/* 8013058C 0012BAAC  38 63 63 BC */	addi r3, r3, lbl_801A63BC@l
/* 80130590 0012BAB0  38 80 02 3D */	li r4, 0x23d
/* 80130594 0012BAB4  38 A5 63 98 */	addi r5, r5, lbl_801A6398@l
/* 80130598 0012BAB8  4C C6 31 82 */	crclr 6
/* 8013059C 0012BABC  4B FE 58 25 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801305A0:
/* 801305A0 0012BAC0  2C 1E 00 00 */	cmpwi r30, 0
/* 801305A4 0012BAC4  40 82 00 20 */	bne .L_801305C4
/* 801305A8 0012BAC8  3C 60 80 1A */	lis r3, lbl_801A63EC@ha
/* 801305AC 0012BACC  3C A0 80 1A */	lis r5, lbl_801A63C8@ha
/* 801305B0 0012BAD0  38 63 63 EC */	addi r3, r3, lbl_801A63EC@l
/* 801305B4 0012BAD4  38 80 01 93 */	li r4, 0x193
/* 801305B8 0012BAD8  38 A5 63 C8 */	addi r5, r5, lbl_801A63C8@l
/* 801305BC 0012BADC  4C C6 31 82 */	crclr 6
/* 801305C0 0012BAE0  4B FE 58 01 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801305C4:
/* 801305C4 0012BAE4  2C 1C 00 00 */	cmpwi r28, 0
/* 801305C8 0012BAE8  3B FE 00 0C */	addi r31, r30, 0xc
/* 801305CC 0012BAEC  40 82 00 20 */	bne .L_801305EC
/* 801305D0 0012BAF0  3C 60 80 1A */	lis r3, lbl_801A644C@ha
/* 801305D4 0012BAF4  3C A0 80 1A */	lis r5, lbl_801A6428@ha
/* 801305D8 0012BAF8  38 63 64 4C */	addi r3, r3, lbl_801A644C@l
/* 801305DC 0012BAFC  38 80 02 33 */	li r4, 0x233
/* 801305E0 0012BB00  38 A5 64 28 */	addi r5, r5, lbl_801A6428@l
/* 801305E4 0012BB04  4C C6 31 82 */	crclr 6
/* 801305E8 0012BB08  4B FE 57 D9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801305EC:
/* 801305EC 0012BB0C  93 E1 00 08 */	stw r31, 8(r1)
/* 801305F0 0012BB10  7F 85 E3 78 */	mr r5, r28
/* 801305F4 0012BB14  38 7E 00 08 */	addi r3, r30, 8
/* 801305F8 0012BB18  38 81 00 08 */	addi r4, r1, 8
/* 801305FC 0012BB1C  48 01 BC 85 */	bl Insert__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8IteratorPQ36nw4hbm2ut12LinkListNode
/* 80130600 0012BB20  38 1C 00 20 */	addi r0, r28, 0x20
/* 80130604 0012BB24  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80130608 0012BB28  41 82 00 18 */	beq .L_80130620
/* 8013060C 0012BB2C  38 7D 00 00 */	addi r3, r29, 0
/* 80130610 0012BB30  38 BD 00 94 */	addi r5, r29, 0x94
/* 80130614 0012BB34  38 80 00 AE */	li r4, 0xae
/* 80130618 0012BB38  4C C6 31 82 */	crclr 6
/* 8013061C 0012BB3C  4B FE 57 A5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130620:
/* 80130620 0012BB40  38 7C 00 20 */	addi r3, r28, 0x20
.L_80130624:
/* 80130624 0012BB44  39 61 00 30 */	addi r11, r1, 0x30
/* 80130628 0012BB48  48 02 C3 65 */	bl _restgpr_26
/* 8013062C 0012BB4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80130630 0012BB50  7C 08 03 A6 */	mtlr r0
/* 80130634 0012BB54  38 21 00 30 */	addi r1, r1, 0x30
/* 80130638 0012BB58  4E 80 00 20 */	blr

glabel GetFreeSize__Q46nw4hbm3snd6detail9FrameHeapCFv
/* 8013063C 0012BB5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130640 0012BB60  7C 08 02 A6 */	mflr r0
/* 80130644 0012BB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130648 0012BB68  80 03 00 00 */	lwz r0, 0(r3)
/* 8013064C 0012BB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130650 0012BB70  7C 7F 1B 78 */	mr r31, r3
/* 80130654 0012BB74  2C 00 00 00 */	cmpwi r0, 0
/* 80130658 0012BB78  40 82 00 20 */	bne .L_80130678
/* 8013065C 0012BB7C  3C 60 80 1A */	lis r3, lbl_801A6160@ha
/* 80130660 0012BB80  3C A0 80 1A */	lis r5, lbl_801A61A4@ha
/* 80130664 0012BB84  38 63 61 60 */	addi r3, r3, lbl_801A6160@l
/* 80130668 0012BB88  38 80 01 27 */	li r4, 0x127
/* 8013066C 0012BB8C  38 A5 61 A4 */	addi r5, r5, lbl_801A61A4@l
/* 80130670 0012BB90  4C C6 31 82 */	crclr 6
/* 80130674 0012BB94  4B FE 57 4D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80130678:
/* 80130678 0012BB98  80 7F 00 00 */	lwz r3, 0(r31)
/* 8013067C 0012BB9C  38 80 00 20 */	li r4, 0x20
/* 80130680 0012BBA0  4B F8 74 DD */	bl MEMGetAllocatableSizeForFrmHeapEx
/* 80130684 0012BBA4  28 03 00 20 */	cmplwi r3, 0x20
/* 80130688 0012BBA8  40 80 00 0C */	bge .L_80130694
/* 8013068C 0012BBAC  38 60 00 00 */	li r3, 0
/* 80130690 0012BBB0  48 00 00 0C */	b .L_8013069C
.L_80130694:
/* 80130694 0012BBB4  38 03 FF E0 */	addi r0, r3, -32
/* 80130698 0012BBB8  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
.L_8013069C:
/* 8013069C 0012BBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801306A0 0012BBC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801306A4 0012BBC4  7C 08 03 A6 */	mtlr r0
/* 801306A8 0012BBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 801306AC 0012BBCC  4E 80 00 20 */	blr

