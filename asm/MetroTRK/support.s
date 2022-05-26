.include "macros.inc"

.section .text, "ax"

glabel HandlePositionFileSupportRequest
/* 80170C1C 0016C13C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80170C20 0016C140  7C 08 02 A6 */	mflr r0
/* 80170C24 0016C144  90 01 00 74 */	stw r0, 0x74(r1)
/* 80170C28 0016C148  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80170C2C 0016C14C  7C BF 2B 78 */	mr r31, r5
/* 80170C30 0016C150  38 A0 00 40 */	li r5, 0x40
/* 80170C34 0016C154  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80170C38 0016C158  7C DE 33 78 */	mr r30, r6
/* 80170C3C 0016C15C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80170C40 0016C160  7C 9D 23 78 */	mr r29, r4
/* 80170C44 0016C164  38 80 00 00 */	li r4, 0
/* 80170C48 0016C168  93 81 00 60 */	stw r28, 0x60(r1)
/* 80170C4C 0016C16C  7C 7C 1B 78 */	mr r28, r3
/* 80170C50 0016C170  38 61 00 14 */	addi r3, r1, 0x14
/* 80170C54 0016C174  4B E9 38 19 */	bl TRK_memset
/* 80170C58 0016C178  38 60 00 D4 */	li r3, 0xd4
/* 80170C5C 0016C17C  38 00 00 40 */	li r0, 0x40
/* 80170C60 0016C180  98 61 00 18 */	stb r3, 0x18(r1)
/* 80170C64 0016C184  38 61 00 0C */	addi r3, r1, 0xc
/* 80170C68 0016C188  38 81 00 08 */	addi r4, r1, 8
/* 80170C6C 0016C18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80170C70 0016C190  93 81 00 1C */	stw r28, 0x1c(r1)
/* 80170C74 0016C194  80 1D 00 00 */	lwz r0, 0(r29)
/* 80170C78 0016C198  90 01 00 20 */	stw r0, 0x20(r1)
/* 80170C7C 0016C19C  9B E1 00 24 */	stb r31, 0x24(r1)
/* 80170C80 0016C1A0  4B FF EA 05 */	bl TRKGetFreeBuffer
/* 80170C84 0016C1A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80170C88 0016C1A8  40 82 00 18 */	bne lbl_80170CA0
/* 80170C8C 0016C1AC  80 61 00 08 */	lwz r3, 8(r1)
/* 80170C90 0016C1B0  38 81 00 14 */	addi r4, r1, 0x14
/* 80170C94 0016C1B4  38 A0 00 40 */	li r5, 0x40
/* 80170C98 0016C1B8  4B FF E6 59 */	bl TRKAppendBuffer_ui8
/* 80170C9C 0016C1BC  7C 7F 1B 78 */	mr r31, r3
lbl_80170CA0:
/* 80170CA0 0016C1C0  2C 1F 00 00 */	cmpwi r31, 0
/* 80170CA4 0016C1C4  40 82 00 5C */	bne lbl_80170D00
/* 80170CA8 0016C1C8  38 60 00 00 */	li r3, 0
/* 80170CAC 0016C1CC  38 00 FF FF */	li r0, -1
/* 80170CB0 0016C1D0  90 7E 00 00 */	stw r3, 0(r30)
/* 80170CB4 0016C1D4  38 81 00 10 */	addi r4, r1, 0x10
/* 80170CB8 0016C1D8  38 A0 00 03 */	li r5, 3
/* 80170CBC 0016C1DC  38 C0 00 03 */	li r6, 3
/* 80170CC0 0016C1E0  90 1D 00 00 */	stw r0, 0(r29)
/* 80170CC4 0016C1E4  38 E0 00 00 */	li r7, 0
/* 80170CC8 0016C1E8  80 61 00 08 */	lwz r3, 8(r1)
/* 80170CCC 0016C1EC  48 00 02 65 */	bl TRKRequestSend
/* 80170CD0 0016C1F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80170CD4 0016C1F4  40 82 00 24 */	bne lbl_80170CF8
/* 80170CD8 0016C1F8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80170CDC 0016C1FC  4B FF E9 7D */	bl TRKGetBuffer
/* 80170CE0 0016C200  28 03 00 00 */	cmplwi r3, 0
/* 80170CE4 0016C204  41 82 00 14 */	beq lbl_80170CF8
/* 80170CE8 0016C208  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80170CEC 0016C20C  90 1E 00 00 */	stw r0, 0(r30)
/* 80170CF0 0016C210  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80170CF4 0016C214  90 1D 00 00 */	stw r0, 0(r29)
lbl_80170CF8:
/* 80170CF8 0016C218  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80170CFC 0016C21C  4B FF E8 F9 */	bl TRKReleaseBuffer
lbl_80170D00:
/* 80170D00 0016C220  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80170D04 0016C224  4B FF E8 F1 */	bl TRKReleaseBuffer
/* 80170D08 0016C228  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80170D0C 0016C22C  7F E3 FB 78 */	mr r3, r31
/* 80170D10 0016C230  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80170D14 0016C234  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80170D18 0016C238  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80170D1C 0016C23C  83 81 00 60 */	lwz r28, 0x60(r1)
/* 80170D20 0016C240  7C 08 03 A6 */	mtlr r0
/* 80170D24 0016C244  38 21 00 70 */	addi r1, r1, 0x70
/* 80170D28 0016C248  4E 80 00 20 */	blr 

