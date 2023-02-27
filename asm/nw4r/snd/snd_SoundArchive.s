.include "macros.inc"

.section .text, "ax"

glabel __ct__Q36nw4hbm3snd12SoundArchiveFv
/* 80136C44 00132164  3C A0 80 1A */	lis r5, lbl_801A7DC8@ha
/* 80136C48 00132168  38 80 00 00 */	li r4, 0
/* 80136C4C 0013216C  38 A5 7D C8 */	addi r5, r5, lbl_801A7DC8@l
/* 80136C50 00132170  38 00 00 2F */	li r0, 0x2f
/* 80136C54 00132174  90 A3 00 00 */	stw r5, 0(r3)
/* 80136C58 00132178  90 83 00 04 */	stw r4, 4(r3)
/* 80136C5C 0013217C  98 03 00 08 */	stb r0, 8(r3)
/* 80136C60 00132180  98 83 00 09 */	stb r4, 9(r3)
/* 80136C64 00132184  4E 80 00 20 */	blr

glabel __dt__Q36nw4hbm3snd12SoundArchiveFv
/* 80136C68 00132188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136C6C 0013218C  7C 08 02 A6 */	mflr r0
/* 80136C70 00132190  2C 03 00 00 */	cmpwi r3, 0
/* 80136C74 00132194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136C78 00132198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136C7C 0013219C  7C 7F 1B 78 */	mr r31, r3
/* 80136C80 001321A0  41 82 00 10 */	beq .L_80136C90
/* 80136C84 001321A4  2C 04 00 00 */	cmpwi r4, 0
/* 80136C88 001321A8  40 81 00 08 */	ble .L_80136C90
/* 80136C8C 001321AC  48 02 55 85 */	bl operator_delete
.L_80136C90:
/* 80136C90 001321B0  7F E3 FB 78 */	mr r3, r31
/* 80136C94 001321B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136C98 001321B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136C9C 001321BC  7C 08 03 A6 */	mtlr r0
/* 80136CA0 001321C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80136CA4 001321C4  4E 80 00 20 */	blr

glabel IsAvailable__Q36nw4hbm3snd12SoundArchiveCFv
/* 80136CA8 001321C8  80 63 00 04 */	lwz r3, 4(r3)
/* 80136CAC 001321CC  7C 03 00 D0 */	neg r0, r3
/* 80136CB0 001321D0  7C 00 1B 78 */	or r0, r0, r3
/* 80136CB4 001321D4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80136CB8 001321D8  4E 80 00 20 */	blr

glabel Setup__Q36nw4hbm3snd12SoundArchiveFPQ46nw4hbm3snd6detail22SoundArchiveFileReader
/* 80136CBC 001321DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136CC0 001321E0  7C 08 02 A6 */	mflr r0
/* 80136CC4 001321E4  2C 04 00 00 */	cmpwi r4, 0
/* 80136CC8 001321E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136CCC 001321EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136CD0 001321F0  7C 9F 23 78 */	mr r31, r4
/* 80136CD4 001321F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80136CD8 001321F8  7C 7E 1B 78 */	mr r30, r3
/* 80136CDC 001321FC  40 82 00 20 */	bne .L_80136CFC
/* 80136CE0 00132200  3C 60 80 1A */	lis r3, lbl_801A7D30@ha
/* 80136CE4 00132204  3C A0 80 1A */	lis r5, lbl_801A7D48@ha
/* 80136CE8 00132208  38 63 7D 30 */	addi r3, r3, lbl_801A7D30@l
/* 80136CEC 0013220C  38 80 00 46 */	li r4, 0x46
/* 80136CF0 00132210  38 A5 7D 48 */	addi r5, r5, lbl_801A7D48@l
/* 80136CF4 00132214  4C C6 31 82 */	crclr 6
/* 80136CF8 00132218  4B FD F0 C9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80136CFC:
/* 80136CFC 0013221C  93 FE 00 04 */	stw r31, 4(r30)
/* 80136D00 00132220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136D04 00132224  83 C1 00 08 */	lwz r30, 8(r1)
/* 80136D08 00132228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136D0C 0013222C  7C 08 03 A6 */	mtlr r0
/* 80136D10 00132230  38 21 00 10 */	addi r1, r1, 0x10
/* 80136D14 00132234  4E 80 00 20 */	blr

glabel Shutdown__Q36nw4hbm3snd12SoundArchiveFv
/* 80136D18 00132238  38 80 00 00 */	li r4, 0
/* 80136D1C 0013223C  38 00 00 2F */	li r0, 0x2f
/* 80136D20 00132240  90 83 00 04 */	stw r4, 4(r3)
/* 80136D24 00132244  98 03 00 08 */	stb r0, 8(r3)
/* 80136D28 00132248  98 83 00 09 */	stb r4, 9(r3)
/* 80136D2C 0013224C  4E 80 00 20 */	blr

