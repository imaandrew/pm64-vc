.include "macros.inc"

.section .text, "ax"

glabel ProbeBarnacle
/* 8009C848 00097D68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C84C 00097D6C  7C 08 02 A6 */	mflr r0
/* 8009C850 00097D70  2C 03 00 02 */	cmpwi r3, 2
/* 8009C854 00097D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C858 00097D78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8009C85C 00097D7C  7C BF 2B 78 */	mr r31, r5
/* 8009C860 00097D80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8009C864 00097D84  7C 9E 23 78 */	mr r30, r4
/* 8009C868 00097D88  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8009C86C 00097D8C  7C 7D 1B 78 */	mr r29, r3
/* 8009C870 00097D90  93 81 00 10 */	stw r28, 0x10(r1)
/* 8009C874 00097D94  41 82 00 24 */	beq .L_8009C898
/* 8009C878 00097D98  2C 04 00 00 */	cmpwi r4, 0
/* 8009C87C 00097D9C  40 82 00 1C */	bne .L_8009C898
/* 8009C880 00097DA0  38 80 00 00 */	li r4, 0
/* 8009C884 00097DA4  4B FF F0 B9 */	bl EXIAttach
/* 8009C888 00097DA8  2C 03 00 00 */	cmpwi r3, 0
/* 8009C88C 00097DAC  40 82 00 0C */	bne .L_8009C898
/* 8009C890 00097DB0  38 60 00 00 */	li r3, 0
/* 8009C894 00097DB4  48 00 01 0C */	b .L_8009C9A0
.L_8009C898:
/* 8009C898 00097DB8  7F A3 EB 78 */	mr r3, r29
/* 8009C89C 00097DBC  7F C4 F3 78 */	mr r4, r30
/* 8009C8A0 00097DC0  38 A0 00 00 */	li r5, 0
/* 8009C8A4 00097DC4  4B FF F9 FD */	bl EXILock
/* 8009C8A8 00097DC8  7C 60 00 34 */	cntlzw r0, r3
/* 8009C8AC 00097DCC  54 1C D9 7F */	rlwinm. r28, r0, 0x1b, 5, 0x1f
/* 8009C8B0 00097DD0  40 82 00 B4 */	bne .L_8009C964
/* 8009C8B4 00097DD4  7F A3 EB 78 */	mr r3, r29
/* 8009C8B8 00097DD8  7F C4 F3 78 */	mr r4, r30
/* 8009C8BC 00097DDC  38 A0 00 00 */	li r5, 0
/* 8009C8C0 00097DE0  4B FF F2 4D */	bl EXISelect
/* 8009C8C4 00097DE4  7C 60 00 34 */	cntlzw r0, r3
/* 8009C8C8 00097DE8  54 1C D9 7F */	rlwinm. r28, r0, 0x1b, 5, 0x1f
/* 8009C8CC 00097DEC  40 82 00 90 */	bne .L_8009C95C
/* 8009C8D0 00097DF0  3C 80 20 01 */	lis r4, 0x20011300@ha
/* 8009C8D4 00097DF4  7F A3 EB 78 */	mr r3, r29
/* 8009C8D8 00097DF8  38 04 13 00 */	addi r0, r4, 0x20011300@l
/* 8009C8DC 00097DFC  38 A0 00 04 */	li r5, 4
/* 8009C8E0 00097E00  90 01 00 08 */	stw r0, 8(r1)
/* 8009C8E4 00097E04  38 81 00 08 */	addi r4, r1, 8
/* 8009C8E8 00097E08  38 C0 00 01 */	li r6, 1
/* 8009C8EC 00097E0C  38 E0 00 00 */	li r7, 0
/* 8009C8F0 00097E10  4B FF E7 B5 */	bl EXIImm
/* 8009C8F4 00097E14  7C 60 00 34 */	cntlzw r0, r3
/* 8009C8F8 00097E18  7F A3 EB 78 */	mr r3, r29
/* 8009C8FC 00097E1C  54 1C D9 7E */	srwi r28, r0, 5
/* 8009C900 00097E20  4B FF EB BD */	bl EXISync
/* 8009C904 00097E24  7C 60 00 34 */	cntlzw r0, r3
/* 8009C908 00097E28  7F A3 EB 78 */	mr r3, r29
/* 8009C90C 00097E2C  54 00 D9 7E */	srwi r0, r0, 5
/* 8009C910 00097E30  7F E4 FB 78 */	mr r4, r31
/* 8009C914 00097E34  7F 9C 03 78 */	or r28, r28, r0
/* 8009C918 00097E38  38 A0 00 04 */	li r5, 4
/* 8009C91C 00097E3C  38 C0 00 00 */	li r6, 0
/* 8009C920 00097E40  38 E0 00 00 */	li r7, 0
/* 8009C924 00097E44  4B FF E7 81 */	bl EXIImm
/* 8009C928 00097E48  7C 60 00 34 */	cntlzw r0, r3
/* 8009C92C 00097E4C  7F A3 EB 78 */	mr r3, r29
/* 8009C930 00097E50  54 00 D9 7E */	srwi r0, r0, 5
/* 8009C934 00097E54  7F 9C 03 78 */	or r28, r28, r0
/* 8009C938 00097E58  4B FF EB 85 */	bl EXISync
/* 8009C93C 00097E5C  7C 60 00 34 */	cntlzw r0, r3
/* 8009C940 00097E60  7F A3 EB 78 */	mr r3, r29
/* 8009C944 00097E64  54 00 D9 7E */	srwi r0, r0, 5
/* 8009C948 00097E68  7F 9C 03 78 */	or r28, r28, r0
/* 8009C94C 00097E6C  4B FF F2 F1 */	bl EXIDeselect
/* 8009C950 00097E70  7C 60 00 34 */	cntlzw r0, r3
/* 8009C954 00097E74  54 00 D9 7E */	srwi r0, r0, 5
/* 8009C958 00097E78  7F 9C 03 78 */	or r28, r28, r0
.L_8009C95C:
/* 8009C95C 00097E7C  7F A3 EB 78 */	mr r3, r29
/* 8009C960 00097E80  4B FF FA 3D */	bl EXIUnlock
.L_8009C964:
/* 8009C964 00097E84  2C 1D 00 02 */	cmpwi r29, 2
/* 8009C968 00097E88  41 82 00 14 */	beq .L_8009C97C
/* 8009C96C 00097E8C  2C 1E 00 00 */	cmpwi r30, 0
/* 8009C970 00097E90  40 82 00 0C */	bne .L_8009C97C
/* 8009C974 00097E94  7F A3 EB 78 */	mr r3, r29
/* 8009C978 00097E98  4B FF F0 DD */	bl EXIDetach
.L_8009C97C:
/* 8009C97C 00097E9C  2C 1C 00 00 */	cmpwi r28, 0
/* 8009C980 00097EA0  41 82 00 0C */	beq .L_8009C98C
/* 8009C984 00097EA4  38 60 00 00 */	li r3, 0
/* 8009C988 00097EA8  48 00 00 18 */	b .L_8009C9A0
.L_8009C98C:
/* 8009C98C 00097EAC  80 9F 00 00 */	lwz r4, 0(r31)
/* 8009C990 00097EB0  20 64 FF FF */	subfic r3, r4, -1
/* 8009C994 00097EB4  38 04 00 01 */	addi r0, r4, 1
/* 8009C998 00097EB8  7C 60 03 78 */	or r0, r3, r0
/* 8009C99C 00097EBC  54 03 0F FE */	srwi r3, r0, 0x1f
.L_8009C9A0:
/* 8009C9A0 00097EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009C9A4 00097EC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009C9A8 00097EC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8009C9AC 00097ECC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8009C9B0 00097ED0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8009C9B4 00097ED4  7C 08 03 A6 */	mtlr r0
/* 8009C9B8 00097ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 8009C9BC 00097EDC  4E 80 00 20 */	blr 

