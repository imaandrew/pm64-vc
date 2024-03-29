.include "macros.inc"

.section .text, "ax"

glabel hidd_proc_repage_timeout
/* 800F2808 000EDD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F280C 000EDD2C  7C 08 02 A6 */	mflr r0
/* 800F2810 000EDD30  3C 60 80 22 */	lis r3, lbl_802230D0@ha
/* 800F2814 000EDD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2818 000EDD38  38 63 30 D0 */	addi r3, r3, lbl_802230D0@l
/* 800F281C 000EDD3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2820 000EDD40  88 03 01 41 */	lbz r0, 0x141(r3)
/* 800F2824 000EDD44  28 00 00 05 */	cmplwi r0, 5
/* 800F2828 000EDD48  41 80 00 18 */	blt .L_800F2840
/* 800F282C 000EDD4C  3C 60 00 1E */	lis r3, 0x001E0004@ha
/* 800F2830 000EDD50  3C 80 80 1A */	lis r4, lbl_8019D818@ha
/* 800F2834 000EDD54  38 63 00 04 */	addi r3, r3, 0x001E0004@l
/* 800F2838 000EDD58  38 84 D8 18 */	addi r4, r4, lbl_8019D818@l
/* 800F283C 000EDD5C  4B FE A8 B1 */	bl LogMsg_0
.L_800F2840:
/* 800F2840 000EDD60  3F E0 80 22 */	lis r31, lbl_802230D0@ha
/* 800F2844 000EDD64  3B FF 30 D0 */	addi r31, r31, lbl_802230D0@l
/* 800F2848 000EDD68  88 7F 00 09 */	lbz r3, 9(r31)
/* 800F284C 000EDD6C  38 03 00 01 */	addi r0, r3, 1
/* 800F2850 000EDD70  98 1F 00 09 */	stb r0, 9(r31)
/* 800F2854 000EDD74  4B FF FE F5 */	bl hidd_conn_initiate
/* 800F2858 000EDD78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F285C 000EDD7C  41 82 00 48 */	beq .L_800F28A4
/* 800F2860 000EDD80  88 1F 00 09 */	lbz r0, 9(r31)
/* 800F2864 000EDD84  28 00 00 0F */	cmplwi r0, 0xf
/* 800F2868 000EDD88  40 81 00 28 */	ble .L_800F2890
/* 800F286C 000EDD8C  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 800F2870 000EDD90  38 00 00 00 */	li r0, 0
/* 800F2874 000EDD94  98 1F 00 08 */	stb r0, 8(r31)
/* 800F2878 000EDD98  38 60 00 01 */	li r3, 1
/* 800F287C 000EDD9C  38 80 00 00 */	li r4, 0
/* 800F2880 000EDDA0  38 A0 00 00 */	li r5, 0
/* 800F2884 000EDDA4  7D 89 03 A6 */	mtctr r12
/* 800F2888 000EDDA8  4E 80 04 21 */	bctrl
/* 800F288C 000EDDAC  48 00 00 30 */	b .L_800F28BC
.L_800F2890:
/* 800F2890 000EDDB0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 800F2894 000EDDB4  38 80 00 16 */	li r4, 0x16
/* 800F2898 000EDDB8  38 A0 00 01 */	li r5, 1
/* 800F289C 000EDDBC  4B FE AE 1D */	bl btu_start_timer
/* 800F28A0 000EDDC0  48 00 00 1C */	b .L_800F28BC
.L_800F28A4:
/* 800F28A4 000EDDC4  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 800F28A8 000EDDC8  38 60 00 02 */	li r3, 2
/* 800F28AC 000EDDCC  88 9F 00 09 */	lbz r4, 9(r31)
/* 800F28B0 000EDDD0  38 A0 00 00 */	li r5, 0
/* 800F28B4 000EDDD4  7D 89 03 A6 */	mtctr r12
/* 800F28B8 000EDDD8  4E 80 04 21 */	bctrl
.L_800F28BC:
/* 800F28BC 000EDDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F28C0 000EDDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F28C4 000EDDE4  7C 08 03 A6 */	mtlr r0
/* 800F28C8 000EDDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 800F28CC 000EDDEC  4E 80 00 20 */	blr
