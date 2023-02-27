.include "macros.inc"

.section .text, "ax"

glabel detail_AttachSound__Q36nw4hbm3snd11SoundHandleFPQ46nw4hbm3snd6detail10BasicSound
/* 8013C7F0 00137D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C7F4 00137D14  7C 08 02 A6 */	mflr r0
/* 8013C7F8 00137D18  2C 04 00 00 */	cmpwi r4, 0
/* 8013C7FC 00137D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C800 00137D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C804 00137D24  7C 9F 23 78 */	mr r31, r4
/* 8013C808 00137D28  93 C1 00 08 */	stw r30, 8(r1)
/* 8013C80C 00137D2C  7C 7E 1B 78 */	mr r30, r3
/* 8013C810 00137D30  40 82 00 20 */	bne .L_8013C830
/* 8013C814 00137D34  3C 60 80 1B */	lis r3, lbl_801A9228@ha
/* 8013C818 00137D38  3C A0 80 1B */	lis r5, lbl_801A9240@ha
/* 8013C81C 00137D3C  38 63 92 28 */	addi r3, r3, lbl_801A9228@l
/* 8013C820 00137D40  38 80 00 55 */	li r4, 0x55
/* 8013C824 00137D44  38 A5 92 40 */	addi r5, r5, lbl_801A9240@l
/* 8013C828 00137D48  4C C6 31 82 */	crclr 6
/* 8013C82C 00137D4C  4B FD 95 95 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013C830:
/* 8013C830 00137D50  93 FE 00 00 */	stw r31, 0(r30)
/* 8013C834 00137D54  7F E3 FB 78 */	mr r3, r31
/* 8013C838 00137D58  4B FF 13 AD */	bl IsAttachedGeneralHandle__Q46nw4hbm3snd6detail10BasicSoundFv
/* 8013C83C 00137D5C  2C 03 00 00 */	cmpwi r3, 0
/* 8013C840 00137D60  41 82 00 0C */	beq .L_8013C84C
/* 8013C844 00137D64  80 7E 00 00 */	lwz r3, 0(r30)
/* 8013C848 00137D68  4B FF 13 B1 */	bl DetachGeneralHandle__Q46nw4hbm3snd6detail10BasicSoundFv
.L_8013C84C:
/* 8013C84C 00137D6C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8013C850 00137D70  93 C3 00 08 */	stw r30, 8(r3)
/* 8013C854 00137D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C858 00137D78  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013C85C 00137D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C860 00137D80  7C 08 03 A6 */	mtlr r0
/* 8013C864 00137D84  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C868 00137D88  4E 80 00 20 */	blr

glabel DetachSound__Q36nw4hbm3snd11SoundHandleFv
/* 8013C86C 00137D8C  80 83 00 00 */	lwz r4, 0(r3)
/* 8013C870 00137D90  2C 04 00 00 */	cmpwi r4, 0
/* 8013C874 00137D94  41 82 00 30 */	beq .L_8013C8A4
/* 8013C878 00137D98  80 04 00 08 */	lwz r0, 8(r4)
/* 8013C87C 00137D9C  7C 00 18 40 */	cmplw r0, r3
/* 8013C880 00137DA0  40 82 00 0C */	bne .L_8013C88C
/* 8013C884 00137DA4  38 00 00 00 */	li r0, 0
/* 8013C888 00137DA8  90 04 00 08 */	stw r0, 8(r4)
.L_8013C88C:
/* 8013C88C 00137DAC  80 83 00 00 */	lwz r4, 0(r3)
/* 8013C890 00137DB0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8013C894 00137DB4  7C 00 18 40 */	cmplw r0, r3
/* 8013C898 00137DB8  40 82 00 0C */	bne .L_8013C8A4
/* 8013C89C 00137DBC  38 00 00 00 */	li r0, 0
/* 8013C8A0 00137DC0  90 04 00 0C */	stw r0, 0xc(r4)
.L_8013C8A4:
/* 8013C8A4 00137DC4  80 03 00 00 */	lwz r0, 0(r3)
/* 8013C8A8 00137DC8  2C 00 00 00 */	cmpwi r0, 0
/* 8013C8AC 00137DCC  4D 82 00 20 */	beqlr
/* 8013C8B0 00137DD0  38 00 00 00 */	li r0, 0
/* 8013C8B4 00137DD4  90 03 00 00 */	stw r0, 0(r3)
/* 8013C8B8 00137DD8  4E 80 00 20 */	blr