glabel __OSEnableBarnacle
/* 8009C9C0 00097EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C9C4 00097EE4  7C 08 02 A6 */	mflr r0
/* 8009C9C8 00097EE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C9CC 00097EEC  38 A1 00 08 */	addi r5, r1, 8
/* 8009C9D0 00097EF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8009C9D4 00097EF4  7C 9F 23 78 */	mr r31, r4
/* 8009C9D8 00097EF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8009C9DC 00097EFC  7C 7E 1B 78 */	mr r30, r3
/* 8009C9E0 00097F00  4B FF FA BD */	bl EXIGetID
/* 8009C9E4 00097F04  2C 03 00 00 */	cmpwi r3, 0
/* 8009C9E8 00097F08  41 82 01 7C */	beq .L_8009CB64
/* 8009C9EC 00097F0C  80 81 00 08 */	lwz r4, 8(r1)
/* 8009C9F0 00097F10  3C 00 01 02 */	lis r0, 0x102
/* 8009C9F4 00097F14  7C 04 00 00 */	cmpw r4, r0
/* 8009C9F8 00097F18  41 82 01 6C */	beq .L_8009CB64
/* 8009C9FC 00097F1C  40 80 00 94 */	bge .L_8009CA90
/* 8009CA00 00097F20  2C 04 00 04 */	cmpwi r4, 4
/* 8009CA04 00097F24  41 82 01 60 */	beq .L_8009CB64
/* 8009CA08 00097F28  40 80 00 54 */	bge .L_8009CA5C
/* 8009CA0C 00097F2C  3C 60 80 00 */	lis r3, 0x80000010@ha
/* 8009CA10 00097F30  38 03 00 10 */	addi r0, r3, 0x80000010@l
/* 8009CA14 00097F34  7C 04 00 00 */	cmpw r4, r0
/* 8009CA18 00097F38  41 82 01 4C */	beq .L_8009CB64
/* 8009CA1C 00097F3C  40 80 00 24 */	bge .L_8009CA40
/* 8009CA20 00097F40  38 03 00 08 */	addi r0, r3, 8
/* 8009CA24 00097F44  7C 04 00 00 */	cmpw r4, r0
/* 8009CA28 00097F48  41 82 01 3C */	beq .L_8009CB64
/* 8009CA2C 00097F4C  40 80 01 08 */	bge .L_8009CB34
/* 8009CA30 00097F50  38 03 00 04 */	addi r0, r3, 4
/* 8009CA34 00097F54  7C 04 00 00 */	cmpw r4, r0
/* 8009CA38 00097F58  41 82 01 2C */	beq .L_8009CB64
/* 8009CA3C 00097F5C  48 00 00 F8 */	b .L_8009CB34
.L_8009CA40:
/* 8009CA40 00097F60  2C 04 FF FF */	cmpwi r4, -1
/* 8009CA44 00097F64  41 82 01 20 */	beq .L_8009CB64
/* 8009CA48 00097F68  40 80 00 EC */	bge .L_8009CB34
/* 8009CA4C 00097F6C  38 03 00 20 */	addi r0, r3, 0x20
/* 8009CA50 00097F70  7C 04 00 00 */	cmpw r4, r0
/* 8009CA54 00097F74  41 82 01 10 */	beq .L_8009CB64
/* 8009CA58 00097F78  48 00 00 DC */	b .L_8009CB34
.L_8009CA5C:
/* 8009CA5C 00097F7C  2C 04 00 20 */	cmpwi r4, 0x20
/* 8009CA60 00097F80  41 82 01 04 */	beq .L_8009CB64
/* 8009CA64 00097F84  40 80 00 1C */	bge .L_8009CA80
/* 8009CA68 00097F88  2C 04 00 10 */	cmpwi r4, 0x10
/* 8009CA6C 00097F8C  41 82 00 F8 */	beq .L_8009CB64
/* 8009CA70 00097F90  40 80 00 C4 */	bge .L_8009CB34
/* 8009CA74 00097F94  2C 04 00 08 */	cmpwi r4, 8
/* 8009CA78 00097F98  41 82 00 EC */	beq .L_8009CB64
/* 8009CA7C 00097F9C  48 00 00 B8 */	b .L_8009CB34
.L_8009CA80:
/* 8009CA80 00097FA0  3C 00 01 01 */	lis r0, 0x101
/* 8009CA84 00097FA4  7C 04 00 00 */	cmpw r4, r0
/* 8009CA88 00097FA8  41 82 00 DC */	beq .L_8009CB64
/* 8009CA8C 00097FAC  48 00 00 A8 */	b .L_8009CB34
.L_8009CA90:
/* 8009CA90 00097FB0  3C 60 04 04 */	lis r3, 0x04040404@ha
/* 8009CA94 00097FB4  38 03 04 04 */	addi r0, r3, 0x04040404@l
/* 8009CA98 00097FB8  7C 04 00 00 */	cmpw r4, r0
/* 8009CA9C 00097FBC  41 82 00 C8 */	beq .L_8009CB64
/* 8009CAA0 00097FC0  40 80 00 58 */	bge .L_8009CAF8
/* 8009CAA4 00097FC4  3C 60 04 02 */	lis r3, 0x04020100@ha
/* 8009CAA8 00097FC8  38 03 01 00 */	addi r0, r3, 0x04020100@l
/* 8009CAAC 00097FCC  7C 04 00 00 */	cmpw r4, r0
/* 8009CAB0 00097FD0  41 82 00 B4 */	beq .L_8009CB64
/* 8009CAB4 00097FD4  40 80 00 24 */	bge .L_8009CAD8
/* 8009CAB8 00097FD8  3C 00 03 01 */	lis r0, 0x301
/* 8009CABC 00097FDC  7C 04 00 00 */	cmpw r4, r0
/* 8009CAC0 00097FE0  41 82 00 A4 */	beq .L_8009CB64
/* 8009CAC4 00097FE4  40 80 00 70 */	bge .L_8009CB34
/* 8009CAC8 00097FE8  3C 00 02 02 */	lis r0, 0x202
/* 8009CACC 00097FEC  7C 04 00 00 */	cmpw r4, r0
/* 8009CAD0 00097FF0  41 82 00 94 */	beq .L_8009CB64
/* 8009CAD4 00097FF4  48 00 00 60 */	b .L_8009CB34
.L_8009CAD8:
/* 8009CAD8 00097FF8  38 03 03 00 */	addi r0, r3, 0x300
/* 8009CADC 00097FFC  7C 04 00 00 */	cmpw r4, r0
/* 8009CAE0 00098000  41 82 00 84 */	beq .L_8009CB64
/* 8009CAE4 00098004  40 80 00 50 */	bge .L_8009CB34
/* 8009CAE8 00098008  38 03 02 00 */	addi r0, r3, 0x200
/* 8009CAEC 0009800C  7C 04 00 00 */	cmpw r4, r0
/* 8009CAF0 00098010  41 82 00 74 */	beq .L_8009CB64
/* 8009CAF4 00098014  48 00 00 40 */	b .L_8009CB34
.L_8009CAF8:
/* 8009CAF8 00098018  3C 00 04 13 */	lis r0, 0x413
/* 8009CAFC 0009801C  7C 04 00 00 */	cmpw r4, r0
/* 8009CB00 00098020  41 82 00 64 */	beq .L_8009CB64
/* 8009CB04 00098024  40 80 00 24 */	bge .L_8009CB28
/* 8009CB08 00098028  3C 00 04 12 */	lis r0, 0x412
/* 8009CB0C 0009802C  7C 04 00 00 */	cmpw r4, r0
/* 8009CB10 00098030  41 82 00 54 */	beq .L_8009CB64
/* 8009CB14 00098034  40 80 00 20 */	bge .L_8009CB34
/* 8009CB18 00098038  3C 00 04 06 */	lis r0, 0x406
/* 8009CB1C 0009803C  7C 04 00 00 */	cmpw r4, r0
/* 8009CB20 00098040  41 82 00 44 */	beq .L_8009CB64
/* 8009CB24 00098044  48 00 00 10 */	b .L_8009CB34
.L_8009CB28:
/* 8009CB28 00098048  3C 00 04 22 */	lis r0, 0x422
/* 8009CB2C 0009804C  7C 04 00 00 */	cmpw r4, r0
/* 8009CB30 00098050  41 82 00 34 */	beq .L_8009CB64
.L_8009CB34:
/* 8009CB34 00098054  7F C3 F3 78 */	mr r3, r30
/* 8009CB38 00098058  7F E4 FB 78 */	mr r4, r31
/* 8009CB3C 0009805C  38 A1 00 08 */	addi r5, r1, 8
/* 8009CB40 00098060  4B FF FD 09 */	bl ProbeBarnacle
/* 8009CB44 00098064  2C 03 00 00 */	cmpwi r3, 0
/* 8009CB48 00098068  41 82 00 1C */	beq .L_8009CB64
/* 8009CB4C 0009806C  3C 60 A5 FF */	lis r3, 0xA5FF005A@ha
/* 8009CB50 00098070  93 CD 8D 9C */	stw r30, lbl_8024721C@sda21(r13)
/* 8009CB54 00098074  38 03 00 5A */	addi r0, r3, 0xA5FF005A@l
/* 8009CB58 00098078  93 ED 8D 98 */	stw r31, lbl_80247218@sda21(r13)
/* 8009CB5C 0009807C  90 0D 8D 94 */	stw r0, lbl_80247214@sda21(r13)
/* 8009CB60 00098080  90 0D 8D 90 */	stw r0, lbl_80247210@sda21(r13)
.L_8009CB64:
/* 8009CB64 00098084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009CB68 00098088  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009CB6C 0009808C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8009CB70 00098090  7C 08 03 A6 */	mtlr r0
/* 8009CB74 00098094  38 21 00 20 */	addi r1, r1, 0x20
/* 8009CB78 00098098  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247210
	.skip 0x4

glabel lbl_80247214
	.skip 0x4

glabel lbl_80247218
	.skip 0x4

glabel lbl_8024721C
	.skip 0x4
