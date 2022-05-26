.include "macros.inc"

.section .text, "ax"

glabel __ct__Q36nw4hbm3snd9SoundHeapFv
/* 8013C8BC 00137DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C8C0 00137DE0  7C 08 02 A6 */	mflr r0
/* 8013C8C4 00137DE4  3C 80 80 1B */	lis r4, lbl_801A9268@ha
/* 8013C8C8 00137DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C8CC 00137DEC  38 84 92 68 */	addi r4, r4, lbl_801A9268@l
/* 8013C8D0 00137DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C8D4 00137DF4  7C 7F 1B 78 */	mr r31, r3
/* 8013C8D8 00137DF8  90 83 00 00 */	stw r4, 0(r3)
/* 8013C8DC 00137DFC  38 63 00 1C */	addi r3, r3, 0x1c
/* 8013C8E0 00137E00  4B FF 33 79 */	bl __ct__Q46nw4hbm3snd6detail9FrameHeapFv
/* 8013C8E4 00137E04  38 7F 00 04 */	addi r3, r31, 4
/* 8013C8E8 00137E08  4B F5 9B 81 */	bl OSInitMutex
/* 8013C8EC 00137E0C  7F E3 FB 78 */	mr r3, r31
/* 8013C8F0 00137E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C8F4 00137E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C8F8 00137E18  7C 08 03 A6 */	mtlr r0
/* 8013C8FC 00137E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C900 00137E20  4E 80 00 20 */	blr 

glabel __dt__Q36nw4hbm3snd9SoundHeapFv
/* 8013C904 00137E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C908 00137E28  7C 08 02 A6 */	mflr r0
/* 8013C90C 00137E2C  2C 03 00 00 */	cmpwi r3, 0
/* 8013C910 00137E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C914 00137E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C918 00137E38  7C 9F 23 78 */	mr r31, r4
/* 8013C91C 00137E3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8013C920 00137E40  7C 7E 1B 78 */	mr r30, r3
/* 8013C924 00137E44  41 82 00 34 */	beq lbl_8013C958
/* 8013C928 00137E48  3C 80 80 1B */	lis r4, lbl_801A9268@ha
/* 8013C92C 00137E4C  38 84 92 68 */	addi r4, r4, lbl_801A9268@l
/* 8013C930 00137E50  90 83 00 00 */	stw r4, 0(r3)
/* 8013C934 00137E54  38 63 00 1C */	addi r3, r3, 0x1c
/* 8013C938 00137E58  4B FF 37 A9 */	bl Destroy__Q46nw4hbm3snd6detail9FrameHeapFv
/* 8013C93C 00137E5C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8013C940 00137E60  38 80 FF FF */	li r4, -1
/* 8013C944 00137E64  4B FF 33 39 */	bl __dt__Q46nw4hbm3snd6detail9FrameHeapFv
/* 8013C948 00137E68  2C 1F 00 00 */	cmpwi r31, 0
/* 8013C94C 00137E6C  40 81 00 0C */	ble lbl_8013C958
/* 8013C950 00137E70  7F C3 F3 78 */	mr r3, r30
/* 8013C954 00137E74  48 01 F8 BD */	bl operator_delete
lbl_8013C958:
/* 8013C958 00137E78  7F C3 F3 78 */	mr r3, r30
/* 8013C95C 00137E7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C960 00137E80  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013C964 00137E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C968 00137E88  7C 08 03 A6 */	mtlr r0
/* 8013C96C 00137E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C970 00137E90  4E 80 00 20 */	blr 

glabel Create__Q36nw4hbm3snd9SoundHeapFPvUl
/* 8013C974 00137E94  38 63 00 1C */	addi r3, r3, 0x1c
/* 8013C978 00137E98  4B FF 34 CC */	b Create__Q46nw4hbm3snd6detail9FrameHeapFPvUl