glabel GetPlayerCount__Q36nw4hbm3snd12SoundArchiveCFv
/* 80136D30 00132250  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D34 00132254  48 00 12 F4 */	b GetPlayerCount__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFv

glabel GetGroupCount__Q36nw4hbm3snd12SoundArchiveCFv
/* 80136D38 00132258  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D3C 0013225C  48 00 13 60 */	b GetGroupCount__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFv

glabel ConvertLabelStringToSoundId__Q36nw4hbm3snd12SoundArchiveCFPCc
/* 80136D40 00132260  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D44 00132264  7C 85 23 78 */	mr r5, r4
/* 80136D48 00132268  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80136D4C 0013226C  48 00 17 38 */	b ConvertLabelStringToId__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFPCQ56nw4hbm3snd6detail16SoundArchiveFile10StringTreePCc

glabel GetSoundType__Q36nw4hbm3snd12SoundArchiveCFUl
/* 80136D50 00132270  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D54 00132274  48 00 08 04 */	b GetSoundType__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUl

glabel ReadSoundInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive9SoundInfo
/* 80136D58 00132278  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D5C 0013227C  48 00 09 5C */	b ReadSoundInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive9SoundInfo

glabel detail_ReadSeqSoundInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive12SeqSoundInfo
/* 80136D60 00132280  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D64 00132284  48 00 0A 94 */	b ReadSeqSoundInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive12SeqSoundInfo

glabel detail_ReadStrmSoundInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive13StrmSoundInfo
/* 80136D68 00132288  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D6C 0013228C  48 00 0B 3C */	b ReadStrmSoundInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive13StrmSoundInfo

glabel detail_ReadWaveSoundInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive13WaveSoundInfo
/* 80136D70 00132290  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D74 00132294  48 00 0B B8 */	b ReadWaveSoundInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive13WaveSoundInfo

glabel ReadPlayerInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive10PlayerInfo
/* 80136D78 00132298  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D7C 0013229C  48 00 0D 50 */	b ReadPlayerInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive10PlayerInfo

glabel ReadSoundArchivePlayerInfo__Q36nw4hbm3snd12SoundArchiveCFPQ46nw4hbm3snd12SoundArchive22SoundArchivePlayerInfo
/* 80136D80 001322A0  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D84 001322A4  48 00 11 EC */	b ReadSoundArchivePlayerInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFPQ46nw4hbm3snd12SoundArchive22SoundArchivePlayerInfo

glabel detail_ReadBankInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive8BankInfo
/* 80136D88 001322A8  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D8C 001322AC  48 00 0C 40 */	b ReadBankInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive8BankInfo

glabel detail_ReadGroupInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive9GroupInfo
/* 80136D90 001322B0  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D94 001322B4  48 00 0E 44 */	b ReadGroupInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive9GroupInfo

glabel detail_ReadGroupItemInfo__Q36nw4hbm3snd12SoundArchiveCFUlUlPQ46nw4hbm3snd12SoundArchive13GroupItemInfo
/* 80136D98 001322B8  80 63 00 04 */	lwz r3, 4(r3)
/* 80136D9C 001322BC  48 00 0F F0 */	b ReadGroupItemInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlUlPQ46nw4hbm3snd12SoundArchive13GroupItemInfo

glabel detail_ReadFileInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive8FileInfo
/* 80136DA0 001322C0  80 63 00 04 */	lwz r3, 4(r3)
/* 80136DA4 001322C4  48 00 13 70 */	b ReadFileInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive8FileInfo

glabel detail_ReadFilePos__Q36nw4hbm3snd12SoundArchiveCFUlUlPQ46nw4hbm3snd12SoundArchive7FilePos
/* 80136DA8 001322C8  80 63 00 04 */	lwz r3, 4(r3)
/* 80136DAC 001322CC  48 00 15 0C */	b ReadFilePos__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlUlPQ46nw4hbm3snd12SoundArchive7FilePos

