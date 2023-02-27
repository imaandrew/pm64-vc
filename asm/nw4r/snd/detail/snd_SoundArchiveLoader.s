.include "macros.inc"

.section .text, "ax"

glabel __ct__Q46nw4hbm3snd6detail18SoundArchiveLoaderFRCQ36nw4hbm3snd12SoundArchive
/* 80138760 00133C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138764 00133C84  7C 08 02 A6 */	mflr r0
/* 80138768 00133C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013876C 00133C8C  38 00 00 00 */	li r0, 0
/* 80138770 00133C90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138774 00133C94  7C 7F 1B 78 */	mr r31, r3
/* 80138778 00133C98  90 83 00 18 */	stw r4, 0x18(r3)
/* 8013877C 00133C9C  90 03 02 1C */	stw r0, 0x21c(r3)
/* 80138780 00133CA0  4B F5 DC E9 */	bl OSInitMutex
/* 80138784 00133CA4  7F E3 FB 78 */	mr r3, r31
/* 80138788 00133CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013878C 00133CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138790 00133CB0  7C 08 03 A6 */	mtlr r0
/* 80138794 00133CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80138798 00133CB8  4E 80 00 20 */	blr 

glabel __dt__Q46nw4hbm3snd6detail18SoundArchiveLoaderFv
/* 8013879C 00133CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801387A0 00133CC0  7C 08 02 A6 */	mflr r0
/* 801387A4 00133CC4  2C 03 00 00 */	cmpwi r3, 0
/* 801387A8 00133CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801387AC 00133CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801387B0 00133CD0  7C 7F 1B 78 */	mr r31, r3
/* 801387B4 00133CD4  41 82 00 10 */	beq .L_801387C4
/* 801387B8 00133CD8  2C 04 00 00 */	cmpwi r4, 0
/* 801387BC 00133CDC  40 81 00 08 */	ble .L_801387C4
/* 801387C0 00133CE0  48 02 3A 51 */	bl operator_delete
.L_801387C4:
/* 801387C4 00133CE4  7F E3 FB 78 */	mr r3, r31
/* 801387C8 00133CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801387CC 00133CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801387D0 00133CF0  7C 08 03 A6 */	mtlr r0
/* 801387D4 00133CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 801387D8 00133CF8  4E 80 00 20 */	blr 

