.include "macros.inc"

.section .text, "ax"

glabel __ct__Q46nw4hbm3snd6detail11MmlSeqTrackFv
/* 80131EAC 0012D3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80131EB0 0012D3D0  7C 08 02 A6 */	mflr r0
/* 80131EB4 0012D3D4  3C 80 80 1A */	lis r4, lbl_801A64E8@ha
/* 80131EB8 0012D3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80131EBC 0012D3DC  38 84 64 E8 */	addi r4, r4, lbl_801A64E8@l
/* 80131EC0 0012D3E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80131EC4 0012D3E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80131EC8 0012D3E8  7C 7E 1B 78 */	mr r30, r3
/* 80131ECC 0012D3EC  90 83 00 00 */	stw r4, 0(r3)
/* 80131ED0 0012D3F0  38 63 00 68 */	addi r3, r3, 0x68
/* 80131ED4 0012D3F4  4B FF EA 8D */	bl Init__Q46nw4hbm3snd6detail8LfoParamFv
/* 80131ED8 0012D3F8  3B E0 00 00 */	li r31, 0
/* 80131EDC 0012D3FC  7F C3 F3 78 */	mr r3, r30
/* 80131EE0 0012D400  93 FE 00 B4 */	stw r31, 0xb4(r30)
/* 80131EE4 0012D404  48 00 35 89 */	bl InitParam__Q46nw4hbm3snd6detail8SeqTrackFv
/* 80131EE8 0012D408  3C 80 80 1A */	lis r4, lbl_801A69F8@ha
/* 80131EEC 0012D40C  38 00 00 01 */	li r0, 1
/* 80131EF0 0012D410  38 84 69 F8 */	addi r4, r4, lbl_801A69F8@l
/* 80131EF4 0012D414  98 1E 00 C1 */	stb r0, 0xc1(r30)
/* 80131EF8 0012D418  7F C3 F3 78 */	mr r3, r30
/* 80131EFC 0012D41C  90 9E 00 00 */	stw r4, 0(r30)
/* 80131F00 0012D420  9B FE 00 C2 */	stb r31, 0xc2(r30)
/* 80131F04 0012D424  98 1E 00 C0 */	stb r0, 0xc0(r30)
/* 80131F08 0012D428  9B FE 00 C6 */	stb r31, 0xc6(r30)
/* 80131F0C 0012D42C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80131F10 0012D430  83 C1 00 08 */	lwz r30, 8(r1)
/* 80131F14 0012D434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80131F18 0012D438  7C 08 03 A6 */	mtlr r0
/* 80131F1C 0012D43C  38 21 00 10 */	addi r1, r1, 0x10
/* 80131F20 0012D440  4E 80 00 20 */	blr 

glabel Parse__Q46nw4hbm3snd6detail11MmlSeqTrackFb
/* 80131F24 0012D444  7C 60 1B 78 */	mr r0, r3
/* 80131F28 0012D448  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80131F2C 0012D44C  7C 85 23 78 */	mr r5, r4
/* 80131F30 0012D450  7C 04 03 78 */	mr r4, r0
/* 80131F34 0012D454  4B FF EE 38 */	b Parse__Q46nw4hbm3snd6detail9MmlParserCFPQ46nw4hbm3snd6detail11MmlSeqTrackb

glabel __dt__Q46nw4hbm3snd6detail11MmlSeqTrackFv
/* 80131F38 0012D458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80131F3C 0012D45C  7C 08 02 A6 */	mflr r0
/* 80131F40 0012D460  2C 03 00 00 */	cmpwi r3, 0
/* 80131F44 0012D464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80131F48 0012D468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80131F4C 0012D46C  7C 7F 1B 78 */	mr r31, r3
/* 80131F50 0012D470  41 82 00 10 */	beq .L_80131F60
/* 80131F54 0012D474  2C 04 00 00 */	cmpwi r4, 0
/* 80131F58 0012D478  40 81 00 08 */	ble .L_80131F60
/* 80131F5C 0012D47C  48 02 A2 B5 */	bl operator_delete
.L_80131F60:
/* 80131F60 0012D480  7F E3 FB 78 */	mr r3, r31
/* 80131F64 0012D484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80131F68 0012D488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80131F6C 0012D48C  7C 08 03 A6 */	mtlr r0
/* 80131F70 0012D490  38 21 00 10 */	addi r1, r1, 0x10
/* 80131F74 0012D494  4E 80 00 20 */	blr 