glabel detail_OpenFileStream__Q36nw4hbm3snd12SoundArchiveCFUlPvi
/* 80136DB0 001322D0  94 21 FD 90 */	stwu r1, -0x270(r1)
/* 80136DB4 001322D4  7C 08 02 A6 */	mflr r0
/* 80136DB8 001322D8  90 01 02 74 */	stw r0, 0x274(r1)
/* 80136DBC 001322DC  39 61 02 70 */	addi r11, r1, 0x270
/* 80136DC0 001322E0  48 02 5B 7D */	bl _savegpr_25
/* 80136DC4 001322E4  7C 7D 1B 78 */	mr r29, r3
/* 80136DC8 001322E8  80 63 00 04 */	lwz r3, 4(r3)
/* 80136DCC 001322EC  7C BE 2B 78 */	mr r30, r5
/* 80136DD0 001322F0  7C 99 23 78 */	mr r25, r4
/* 80136DD4 001322F4  7C DF 33 78 */	mr r31, r6
/* 80136DD8 001322F8  38 A1 00 10 */	addi r5, r1, 0x10
/* 80136DDC 001322FC  48 00 13 39 */	bl ReadFileInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive8FileInfo
/* 80136DE0 00132300  2C 03 00 00 */	cmpwi r3, 0
/* 80136DE4 00132304  40 82 00 0C */	bne .L_80136DF0
/* 80136DE8 00132308  38 60 00 00 */	li r3, 0
/* 80136DEC 0013230C  48 00 02 18 */	b .L_80137004
.L_80136DF0:
/* 80136DF0 00132310  83 61 00 18 */	lwz r27, 0x18(r1)
/* 80136DF4 00132314  2C 1B 00 00 */	cmpwi r27, 0
/* 80136DF8 00132318  41 82 00 B4 */	beq .L_80136EAC
/* 80136DFC 0013231C  88 1B 00 00 */	lbz r0, 0(r27)
/* 80136E00 00132320  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80136E04 00132324  40 82 00 08 */	bne .L_80136E0C
/* 80136E08 00132328  48 00 00 78 */	b .L_80136E80
.L_80136E0C:
/* 80136E0C 0013232C  7F 63 DB 78 */	mr r3, r27
/* 80136E10 00132330  48 02 51 D5 */	bl strlen
/* 80136E14 00132334  7C 7C 1B 78 */	mr r28, r3
/* 80136E18 00132338  38 7D 00 08 */	addi r3, r29, 8
/* 80136E1C 0013233C  48 02 51 C9 */	bl strlen
/* 80136E20 00132340  7C 1C 1A 14 */	add r0, r28, r3
/* 80136E24 00132344  7C 65 1B 78 */	mr r5, r3
/* 80136E28 00132348  28 00 01 00 */	cmplwi r0, 0x100
/* 80136E2C 0013234C  41 80 00 30 */	blt .L_80136E5C
/* 80136E30 00132350  3C 60 80 1A */	lis r3, lbl_801A7D30@ha
/* 80136E34 00132354  3C A0 80 1A */	lis r5, lbl_801A7D78@ha
/* 80136E38 00132358  7F 67 DB 78 */	mr r7, r27
/* 80136E3C 0013235C  38 DD 00 08 */	addi r6, r29, 8
/* 80136E40 00132360  38 63 7D 30 */	addi r3, r3, lbl_801A7D30@l
/* 80136E44 00132364  38 A5 7D 78 */	addi r5, r5, lbl_801A7D78@l
/* 80136E48 00132368  38 80 01 55 */	li r4, 0x155
/* 80136E4C 0013236C  4C C6 31 82 */	crclr 6
/* 80136E50 00132370  4B FD EF FD */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 80136E54 00132374  38 60 00 00 */	li r3, 0
/* 80136E58 00132378  48 00 01 AC */	b .L_80137004
.L_80136E5C:
/* 80136E5C 0013237C  38 61 01 50 */	addi r3, r1, 0x150
/* 80136E60 00132380  38 9D 00 08 */	addi r4, r29, 8
/* 80136E64 00132384  38 A5 00 01 */	addi r5, r5, 1
/* 80136E68 00132388  48 02 F7 8D */	bl strncpy
/* 80136E6C 0013238C  7F 64 DB 78 */	mr r4, r27
/* 80136E70 00132390  38 61 01 50 */	addi r3, r1, 0x150
/* 80136E74 00132394  38 BC 00 01 */	addi r5, r28, 1
/* 80136E78 00132398  48 02 F7 ED */	bl strncat
/* 80136E7C 0013239C  3B 61 01 50 */	addi r27, r1, 0x150
.L_80136E80:
/* 80136E80 001323A0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80136E84 001323A4  7F A3 EB 78 */	mr r3, r29
/* 80136E88 001323A8  7F C4 F3 78 */	mr r4, r30
/* 80136E8C 001323AC  7F E5 FB 78 */	mr r5, r31
/* 80136E90 001323B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80136E94 001323B4  7F 66 DB 78 */	mr r6, r27
/* 80136E98 001323B8  38 E0 00 00 */	li r7, 0
/* 80136E9C 001323BC  39 00 00 00 */	li r8, 0
/* 80136EA0 001323C0  7D 89 03 A6 */	mtctr r12
/* 80136EA4 001323C4  4E 80 04 21 */	bctrl
/* 80136EA8 001323C8  48 00 01 5C */	b .L_80137004
.L_80136EAC:
/* 80136EAC 001323CC  80 7D 00 04 */	lwz r3, 4(r29)
/* 80136EB0 001323D0  7F 24 CB 78 */	mr r4, r25
/* 80136EB4 001323D4  38 C1 00 08 */	addi r6, r1, 8
/* 80136EB8 001323D8  38 A0 00 00 */	li r5, 0
/* 80136EBC 001323DC  48 00 13 FD */	bl ReadFilePos__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlUlPQ46nw4hbm3snd12SoundArchive7FilePos
/* 80136EC0 001323E0  2C 03 00 00 */	cmpwi r3, 0
/* 80136EC4 001323E4  40 82 00 0C */	bne .L_80136ED0
/* 80136EC8 001323E8  38 60 00 00 */	li r3, 0
/* 80136ECC 001323EC  48 00 01 38 */	b .L_80137004
.L_80136ED0:
/* 80136ED0 001323F0  80 7D 00 04 */	lwz r3, 4(r29)
/* 80136ED4 001323F4  38 A1 00 38 */	addi r5, r1, 0x38
/* 80136ED8 001323F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80136EDC 001323FC  48 00 0C FD */	bl ReadGroupInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive9GroupInfo
/* 80136EE0 00132400  2C 03 00 00 */	cmpwi r3, 0
/* 80136EE4 00132404  40 82 00 0C */	bne .L_80136EF0
/* 80136EE8 00132408  38 60 00 00 */	li r3, 0
/* 80136EEC 0013240C  48 00 01 18 */	b .L_80137004
.L_80136EF0:
/* 80136EF0 00132410  80 7D 00 04 */	lwz r3, 4(r29)
/* 80136EF4 00132414  38 C1 00 20 */	addi r6, r1, 0x20
/* 80136EF8 00132418  80 81 00 08 */	lwz r4, 8(r1)
/* 80136EFC 0013241C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80136F00 00132420  48 00 0E 8D */	bl ReadGroupItemInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlUlPQ46nw4hbm3snd12SoundArchive13GroupItemInfo
/* 80136F04 00132424  2C 03 00 00 */	cmpwi r3, 0
/* 80136F08 00132428  40 82 00 0C */	bne .L_80136F14
/* 80136F0C 0013242C  38 60 00 00 */	li r3, 0
/* 80136F10 00132430  48 00 00 F4 */	b .L_80137004
.L_80136F14:
/* 80136F14 00132434  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 80136F18 00132438  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80136F1C 0013243C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80136F20 00132440  2C 1B 00 00 */	cmpwi r27, 0
/* 80136F24 00132444  83 21 00 28 */	lwz r25, 0x28(r1)
/* 80136F28 00132448  7F 43 02 14 */	add r26, r3, r0
/* 80136F2C 0013244C  41 82 00 B4 */	beq .L_80136FE0
/* 80136F30 00132450  88 1B 00 00 */	lbz r0, 0(r27)
/* 80136F34 00132454  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80136F38 00132458  40 82 00 08 */	bne .L_80136F40
/* 80136F3C 0013245C  48 00 00 78 */	b .L_80136FB4
.L_80136F40:
/* 80136F40 00132460  7F 63 DB 78 */	mr r3, r27
/* 80136F44 00132464  48 02 50 A1 */	bl strlen
/* 80136F48 00132468  7C 7C 1B 78 */	mr r28, r3
/* 80136F4C 0013246C  38 7D 00 08 */	addi r3, r29, 8
/* 80136F50 00132470  48 02 50 95 */	bl strlen
/* 80136F54 00132474  7C 1C 1A 14 */	add r0, r28, r3
/* 80136F58 00132478  7C 65 1B 78 */	mr r5, r3
/* 80136F5C 0013247C  28 00 01 00 */	cmplwi r0, 0x100
/* 80136F60 00132480  41 80 00 30 */	blt .L_80136F90
/* 80136F64 00132484  3C 60 80 1A */	lis r3, lbl_801A7D30@ha
/* 80136F68 00132488  3C A0 80 1A */	lis r5, lbl_801A7D78@ha
/* 80136F6C 0013248C  7F 67 DB 78 */	mr r7, r27
/* 80136F70 00132490  38 DD 00 08 */	addi r6, r29, 8
/* 80136F74 00132494  38 63 7D 30 */	addi r3, r3, lbl_801A7D30@l
/* 80136F78 00132498  38 A5 7D 78 */	addi r5, r5, lbl_801A7D78@l
/* 80136F7C 0013249C  38 80 01 55 */	li r4, 0x155
/* 80136F80 001324A0  4C C6 31 82 */	crclr 6
/* 80136F84 001324A4  4B FD EE C9 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 80136F88 001324A8  38 60 00 00 */	li r3, 0
/* 80136F8C 001324AC  48 00 00 78 */	b .L_80137004
.L_80136F90:
/* 80136F90 001324B0  38 61 00 50 */	addi r3, r1, 0x50
/* 80136F94 001324B4  38 9D 00 08 */	addi r4, r29, 8
/* 80136F98 001324B8  38 A5 00 01 */	addi r5, r5, 1
/* 80136F9C 001324BC  48 02 F6 59 */	bl strncpy
/* 80136FA0 001324C0  7F 64 DB 78 */	mr r4, r27
/* 80136FA4 001324C4  38 61 00 50 */	addi r3, r1, 0x50
/* 80136FA8 001324C8  38 BC 00 01 */	addi r5, r28, 1
/* 80136FAC 001324CC  48 02 F6 B9 */	bl strncat
/* 80136FB0 001324D0  3B 61 00 50 */	addi r27, r1, 0x50
.L_80136FB4:
/* 80136FB4 001324D4  81 9D 00 00 */	lwz r12, 0(r29)
/* 80136FB8 001324D8  7F A3 EB 78 */	mr r3, r29
/* 80136FBC 001324DC  7F C4 F3 78 */	mr r4, r30
/* 80136FC0 001324E0  7F E5 FB 78 */	mr r5, r31
/* 80136FC4 001324E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80136FC8 001324E8  7F 66 DB 78 */	mr r6, r27
/* 80136FCC 001324EC  7F 47 D3 78 */	mr r7, r26
/* 80136FD0 001324F0  7F 28 CB 78 */	mr r8, r25
/* 80136FD4 001324F4  7D 89 03 A6 */	mtctr r12
/* 80136FD8 001324F8  4E 80 04 21 */	bctrl
/* 80136FDC 001324FC  48 00 00 28 */	b .L_80137004
.L_80136FE0:
/* 80136FE0 00132500  81 9D 00 00 */	lwz r12, 0(r29)
/* 80136FE4 00132504  7F A3 EB 78 */	mr r3, r29
/* 80136FE8 00132508  7F C4 F3 78 */	mr r4, r30
/* 80136FEC 0013250C  7F E5 FB 78 */	mr r5, r31
/* 80136FF0 00132510  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80136FF4 00132514  7F 46 D3 78 */	mr r6, r26
/* 80136FF8 00132518  7F 27 CB 78 */	mr r7, r25
/* 80136FFC 0013251C  7D 89 03 A6 */	mtctr r12
/* 80137000 00132520  4E 80 04 21 */	bctrl
.L_80137004:
/* 80137004 00132524  39 61 02 70 */	addi r11, r1, 0x270
/* 80137008 00132528  48 02 59 81 */	bl _restgpr_25
/* 8013700C 0013252C  80 01 02 74 */	lwz r0, 0x274(r1)
/* 80137010 00132530  7C 08 03 A6 */	mtlr r0
/* 80137014 00132534  38 21 02 70 */	addi r1, r1, 0x270
/* 80137018 00132538  4E 80 00 20 */	blr

