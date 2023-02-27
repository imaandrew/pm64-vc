.include "macros.inc"

.section .text, "ax"

glabel InvalidateWaveData__Q46nw4hbm3snd6detail9SeqPlayerFPCvPCv
/* 80130C90 0012C1B0  4E 80 00 20 */	blr

glabel lbl_80130C94
/* 80130C94 0012C1B4  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80130C98 0012C1B8  4E 80 00 20 */	blr

glabel lbl_80130C9C
/* 80130C9C 0012C1BC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80130CA0 0012C1C0  4E 80 00 20 */	blr

glabel lbl_80130CA4
/* 80130CA4 0012C1C4  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80130CA8 0012C1C8  4E 80 00 20 */	blr

glabel lbl_80130CAC
/* 80130CAC 0012C1CC  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80130CB0 0012C1D0  4E 80 00 20 */	blr

glabel lbl_80130CB4
/* 80130CB4 0012C1D4  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80130CB8 0012C1D8  4E 80 00 20 */	blr

glabel lbl_80130CBC
/* 80130CBC 0012C1DC  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80130CC0 0012C1E0  4E 80 00 20 */	blr

glabel lbl_80130CC4
/* 80130CC4 0012C1E4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80130CC8 0012C1E8  4E 80 00 20 */	blr

glabel lbl_80130CCC
/* 80130CCC 0012C1EC  88 63 00 18 */	lbz r3, 0x18(r3)
/* 80130CD0 0012C1F0  7C 03 00 D0 */	neg r0, r3
/* 80130CD4 0012C1F4  7C 00 1B 78 */	or r0, r0, r3
/* 80130CD8 0012C1F8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80130CDC 0012C1FC  4E 80 00 20 */	blr

glabel IsPause__Q44nw4r3snd6detail9SeqPlayerCFv
/* 80130CE0 0012C200  88 63 00 17 */	lbz r3, 0x17(r3)
/* 80130CE4 0012C204  7C 03 00 D0 */	neg r0, r3
/* 80130CE8 0012C208  7C 00 1B 78 */	or r0, r0, r3
/* 80130CEC 0012C20C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80130CF0 0012C210  4E 80 00 20 */	blr

glabel IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv
/* 80130CF4 0012C214  88 63 00 16 */	lbz r3, 0x16(r3)
/* 80130CF8 0012C218  7C 03 00 D0 */	neg r0, r3
/* 80130CFC 0012C21C  7C 00 1B 78 */	or r0, r0, r3
/* 80130D00 0012C220  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80130D04 0012C224  4E 80 00 20 */	blr

glabel IsActive__Q44nw4r3snd6detail9SeqPlayerCFv
/* 80130D08 0012C228  88 63 00 15 */	lbz r3, 0x15(r3)
/* 80130D0C 0012C22C  7C 03 00 D0 */	neg r0, r3
/* 80130D10 0012C230  7C 00 1B 78 */	or r0, r0, r3
/* 80130D14 0012C234  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80130D18 0012C238  4E 80 00 20 */	blr

glabel __InvalidateWaveData__Q46nw4hbm3snd6detail9SeqPlayerFPCvPCv
/* 80130D1C 0012C23C  38 63 FF F8 */	addi r3, r3, -8
/* 80130D20 0012C240  4B FF FF 70 */	b InvalidateWaveData__Q46nw4hbm3snd6detail9SeqPlayerFPCvPCv

glabel __InvalidateData__Q46nw4hbm3snd6detail9SeqPlayerFPCvPCv
/* 80130D24 0012C244  38 63 FF F8 */	addi r3, r3, -8
/* 80130D28 0012C248  48 00 37 BC */	b InvalidateData__Q46nw4hbm3snd6detail9SeqPlayerFPCvPCv

glabel lbl_80130D2C
/* 80130D2C 0012C24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130D30 0012C250  7C 08 02 A6 */	mflr r0
/* 80130D34 0012C254  2C 03 00 00 */	cmpwi r3, 0
/* 80130D38 0012C258  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130D3C 0012C25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130D40 0012C260  7C 7F 1B 78 */	mr r31, r3
/* 80130D44 0012C264  41 82 00 10 */	beq .L_80130D54
/* 80130D48 0012C268  2C 04 00 00 */	cmpwi r4, 0
/* 80130D4C 0012C26C  40 81 00 08 */	ble .L_80130D54
/* 80130D50 0012C270  48 02 B4 C1 */	bl operator_delete
.L_80130D54:
/* 80130D54 0012C274  7F E3 FB 78 */	mr r3, r31
/* 80130D58 0012C278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130D5C 0012C27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130D60 0012C280  7C 08 03 A6 */	mtlr r0
/* 80130D64 0012C284  38 21 00 10 */	addi r1, r1, 0x10
/* 80130D68 0012C288  4E 80 00 20 */	blr