glabel LoadGroup__Q46nw4hbm3snd6detail18SoundArchiveLoaderFUlPQ36nw4hbm3snd22SoundMemoryAllocatablePPvUl
/* 801387DC 00133CFC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801387E0 00133D00  7C 08 02 A6 */	mflr r0
/* 801387E4 00133D04  90 01 00 54 */	stw r0, 0x54(r1)
/* 801387E8 00133D08  39 61 00 50 */	addi r11, r1, 0x50
/* 801387EC 00133D0C  48 02 41 49 */	bl _savegpr_23
/* 801387F0 00133D10  2C 05 00 00 */	cmpwi r5, 0
/* 801387F4 00133D14  7C 7F 1B 78 */	mr r31, r3
/* 801387F8 00133D18  7C 9A 23 78 */	mr r26, r4
/* 801387FC 00133D1C  7C B9 2B 78 */	mr r25, r5
/* 80138800 00133D20  7C D7 33 78 */	mr r23, r6
/* 80138804 00133D24  7C F8 3B 78 */	mr r24, r7
/* 80138808 00133D28  40 82 00 20 */	bne .L_80138828
/* 8013880C 00133D2C  3C 60 80 1B */	lis r3, lbl_801A8460@ha
/* 80138810 00133D30  3C A0 80 1B */	lis r5, lbl_801A847C@ha
/* 80138814 00133D34  38 63 84 60 */	addi r3, r3, lbl_801A8460@l
/* 80138818 00133D38  38 80 00 53 */	li r4, 0x53
/* 8013881C 00133D3C  38 A5 84 7C */	addi r5, r5, lbl_801A847C@l
/* 80138820 00133D40  4C C6 31 82 */	crclr 6
/* 80138824 00133D44  4B FD D5 9D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80138828:
/* 80138828 00133D48  7F E3 FB 78 */	mr r3, r31
/* 8013882C 00133D4C  4B F5 DC 75 */	bl OSLockMutex
/* 80138830 00133D50  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80138834 00133D54  7F 44 D3 78 */	mr r4, r26
/* 80138838 00133D58  38 BF 00 1C */	addi r5, r31, 0x1c
/* 8013883C 00133D5C  38 C0 02 00 */	li r6, 0x200
/* 80138840 00133D60  4B FF E7 DD */	bl detail_OpenGroupStream__Q36nw4hbm3snd12SoundArchiveCFUlPvi
/* 80138844 00133D64  2C 03 00 00 */	cmpwi r3, 0
/* 80138848 00133D68  7C 7D 1B 78 */	mr r29, r3
/* 8013884C 00133D6C  40 82 00 28 */	bne .L_80138874
/* 80138850 00133D70  41 82 00 14 */	beq .L_80138864
/* 80138854 00133D74  81 83 00 00 */	lwz r12, 0(r3)
/* 80138858 00133D78  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8013885C 00133D7C  7D 89 03 A6 */	mtctr r12
/* 80138860 00133D80  4E 80 04 21 */	bctrl 
.L_80138864:
/* 80138864 00133D84  7F E3 FB 78 */	mr r3, r31
/* 80138868 00133D88  4B F5 DD 15 */	bl OSUnlockMutex
/* 8013886C 00133D8C  38 60 00 00 */	li r3, 0
/* 80138870 00133D90  48 00 05 50 */	b .L_80138DC0
.L_80138874:
/* 80138874 00133D94  81 83 00 00 */	lwz r12, 0(r3)
/* 80138878 00133D98  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8013887C 00133D9C  7D 89 03 A6 */	mtctr r12
/* 80138880 00133DA0  4E 80 04 21 */	bctrl 
/* 80138884 00133DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80138888 00133DA8  41 82 00 20 */	beq .L_801388A8
/* 8013888C 00133DAC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138890 00133DB0  7F A3 EB 78 */	mr r3, r29
/* 80138894 00133DB4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80138898 00133DB8  7D 89 03 A6 */	mtctr r12
/* 8013889C 00133DBC  4E 80 04 21 */	bctrl 
/* 801388A0 00133DC0  2C 03 00 00 */	cmpwi r3, 0
/* 801388A4 00133DC4  40 82 00 30 */	bne .L_801388D4
.L_801388A8:
/* 801388A8 00133DC8  2C 1D 00 00 */	cmpwi r29, 0
/* 801388AC 00133DCC  41 82 00 18 */	beq .L_801388C4
/* 801388B0 00133DD0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801388B4 00133DD4  7F A3 EB 78 */	mr r3, r29
/* 801388B8 00133DD8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801388BC 00133DDC  7D 89 03 A6 */	mtctr r12
/* 801388C0 00133DE0  4E 80 04 21 */	bctrl 
.L_801388C4:
/* 801388C4 00133DE4  7F E3 FB 78 */	mr r3, r31
/* 801388C8 00133DE8  4B F5 DC B5 */	bl OSUnlockMutex
/* 801388CC 00133DEC  38 60 00 00 */	li r3, 0
/* 801388D0 00133DF0  48 00 04 F0 */	b .L_80138DC0
.L_801388D4:
/* 801388D4 00133DF4  81 9D 00 00 */	lwz r12, 0(r29)
/* 801388D8 00133DF8  7F A3 EB 78 */	mr r3, r29
/* 801388DC 00133DFC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 801388E0 00133E00  7D 89 03 A6 */	mtctr r12
/* 801388E4 00133E04  4E 80 04 21 */	bctrl 
/* 801388E8 00133E08  81 99 00 00 */	lwz r12, 0(r25)
/* 801388EC 00133E0C  7C 64 1B 78 */	mr r4, r3
/* 801388F0 00133E10  7F 23 CB 78 */	mr r3, r25
/* 801388F4 00133E14  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801388F8 00133E18  7D 89 03 A6 */	mtctr r12
/* 801388FC 00133E1C  4E 80 04 21 */	bctrl 
/* 80138900 00133E20  2C 03 00 00 */	cmpwi r3, 0
/* 80138904 00133E24  7C 7B 1B 78 */	mr r27, r3
/* 80138908 00133E28  40 82 00 30 */	bne .L_80138938
/* 8013890C 00133E2C  2C 1D 00 00 */	cmpwi r29, 0
/* 80138910 00133E30  41 82 00 18 */	beq .L_80138928
/* 80138914 00133E34  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138918 00133E38  7F A3 EB 78 */	mr r3, r29
/* 8013891C 00133E3C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138920 00133E40  7D 89 03 A6 */	mtctr r12
/* 80138924 00133E44  4E 80 04 21 */	bctrl 
.L_80138928:
/* 80138928 00133E48  7F E3 FB 78 */	mr r3, r31
/* 8013892C 00133E4C  4B F5 DC 51 */	bl OSUnlockMutex
/* 80138930 00133E50  38 60 00 00 */	li r3, 0
/* 80138934 00133E54  48 00 04 8C */	b .L_80138DC0
.L_80138938:
/* 80138938 00133E58  2C 18 00 00 */	cmpwi r24, 0
/* 8013893C 00133E5C  93 BF 02 1C */	stw r29, 0x21c(r31)
/* 80138940 00133E60  40 82 00 70 */	bne .L_801389B0
/* 80138944 00133E64  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138948 00133E68  7F A3 EB 78 */	mr r3, r29
/* 8013894C 00133E6C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80138950 00133E70  7D 89 03 A6 */	mtctr r12
/* 80138954 00133E74  4E 80 04 21 */	bctrl 
/* 80138958 00133E78  81 9D 00 00 */	lwz r12, 0(r29)
/* 8013895C 00133E7C  7C 65 1B 78 */	mr r5, r3
/* 80138960 00133E80  7F A3 EB 78 */	mr r3, r29
/* 80138964 00133E84  7F 64 DB 78 */	mr r4, r27
/* 80138968 00133E88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8013896C 00133E8C  7D 89 03 A6 */	mtctr r12
/* 80138970 00133E90  4E 80 04 21 */	bctrl 
/* 80138974 00133E94  2C 03 00 00 */	cmpwi r3, 0
/* 80138978 00133E98  40 82 00 DC */	bne .L_80138A54
/* 8013897C 00133E9C  38 00 00 00 */	li r0, 0
/* 80138980 00133EA0  2C 1D 00 00 */	cmpwi r29, 0
/* 80138984 00133EA4  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 80138988 00133EA8  41 82 00 18 */	beq .L_801389A0
/* 8013898C 00133EAC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138990 00133EB0  7F A3 EB 78 */	mr r3, r29
/* 80138994 00133EB4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138998 00133EB8  7D 89 03 A6 */	mtctr r12
/* 8013899C 00133EBC  4E 80 04 21 */	bctrl 
.L_801389A0:
/* 801389A0 00133EC0  7F E3 FB 78 */	mr r3, r31
/* 801389A4 00133EC4  4B F5 DB D9 */	bl OSUnlockMutex
/* 801389A8 00133EC8  38 60 00 00 */	li r3, 0
/* 801389AC 00133ECC  48 00 04 14 */	b .L_80138DC0
.L_801389B0:
/* 801389B0 00133ED0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801389B4 00133ED4  7F A3 EB 78 */	mr r3, r29
/* 801389B8 00133ED8  7F 7C DB 78 */	mr r28, r27
/* 801389BC 00133EDC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 801389C0 00133EE0  7D 89 03 A6 */	mtctr r12
/* 801389C4 00133EE4  4E 80 04 21 */	bctrl 
/* 801389C8 00133EE8  7C 7E 1B 78 */	mr r30, r3
/* 801389CC 00133EEC  48 00 00 80 */	b .L_80138A4C
.L_801389D0:
/* 801389D0 00133EF0  7C 18 F0 40 */	cmplw r24, r30
/* 801389D4 00133EF4  7F A3 EB 78 */	mr r3, r29
/* 801389D8 00133EF8  7F 84 E3 78 */	mr r4, r28
/* 801389DC 00133EFC  7F 05 C3 78 */	mr r5, r24
/* 801389E0 00133F00  40 81 00 08 */	ble .L_801389E8
/* 801389E4 00133F04  7F C5 F3 78 */	mr r5, r30
.L_801389E8:
/* 801389E8 00133F08  81 83 00 00 */	lwz r12, 0(r3)
/* 801389EC 00133F0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801389F0 00133F10  7D 89 03 A6 */	mtctr r12
/* 801389F4 00133F14  4E 80 04 21 */	bctrl 
/* 801389F8 00133F18  2C 03 00 00 */	cmpwi r3, 0
/* 801389FC 00133F1C  40 82 00 38 */	bne .L_80138A34
/* 80138A00 00133F20  38 00 00 00 */	li r0, 0
/* 80138A04 00133F24  2C 1D 00 00 */	cmpwi r29, 0
/* 80138A08 00133F28  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 80138A0C 00133F2C  41 82 00 18 */	beq .L_80138A24
/* 80138A10 00133F30  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138A14 00133F34  7F A3 EB 78 */	mr r3, r29
/* 80138A18 00133F38  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138A1C 00133F3C  7D 89 03 A6 */	mtctr r12
/* 80138A20 00133F40  4E 80 04 21 */	bctrl 
.L_80138A24:
/* 80138A24 00133F44  7F E3 FB 78 */	mr r3, r31
/* 80138A28 00133F48  4B F5 DB 55 */	bl OSUnlockMutex
/* 80138A2C 00133F4C  38 60 00 00 */	li r3, 0
/* 80138A30 00133F50  48 00 03 90 */	b .L_80138DC0
.L_80138A34:
/* 80138A34 00133F54  7C 1E C0 40 */	cmplw r30, r24
/* 80138A38 00133F58  40 81 00 10 */	ble .L_80138A48
/* 80138A3C 00133F5C  7F D8 F0 50 */	subf r30, r24, r30
/* 80138A40 00133F60  7F 9C C2 14 */	add r28, r28, r24
/* 80138A44 00133F64  48 00 00 08 */	b .L_80138A4C
.L_80138A48:
/* 80138A48 00133F68  3B C0 00 00 */	li r30, 0
.L_80138A4C:
/* 80138A4C 00133F6C  2C 1E 00 00 */	cmpwi r30, 0
/* 80138A50 00133F70  40 82 FF 80 */	bne .L_801389D0
.L_80138A54:
/* 80138A54 00133F74  3B C0 00 00 */	li r30, 0
/* 80138A58 00133F78  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80138A5C 00133F7C  93 DF 02 1C */	stw r30, 0x21c(r31)
/* 80138A60 00133F80  7F 44 D3 78 */	mr r4, r26
/* 80138A64 00133F84  38 A1 00 08 */	addi r5, r1, 8
/* 80138A68 00133F88  4B FF E3 29 */	bl detail_ReadGroupInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive9GroupInfo
/* 80138A6C 00133F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80138A70 00133F90  40 82 00 30 */	bne .L_80138AA0
/* 80138A74 00133F94  2C 1D 00 00 */	cmpwi r29, 0
/* 80138A78 00133F98  41 82 00 18 */	beq .L_80138A90
/* 80138A7C 00133F9C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138A80 00133FA0  7F A3 EB 78 */	mr r3, r29
/* 80138A84 00133FA4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138A88 00133FA8  7D 89 03 A6 */	mtctr r12
/* 80138A8C 00133FAC  4E 80 04 21 */	bctrl 
.L_80138A90:
/* 80138A90 00133FB0  7F E3 FB 78 */	mr r3, r31
/* 80138A94 00133FB4  4B F5 DA E9 */	bl OSUnlockMutex
/* 80138A98 00133FB8  38 60 00 00 */	li r3, 0
/* 80138A9C 00133FBC  48 00 03 24 */	b .L_80138DC0
.L_80138AA0:
/* 80138AA0 00133FC0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80138AA4 00133FC4  2C 00 00 00 */	cmpwi r0, 0
/* 80138AA8 00133FC8  41 82 02 E4 */	beq .L_80138D8C
/* 80138AAC 00133FCC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80138AB0 00133FD0  7F 44 D3 78 */	mr r4, r26
/* 80138AB4 00133FD4  38 BF 00 1C */	addi r5, r31, 0x1c
/* 80138AB8 00133FD8  38 C0 02 00 */	li r6, 0x200
/* 80138ABC 00133FDC  4B FF E6 9D */	bl detail_OpenGroupWaveDataStream__Q36nw4hbm3snd12SoundArchiveCFUlPvi
/* 80138AC0 00133FE0  2C 03 00 00 */	cmpwi r3, 0
/* 80138AC4 00133FE4  7C 7C 1B 78 */	mr r28, r3
/* 80138AC8 00133FE8  40 82 00 44 */	bne .L_80138B0C
/* 80138ACC 00133FEC  41 82 00 14 */	beq .L_80138AE0
/* 80138AD0 00133FF0  81 83 00 00 */	lwz r12, 0(r3)
/* 80138AD4 00133FF4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138AD8 00133FF8  7D 89 03 A6 */	mtctr r12
/* 80138ADC 00133FFC  4E 80 04 21 */	bctrl 
.L_80138AE0:
/* 80138AE0 00134000  2C 1D 00 00 */	cmpwi r29, 0
/* 80138AE4 00134004  41 82 00 18 */	beq .L_80138AFC
/* 80138AE8 00134008  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138AEC 0013400C  7F A3 EB 78 */	mr r3, r29
/* 80138AF0 00134010  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138AF4 00134014  7D 89 03 A6 */	mtctr r12
/* 80138AF8 00134018  4E 80 04 21 */	bctrl 
.L_80138AFC:
/* 80138AFC 0013401C  7F E3 FB 78 */	mr r3, r31
/* 80138B00 00134020  4B F5 DA 7D */	bl OSUnlockMutex
/* 80138B04 00134024  38 60 00 00 */	li r3, 0
/* 80138B08 00134028  48 00 02 B8 */	b .L_80138DC0
.L_80138B0C:
/* 80138B0C 0013402C  81 83 00 00 */	lwz r12, 0(r3)
/* 80138B10 00134030  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80138B14 00134034  7D 89 03 A6 */	mtctr r12
/* 80138B18 00134038  4E 80 04 21 */	bctrl 
/* 80138B1C 0013403C  2C 03 00 00 */	cmpwi r3, 0
/* 80138B20 00134040  41 82 00 20 */	beq .L_80138B40
/* 80138B24 00134044  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138B28 00134048  7F 83 E3 78 */	mr r3, r28
/* 80138B2C 0013404C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80138B30 00134050  7D 89 03 A6 */	mtctr r12
/* 80138B34 00134054  4E 80 04 21 */	bctrl 
/* 80138B38 00134058  2C 03 00 00 */	cmpwi r3, 0
/* 80138B3C 0013405C  40 82 00 4C */	bne .L_80138B88
.L_80138B40:
/* 80138B40 00134060  2C 1C 00 00 */	cmpwi r28, 0
/* 80138B44 00134064  41 82 00 18 */	beq .L_80138B5C
/* 80138B48 00134068  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138B4C 0013406C  7F 83 E3 78 */	mr r3, r28
/* 80138B50 00134070  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138B54 00134074  7D 89 03 A6 */	mtctr r12
/* 80138B58 00134078  4E 80 04 21 */	bctrl 
.L_80138B5C:
/* 80138B5C 0013407C  2C 1D 00 00 */	cmpwi r29, 0
/* 80138B60 00134080  41 82 00 18 */	beq .L_80138B78
/* 80138B64 00134084  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138B68 00134088  7F A3 EB 78 */	mr r3, r29
/* 80138B6C 0013408C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138B70 00134090  7D 89 03 A6 */	mtctr r12
/* 80138B74 00134094  4E 80 04 21 */	bctrl 
.L_80138B78:
/* 80138B78 00134098  7F E3 FB 78 */	mr r3, r31
/* 80138B7C 0013409C  4B F5 DA 01 */	bl OSUnlockMutex
/* 80138B80 001340A0  38 60 00 00 */	li r3, 0
/* 80138B84 001340A4  48 00 02 3C */	b .L_80138DC0
.L_80138B88:
/* 80138B88 001340A8  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138B8C 001340AC  7F 83 E3 78 */	mr r3, r28
/* 80138B90 001340B0  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80138B94 001340B4  7D 89 03 A6 */	mtctr r12
/* 80138B98 001340B8  4E 80 04 21 */	bctrl 
/* 80138B9C 001340BC  81 99 00 00 */	lwz r12, 0(r25)
/* 80138BA0 001340C0  7C 64 1B 78 */	mr r4, r3
/* 80138BA4 001340C4  7F 23 CB 78 */	mr r3, r25
/* 80138BA8 001340C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80138BAC 001340CC  7D 89 03 A6 */	mtctr r12
/* 80138BB0 001340D0  4E 80 04 21 */	bctrl 
/* 80138BB4 001340D4  2C 03 00 00 */	cmpwi r3, 0
/* 80138BB8 001340D8  7C 7A 1B 78 */	mr r26, r3
/* 80138BBC 001340DC  40 82 00 4C */	bne .L_80138C08
/* 80138BC0 001340E0  2C 1C 00 00 */	cmpwi r28, 0
/* 80138BC4 001340E4  41 82 00 18 */	beq .L_80138BDC
/* 80138BC8 001340E8  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138BCC 001340EC  7F 83 E3 78 */	mr r3, r28
/* 80138BD0 001340F0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138BD4 001340F4  7D 89 03 A6 */	mtctr r12
/* 80138BD8 001340F8  4E 80 04 21 */	bctrl 
.L_80138BDC:
/* 80138BDC 001340FC  2C 1D 00 00 */	cmpwi r29, 0
/* 80138BE0 00134100  41 82 00 18 */	beq .L_80138BF8
/* 80138BE4 00134104  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138BE8 00134108  7F A3 EB 78 */	mr r3, r29
/* 80138BEC 0013410C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138BF0 00134110  7D 89 03 A6 */	mtctr r12
/* 80138BF4 00134114  4E 80 04 21 */	bctrl 
.L_80138BF8:
/* 80138BF8 00134118  7F E3 FB 78 */	mr r3, r31
/* 80138BFC 0013411C  4B F5 D9 81 */	bl OSUnlockMutex
/* 80138C00 00134120  38 60 00 00 */	li r3, 0
/* 80138C04 00134124  48 00 01 BC */	b .L_80138DC0
.L_80138C08:
/* 80138C08 00134128  2C 18 00 00 */	cmpwi r24, 0
/* 80138C0C 0013412C  93 9F 02 1C */	stw r28, 0x21c(r31)
/* 80138C10 00134130  40 82 00 88 */	bne .L_80138C98
/* 80138C14 00134134  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138C18 00134138  7F 83 E3 78 */	mr r3, r28
/* 80138C1C 0013413C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80138C20 00134140  7D 89 03 A6 */	mtctr r12
/* 80138C24 00134144  4E 80 04 21 */	bctrl 
/* 80138C28 00134148  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138C2C 0013414C  7C 65 1B 78 */	mr r5, r3
/* 80138C30 00134150  7F 83 E3 78 */	mr r3, r28
/* 80138C34 00134154  7F 44 D3 78 */	mr r4, r26
/* 80138C38 00134158  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80138C3C 0013415C  7D 89 03 A6 */	mtctr r12
/* 80138C40 00134160  4E 80 04 21 */	bctrl 
/* 80138C44 00134164  2C 03 00 00 */	cmpwi r3, 0
/* 80138C48 00134168  40 82 01 10 */	bne .L_80138D58
/* 80138C4C 0013416C  2C 1C 00 00 */	cmpwi r28, 0
/* 80138C50 00134170  93 DF 02 1C */	stw r30, 0x21c(r31)
/* 80138C54 00134174  41 82 00 18 */	beq .L_80138C6C
/* 80138C58 00134178  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138C5C 0013417C  7F 83 E3 78 */	mr r3, r28
/* 80138C60 00134180  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138C64 00134184  7D 89 03 A6 */	mtctr r12
/* 80138C68 00134188  4E 80 04 21 */	bctrl 
.L_80138C6C:
/* 80138C6C 0013418C  2C 1D 00 00 */	cmpwi r29, 0
/* 80138C70 00134190  41 82 00 18 */	beq .L_80138C88
/* 80138C74 00134194  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138C78 00134198  7F A3 EB 78 */	mr r3, r29
/* 80138C7C 0013419C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138C80 001341A0  7D 89 03 A6 */	mtctr r12
/* 80138C84 001341A4  4E 80 04 21 */	bctrl 
.L_80138C88:
/* 80138C88 001341A8  7F E3 FB 78 */	mr r3, r31
/* 80138C8C 001341AC  4B F5 D8 F1 */	bl OSUnlockMutex
/* 80138C90 001341B0  38 60 00 00 */	li r3, 0
/* 80138C94 001341B4  48 00 01 2C */	b .L_80138DC0
.L_80138C98:
/* 80138C98 001341B8  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138C9C 001341BC  7F 83 E3 78 */	mr r3, r28
/* 80138CA0 001341C0  7F 5E D3 78 */	mr r30, r26
/* 80138CA4 001341C4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80138CA8 001341C8  7D 89 03 A6 */	mtctr r12
/* 80138CAC 001341CC  4E 80 04 21 */	bctrl 
/* 80138CB0 001341D0  7C 79 1B 78 */	mr r25, r3
/* 80138CB4 001341D4  48 00 00 9C */	b .L_80138D50
.L_80138CB8:
/* 80138CB8 001341D8  7C 18 C8 40 */	cmplw r24, r25
/* 80138CBC 001341DC  7F 83 E3 78 */	mr r3, r28
/* 80138CC0 001341E0  7F C4 F3 78 */	mr r4, r30
/* 80138CC4 001341E4  7F 05 C3 78 */	mr r5, r24
/* 80138CC8 001341E8  40 81 00 08 */	ble .L_80138CD0
/* 80138CCC 001341EC  7F 25 CB 78 */	mr r5, r25
.L_80138CD0:
/* 80138CD0 001341F0  81 83 00 00 */	lwz r12, 0(r3)
/* 80138CD4 001341F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80138CD8 001341F8  7D 89 03 A6 */	mtctr r12
/* 80138CDC 001341FC  4E 80 04 21 */	bctrl 
/* 80138CE0 00134200  2C 03 00 00 */	cmpwi r3, 0
/* 80138CE4 00134204  40 82 00 54 */	bne .L_80138D38
/* 80138CE8 00134208  38 00 00 00 */	li r0, 0
/* 80138CEC 0013420C  2C 1C 00 00 */	cmpwi r28, 0
/* 80138CF0 00134210  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 80138CF4 00134214  41 82 00 18 */	beq .L_80138D0C
/* 80138CF8 00134218  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138CFC 0013421C  7F 83 E3 78 */	mr r3, r28
/* 80138D00 00134220  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138D04 00134224  7D 89 03 A6 */	mtctr r12
/* 80138D08 00134228  4E 80 04 21 */	bctrl 
.L_80138D0C:
/* 80138D0C 0013422C  2C 1D 00 00 */	cmpwi r29, 0
/* 80138D10 00134230  41 82 00 18 */	beq .L_80138D28
/* 80138D14 00134234  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138D18 00134238  7F A3 EB 78 */	mr r3, r29
/* 80138D1C 0013423C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138D20 00134240  7D 89 03 A6 */	mtctr r12
/* 80138D24 00134244  4E 80 04 21 */	bctrl 
.L_80138D28:
/* 80138D28 00134248  7F E3 FB 78 */	mr r3, r31
/* 80138D2C 0013424C  4B F5 D8 51 */	bl OSUnlockMutex
/* 80138D30 00134250  38 60 00 00 */	li r3, 0
/* 80138D34 00134254  48 00 00 8C */	b .L_80138DC0
.L_80138D38:
/* 80138D38 00134258  7C 19 C0 40 */	cmplw r25, r24
/* 80138D3C 0013425C  40 81 00 10 */	ble .L_80138D4C
/* 80138D40 00134260  7F 38 C8 50 */	subf r25, r24, r25
/* 80138D44 00134264  7F DE C2 14 */	add r30, r30, r24
/* 80138D48 00134268  48 00 00 08 */	b .L_80138D50
.L_80138D4C:
/* 80138D4C 0013426C  3B 20 00 00 */	li r25, 0
.L_80138D50:
/* 80138D50 00134270  2C 19 00 00 */	cmpwi r25, 0
/* 80138D54 00134274  40 82 FF 64 */	bne .L_80138CB8
.L_80138D58:
/* 80138D58 00134278  38 00 00 00 */	li r0, 0
/* 80138D5C 0013427C  2C 17 00 00 */	cmpwi r23, 0
/* 80138D60 00134280  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 80138D64 00134284  41 82 00 08 */	beq .L_80138D6C
/* 80138D68 00134288  93 57 00 00 */	stw r26, 0(r23)
.L_80138D6C:
/* 80138D6C 0013428C  2C 1C 00 00 */	cmpwi r28, 0
/* 80138D70 00134290  41 82 00 28 */	beq .L_80138D98
/* 80138D74 00134294  81 9C 00 00 */	lwz r12, 0(r28)
/* 80138D78 00134298  7F 83 E3 78 */	mr r3, r28
/* 80138D7C 0013429C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138D80 001342A0  7D 89 03 A6 */	mtctr r12
/* 80138D84 001342A4  4E 80 04 21 */	bctrl 
/* 80138D88 001342A8  48 00 00 10 */	b .L_80138D98
.L_80138D8C:
/* 80138D8C 001342AC  2C 17 00 00 */	cmpwi r23, 0
/* 80138D90 001342B0  41 82 00 08 */	beq .L_80138D98
/* 80138D94 001342B4  93 D7 00 00 */	stw r30, 0(r23)
.L_80138D98:
/* 80138D98 001342B8  2C 1D 00 00 */	cmpwi r29, 0
/* 80138D9C 001342BC  41 82 00 18 */	beq .L_80138DB4
/* 80138DA0 001342C0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138DA4 001342C4  7F A3 EB 78 */	mr r3, r29
/* 80138DA8 001342C8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138DAC 001342CC  7D 89 03 A6 */	mtctr r12
/* 80138DB0 001342D0  4E 80 04 21 */	bctrl 
.L_80138DB4:
/* 80138DB4 001342D4  7F E3 FB 78 */	mr r3, r31
/* 80138DB8 001342D8  4B F5 D7 C5 */	bl OSUnlockMutex
/* 80138DBC 001342DC  7F 63 DB 78 */	mr r3, r27
.L_80138DC0:
/* 80138DC0 001342E0  39 61 00 50 */	addi r11, r1, 0x50
/* 80138DC4 001342E4  48 02 3B BD */	bl _restgpr_23
/* 80138DC8 001342E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80138DCC 001342EC  7C 08 03 A6 */	mtlr r0
/* 80138DD0 001342F0  38 21 00 50 */	addi r1, r1, 0x50
/* 80138DD4 001342F4  4E 80 00 20 */	blr 

