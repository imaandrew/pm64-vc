.include "macros.inc"

.section .text, "ax"

glabel __copy_longs_aligned
/* 801624B4 0015D9D4  7C 03 00 D0 */	neg r0, r3
/* 801624B8 0015D9D8  38 84 FF FF */	addi r4, r4, -1
/* 801624BC 0015D9DC  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 801624C0 0015D9E0  38 63 FF FF */	addi r3, r3, -1
/* 801624C4 0015D9E4  41 82 00 18 */	beq .L_801624DC
/* 801624C8 0015D9E8  7C A6 28 50 */	subf r5, r6, r5
.L_801624CC:
/* 801624CC 0015D9EC  8C 04 00 01 */	lbzu r0, 1(r4)
/* 801624D0 0015D9F0  34 C6 FF FF */	addic. r6, r6, -1
/* 801624D4 0015D9F4  9C 03 00 01 */	stbu r0, 1(r3)
/* 801624D8 0015D9F8  40 82 FF F4 */	bne .L_801624CC
.L_801624DC:
/* 801624DC 0015D9FC  54 A6 D9 7F */	rlwinm. r6, r5, 0x1b, 5, 0x1f
/* 801624E0 0015DA00  38 E4 FF FD */	addi r7, r4, -3
/* 801624E4 0015DA04  38 83 FF FD */	addi r4, r3, -3
/* 801624E8 0015DA08  41 82 00 4C */	beq .L_80162534
.L_801624EC:
/* 801624EC 0015DA0C  80 67 00 04 */	lwz r3, 4(r7)
/* 801624F0 0015DA10  34 C6 FF FF */	addic. r6, r6, -1
/* 801624F4 0015DA14  80 07 00 08 */	lwz r0, 8(r7)
/* 801624F8 0015DA18  90 64 00 04 */	stw r3, 4(r4)
/* 801624FC 0015DA1C  80 67 00 0C */	lwz r3, 0xc(r7)
/* 80162500 0015DA20  90 04 00 08 */	stw r0, 8(r4)
/* 80162504 0015DA24  80 07 00 10 */	lwz r0, 0x10(r7)
/* 80162508 0015DA28  90 64 00 0C */	stw r3, 0xc(r4)
/* 8016250C 0015DA2C  80 67 00 14 */	lwz r3, 0x14(r7)
/* 80162510 0015DA30  90 04 00 10 */	stw r0, 0x10(r4)
/* 80162514 0015DA34  80 07 00 18 */	lwz r0, 0x18(r7)
/* 80162518 0015DA38  90 64 00 14 */	stw r3, 0x14(r4)
/* 8016251C 0015DA3C  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 80162520 0015DA40  90 04 00 18 */	stw r0, 0x18(r4)
/* 80162524 0015DA44  84 07 00 20 */	lwzu r0, 0x20(r7)
/* 80162528 0015DA48  90 64 00 1C */	stw r3, 0x1c(r4)
/* 8016252C 0015DA4C  94 04 00 20 */	stwu r0, 0x20(r4)
/* 80162530 0015DA50  40 82 FF BC */	bne .L_801624EC
.L_80162534:
/* 80162534 0015DA54  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 80162538 0015DA58  41 82 00 14 */	beq .L_8016254C
.L_8016253C:
/* 8016253C 0015DA5C  84 07 00 04 */	lwzu r0, 4(r7)
/* 80162540 0015DA60  34 63 FF FF */	addic. r3, r3, -1
/* 80162544 0015DA64  94 04 00 04 */	stwu r0, 4(r4)
/* 80162548 0015DA68  40 82 FF F4 */	bne .L_8016253C
.L_8016254C:
/* 8016254C 0015DA6C  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 80162550 0015DA70  38 C7 00 03 */	addi r6, r7, 3
/* 80162554 0015DA74  38 64 00 03 */	addi r3, r4, 3
/* 80162558 0015DA78  4D 82 00 20 */	beqlr
.L_8016255C:
/* 8016255C 0015DA7C  8C 06 00 01 */	lbzu r0, 1(r6)
/* 80162560 0015DA80  34 A5 FF FF */	addic. r5, r5, -1
/* 80162564 0015DA84  9C 03 00 01 */	stbu r0, 1(r3)
/* 80162568 0015DA88  40 82 FF F4 */	bne .L_8016255C
/* 8016256C 0015DA8C  4E 80 00 20 */	blr