glabel HandleCloseFileSupportRequest
/* 80170D2C 0016C24C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80170D30 0016C250  7C 08 02 A6 */	mflr r0
/* 80170D34 0016C254  38 A0 00 40 */	li r5, 0x40
/* 80170D38 0016C258  90 01 00 74 */	stw r0, 0x74(r1)
/* 80170D3C 0016C25C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80170D40 0016C260  7C 7F 1B 78 */	mr r31, r3
/* 80170D44 0016C264  38 61 00 14 */	addi r3, r1, 0x14
/* 80170D48 0016C268  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80170D4C 0016C26C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80170D50 0016C270  7C 9D 23 78 */	mr r29, r4
/* 80170D54 0016C274  38 80 00 00 */	li r4, 0
/* 80170D58 0016C278  4B E9 37 15 */	bl TRK_memset
/* 80170D5C 0016C27C  38 60 00 D3 */	li r3, 0xd3
/* 80170D60 0016C280  38 00 00 40 */	li r0, 0x40
/* 80170D64 0016C284  98 61 00 18 */	stb r3, 0x18(r1)
/* 80170D68 0016C288  38 61 00 0C */	addi r3, r1, 0xc
/* 80170D6C 0016C28C  38 81 00 08 */	addi r4, r1, 8
/* 80170D70 0016C290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80170D74 0016C294  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80170D78 0016C298  4B FF E9 0D */	bl TRKGetFreeBuffer
/* 80170D7C 0016C29C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80170D80 0016C2A0  40 82 00 18 */	bne lbl_80170D98
/* 80170D84 0016C2A4  80 61 00 08 */	lwz r3, 8(r1)
/* 80170D88 0016C2A8  38 81 00 14 */	addi r4, r1, 0x14
/* 80170D8C 0016C2AC  38 A0 00 40 */	li r5, 0x40
/* 80170D90 0016C2B0  4B FF E5 61 */	bl TRKAppendBuffer_ui8
/* 80170D94 0016C2B4  7C 7F 1B 78 */	mr r31, r3
lbl_80170D98:
/* 80170D98 0016C2B8  2C 1F 00 00 */	cmpwi r31, 0
/* 80170D9C 0016C2BC  40 82 00 50 */	bne lbl_80170DEC
/* 80170DA0 0016C2C0  38 00 00 00 */	li r0, 0
/* 80170DA4 0016C2C4  38 81 00 10 */	addi r4, r1, 0x10
/* 80170DA8 0016C2C8  90 1D 00 00 */	stw r0, 0(r29)
/* 80170DAC 0016C2CC  38 A0 00 03 */	li r5, 3
/* 80170DB0 0016C2D0  38 C0 00 03 */	li r6, 3
/* 80170DB4 0016C2D4  38 E0 00 00 */	li r7, 0
/* 80170DB8 0016C2D8  80 61 00 08 */	lwz r3, 8(r1)
/* 80170DBC 0016C2DC  48 00 01 75 */	bl TRKRequestSend
/* 80170DC0 0016C2E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80170DC4 0016C2E4  40 82 00 10 */	bne lbl_80170DD4
/* 80170DC8 0016C2E8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80170DCC 0016C2EC  4B FF E8 8D */	bl TRKGetBuffer
/* 80170DD0 0016C2F0  7C 7E 1B 78 */	mr r30, r3
lbl_80170DD4:
/* 80170DD4 0016C2F4  2C 1F 00 00 */	cmpwi r31, 0
/* 80170DD8 0016C2F8  40 82 00 0C */	bne lbl_80170DE4
/* 80170DDC 0016C2FC  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80170DE0 0016C300  90 1D 00 00 */	stw r0, 0(r29)
lbl_80170DE4:
/* 80170DE4 0016C304  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80170DE8 0016C308  4B FF E8 0D */	bl TRKReleaseBuffer
lbl_80170DEC:
/* 80170DEC 0016C30C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80170DF0 0016C310  4B FF E8 05 */	bl TRKReleaseBuffer
/* 80170DF4 0016C314  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80170DF8 0016C318  7F E3 FB 78 */	mr r3, r31
/* 80170DFC 0016C31C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80170E00 0016C320  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80170E04 0016C324  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80170E08 0016C328  7C 08 03 A6 */	mtlr r0
/* 80170E0C 0016C32C  38 21 00 70 */	addi r1, r1, 0x70
/* 80170E10 0016C330  4E 80 00 20 */	blr 