glabel ReadFile__Q46nw4hbm3snd6detail18SoundArchiveLoaderFUlPvll
/* 80138DD8 001342F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80138DDC 001342FC  7C 08 02 A6 */	mflr r0
/* 80138DE0 00134300  90 01 00 24 */	stw r0, 0x24(r1)
/* 80138DE4 00134304  39 61 00 20 */	addi r11, r1, 0x20
/* 80138DE8 00134308  48 02 3B 5D */	bl _savegpr_27
/* 80138DEC 0013430C  7C 7B 1B 78 */	mr r27, r3
/* 80138DF0 00134310  7C 9F 23 78 */	mr r31, r4
/* 80138DF4 00134314  7C BC 2B 78 */	mr r28, r5
/* 80138DF8 00134318  7C DD 33 78 */	mr r29, r6
/* 80138DFC 0013431C  7C FE 3B 78 */	mr r30, r7
/* 80138E00 00134320  4B F5 D6 A1 */	bl OSLockMutex
/* 80138E04 00134324  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 80138E08 00134328  7F E4 FB 78 */	mr r4, r31
/* 80138E0C 0013432C  38 BB 00 1C */	addi r5, r27, 0x1c
/* 80138E10 00134330  38 C0 02 00 */	li r6, 0x200
/* 80138E14 00134334  4B FF DF 9D */	bl detail_OpenFileStream__Q36nw4hbm3snd12SoundArchiveCFUlPvi
/* 80138E18 00134338  2C 03 00 00 */	cmpwi r3, 0
/* 80138E1C 0013433C  7C 7F 1B 78 */	mr r31, r3
/* 80138E20 00134340  40 82 00 28 */	bne .L_80138E48
/* 80138E24 00134344  41 82 00 14 */	beq .L_80138E38
/* 80138E28 00134348  81 83 00 00 */	lwz r12, 0(r3)
/* 80138E2C 0013434C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138E30 00134350  7D 89 03 A6 */	mtctr r12
/* 80138E34 00134354  4E 80 04 21 */	bctrl 
.L_80138E38:
/* 80138E38 00134358  7F 63 DB 78 */	mr r3, r27
/* 80138E3C 0013435C  4B F5 D7 41 */	bl OSUnlockMutex
/* 80138E40 00134360  38 60 FF FF */	li r3, -1
/* 80138E44 00134364  48 00 01 08 */	b .L_80138F4C
.L_80138E48:
/* 80138E48 00134368  81 83 00 00 */	lwz r12, 0(r3)
/* 80138E4C 0013436C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80138E50 00134370  7D 89 03 A6 */	mtctr r12
/* 80138E54 00134374  4E 80 04 21 */	bctrl 
/* 80138E58 00134378  2C 03 00 00 */	cmpwi r3, 0
/* 80138E5C 0013437C  41 82 00 20 */	beq .L_80138E7C
/* 80138E60 00134380  81 9F 00 00 */	lwz r12, 0(r31)
/* 80138E64 00134384  7F E3 FB 78 */	mr r3, r31
/* 80138E68 00134388  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80138E6C 0013438C  7D 89 03 A6 */	mtctr r12
/* 80138E70 00134390  4E 80 04 21 */	bctrl 
/* 80138E74 00134394  2C 03 00 00 */	cmpwi r3, 0
/* 80138E78 00134398  40 82 00 30 */	bne .L_80138EA8
.L_80138E7C:
/* 80138E7C 0013439C  2C 1F 00 00 */	cmpwi r31, 0
/* 80138E80 001343A0  41 82 00 18 */	beq .L_80138E98
/* 80138E84 001343A4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80138E88 001343A8  7F E3 FB 78 */	mr r3, r31
/* 80138E8C 001343AC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138E90 001343B0  7D 89 03 A6 */	mtctr r12
/* 80138E94 001343B4  4E 80 04 21 */	bctrl 
.L_80138E98:
/* 80138E98 001343B8  7F 63 DB 78 */	mr r3, r27
/* 80138E9C 001343BC  4B F5 D6 E1 */	bl OSUnlockMutex
/* 80138EA0 001343C0  38 60 FF FF */	li r3, -1
/* 80138EA4 001343C4  48 00 00 A8 */	b .L_80138F4C
.L_80138EA8:
/* 80138EA8 001343C8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80138EAC 001343CC  7F E3 FB 78 */	mr r3, r31
/* 80138EB0 001343D0  7F C4 F3 78 */	mr r4, r30
/* 80138EB4 001343D4  38 A0 00 00 */	li r5, 0
/* 80138EB8 001343D8  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80138EBC 001343DC  7D 89 03 A6 */	mtctr r12
/* 80138EC0 001343E0  4E 80 04 21 */	bctrl 
/* 80138EC4 001343E4  93 FB 02 1C */	stw r31, 0x21c(r27)
/* 80138EC8 001343E8  38 1D 00 1F */	addi r0, r29, 0x1f
/* 80138ECC 001343EC  7F E3 FB 78 */	mr r3, r31
/* 80138ED0 001343F0  7F 84 E3 78 */	mr r4, r28
/* 80138ED4 001343F4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80138ED8 001343F8  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 80138EDC 001343FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80138EE0 00134400  7D 89 03 A6 */	mtctr r12
/* 80138EE4 00134404  4E 80 04 21 */	bctrl 
/* 80138EE8 00134408  38 00 00 00 */	li r0, 0
/* 80138EEC 0013440C  2C 03 00 00 */	cmpwi r3, 0
/* 80138EF0 00134410  90 1B 02 1C */	stw r0, 0x21c(r27)
/* 80138EF4 00134414  40 82 00 30 */	bne .L_80138F24
/* 80138EF8 00134418  2C 1F 00 00 */	cmpwi r31, 0
/* 80138EFC 0013441C  41 82 00 18 */	beq .L_80138F14
/* 80138F00 00134420  81 9F 00 00 */	lwz r12, 0(r31)
/* 80138F04 00134424  7F E3 FB 78 */	mr r3, r31
/* 80138F08 00134428  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138F0C 0013442C  7D 89 03 A6 */	mtctr r12
/* 80138F10 00134430  4E 80 04 21 */	bctrl 
.L_80138F14:
/* 80138F14 00134434  7F 63 DB 78 */	mr r3, r27
/* 80138F18 00134438  4B F5 D6 65 */	bl OSUnlockMutex
/* 80138F1C 0013443C  38 60 FF FF */	li r3, -1
/* 80138F20 00134440  48 00 00 2C */	b .L_80138F4C
.L_80138F24:
/* 80138F24 00134444  2C 1F 00 00 */	cmpwi r31, 0
/* 80138F28 00134448  41 82 00 18 */	beq .L_80138F40
/* 80138F2C 0013444C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80138F30 00134450  7F E3 FB 78 */	mr r3, r31
/* 80138F34 00134454  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80138F38 00134458  7D 89 03 A6 */	mtctr r12
/* 80138F3C 0013445C  4E 80 04 21 */	bctrl 
.L_80138F40:
/* 80138F40 00134460  7F 63 DB 78 */	mr r3, r27
/* 80138F44 00134464  4B F5 D6 39 */	bl OSUnlockMutex
/* 80138F48 00134468  7F A3 EB 78 */	mr r3, r29
.L_80138F4C:
/* 80138F4C 0013446C  39 61 00 20 */	addi r11, r1, 0x20
/* 80138F50 00134470  48 02 3A 41 */	bl _restgpr_27
/* 80138F54 00134474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80138F58 00134478  7C 08 03 A6 */	mtlr r0
/* 80138F5C 0013447C  38 21 00 20 */	addi r1, r1, 0x20
/* 80138F60 00134480  4E 80 00 20 */	blr 