glabel detail_OpenGroupStream__Q36nw4hbm3snd12SoundArchiveCFUlPvi
/* 8013701C 0013253C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80137020 00132540  7C 08 02 A6 */	mflr r0
/* 80137024 00132544  90 01 01 44 */	stw r0, 0x144(r1)
/* 80137028 00132548  39 61 01 40 */	addi r11, r1, 0x140
/* 8013702C 0013254C  48 02 59 11 */	bl _savegpr_25
/* 80137030 00132550  7C 79 1B 78 */	mr r25, r3
/* 80137034 00132554  80 63 00 04 */	lwz r3, 4(r3)
/* 80137038 00132558  7C BA 2B 78 */	mr r26, r5
/* 8013703C 0013255C  7C DB 33 78 */	mr r27, r6
/* 80137040 00132560  38 A1 00 08 */	addi r5, r1, 8
/* 80137044 00132564  48 00 0B 95 */	bl ReadGroupInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive9GroupInfo
/* 80137048 00132568  2C 03 00 00 */	cmpwi r3, 0
/* 8013704C 0013256C  40 82 00 0C */	bne .L_80137058
/* 80137050 00132570  38 60 00 00 */	li r3, 0
/* 80137054 00132574  48 00 00 EC */	b .L_80137140
.L_80137058:
/* 80137058 00132578  83 81 00 0C */	lwz r28, 0xc(r1)
/* 8013705C 0013257C  2C 1C 00 00 */	cmpwi r28, 0
/* 80137060 00132580  41 82 00 BC */	beq .L_8013711C
/* 80137064 00132584  88 1C 00 00 */	lbz r0, 0(r28)
/* 80137068 00132588  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8013706C 0013258C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80137070 00132590  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80137074 00132594  40 82 00 08 */	bne .L_8013707C
/* 80137078 00132598  48 00 00 78 */	b .L_801370F0
.L_8013707C:
/* 8013707C 0013259C  7F 83 E3 78 */	mr r3, r28
/* 80137080 001325A0  48 02 4F 65 */	bl strlen
/* 80137084 001325A4  7C 7F 1B 78 */	mr r31, r3
/* 80137088 001325A8  38 79 00 08 */	addi r3, r25, 8
/* 8013708C 001325AC  48 02 4F 59 */	bl strlen
/* 80137090 001325B0  7C 1F 1A 14 */	add r0, r31, r3
/* 80137094 001325B4  7C 65 1B 78 */	mr r5, r3
/* 80137098 001325B8  28 00 01 00 */	cmplwi r0, 0x100
/* 8013709C 001325BC  41 80 00 30 */	blt .L_801370CC
/* 801370A0 001325C0  3C 60 80 1A */	lis r3, lbl_801A7D30@ha
/* 801370A4 001325C4  3C A0 80 1A */	lis r5, lbl_801A7D78@ha
/* 801370A8 001325C8  7F 87 E3 78 */	mr r7, r28
/* 801370AC 001325CC  38 D9 00 08 */	addi r6, r25, 8
/* 801370B0 001325D0  38 63 7D 30 */	addi r3, r3, lbl_801A7D30@l
/* 801370B4 001325D4  38 A5 7D 78 */	addi r5, r5, lbl_801A7D78@l
/* 801370B8 001325D8  38 80 01 55 */	li r4, 0x155
/* 801370BC 001325DC  4C C6 31 82 */	crclr 6
/* 801370C0 001325E0  4B FD ED 8D */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 801370C4 001325E4  38 60 00 00 */	li r3, 0
/* 801370C8 001325E8  48 00 00 78 */	b .L_80137140
.L_801370CC:
/* 801370CC 001325EC  38 61 00 20 */	addi r3, r1, 0x20
/* 801370D0 001325F0  38 99 00 08 */	addi r4, r25, 8
/* 801370D4 001325F4  38 A5 00 01 */	addi r5, r5, 1
/* 801370D8 001325F8  48 02 F5 1D */	bl strncpy
/* 801370DC 001325FC  7F 84 E3 78 */	mr r4, r28
/* 801370E0 00132600  38 61 00 20 */	addi r3, r1, 0x20
/* 801370E4 00132604  38 BF 00 01 */	addi r5, r31, 1
/* 801370E8 00132608  48 02 F5 7D */	bl strncat
/* 801370EC 0013260C  3B 81 00 20 */	addi r28, r1, 0x20
.L_801370F0:
/* 801370F0 00132610  81 99 00 00 */	lwz r12, 0(r25)
/* 801370F4 00132614  7F 23 CB 78 */	mr r3, r25
/* 801370F8 00132618  7F 44 D3 78 */	mr r4, r26
/* 801370FC 0013261C  7F 65 DB 78 */	mr r5, r27
/* 80137100 00132620  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80137104 00132624  7F 86 E3 78 */	mr r6, r28
/* 80137108 00132628  7F C7 F3 78 */	mr r7, r30
/* 8013710C 0013262C  7F A8 EB 78 */	mr r8, r29
/* 80137110 00132630  7D 89 03 A6 */	mtctr r12
/* 80137114 00132634  4E 80 04 21 */	bctrl
/* 80137118 00132638  48 00 00 28 */	b .L_80137140
.L_8013711C:
/* 8013711C 0013263C  81 99 00 00 */	lwz r12, 0(r25)
/* 80137120 00132640  7F 23 CB 78 */	mr r3, r25
/* 80137124 00132644  7F 44 D3 78 */	mr r4, r26
/* 80137128 00132648  7F 65 DB 78 */	mr r5, r27
/* 8013712C 0013264C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80137130 00132650  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 80137134 00132654  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 80137138 00132658  7D 89 03 A6 */	mtctr r12
/* 8013713C 0013265C  4E 80 04 21 */	bctrl
.L_80137140:
/* 80137140 00132660  39 61 01 40 */	addi r11, r1, 0x140
/* 80137144 00132664  48 02 58 45 */	bl _restgpr_25
/* 80137148 00132668  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8013714C 0013266C  7C 08 03 A6 */	mtlr r0
/* 80137150 00132670  38 21 01 40 */	addi r1, r1, 0x140
/* 80137154 00132674  4E 80 00 20 */	blr