glabel __copy_longs_rev_aligned
/* 80162570 0015DA90  7C E3 2A 14 */	add r7, r3, r5
/* 80162574 0015DA94  7C C4 2A 14 */	add r6, r4, r5
/* 80162578 0015DA98  54 E3 07 BF */	clrlwi. r3, r7, 0x1e
/* 8016257C 0015DA9C  41 82 00 18 */	beq .L_80162594
/* 80162580 0015DAA0  7C A3 28 50 */	subf r5, r3, r5
.L_80162584:
/* 80162584 0015DAA4  8C 06 FF FF */	lbzu r0, -1(r6)
/* 80162588 0015DAA8  34 63 FF FF */	addic. r3, r3, -1
/* 8016258C 0015DAAC  9C 07 FF FF */	stbu r0, -1(r7)
/* 80162590 0015DAB0  40 82 FF F4 */	bne .L_80162584
.L_80162594:
/* 80162594 0015DAB4  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 80162598 0015DAB8  41 82 00 4C */	beq .L_801625E4
.L_8016259C:
/* 8016259C 0015DABC  80 66 FF FC */	lwz r3, -4(r6)
/* 801625A0 0015DAC0  34 84 FF FF */	addic. r4, r4, -1
/* 801625A4 0015DAC4  80 06 FF F8 */	lwz r0, -8(r6)
/* 801625A8 0015DAC8  90 67 FF FC */	stw r3, -4(r7)
/* 801625AC 0015DACC  80 66 FF F4 */	lwz r3, -0xc(r6)
/* 801625B0 0015DAD0  90 07 FF F8 */	stw r0, -8(r7)
/* 801625B4 0015DAD4  80 06 FF F0 */	lwz r0, -0x10(r6)
/* 801625B8 0015DAD8  90 67 FF F4 */	stw r3, -0xc(r7)
/* 801625BC 0015DADC  80 66 FF EC */	lwz r3, -0x14(r6)
/* 801625C0 0015DAE0  90 07 FF F0 */	stw r0, -0x10(r7)
/* 801625C4 0015DAE4  80 06 FF E8 */	lwz r0, -0x18(r6)
/* 801625C8 0015DAE8  90 67 FF EC */	stw r3, -0x14(r7)
/* 801625CC 0015DAEC  80 66 FF E4 */	lwz r3, -0x1c(r6)
/* 801625D0 0015DAF0  90 07 FF E8 */	stw r0, -0x18(r7)
/* 801625D4 0015DAF4  84 06 FF E0 */	lwzu r0, -0x20(r6)
/* 801625D8 0015DAF8  90 67 FF E4 */	stw r3, -0x1c(r7)
/* 801625DC 0015DAFC  94 07 FF E0 */	stwu r0, -0x20(r7)
/* 801625E0 0015DB00  40 82 FF BC */	bne .L_8016259C
.L_801625E4:
/* 801625E4 0015DB04  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 801625E8 0015DB08  41 82 00 14 */	beq .L_801625FC
.L_801625EC:
/* 801625EC 0015DB0C  84 06 FF FC */	lwzu r0, -4(r6)
/* 801625F0 0015DB10  34 63 FF FF */	addic. r3, r3, -1
/* 801625F4 0015DB14  94 07 FF FC */	stwu r0, -4(r7)
/* 801625F8 0015DB18  40 82 FF F4 */	bne .L_801625EC
.L_801625FC:
/* 801625FC 0015DB1C  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 80162600 0015DB20  4D 82 00 20 */	beqlr
.L_80162604:
/* 80162604 0015DB24  8C 06 FF FF */	lbzu r0, -1(r6)
/* 80162608 0015DB28  34 A5 FF FF */	addic. r5, r5, -1
/* 8016260C 0015DB2C  9C 07 FF FF */	stbu r0, -1(r7)
/* 80162610 0015DB30  40 82 FF F4 */	bne .L_80162604
/* 80162614 0015DB34  4E 80 00 20 */	blr