glabel LoadFile__Q46nw4hbm3snd6detail18SoundArchiveLoaderFUlPQ36nw4hbm3snd22SoundMemoryAllocatable
/* 80138F64 00134484  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80138F68 00134488  7C 08 02 A6 */	mflr r0
/* 80138F6C 0013448C  2C 05 00 00 */	cmpwi r5, 0
/* 80138F70 00134490  90 01 00 34 */	stw r0, 0x34(r1)
/* 80138F74 00134494  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80138F78 00134498  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80138F7C 0013449C  7C BE 2B 78 */	mr r30, r5
/* 80138F80 001344A0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80138F84 001344A4  7C 9D 23 78 */	mr r29, r4
/* 80138F88 001344A8  93 81 00 20 */	stw r28, 0x20(r1)
/* 80138F8C 001344AC  7C 7C 1B 78 */	mr r28, r3
/* 80138F90 001344B0  40 82 00 20 */	bne .L_80138FB0
/* 80138F94 001344B4  3C 60 80 1B */	lis r3, lbl_801A8460@ha
/* 80138F98 001344B8  3C A0 80 1B */	lis r5, lbl_801A847C@ha
/* 80138F9C 001344BC  38 63 84 60 */	addi r3, r3, lbl_801A8460@l
/* 80138FA0 001344C0  38 80 01 2B */	li r4, 0x12b
/* 80138FA4 001344C4  38 A5 84 7C */	addi r5, r5, lbl_801A847C@l
/* 80138FA8 001344C8  4C C6 31 82 */	crclr 6
/* 80138FAC 001344CC  4B FD CE 15 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80138FB0:
/* 80138FB0 001344D0  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80138FB4 001344D4  7F A4 EB 78 */	mr r4, r29
/* 80138FB8 001344D8  38 A1 00 08 */	addi r5, r1, 8
/* 80138FBC 001344DC  4B FF DD E5 */	bl detail_ReadFileInfo__Q36nw4hbm3snd12SoundArchiveCFUlPQ46nw4hbm3snd12SoundArchive8FileInfo
/* 80138FC0 001344E0  2C 03 00 00 */	cmpwi r3, 0
/* 80138FC4 001344E4  40 82 00 0C */	bne .L_80138FD0
/* 80138FC8 001344E8  38 60 00 00 */	li r3, 0
/* 80138FCC 001344EC  48 00 00 7C */	b .L_80139048
.L_80138FD0:
/* 80138FD0 001344F0  83 E1 00 08 */	lwz r31, 8(r1)
/* 80138FD4 001344F4  2C 1F 00 00 */	cmpwi r31, 0
/* 80138FD8 001344F8  40 82 00 0C */	bne .L_80138FE4
/* 80138FDC 001344FC  38 60 00 00 */	li r3, 0
/* 80138FE0 00134500  48 00 00 68 */	b .L_80139048
.L_80138FE4:
/* 80138FE4 00134504  81 9E 00 00 */	lwz r12, 0(r30)
/* 80138FE8 00134508  7F C3 F3 78 */	mr r3, r30
/* 80138FEC 0013450C  7F E4 FB 78 */	mr r4, r31
/* 80138FF0 00134510  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80138FF4 00134514  7D 89 03 A6 */	mtctr r12
/* 80138FF8 00134518  4E 80 04 21 */	bctrl 
/* 80138FFC 0013451C  2C 03 00 00 */	cmpwi r3, 0
/* 80139000 00134520  7C 7E 1B 78 */	mr r30, r3
/* 80139004 00134524  40 82 00 0C */	bne .L_80139010
/* 80139008 00134528  38 60 00 00 */	li r3, 0
/* 8013900C 0013452C  48 00 00 3C */	b .L_80139048
.L_80139010:
/* 80139010 00134530  7F 83 E3 78 */	mr r3, r28
/* 80139014 00134534  7F A4 EB 78 */	mr r4, r29
/* 80139018 00134538  7F C5 F3 78 */	mr r5, r30
/* 8013901C 0013453C  7F E6 FB 78 */	mr r6, r31
/* 80139020 00134540  38 E0 00 00 */	li r7, 0
/* 80139024 00134544  4B FF FD B5 */	bl ReadFile__Q46nw4hbm3snd6detail18SoundArchiveLoaderFUlPvll
/* 80139028 00134548  7C 1F 18 40 */	cmplw r31, r3
/* 8013902C 0013454C  41 82 00 0C */	beq .L_80139038
/* 80139030 00134550  38 60 00 00 */	li r3, 0
/* 80139034 00134554  48 00 00 14 */	b .L_80139048
.L_80139038:
/* 80139038 00134558  7F C3 F3 78 */	mr r3, r30
/* 8013903C 0013455C  7F E4 FB 78 */	mr r4, r31
/* 80139040 00134560  4B F5 7C 5D */	bl DCStoreRange
/* 80139044 00134564  7F C3 F3 78 */	mr r3, r30
.L_80139048:
/* 80139048 00134568  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013904C 0013456C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80139050 00134570  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80139054 00134574  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80139058 00134578  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8013905C 0013457C  7C 08 03 A6 */	mtlr r0
/* 80139060 00134580  38 21 00 30 */	addi r1, r1, 0x30
/* 80139064 00134584  4E 80 00 20 */	blr 

