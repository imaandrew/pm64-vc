.include "macros.inc"

.section .text, "ax"

glabel __fwrite
/* 801618F4 0015CE14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801618F8 0015CE18  7C 08 02 A6 */	mflr r0
/* 801618FC 0015CE1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80161900 0015CE20  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80161904 0015CE24  7C 9B 23 78 */	mr r27, r4
/* 80161908 0015CE28  7C DC 33 78 */	mr r28, r6
/* 8016190C 0015CE2C  7C 7A 1B 78 */	mr r26, r3
/* 80161910 0015CE30  7C B9 2B 78 */	mr r25, r5
/* 80161914 0015CE34  38 80 00 00 */	li r4, 0
/* 80161918 0015CE38  7F 83 E3 78 */	mr r3, r28
/* 8016191C 0015CE3C  48 00 8B 85 */	bl fwide
/* 80161920 0015CE40  2C 03 00 00 */	cmpwi r3, 0
/* 80161924 0015CE44  40 82 00 10 */	bne .L_80161934
/* 80161928 0015CE48  7F 83 E3 78 */	mr r3, r28
/* 8016192C 0015CE4C  38 80 FF FF */	li r4, -1
/* 80161930 0015CE50  48 00 8B 71 */	bl fwide
.L_80161934:
/* 80161934 0015CE54  7F DB C9 D7 */	mullw. r30, r27, r25
/* 80161938 0015CE58  41 82 00 1C */	beq .L_80161954
/* 8016193C 0015CE5C  88 1C 00 0A */	lbz r0, 0xa(r28)
/* 80161940 0015CE60  2C 00 00 00 */	cmpwi r0, 0
/* 80161944 0015CE64  40 82 00 10 */	bne .L_80161954
/* 80161948 0015CE68  80 1C 00 04 */	lwz r0, 4(r28)
/* 8016194C 0015CE6C  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 80161950 0015CE70  40 82 00 0C */	bne .L_8016195C
.L_80161954:
/* 80161954 0015CE74  38 60 00 00 */	li r3, 0
/* 80161958 0015CE78  48 00 02 90 */	b .L_80161BE8
.L_8016195C:
/* 8016195C 0015CE7C  28 00 00 02 */	cmplwi r0, 2
/* 80161960 0015CE80  40 82 00 08 */	bne .L_80161968
/* 80161964 0015CE84  48 00 0E B9 */	bl __stdio_atexit
.L_80161968:
/* 80161968 0015CE88  80 7C 00 04 */	lwz r3, 4(r28)
/* 8016196C 0015CE8C  3B E0 00 01 */	li r31, 1
/* 80161970 0015CE90  38 80 00 00 */	li r4, 0
/* 80161974 0015CE94  54 60 6F FF */	rlwinm. r0, r3, 0xd, 0x1f, 0x1f
/* 80161978 0015CE98  41 82 00 10 */	beq .L_80161988
/* 8016197C 0015CE9C  54 60 3F BE */	rlwinm r0, r3, 7, 0x1e, 0x1f
/* 80161980 0015CEA0  28 00 00 02 */	cmplwi r0, 2
/* 80161984 0015CEA4  40 82 00 08 */	bne .L_8016198C
.L_80161988:
/* 80161988 0015CEA8  38 80 00 01 */	li r4, 1
.L_8016198C:
/* 8016198C 0015CEAC  2C 04 00 00 */	cmpwi r4, 0
/* 80161990 0015CEB0  40 82 00 18 */	bne .L_801619A8
/* 80161994 0015CEB4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80161998 0015CEB8  54 00 3F BE */	rlwinm r0, r0, 7, 0x1e, 0x1f
/* 8016199C 0015CEBC  28 00 00 01 */	cmplwi r0, 1
/* 801619A0 0015CEC0  41 82 00 08 */	beq .L_801619A8
/* 801619A4 0015CEC4  3B E0 00 00 */	li r31, 0
.L_801619A8:
/* 801619A8 0015CEC8  80 1C 00 08 */	lwz r0, 8(r28)
/* 801619AC 0015CECC  54 00 1F 7F */	rlwinm. r0, r0, 3, 0x1d, 0x1f
/* 801619B0 0015CED0  40 82 00 54 */	bne .L_80161A04
/* 801619B4 0015CED4  80 7C 00 04 */	lwz r3, 4(r28)
/* 801619B8 0015CED8  54 60 2F BD */	rlwinm. r0, r3, 5, 0x1e, 0x1e
/* 801619BC 0015CEDC  54 60 2F 7E */	rlwinm r0, r3, 5, 0x1d, 0x1f
/* 801619C0 0015CEE0  41 82 00 44 */	beq .L_80161A04
/* 801619C4 0015CEE4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801619C8 0015CEE8  41 82 00 24 */	beq .L_801619EC
/* 801619CC 0015CEEC  7F 83 E3 78 */	mr r3, r28
/* 801619D0 0015CEF0  38 80 00 00 */	li r4, 0
/* 801619D4 0015CEF4  38 A0 00 02 */	li r5, 2
/* 801619D8 0015CEF8  48 00 06 71 */	bl _fseek
/* 801619DC 0015CEFC  2C 03 00 00 */	cmpwi r3, 0
/* 801619E0 0015CF00  41 82 00 0C */	beq .L_801619EC
/* 801619E4 0015CF04  38 60 00 00 */	li r3, 0
/* 801619E8 0015CF08  48 00 02 00 */	b .L_80161BE8
.L_801619EC:
/* 801619EC 0015CF0C  80 1C 00 08 */	lwz r0, 8(r28)
/* 801619F0 0015CF10  38 60 00 01 */	li r3, 1
/* 801619F4 0015CF14  50 60 E8 04 */	rlwimi r0, r3, 0x1d, 0, 2
/* 801619F8 0015CF18  90 1C 00 08 */	stw r0, 8(r28)
/* 801619FC 0015CF1C  7F 83 E3 78 */	mr r3, r28
/* 80161A00 0015CF20  4B FF FE 15 */	bl __prep_buffer
.L_80161A04:
/* 80161A04 0015CF24  80 1C 00 08 */	lwz r0, 8(r28)
/* 80161A08 0015CF28  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 80161A0C 0015CF2C  28 00 00 01 */	cmplwi r0, 1
/* 80161A10 0015CF30  41 82 00 1C */	beq .L_80161A2C
/* 80161A14 0015CF34  38 60 00 01 */	li r3, 1
/* 80161A18 0015CF38  38 00 00 00 */	li r0, 0
/* 80161A1C 0015CF3C  98 7C 00 0A */	stb r3, 0xa(r28)
/* 80161A20 0015CF40  38 60 00 00 */	li r3, 0
/* 80161A24 0015CF44  90 1C 00 28 */	stw r0, 0x28(r28)
/* 80161A28 0015CF48  48 00 01 C0 */	b .L_80161BE8
.L_80161A2C:
/* 80161A2C 0015CF4C  2C 1E 00 00 */	cmpwi r30, 0
/* 80161A30 0015CF50  3B A0 00 00 */	li r29, 0
/* 80161A34 0015CF54  41 82 01 28 */	beq .L_80161B5C
/* 80161A38 0015CF58  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 80161A3C 0015CF5C  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 80161A40 0015CF60  7C 04 18 40 */	cmplw r4, r3
/* 80161A44 0015CF64  40 82 00 0C */	bne .L_80161A50
/* 80161A48 0015CF68  2C 1F 00 00 */	cmpwi r31, 0
/* 80161A4C 0015CF6C  41 82 01 10 */	beq .L_80161B5C
.L_80161A50:
/* 80161A50 0015CF70  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 80161A54 0015CF74  7C 63 20 50 */	subf r3, r3, r4
/* 80161A58 0015CF78  7C 03 00 50 */	subf r0, r3, r0
/* 80161A5C 0015CF7C  90 1C 00 28 */	stw r0, 0x28(r28)
.L_80161A60:
/* 80161A60 0015CF80  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 80161A64 0015CF84  3B 20 00 00 */	li r25, 0
/* 80161A68 0015CF88  7C 05 F0 40 */	cmplw r5, r30
/* 80161A6C 0015CF8C  90 A1 00 08 */	stw r5, 8(r1)
/* 80161A70 0015CF90  40 81 00 0C */	ble .L_80161A7C
/* 80161A74 0015CF94  7F C5 F3 78 */	mr r5, r30
/* 80161A78 0015CF98  93 C1 00 08 */	stw r30, 8(r1)
.L_80161A7C:
/* 80161A7C 0015CF9C  80 1C 00 04 */	lwz r0, 4(r28)
/* 80161A80 0015CFA0  54 00 3F BE */	rlwinm r0, r0, 7, 0x1e, 0x1f
/* 80161A84 0015CFA4  28 00 00 01 */	cmplwi r0, 1
/* 80161A88 0015CFA8  40 82 00 30 */	bne .L_80161AB8
/* 80161A8C 0015CFAC  2C 05 00 00 */	cmpwi r5, 0
/* 80161A90 0015CFB0  41 82 00 28 */	beq .L_80161AB8
/* 80161A94 0015CFB4  7F 43 D3 78 */	mr r3, r26
/* 80161A98 0015CFB8  38 80 00 0A */	li r4, 0xa
/* 80161A9C 0015CFBC  48 00 09 A1 */	bl __memrchr
/* 80161AA0 0015CFC0  2C 03 00 00 */	cmpwi r3, 0
/* 80161AA4 0015CFC4  7C 79 1B 78 */	mr r25, r3
/* 80161AA8 0015CFC8  41 82 00 10 */	beq .L_80161AB8
/* 80161AAC 0015CFCC  38 03 00 01 */	addi r0, r3, 1
/* 80161AB0 0015CFD0  7C BA 00 50 */	subf r5, r26, r0
/* 80161AB4 0015CFD4  90 A1 00 08 */	stw r5, 8(r1)
.L_80161AB8:
/* 80161AB8 0015CFD8  80 A1 00 08 */	lwz r5, 8(r1)
/* 80161ABC 0015CFDC  2C 05 00 00 */	cmpwi r5, 0
/* 80161AC0 0015CFE0  41 82 00 38 */	beq .L_80161AF8
/* 80161AC4 0015CFE4  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 80161AC8 0015CFE8  7F 44 D3 78 */	mr r4, r26
/* 80161ACC 0015CFEC  4B EA 28 6D */	bl memcpy
/* 80161AD0 0015CFF0  80 81 00 08 */	lwz r4, 8(r1)
/* 80161AD4 0015CFF4  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 80161AD8 0015CFF8  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 80161ADC 0015CFFC  7F 5A 22 14 */	add r26, r26, r4
/* 80161AE0 0015D000  7C 63 22 14 */	add r3, r3, r4
/* 80161AE4 0015D004  7F C4 F0 50 */	subf r30, r4, r30
/* 80161AE8 0015D008  90 7C 00 24 */	stw r3, 0x24(r28)
/* 80161AEC 0015D00C  80 61 00 08 */	lwz r3, 8(r1)
/* 80161AF0 0015D010  7C 03 00 50 */	subf r0, r3, r0
/* 80161AF4 0015D014  90 1C 00 28 */	stw r0, 0x28(r28)
.L_80161AF8:
/* 80161AF8 0015D018  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 80161AFC 0015D01C  2C 00 00 00 */	cmpwi r0, 0
/* 80161B00 0015D020  41 82 00 18 */	beq .L_80161B18
/* 80161B04 0015D024  2C 19 00 00 */	cmpwi r25, 0
/* 80161B08 0015D028  40 82 00 10 */	bne .L_80161B18
/* 80161B0C 0015D02C  80 1C 00 04 */	lwz r0, 4(r28)
/* 80161B10 0015D030  54 00 3F BF */	rlwinm. r0, r0, 7, 0x1e, 0x1f
/* 80161B14 0015D034  40 82 00 30 */	bne .L_80161B44
.L_80161B18:
/* 80161B18 0015D038  7F 83 E3 78 */	mr r3, r28
/* 80161B1C 0015D03C  38 80 00 00 */	li r4, 0
/* 80161B20 0015D040  4B FF FD 1D */	bl __flush_buffer
/* 80161B24 0015D044  2C 03 00 00 */	cmpwi r3, 0
/* 80161B28 0015D048  41 82 00 1C */	beq .L_80161B44
/* 80161B2C 0015D04C  38 60 00 01 */	li r3, 1
/* 80161B30 0015D050  38 00 00 00 */	li r0, 0
/* 80161B34 0015D054  98 7C 00 0A */	stb r3, 0xa(r28)
/* 80161B38 0015D058  3B C0 00 00 */	li r30, 0
/* 80161B3C 0015D05C  90 1C 00 28 */	stw r0, 0x28(r28)
/* 80161B40 0015D060  48 00 00 1C */	b .L_80161B5C
.L_80161B44:
/* 80161B44 0015D064  80 01 00 08 */	lwz r0, 8(r1)
/* 80161B48 0015D068  2C 1E 00 00 */	cmpwi r30, 0
/* 80161B4C 0015D06C  7F BD 02 14 */	add r29, r29, r0
/* 80161B50 0015D070  41 82 00 0C */	beq .L_80161B5C
/* 80161B54 0015D074  2C 1F 00 00 */	cmpwi r31, 0
/* 80161B58 0015D078  40 82 FF 08 */	bne .L_80161A60
.L_80161B5C:
/* 80161B5C 0015D07C  2C 1E 00 00 */	cmpwi r30, 0
/* 80161B60 0015D080  41 82 00 6C */	beq .L_80161BCC
/* 80161B64 0015D084  2C 1F 00 00 */	cmpwi r31, 0
/* 80161B68 0015D088  40 82 00 64 */	bne .L_80161BCC
/* 80161B6C 0015D08C  83 3C 00 1C */	lwz r25, 0x1c(r28)
/* 80161B70 0015D090  7C 1A F2 14 */	add r0, r26, r30
/* 80161B74 0015D094  83 FC 00 20 */	lwz r31, 0x20(r28)
/* 80161B78 0015D098  7F 83 E3 78 */	mr r3, r28
/* 80161B7C 0015D09C  93 5C 00 1C */	stw r26, 0x1c(r28)
/* 80161B80 0015D0A0  38 81 00 08 */	addi r4, r1, 8
/* 80161B84 0015D0A4  93 DC 00 20 */	stw r30, 0x20(r28)
/* 80161B88 0015D0A8  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80161B8C 0015D0AC  4B FF FC B1 */	bl __flush_buffer
/* 80161B90 0015D0B0  2C 03 00 00 */	cmpwi r3, 0
/* 80161B94 0015D0B4  41 82 00 18 */	beq .L_80161BAC
/* 80161B98 0015D0B8  38 60 00 01 */	li r3, 1
/* 80161B9C 0015D0BC  38 00 00 00 */	li r0, 0
/* 80161BA0 0015D0C0  98 7C 00 0A */	stb r3, 0xa(r28)
/* 80161BA4 0015D0C4  90 1C 00 28 */	stw r0, 0x28(r28)
/* 80161BA8 0015D0C8  48 00 00 0C */	b .L_80161BB4
.L_80161BAC:
/* 80161BAC 0015D0CC  80 01 00 08 */	lwz r0, 8(r1)
/* 80161BB0 0015D0D0  7F BD 02 14 */	add r29, r29, r0
.L_80161BB4:
/* 80161BB4 0015D0D4  93 3C 00 1C */	stw r25, 0x1c(r28)
/* 80161BB8 0015D0D8  7F 83 E3 78 */	mr r3, r28
/* 80161BBC 0015D0DC  93 FC 00 20 */	stw r31, 0x20(r28)
/* 80161BC0 0015D0E0  4B FF FC 55 */	bl __prep_buffer
/* 80161BC4 0015D0E4  38 00 00 00 */	li r0, 0
/* 80161BC8 0015D0E8  90 1C 00 28 */	stw r0, 0x28(r28)
.L_80161BCC:
/* 80161BCC 0015D0EC  80 1C 00 04 */	lwz r0, 4(r28)
/* 80161BD0 0015D0F0  54 00 3F BE */	rlwinm r0, r0, 7, 0x1e, 0x1f
/* 80161BD4 0015D0F4  28 00 00 02 */	cmplwi r0, 2
/* 80161BD8 0015D0F8  41 82 00 0C */	beq .L_80161BE4
/* 80161BDC 0015D0FC  38 00 00 00 */	li r0, 0
/* 80161BE0 0015D100  90 1C 00 28 */	stw r0, 0x28(r28)
.L_80161BE4:
/* 80161BE4 0015D104  7C 7D DB 96 */	divwu r3, r29, r27
.L_80161BE8:
/* 80161BE8 0015D108  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80161BEC 0015D10C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80161BF0 0015D110  7C 08 03 A6 */	mtlr r0
/* 80161BF4 0015D114  38 21 00 30 */	addi r1, r1, 0x30
/* 80161BF8 0015D118  4E 80 00 20 */	blr 