glabel __copy_longs_unaligned
/* 80162618 0015DB38  7C 03 00 D0 */	neg r0, r3
/* 8016261C 0015DB3C  39 04 FF FF */	addi r8, r4, -1
/* 80162620 0015DB40  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 80162624 0015DB44  38 63 FF FF */	addi r3, r3, -1
/* 80162628 0015DB48  41 82 00 18 */	beq .L_80162640
/* 8016262C 0015DB4C  7C A6 28 50 */	subf r5, r6, r5
.L_80162630:
/* 80162630 0015DB50  8C 08 00 01 */	lbzu r0, 1(r8)
/* 80162634 0015DB54  34 C6 FF FF */	addic. r6, r6, -1
/* 80162638 0015DB58  9C 03 00 01 */	stbu r0, 1(r3)
/* 8016263C 0015DB5C  40 82 FF F4 */	bne .L_80162630
.L_80162640:
/* 80162640 0015DB60  38 08 00 01 */	addi r0, r8, 1
/* 80162644 0015DB64  38 C3 FF FD */	addi r6, r3, -3
/* 80162648 0015DB68  54 09 07 BE */	clrlwi r9, r0, 0x1e
/* 8016264C 0015DB6C  54 A7 E8 FE */	srwi r7, r5, 3
/* 80162650 0015DB70  7D 09 40 50 */	subf r8, r9, r8
/* 80162654 0015DB74  54 0A 1E F8 */	rlwinm r10, r0, 3, 0x1b, 0x1c
/* 80162658 0015DB78  84 88 00 01 */	lwzu r4, 1(r8)
/* 8016265C 0015DB7C  21 6A 00 20 */	subfic r11, r10, 0x20
.L_80162660:
/* 80162660 0015DB80  80 68 00 04 */	lwz r3, 4(r8)
/* 80162664 0015DB84  7C 84 50 30 */	slw r4, r4, r10
/* 80162668 0015DB88  34 E7 FF FF */	addic. r7, r7, -1
/* 8016266C 0015DB8C  7C 60 5C 30 */	srw r0, r3, r11
/* 80162670 0015DB90  7C 63 50 30 */	slw r3, r3, r10
/* 80162674 0015DB94  7C 80 03 78 */	or r0, r4, r0
/* 80162678 0015DB98  90 06 00 04 */	stw r0, 4(r6)
/* 8016267C 0015DB9C  84 88 00 08 */	lwzu r4, 8(r8)
/* 80162680 0015DBA0  7C 80 5C 30 */	srw r0, r4, r11
/* 80162684 0015DBA4  7C 60 03 78 */	or r0, r3, r0
/* 80162688 0015DBA8  94 06 00 08 */	stwu r0, 8(r6)
/* 8016268C 0015DBAC  40 82 FF D4 */	bne .L_80162660
/* 80162690 0015DBB0  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 80162694 0015DBB4  41 82 00 18 */	beq .L_801626AC
/* 80162698 0015DBB8  84 08 00 04 */	lwzu r0, 4(r8)
/* 8016269C 0015DBBC  7C 83 50 30 */	slw r3, r4, r10
/* 801626A0 0015DBC0  7C 00 5C 30 */	srw r0, r0, r11
/* 801626A4 0015DBC4  7C 60 03 78 */	or r0, r3, r0
/* 801626A8 0015DBC8  94 06 00 04 */	stwu r0, 4(r6)
.L_801626AC:
/* 801626AC 0015DBCC  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 801626B0 0015DBD0  38 88 00 03 */	addi r4, r8, 3
/* 801626B4 0015DBD4  38 66 00 03 */	addi r3, r6, 3
/* 801626B8 0015DBD8  4D 82 00 20 */	beqlr
/* 801626BC 0015DBDC  20 09 00 04 */	subfic r0, r9, 4
/* 801626C0 0015DBE0  7C 80 20 50 */	subf r4, r0, r4
.L_801626C4:
/* 801626C4 0015DBE4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 801626C8 0015DBE8  34 A5 FF FF */	addic. r5, r5, -1
/* 801626CC 0015DBEC  9C 03 00 01 */	stbu r0, 1(r3)
/* 801626D0 0015DBF0  40 82 FF F4 */	bne .L_801626C4
/* 801626D4 0015DBF4  4E 80 00 20 */	blr