glabel detail_OpenGroupWaveDataStream__Q36nw4hbm3snd12SoundArchiveCFUlPvi
/* 80137158 00132678  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8013715C 0013267C  7C 08 02 A6 */	mflr r0
/* 80137160 00132680  90 01 01 44 */	stw r0, 0x144(r1)
/* 80137164 00132684  39 61 01 40 */	addi r11, r1, 0x140
/* 80137168 00132688  48 02 57 D5 */	bl _savegpr_25
/* 8013716C 0013268C  7C 79 1B 78 */	mr r25, r3
/* 80137170 00132690  80 63 00 04 */	lwz r3, 4(r3)
/* 80137174 00132694  7C BA 2B 78 */	mr r26, r5
/* 80137178 00132698  7C DB 33 78 */	mr r27, r6
/* 8013717C 0013269C  38 A1 00 08 */	addi r5, r1, 8
/* 80137180 001326A0  48 00 0A 59 */	bl ReadGroupInfo__Q46nw4hbm3snd6detail22SoundArchiveFileReaderCFUlPQ46nw4hbm3snd12SoundArchive9GroupInfo
/* 80137184 001326A4  2C 03 00 00 */	cmpwi r3, 0
/* 80137188 001326A8  40 82 00 0C */	bne .L_80137194
/* 8013718C 001326AC  38 60 00 00 */	li r3, 0
/* 80137190 001326B0  48 00 00 EC */	b .L_8013727C
.L_80137194:
/* 80137194 001326B4  83 81 00 0C */	lwz r28, 0xc(r1)
/* 80137198 001326B8  2C 1C 00 00 */	cmpwi r28, 0
/* 8013719C 001326BC  41 82 00 BC */	beq .L_80137258
/* 801371A0 001326C0  88 1C 00 00 */	lbz r0, 0(r28)
/* 801371A4 001326C4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 801371A8 001326C8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 801371AC 001326CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801371B0 001326D0  40 82 00 08 */	bne .L_801371B8
/* 801371B4 001326D4  48 00 00 78 */	b .L_8013722C
.L_801371B8:
/* 801371B8 001326D8  7F 83 E3 78 */	mr r3, r28
/* 801371BC 001326DC  48 02 4E 29 */	bl strlen
/* 801371C0 001326E0  7C 7F 1B 78 */	mr r31, r3
/* 801371C4 001326E4  38 79 00 08 */	addi r3, r25, 8
/* 801371C8 001326E8  48 02 4E 1D */	bl strlen
/* 801371CC 001326EC  7C 1F 1A 14 */	add r0, r31, r3
/* 801371D0 001326F0  7C 65 1B 78 */	mr r5, r3
/* 801371D4 001326F4  28 00 01 00 */	cmplwi r0, 0x100
/* 801371D8 001326F8  41 80 00 30 */	blt .L_80137208
/* 801371DC 001326FC  3C 60 80 1A */	lis r3, lbl_801A7D30@ha
/* 801371E0 00132700  3C A0 80 1A */	lis r5, lbl_801A7D78@ha
/* 801371E4 00132704  7F 87 E3 78 */	mr r7, r28
/* 801371E8 00132708  38 D9 00 08 */	addi r6, r25, 8
/* 801371EC 0013270C  38 63 7D 30 */	addi r3, r3, lbl_801A7D30@l
/* 801371F0 00132710  38 A5 7D 78 */	addi r5, r5, lbl_801A7D78@l
/* 801371F4 00132714  38 80 01 55 */	li r4, 0x155
/* 801371F8 00132718  4C C6 31 82 */	crclr 6
/* 801371FC 0013271C  4B FD EC 51 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 80137200 00132720  38 60 00 00 */	li r3, 0
/* 80137204 00132724  48 00 00 78 */	b .L_8013727C
.L_80137208:
/* 80137208 00132728  38 61 00 20 */	addi r3, r1, 0x20
/* 8013720C 0013272C  38 99 00 08 */	addi r4, r25, 8
/* 80137210 00132730  38 A5 00 01 */	addi r5, r5, 1
/* 80137214 00132734  48 02 F3 E1 */	bl strncpy
/* 80137218 00132738  7F 84 E3 78 */	mr r4, r28
/* 8013721C 0013273C  38 61 00 20 */	addi r3, r1, 0x20
/* 80137220 00132740  38 BF 00 01 */	addi r5, r31, 1
/* 80137224 00132744  48 02 F4 41 */	bl strncat
/* 80137228 00132748  3B 81 00 20 */	addi r28, r1, 0x20
.L_8013722C:
/* 8013722C 0013274C  81 99 00 00 */	lwz r12, 0(r25)
/* 80137230 00132750  7F 23 CB 78 */	mr r3, r25
/* 80137234 00132754  7F 44 D3 78 */	mr r4, r26
/* 80137238 00132758  7F 65 DB 78 */	mr r5, r27
/* 8013723C 0013275C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80137240 00132760  7F 86 E3 78 */	mr r6, r28
/* 80137244 00132764  7F C7 F3 78 */	mr r7, r30
/* 80137248 00132768  7F A8 EB 78 */	mr r8, r29
/* 8013724C 0013276C  7D 89 03 A6 */	mtctr r12
/* 80137250 00132770  4E 80 04 21 */	bctrl
/* 80137254 00132774  48 00 00 28 */	b .L_8013727C
.L_80137258:
/* 80137258 00132778  81 99 00 00 */	lwz r12, 0(r25)
/* 8013725C 0013277C  7F 23 CB 78 */	mr r3, r25
/* 80137260 00132780  7F 44 D3 78 */	mr r4, r26
/* 80137264 00132784  7F 65 DB 78 */	mr r5, r27
/* 80137268 00132788  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8013726C 0013278C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80137270 00132790  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 80137274 00132794  7D 89 03 A6 */	mtctr r12
/* 80137278 00132798  4E 80 04 21 */	bctrl
.L_8013727C:
/* 8013727C 0013279C  39 61 01 40 */	addi r11, r1, 0x140
/* 80137280 001327A0  48 02 57 09 */	bl _restgpr_25
/* 80137284 001327A4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80137288 001327A8  7C 08 03 A6 */	mtlr r0
/* 8013728C 001327AC  38 21 01 40 */	addi r1, r1, 0x140
/* 80137290 001327B0  4E 80 00 20 */	blr