glabel HandleOpenFileSupportRequest
/* 80170E14 0016C334  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80170E18 0016C338  7C 08 02 A6 */	mflr r0
/* 80170E1C 0016C33C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80170E20 0016C340  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 80170E24 0016C344  7C 7B 1B 78 */	mr r27, r3
/* 80170E28 0016C348  7C 9F 23 78 */	mr r31, r4
/* 80170E2C 0016C34C  7C BC 2B 78 */	mr r28, r5
/* 80170E30 0016C350  7C DD 33 78 */	mr r29, r6
/* 80170E34 0016C354  38 61 00 14 */	addi r3, r1, 0x14
/* 80170E38 0016C358  38 80 00 00 */	li r4, 0
/* 80170E3C 0016C35C  38 A0 00 40 */	li r5, 0x40
/* 80170E40 0016C360  4B E9 36 2D */	bl TRK_memset
/* 80170E44 0016C364  38 60 00 00 */	li r3, 0
/* 80170E48 0016C368  38 00 00 D2 */	li r0, 0xd2
/* 80170E4C 0016C36C  90 7C 00 00 */	stw r3, 0(r28)
/* 80170E50 0016C370  7F 63 DB 78 */	mr r3, r27
/* 80170E54 0016C374  98 01 00 18 */	stb r0, 0x18(r1)
/* 80170E58 0016C378  48 00 06 19 */	bl TRK_strlen
/* 80170E5C 0016C37C  38 03 00 41 */	addi r0, r3, 0x41
/* 80170E60 0016C380  9B E1 00 1C */	stb r31, 0x1c(r1)
/* 80170E64 0016C384  7F 63 DB 78 */	mr r3, r27
/* 80170E68 0016C388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80170E6C 0016C38C  48 00 06 05 */	bl TRK_strlen
/* 80170E70 0016C390  38 03 00 01 */	addi r0, r3, 1
/* 80170E74 0016C394  38 61 00 0C */	addi r3, r1, 0xc
/* 80170E78 0016C398  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80170E7C 0016C39C  38 81 00 08 */	addi r4, r1, 8
/* 80170E80 0016C3A0  4B FF E8 05 */	bl TRKGetFreeBuffer
/* 80170E84 0016C3A4  80 61 00 08 */	lwz r3, 8(r1)
/* 80170E88 0016C3A8  38 81 00 14 */	addi r4, r1, 0x14
/* 80170E8C 0016C3AC  38 A0 00 40 */	li r5, 0x40
/* 80170E90 0016C3B0  4B FF E4 61 */	bl TRKAppendBuffer_ui8
/* 80170E94 0016C3B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80170E98 0016C3B8  40 82 00 24 */	bne lbl_80170EBC
/* 80170E9C 0016C3BC  7F 63 DB 78 */	mr r3, r27
/* 80170EA0 0016C3C0  48 00 05 D1 */	bl TRK_strlen
/* 80170EA4 0016C3C4  7C 65 1B 78 */	mr r5, r3
/* 80170EA8 0016C3C8  80 61 00 08 */	lwz r3, 8(r1)
/* 80170EAC 0016C3CC  7F 64 DB 78 */	mr r4, r27
/* 80170EB0 0016C3D0  38 A5 00 01 */	addi r5, r5, 1
/* 80170EB4 0016C3D4  4B FF E4 3D */	bl TRKAppendBuffer_ui8
/* 80170EB8 0016C3D8  7C 7F 1B 78 */	mr r31, r3
lbl_80170EBC:
/* 80170EBC 0016C3DC  2C 1F 00 00 */	cmpwi r31, 0
/* 80170EC0 0016C3E0  40 82 00 50 */	bne lbl_80170F10
/* 80170EC4 0016C3E4  38 00 00 00 */	li r0, 0
/* 80170EC8 0016C3E8  38 81 00 10 */	addi r4, r1, 0x10
/* 80170ECC 0016C3EC  90 1D 00 00 */	stw r0, 0(r29)
/* 80170ED0 0016C3F0  38 A0 00 07 */	li r5, 7
/* 80170ED4 0016C3F4  38 C0 00 03 */	li r6, 3
/* 80170ED8 0016C3F8  38 E0 00 00 */	li r7, 0
/* 80170EDC 0016C3FC  80 61 00 08 */	lwz r3, 8(r1)
/* 80170EE0 0016C400  48 00 00 51 */	bl TRKRequestSend
/* 80170EE4 0016C404  7C 7F 1B 79 */	or. r31, r3, r3
/* 80170EE8 0016C408  40 82 00 10 */	bne lbl_80170EF8
/* 80170EEC 0016C40C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80170EF0 0016C410  4B FF E7 69 */	bl TRKGetBuffer
/* 80170EF4 0016C414  7C 7E 1B 78 */	mr r30, r3
lbl_80170EF8:
/* 80170EF8 0016C418  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80170EFC 0016C41C  90 1D 00 00 */	stw r0, 0(r29)
/* 80170F00 0016C420  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80170F04 0016C424  90 1C 00 00 */	stw r0, 0(r28)
/* 80170F08 0016C428  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80170F0C 0016C42C  4B FF E6 E9 */	bl TRKReleaseBuffer
lbl_80170F10:
/* 80170F10 0016C430  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80170F14 0016C434  4B FF E6 E1 */	bl TRKReleaseBuffer
/* 80170F18 0016C438  7F E3 FB 78 */	mr r3, r31
/* 80170F1C 0016C43C  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 80170F20 0016C440  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80170F24 0016C444  7C 08 03 A6 */	mtlr r0
/* 80170F28 0016C448  38 21 00 70 */	addi r1, r1, 0x70
/* 80170F2C 0016C44C  4E 80 00 20 */	blr 

