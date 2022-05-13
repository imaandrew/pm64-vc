.include "macros.inc"

.section .text, "ax"

glabel Close__Q36nw4hbm3snd15DvdSoundArchiveFv
/* 8012F3F4 0012A914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F3F8 0012A918  7C 08 02 A6 */	mflr r0
/* 8012F3FC 0012A91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F400 0012A920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F404 0012A924  7C 7F 1B 78 */	mr r31, r3
/* 8012F408 0012A928  38 63 01 4C */	addi r3, r3, 0x14c
/* 8012F40C 0012A92C  4B F7 B3 A5 */	bl DVDClose
/* 8012F410 0012A930  38 00 00 00 */	li r0, 0
/* 8012F414 0012A934  7F E3 FB 78 */	mr r3, r31
/* 8012F418 0012A938  98 1F 01 88 */	stb r0, 0x188(r31)
/* 8012F41C 0012A93C  48 00 78 FD */	bl Shutdown__Q36nw4hbm3snd12SoundArchiveFv
/* 8012F420 0012A940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F424 0012A944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F428 0012A948  7C 08 03 A6 */	mtlr r0
/* 8012F42C 0012A94C  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F430 0012A950  4E 80 00 20 */	blr 