glabel SetExternalFileRoot__Q34nw4r3snd12SoundArchiveFPCc
/* 80137294 001327B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80137298 001327B8  7C 08 02 A6 */	mflr r0
/* 8013729C 001327BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801372A0 001327C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801372A4 001327C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801372A8 001327C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801372AC 001327CC  7C 9D 23 78 */	mr r29, r4
/* 801372B0 001327D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 801372B4 001327D4  7C 7C 1B 78 */	mr r28, r3
/* 801372B8 001327D8  7F A3 EB 78 */	mr r3, r29
/* 801372BC 001327DC  48 02 4D 29 */	bl strlen
/* 801372C0 001327E0  7C 9D 1A 14 */	add r4, r29, r3
/* 801372C4 001327E4  7C 7F 1B 78 */	mr r31, r3
/* 801372C8 001327E8  88 04 FF FF */	lbz r0, -1(r4)
/* 801372CC 001327EC  7F FE FB 78 */	mr r30, r31
/* 801372D0 001327F0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 801372D4 001327F4  41 82 00 14 */	beq .L_801372E8
/* 801372D8 001327F8  7C 9C 1A 14 */	add r4, r28, r3
/* 801372DC 001327FC  38 00 00 2F */	li r0, 0x2f
/* 801372E0 00132800  98 04 00 08 */	stb r0, 8(r4)
/* 801372E4 00132804  3B C3 00 01 */	addi r30, r3, 1
.L_801372E8:
/* 801372E8 00132808  28 1E 01 00 */	cmplwi r30, 0x100
/* 801372EC 0013280C  41 80 00 20 */	blt .L_8013730C
/* 801372F0 00132810  3C 60 80 1A */	lis r3, lbl_801A7D30@ha
/* 801372F4 00132814  3C A0 80 1A */	lis r5, lbl_801A7D98@ha
/* 801372F8 00132818  38 63 7D 30 */	addi r3, r3, lbl_801A7D30@l
/* 801372FC 0013281C  38 80 01 6B */	li r4, 0x16b
/* 80137300 00132820  38 A5 7D 98 */	addi r5, r5, lbl_801A7D98@l
/* 80137304 00132824  4C C6 31 82 */	crclr 6
/* 80137308 00132828  4B FD EA B9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013730C:
/* 8013730C 0013282C  7C 7C F2 14 */	add r3, r28, r30
/* 80137310 00132830  38 00 00 00 */	li r0, 0
/* 80137314 00132834  98 03 00 08 */	stb r0, 8(r3)
/* 80137318 00132838  7F A4 EB 78 */	mr r4, r29
/* 8013731C 0013283C  7F E5 FB 78 */	mr r5, r31
/* 80137320 00132840  38 7C 00 08 */	addi r3, r28, 8
/* 80137324 00132844  48 02 F2 D1 */	bl strncpy
/* 80137328 00132848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013732C 0013284C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80137330 00132850  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80137334 00132854  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80137338 00132858  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8013733C 0013285C  7C 08 03 A6 */	mtlr r0
/* 80137340 00132860  38 21 00 20 */	addi r1, r1, 0x20
/* 80137344 00132864  4E 80 00 20 */	blr