glabel __copy_longs_rev_unaligned
/* 801626D8 0015DBF8  7D 63 2A 14 */	add r11, r3, r5
/* 801626DC 0015DBFC  7D 44 2A 14 */	add r10, r4, r5
/* 801626E0 0015DC00  55 63 07 BF */	clrlwi. r3, r11, 0x1e
/* 801626E4 0015DC04  41 82 00 18 */	beq .L_801626FC
/* 801626E8 0015DC08  7C A3 28 50 */	subf r5, r3, r5
.L_801626EC:
/* 801626EC 0015DC0C  8C 0A FF FF */	lbzu r0, -1(r10)
/* 801626F0 0015DC10  34 63 FF FF */	addic. r3, r3, -1
/* 801626F4 0015DC14  9C 0B FF FF */	stbu r0, -1(r11)
/* 801626F8 0015DC18  40 82 FF F4 */	bne .L_801626EC
.L_801626FC:
/* 801626FC 0015DC1C  55 48 1E F8 */	rlwinm r8, r10, 3, 0x1b, 0x1c
/* 80162700 0015DC20  55 47 07 BE */	clrlwi r7, r10, 0x1e
/* 80162704 0015DC24  21 28 00 20 */	subfic r9, r8, 0x20
/* 80162708 0015DC28  54 A6 E8 FE */	srwi r6, r5, 3
/* 8016270C 0015DC2C  20 07 00 04 */	subfic r0, r7, 4
/* 80162710 0015DC30  7D 4A 02 14 */	add r10, r10, r0
/* 80162714 0015DC34  84 8A FF FC */	lwzu r4, -4(r10)
.L_80162718:
/* 80162718 0015DC38  80 0A FF FC */	lwz r0, -4(r10)
/* 8016271C 0015DC3C  7C 83 4C 30 */	srw r3, r4, r9
/* 80162720 0015DC40  34 C6 FF FF */	addic. r6, r6, -1
/* 80162724 0015DC44  7C 04 40 30 */	slw r4, r0, r8
/* 80162728 0015DC48  7C 00 4C 30 */	srw r0, r0, r9
/* 8016272C 0015DC4C  7C 83 1B 78 */	or r3, r4, r3
/* 80162730 0015DC50  90 6B FF FC */	stw r3, -4(r11)
/* 80162734 0015DC54  84 8A FF F8 */	lwzu r4, -8(r10)
/* 80162738 0015DC58  7C 83 40 30 */	slw r3, r4, r8
/* 8016273C 0015DC5C  7C 60 03 78 */	or r0, r3, r0
/* 80162740 0015DC60  94 0B FF F8 */	stwu r0, -8(r11)
/* 80162744 0015DC64  40 82 FF D4 */	bne .L_80162718
/* 80162748 0015DC68  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 8016274C 0015DC6C  41 82 00 18 */	beq .L_80162764
/* 80162750 0015DC70  84 6A FF FC */	lwzu r3, -4(r10)
/* 80162754 0015DC74  7C 80 4C 30 */	srw r0, r4, r9
/* 80162758 0015DC78  7C 63 40 30 */	slw r3, r3, r8
/* 8016275C 0015DC7C  7C 60 03 78 */	or r0, r3, r0
/* 80162760 0015DC80  94 0B FF FC */	stwu r0, -4(r11)
.L_80162764:
/* 80162764 0015DC84  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 80162768 0015DC88  4D 82 00 20 */	beqlr
/* 8016276C 0015DC8C  7D 4A 3A 14 */	add r10, r10, r7
.L_80162770:
/* 80162770 0015DC90  8C 0A FF FF */	lbzu r0, -1(r10)
/* 80162774 0015DC94  34 A5 FF FF */	addic. r5, r5, -1
/* 80162778 0015DC98  9C 0B FF FF */	stbu r0, -1(r11)
/* 8016277C 0015DC9C  40 82 FF F4 */	bne .L_80162770
/* 80162780 0015DCA0  4E 80 00 20 */	blr