glabel Destroy__Q36nw4hbm3snd9SoundHeapFv
/* 8013C97C 00137E9C  38 63 00 1C */	addi r3, r3, 0x1c
/* 8013C980 00137EA0  4B FF 37 60 */	b Destroy__Q46nw4hbm3snd6detail9FrameHeapFv

glabel Alloc__Q36nw4hbm3snd9SoundHeapFUl
/* 8013C984 00137EA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013C988 00137EA8  7C 08 02 A6 */	mflr r0
/* 8013C98C 00137EAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013C990 00137EB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013C994 00137EB4  3B E3 00 04 */	addi r31, r3, 4
/* 8013C998 00137EB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013C99C 00137EBC  7C 9E 23 78 */	mr r30, r4
/* 8013C9A0 00137EC0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8013C9A4 00137EC4  7C 7D 1B 78 */	mr r29, r3
/* 8013C9A8 00137EC8  7F E3 FB 78 */	mr r3, r31
/* 8013C9AC 00137ECC  4B F5 9A F5 */	bl OSLockMutex
/* 8013C9B0 00137ED0  3C A0 80 14 */	lis r5, DisposeCallbackFunc__Q36nw4hbm3snd9SoundHeapFPvUlPv@ha
/* 8013C9B4 00137ED4  7F C4 F3 78 */	mr r4, r30
/* 8013C9B8 00137ED8  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8013C9BC 00137EDC  38 C0 00 00 */	li r6, 0
/* 8013C9C0 00137EE0  38 A5 C9 F4 */	addi r5, r5, DisposeCallbackFunc__Q36nw4hbm3snd9SoundHeapFPvUlPv@l
/* 8013C9C4 00137EE4  4B FF 3A F9 */	bl Alloc__Q46nw4hbm3snd6detail9FrameHeapFUlPFPvUlPv_vPv
/* 8013C9C8 00137EE8  7C 7E 1B 78 */	mr r30, r3
/* 8013C9CC 00137EEC  7F E3 FB 78 */	mr r3, r31
/* 8013C9D0 00137EF0  4B F5 9B AD */	bl OSUnlockMutex
/* 8013C9D4 00137EF4  7F C3 F3 78 */	mr r3, r30
/* 8013C9D8 00137EF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013C9DC 00137EFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8013C9E0 00137F00  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8013C9E4 00137F04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013C9E8 00137F08  7C 08 03 A6 */	mtlr r0
/* 8013C9EC 00137F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8013C9F0 00137F10  4E 80 00 20 */	blr 

glabel DisposeCallbackFunc__Q36nw4hbm3snd9SoundHeapFPvUlPv
/* 8013C9F4 00137F14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013C9F8 00137F18  7C 08 02 A6 */	mflr r0
/* 8013C9FC 00137F1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013CA00 00137F20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013CA04 00137F24  7C BF 2B 78 */	mr r31, r5
/* 8013CA08 00137F28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013CA0C 00137F2C  7C 9E 23 78 */	mr r30, r4
/* 8013CA10 00137F30  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8013CA14 00137F34  7C 7D 1B 78 */	mr r29, r3
/* 8013CA18 00137F38  4B FF 27 3D */	bl Dispose__Q46nw4hbm3snd6detail22DisposeCallbackManagerFPvUlPv
/* 8013CA1C 00137F3C  7F A3 EB 78 */	mr r3, r29
/* 8013CA20 00137F40  7F C4 F3 78 */	mr r4, r30
/* 8013CA24 00137F44  7F E5 FB 78 */	mr r5, r31
/* 8013CA28 00137F48  4B FF 28 7D */	bl DisposeWave__Q46nw4hbm3snd6detail22DisposeCallbackManagerFPvUlPv
/* 8013CA2C 00137F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013CA30 00137F50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013CA34 00137F54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8013CA38 00137F58  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8013CA3C 00137F5C  7C 08 03 A6 */	mtlr r0
/* 8013CA40 00137F60  38 21 00 20 */	addi r1, r1, 0x20
/* 8013CA44 00137F64  4E 80 00 20 */	blr 