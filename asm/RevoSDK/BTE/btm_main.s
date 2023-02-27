.include "macros.inc"

.section .text, "ax"

glabel btm_init
/* 800E8F6C 000E448C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E8F70 000E4490  7C 08 02 A6 */	mflr r0
/* 800E8F74 000E4494  38 80 00 00 */	li r4, 0
/* 800E8F78 000E4498  38 A0 27 C4 */	li r5, 0x27c4
/* 800E8F7C 000E449C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E8F80 000E44A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E8F84 000E44A4  3F E0 80 22 */	lis r31, lbl_80220558@ha
/* 800E8F88 000E44A8  38 7F 05 58 */	addi r3, r31, lbl_80220558@l
/* 800E8F8C 000E44AC  4B F1 B4 B1 */	bl memset
/* 800E8F90 000E44B0  38 7F 05 58 */	addi r3, r31, 0x558
/* 800E8F94 000E44B4  38 00 00 00 */	li r0, 0
/* 800E8F98 000E44B8  98 03 27 C0 */	stb r0, 0x27c0(r3)
/* 800E8F9C 000E44BC  4B FF F4 85 */	bl btm_inq_db_init
/* 800E8FA0 000E44C0  4B FF A6 69 */	bl btm_acl_init
/* 800E8FA4 000E44C4  38 60 00 02 */	li r3, 2
/* 800E8FA8 000E44C8  48 00 2D 79 */	bl btm_sec_init
/* 800E8FAC 000E44CC  48 00 0C B1 */	bl btm_sco_init
/* 800E8FB0 000E44D0  4B FF CA 69 */	bl btm_dev_init
/* 800E8FB4 000E44D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E8FB8 000E44D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E8FBC 000E44DC  7C 08 03 A6 */	mtlr r0
/* 800E8FC0 000E44E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E8FC4 000E44E4  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80220558
	.skip 0x27C8