glabel TRKRequestSend
/* 80170F30 0016C450  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80170F34 0016C454  7C 08 02 A6 */	mflr r0
/* 80170F38 0016C458  90 01 00 34 */	stw r0, 0x34(r1)
/* 80170F3C 0016C45C  38 00 FF FF */	li r0, -1
/* 80170F40 0016C460  BE C1 00 08 */	stmw r22, 8(r1)
/* 80170F44 0016C464  7C 97 23 78 */	mr r23, r4
/* 80170F48 0016C468  7C 76 1B 78 */	mr r22, r3
/* 80170F4C 0016C46C  7C F8 3B 78 */	mr r24, r7
/* 80170F50 0016C470  3B 86 00 01 */	addi r28, r6, 1
/* 80170F54 0016C474  3B E0 00 00 */	li r31, 0
/* 80170F58 0016C478  3B 20 00 01 */	li r25, 1
/* 80170F5C 0016C47C  90 04 00 00 */	stw r0, 0(r4)
/* 80170F60 0016C480  48 00 01 0C */	b lbl_8017106C
lbl_80170F64:
/* 80170F64 0016C484  7E C3 B3 78 */	mr r3, r22
/* 80170F68 0016C488  4B FF DF F1 */	bl TRKMessageSend
/* 80170F6C 0016C48C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80170F70 0016C490  40 82 00 F8 */	bne lbl_80171068
/* 80170F74 0016C494  2C 18 00 00 */	cmpwi r24, 0
/* 80170F78 0016C498  41 82 00 08 */	beq lbl_80170F80
/* 80170F7C 0016C49C  3B A0 00 00 */	li r29, 0
lbl_80170F80:
/* 80170F80 0016C4A0  4B FF E9 1D */	bl TRKTestForPacket
/* 80170F84 0016C4A4  90 77 00 00 */	stw r3, 0(r23)
/* 80170F88 0016C4A8  80 77 00 00 */	lwz r3, 0(r23)
/* 80170F8C 0016C4AC  2C 03 FF FF */	cmpwi r3, -1
/* 80170F90 0016C4B0  40 82 00 20 */	bne lbl_80170FB0
/* 80170F94 0016C4B4  2C 18 00 00 */	cmpwi r24, 0
/* 80170F98 0016C4B8  41 82 FF E8 */	beq lbl_80170F80
/* 80170F9C 0016C4BC  3C 80 04 C5 */	lis r4, 0x04C4B3EC@ha
/* 80170FA0 0016C4C0  3B BD 00 01 */	addi r29, r29, 1
/* 80170FA4 0016C4C4  38 04 B3 EC */	addi r0, r4, 0x04C4B3EC@l
/* 80170FA8 0016C4C8  7C 1D 00 40 */	cmplw r29, r0
/* 80170FAC 0016C4CC  41 80 FF D4 */	blt lbl_80170F80
lbl_80170FB0:
/* 80170FB0 0016C4D0  2C 03 FF FF */	cmpwi r3, -1
/* 80170FB4 0016C4D4  41 82 00 44 */	beq lbl_80170FF8
/* 80170FB8 0016C4D8  3B 20 00 00 */	li r25, 0
/* 80170FBC 0016C4DC  4B FF E6 9D */	bl TRKGetBuffer
/* 80170FC0 0016C4E0  38 80 00 00 */	li r4, 0
/* 80170FC4 0016C4E4  7C 7E 1B 78 */	mr r30, r3
/* 80170FC8 0016C4E8  4B FF E5 BD */	bl TRKSetBufferPosition
/* 80170FCC 0016C4EC  80 9E 00 08 */	lwz r4, 8(r30)
/* 80170FD0 0016C4F0  38 7E 00 10 */	addi r3, r30, 0x10
/* 80170FD4 0016C4F4  48 00 2F 11 */	bl OutputData
/* 80170FD8 0016C4F8  8B 7E 00 14 */	lbz r27, 0x14(r30)
/* 80170FDC 0016C4FC  28 1B 00 80 */	cmplwi r27, 0x80
/* 80170FE0 0016C500  40 80 00 18 */	bge lbl_80170FF8
/* 80170FE4 0016C504  80 77 00 00 */	lwz r3, 0(r23)
/* 80170FE8 0016C508  4B FF E8 05 */	bl TRKProcessInput
/* 80170FEC 0016C50C  38 00 FF FF */	li r0, -1
/* 80170FF0 0016C510  90 17 00 00 */	stw r0, 0(r23)
/* 80170FF4 0016C514  4B FF FF 8C */	b lbl_80170F80
lbl_80170FF8:
/* 80170FF8 0016C518  80 77 00 00 */	lwz r3, 0(r23)
/* 80170FFC 0016C51C  2C 03 FF FF */	cmpwi r3, -1
/* 80171000 0016C520  41 82 00 68 */	beq lbl_80171068
/* 80171004 0016C524  80 1E 00 08 */	lwz r0, 8(r30)
/* 80171008 0016C528  28 00 00 40 */	cmplwi r0, 0x40
/* 8017100C 0016C52C  40 80 00 08 */	bge lbl_80171014
/* 80171010 0016C530  3B 20 00 01 */	li r25, 1
lbl_80171014:
/* 80171014 0016C534  2C 1F 00 00 */	cmpwi r31, 0
/* 80171018 0016C538  40 82 00 10 */	bne lbl_80171028
/* 8017101C 0016C53C  2C 19 00 00 */	cmpwi r25, 0
/* 80171020 0016C540  40 82 00 08 */	bne lbl_80171028
/* 80171024 0016C544  8B 5E 00 18 */	lbz r26, 0x18(r30)
lbl_80171028:
/* 80171028 0016C548  2C 1F 00 00 */	cmpwi r31, 0
/* 8017102C 0016C54C  40 82 00 20 */	bne lbl_8017104C
/* 80171030 0016C550  2C 19 00 00 */	cmpwi r25, 0
/* 80171034 0016C554  40 82 00 18 */	bne lbl_8017104C
/* 80171038 0016C558  2C 1B 00 80 */	cmpwi r27, 0x80
/* 8017103C 0016C55C  40 82 00 0C */	bne lbl_80171048
/* 80171040 0016C560  2C 1A 00 00 */	cmpwi r26, 0
/* 80171044 0016C564  41 82 00 08 */	beq lbl_8017104C
lbl_80171048:
/* 80171048 0016C568  3B 20 00 01 */	li r25, 1
lbl_8017104C:
/* 8017104C 0016C56C  2C 1F 00 00 */	cmpwi r31, 0
/* 80171050 0016C570  40 82 00 0C */	bne lbl_8017105C
/* 80171054 0016C574  2C 19 00 00 */	cmpwi r25, 0
/* 80171058 0016C578  41 82 00 10 */	beq lbl_80171068
lbl_8017105C:
/* 8017105C 0016C57C  4B FF E5 99 */	bl TRKReleaseBuffer
/* 80171060 0016C580  38 00 FF FF */	li r0, -1
/* 80171064 0016C584  90 17 00 00 */	stw r0, 0(r23)
lbl_80171068:
/* 80171068 0016C588  3B 9C FF FF */	addi r28, r28, -1
lbl_8017106C:
/* 8017106C 0016C58C  2C 1C 00 00 */	cmpwi r28, 0
/* 80171070 0016C590  41 82 00 18 */	beq lbl_80171088
/* 80171074 0016C594  80 17 00 00 */	lwz r0, 0(r23)
/* 80171078 0016C598  2C 00 FF FF */	cmpwi r0, -1
/* 8017107C 0016C59C  40 82 00 0C */	bne lbl_80171088
/* 80171080 0016C5A0  2C 1F 00 00 */	cmpwi r31, 0
/* 80171084 0016C5A4  41 82 FE E0 */	beq lbl_80170F64
lbl_80171088:
/* 80171088 0016C5A8  80 17 00 00 */	lwz r0, 0(r23)
/* 8017108C 0016C5AC  2C 00 FF FF */	cmpwi r0, -1
/* 80171090 0016C5B0  40 82 00 08 */	bne lbl_80171098
/* 80171094 0016C5B4  3B E0 08 00 */	li r31, 0x800
lbl_80171098:
/* 80171098 0016C5B8  7F E3 FB 78 */	mr r3, r31
/* 8017109C 0016C5BC  BA C1 00 08 */	lmw r22, 8(r1)
/* 801710A0 0016C5C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801710A4 0016C5C4  7C 08 03 A6 */	mtlr r0
/* 801710A8 0016C5C8  38 21 00 30 */	addi r1, r1, 0x30
/* 801710AC 0016C5CC  4E 80 00 20 */	blr 