glabel Cancel__Q46nw4hbm3snd6detail18SoundArchiveLoaderFv
/* 80139068 00134588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013906C 0013458C  7C 08 02 A6 */	mflr r0
/* 80139070 00134590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80139074 00134594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80139078 00134598  7C 7F 1B 78 */	mr r31, r3
/* 8013907C 0013459C  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 80139080 001345A0  2C 00 00 00 */	cmpwi r0, 0
/* 80139084 001345A4  41 82 00 70 */	beq .L_801390F4
/* 80139088 001345A8  7C 03 03 78 */	mr r3, r0
/* 8013908C 001345AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80139090 001345B0  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80139094 001345B4  7D 89 03 A6 */	mtctr r12
/* 80139098 001345B8  4E 80 04 21 */	bctrl 
/* 8013909C 001345BC  2C 03 00 00 */	cmpwi r3, 0
/* 801390A0 001345C0  41 82 00 54 */	beq .L_801390F4
/* 801390A4 001345C4  80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 801390A8 001345C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801390AC 001345CC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801390B0 001345D0  7D 89 03 A6 */	mtctr r12
/* 801390B4 001345D4  4E 80 04 21 */	bctrl 
/* 801390B8 001345D8  2C 03 00 00 */	cmpwi r3, 0
/* 801390BC 001345DC  41 82 00 24 */	beq .L_801390E0
/* 801390C0 001345E0  80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 801390C4 001345E4  38 80 00 00 */	li r4, 0
/* 801390C8 001345E8  38 A0 00 00 */	li r5, 0
/* 801390CC 001345EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801390D0 001345F0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801390D4 001345F4  7D 89 03 A6 */	mtctr r12
/* 801390D8 001345F8  4E 80 04 21 */	bctrl 
/* 801390DC 001345FC  48 00 00 18 */	b .L_801390F4
.L_801390E0:
/* 801390E0 00134600  80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 801390E4 00134604  81 83 00 00 */	lwz r12, 0(r3)
/* 801390E8 00134608  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 801390EC 0013460C  7D 89 03 A6 */	mtctr r12
/* 801390F0 00134610  4E 80 04 21 */	bctrl 
.L_801390F4:
/* 801390F4 00134614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801390F8 00134618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801390FC 0013461C  7C 08 03 A6 */	mtlr r0
/* 80139100 00134620  38 21 00 10 */	addi r1, r1, 0x10
/* 80139104 00134624  4E 80 00 20 */	blr 