glabel TRKSuppAccessFile
/* 801710B0 0016C5D0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801710B4 0016C5D4  7C 08 02 A6 */	mflr r0
/* 801710B8 0016C5D8  90 01 00 94 */	stw r0, 0x94(r1)
/* 801710BC 0016C5DC  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 801710C0 0016C5E0  7C 98 23 79 */	or. r24, r4, r4
/* 801710C4 0016C5E4  7C 77 1B 78 */	mr r23, r3
/* 801710C8 0016C5E8  7C B9 2B 78 */	mr r25, r5
/* 801710CC 0016C5EC  7C DA 33 78 */	mr r26, r6
/* 801710D0 0016C5F0  7C FB 3B 78 */	mr r27, r7
/* 801710D4 0016C5F4  7D 1C 43 78 */	mr r28, r8
/* 801710D8 0016C5F8  41 82 00 10 */	beq lbl_801710E8
/* 801710DC 0016C5FC  80 19 00 00 */	lwz r0, 0(r25)
/* 801710E0 0016C600  28 00 00 00 */	cmplwi r0, 0
/* 801710E4 0016C604  40 82 00 0C */	bne lbl_801710F0
lbl_801710E8:
/* 801710E8 0016C608  38 60 00 02 */	li r3, 2
/* 801710EC 0016C60C  48 00 01 D0 */	b lbl_801712BC
lbl_801710F0:
/* 801710F0 0016C610  38 00 00 00 */	li r0, 0
/* 801710F4 0016C614  3B A0 00 00 */	li r29, 0
/* 801710F8 0016C618  90 1A 00 00 */	stw r0, 0(r26)
/* 801710FC 0016C61C  3B C0 00 00 */	li r30, 0
/* 80171100 0016C620  3A A0 00 00 */	li r21, 0
/* 80171104 0016C624  48 00 01 88 */	b lbl_8017128C
lbl_80171108:
/* 80171108 0016C628  38 61 00 14 */	addi r3, r1, 0x14
/* 8017110C 0016C62C  38 80 00 00 */	li r4, 0
/* 80171110 0016C630  38 A0 00 40 */	li r5, 0x40
/* 80171114 0016C634  4B E9 33 59 */	bl TRK_memset
/* 80171118 0016C638  80 19 00 00 */	lwz r0, 0(r25)
/* 8017111C 0016C63C  38 60 08 00 */	li r3, 0x800
/* 80171120 0016C640  7C 1E 00 50 */	subf r0, r30, r0
/* 80171124 0016C644  28 00 08 00 */	cmplwi r0, 0x800
/* 80171128 0016C648  41 81 00 08 */	bgt lbl_80171130
/* 8017112C 0016C64C  7C 03 03 78 */	mr r3, r0
lbl_80171130:
/* 80171130 0016C650  2C 1C 00 00 */	cmpwi r28, 0
/* 80171134 0016C654  7C 7F 1B 78 */	mr r31, r3
/* 80171138 0016C658  38 00 00 D0 */	li r0, 0xd0
/* 8017113C 0016C65C  41 82 00 08 */	beq lbl_80171144
/* 80171140 0016C660  38 00 00 D1 */	li r0, 0xd1
lbl_80171144:
/* 80171144 0016C664  2C 1C 00 00 */	cmpwi r28, 0
/* 80171148 0016C668  98 01 00 18 */	stb r0, 0x18(r1)
/* 8017114C 0016C66C  38 00 00 40 */	li r0, 0x40
/* 80171150 0016C670  40 82 00 08 */	bne lbl_80171158
/* 80171154 0016C674  38 1F 00 40 */	addi r0, r31, 0x40
lbl_80171158:
/* 80171158 0016C678  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017115C 0016C67C  38 61 00 0C */	addi r3, r1, 0xc
/* 80171160 0016C680  38 81 00 08 */	addi r4, r1, 8
/* 80171164 0016C684  92 E1 00 1C */	stw r23, 0x1c(r1)
/* 80171168 0016C688  B3 E1 00 20 */	sth r31, 0x20(r1)
/* 8017116C 0016C68C  4B FF E5 19 */	bl TRKGetFreeBuffer
/* 80171170 0016C690  80 61 00 08 */	lwz r3, 8(r1)
/* 80171174 0016C694  38 81 00 14 */	addi r4, r1, 0x14
/* 80171178 0016C698  38 A0 00 40 */	li r5, 0x40
/* 8017117C 0016C69C  4B FF E1 75 */	bl TRKAppendBuffer_ui8
/* 80171180 0016C6A0  2C 1C 00 00 */	cmpwi r28, 0
/* 80171184 0016C6A4  7C 75 1B 78 */	mr r21, r3
/* 80171188 0016C6A8  40 82 00 20 */	bne lbl_801711A8
/* 8017118C 0016C6AC  2C 15 00 00 */	cmpwi r21, 0
/* 80171190 0016C6B0  40 82 00 18 */	bne lbl_801711A8
/* 80171194 0016C6B4  80 61 00 08 */	lwz r3, 8(r1)
/* 80171198 0016C6B8  7F E5 FB 78 */	mr r5, r31
/* 8017119C 0016C6BC  7C 98 F2 14 */	add r4, r24, r30
/* 801711A0 0016C6C0  4B FF E1 51 */	bl TRKAppendBuffer_ui8
/* 801711A4 0016C6C4  7C 75 1B 78 */	mr r21, r3
lbl_801711A8:
/* 801711A8 0016C6C8  2C 15 00 00 */	cmpwi r21, 0
/* 801711AC 0016C6CC  40 82 00 D4 */	bne lbl_80171280
/* 801711B0 0016C6D0  2C 1B 00 00 */	cmpwi r27, 0
/* 801711B4 0016C6D4  41 82 00 C0 */	beq lbl_80171274
/* 801711B8 0016C6D8  2C 1C 00 00 */	cmpwi r28, 0
/* 801711BC 0016C6DC  38 00 00 00 */	li r0, 0
/* 801711C0 0016C6E0  41 82 00 10 */	beq lbl_801711D0
/* 801711C4 0016C6E4  28 17 00 00 */	cmplwi r23, 0
/* 801711C8 0016C6E8  40 82 00 08 */	bne lbl_801711D0
/* 801711CC 0016C6EC  38 00 00 01 */	li r0, 1
lbl_801711D0:
/* 801711D0 0016C6F0  2C 1C 00 00 */	cmpwi r28, 0
/* 801711D4 0016C6F4  80 61 00 08 */	lwz r3, 8(r1)
/* 801711D8 0016C6F8  38 81 00 10 */	addi r4, r1, 0x10
/* 801711DC 0016C6FC  38 A0 00 05 */	li r5, 5
/* 801711E0 0016C700  7C 00 00 34 */	cntlzw r0, r0
/* 801711E4 0016C704  38 C0 00 03 */	li r6, 3
/* 801711E8 0016C708  54 07 D9 7E */	srwi r7, r0, 5
/* 801711EC 0016C70C  4B FF FD 45 */	bl TRKRequestSend
/* 801711F0 0016C710  7C 75 1B 79 */	or. r21, r3, r3
/* 801711F4 0016C714  40 82 00 10 */	bne lbl_80171204
/* 801711F8 0016C718  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801711FC 0016C71C  4B FF E4 5D */	bl TRKGetBuffer
/* 80171200 0016C720  7C 76 1B 78 */	mr r22, r3
lbl_80171204:
/* 80171204 0016C724  80 16 00 20 */	lwz r0, 0x20(r22)
/* 80171208 0016C728  2C 1C 00 00 */	cmpwi r28, 0
/* 8017120C 0016C72C  A2 76 00 24 */	lhz r19, 0x24(r22)
/* 80171210 0016C730  54 14 06 3E */	clrlwi r20, r0, 0x18
/* 80171214 0016C734  41 82 00 40 */	beq lbl_80171254
/* 80171218 0016C738  2C 15 00 00 */	cmpwi r21, 0
/* 8017121C 0016C73C  40 82 00 38 */	bne lbl_80171254
/* 80171220 0016C740  7C 13 F8 40 */	cmplw r19, r31
/* 80171224 0016C744  41 81 00 30 */	bgt lbl_80171254
/* 80171228 0016C748  7E C3 B3 78 */	mr r3, r22
/* 8017122C 0016C74C  38 80 00 40 */	li r4, 0x40
/* 80171230 0016C750  4B FF E3 55 */	bl TRKSetBufferPosition
/* 80171234 0016C754  7E C3 B3 78 */	mr r3, r22
/* 80171238 0016C758  7E 65 9B 78 */	mr r5, r19
/* 8017123C 0016C75C  7C 98 F2 14 */	add r4, r24, r30
/* 80171240 0016C760  4B FF DE 35 */	bl TRKReadBuffer_ui8
/* 80171244 0016C764  7C 75 1B 78 */	mr r21, r3
/* 80171248 0016C768  2C 15 03 02 */	cmpwi r21, 0x302
/* 8017124C 0016C76C  40 82 00 08 */	bne lbl_80171254
/* 80171250 0016C770  3A A0 00 00 */	li r21, 0
lbl_80171254:
/* 80171254 0016C774  7C 13 F8 40 */	cmplw r19, r31
/* 80171258 0016C778  41 82 00 0C */	beq lbl_80171264
/* 8017125C 0016C77C  7E 7F 9B 78 */	mr r31, r19
/* 80171260 0016C780  3B A0 00 01 */	li r29, 1
lbl_80171264:
/* 80171264 0016C784  92 9A 00 00 */	stw r20, 0(r26)
/* 80171268 0016C788  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8017126C 0016C78C  4B FF E3 89 */	bl TRKReleaseBuffer
/* 80171270 0016C790  48 00 00 10 */	b lbl_80171280
lbl_80171274:
/* 80171274 0016C794  80 61 00 08 */	lwz r3, 8(r1)
/* 80171278 0016C798  4B FF DC E1 */	bl TRKMessageSend
/* 8017127C 0016C79C  7C 75 1B 78 */	mr r21, r3
lbl_80171280:
/* 80171280 0016C7A0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80171284 0016C7A4  4B FF E3 71 */	bl TRKReleaseBuffer
/* 80171288 0016C7A8  7F DE FA 14 */	add r30, r30, r31
lbl_8017128C:
/* 8017128C 0016C7AC  2C 1D 00 00 */	cmpwi r29, 0
/* 80171290 0016C7B0  40 82 00 24 */	bne lbl_801712B4
/* 80171294 0016C7B4  80 19 00 00 */	lwz r0, 0(r25)
/* 80171298 0016C7B8  7C 1E 00 40 */	cmplw r30, r0
/* 8017129C 0016C7BC  40 80 00 18 */	bge lbl_801712B4
/* 801712A0 0016C7C0  2C 15 00 00 */	cmpwi r21, 0
/* 801712A4 0016C7C4  40 82 00 10 */	bne lbl_801712B4
/* 801712A8 0016C7C8  80 1A 00 00 */	lwz r0, 0(r26)
/* 801712AC 0016C7CC  2C 00 00 00 */	cmpwi r0, 0
/* 801712B0 0016C7D0  41 82 FE 58 */	beq lbl_80171108
lbl_801712B4:
/* 801712B4 0016C7D4  93 D9 00 00 */	stw r30, 0(r25)
/* 801712B8 0016C7D8  7E A3 AB 78 */	mr r3, r21
lbl_801712BC:
/* 801712BC 0016C7DC  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 801712C0 0016C7E0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801712C4 0016C7E4  7C 08 03 A6 */	mtlr r0
/* 801712C8 0016C7E8  38 21 00 90 */	addi r1, r1, 0x90
/* 801712CC 0016C7EC  4E 80 00 20 */	blr 