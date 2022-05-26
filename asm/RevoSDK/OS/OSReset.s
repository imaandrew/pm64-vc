.include "macros.inc"

.section .text, "ax"

glabel OSRegisterShutdownFunction
/* 80096724 00091C44  80 AD 8D 08 */	lwz r5, lbl_80247188@sda21(r13)
/* 80096728 00091C48  48 00 00 08 */	b lbl_80096730
lbl_8009672C:
/* 8009672C 00091C4C  80 A5 00 08 */	lwz r5, 8(r5)
lbl_80096730:
/* 80096730 00091C50  2C 05 00 00 */	cmpwi r5, 0
/* 80096734 00091C54  41 82 00 14 */	beq lbl_80096748
/* 80096738 00091C58  80 85 00 04 */	lwz r4, 4(r5)
/* 8009673C 00091C5C  80 03 00 04 */	lwz r0, 4(r3)
/* 80096740 00091C60  7C 04 00 40 */	cmplw r4, r0
/* 80096744 00091C64  40 81 FF E8 */	ble lbl_8009672C
lbl_80096748:
/* 80096748 00091C68  2C 05 00 00 */	cmpwi r5, 0
/* 8009674C 00091C6C  40 82 00 38 */	bne lbl_80096784
/* 80096750 00091C70  38 8D 8D 08 */	addi r4, r13, lbl_80247188@sda21
/* 80096754 00091C74  80 84 00 04 */	lwz r4, 4(r4)
/* 80096758 00091C78  2C 04 00 00 */	cmpwi r4, 0
/* 8009675C 00091C7C  40 82 00 0C */	bne lbl_80096768
/* 80096760 00091C80  90 6D 8D 08 */	stw r3, lbl_80247188@sda21(r13)
/* 80096764 00091C84  48 00 00 08 */	b lbl_8009676C
lbl_80096768:
/* 80096768 00091C88  90 64 00 08 */	stw r3, 8(r4)
lbl_8009676C:
/* 8009676C 00091C8C  38 00 00 00 */	li r0, 0
/* 80096770 00091C90  90 83 00 0C */	stw r4, 0xc(r3)
/* 80096774 00091C94  38 8D 8D 08 */	addi r4, r13, lbl_80247188@sda21
/* 80096778 00091C98  90 03 00 08 */	stw r0, 8(r3)
/* 8009677C 00091C9C  90 64 00 04 */	stw r3, 4(r4)
/* 80096780 00091CA0  4E 80 00 20 */	blr 
lbl_80096784:
/* 80096784 00091CA4  90 A3 00 08 */	stw r5, 8(r3)
/* 80096788 00091CA8  80 85 00 0C */	lwz r4, 0xc(r5)
/* 8009678C 00091CAC  90 65 00 0C */	stw r3, 0xc(r5)
/* 80096790 00091CB0  2C 04 00 00 */	cmpwi r4, 0
/* 80096794 00091CB4  90 83 00 0C */	stw r4, 0xc(r3)
/* 80096798 00091CB8  40 82 00 0C */	bne lbl_800967A4
/* 8009679C 00091CBC  90 6D 8D 08 */	stw r3, lbl_80247188@sda21(r13)
/* 800967A0 00091CC0  4E 80 00 20 */	blr 
lbl_800967A4:
/* 800967A4 00091CC4  90 64 00 08 */	stw r3, 8(r4)
/* 800967A8 00091CC8  4E 80 00 20 */	blr 

glabel __OSCallShutdownFunctions
/* 800967AC 00091CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800967B0 00091CD0  7C 08 02 A6 */	mflr r0
/* 800967B4 00091CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800967B8 00091CD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800967BC 00091CDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800967C0 00091CE0  3B C0 00 00 */	li r30, 0
/* 800967C4 00091CE4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800967C8 00091CE8  7C 9D 23 78 */	mr r29, r4
/* 800967CC 00091CEC  93 81 00 10 */	stw r28, 0x10(r1)
/* 800967D0 00091CF0  7C 7C 1B 78 */	mr r28, r3
/* 800967D4 00091CF4  38 60 00 00 */	li r3, 0
/* 800967D8 00091CF8  83 ED 8D 08 */	lwz r31, lbl_80247188@sda21(r13)
/* 800967DC 00091CFC  48 00 00 40 */	b lbl_8009681C
lbl_800967E0:
/* 800967E0 00091D00  2C 1E 00 00 */	cmpwi r30, 0
/* 800967E4 00091D04  41 82 00 10 */	beq lbl_800967F4
/* 800967E8 00091D08  80 1F 00 04 */	lwz r0, 4(r31)
/* 800967EC 00091D0C  7C 03 00 40 */	cmplw r3, r0
/* 800967F0 00091D10  40 82 00 34 */	bne lbl_80096824
lbl_800967F4:
/* 800967F4 00091D14  81 9F 00 00 */	lwz r12, 0(r31)
/* 800967F8 00091D18  7F 83 E3 78 */	mr r3, r28
/* 800967FC 00091D1C  7F A4 EB 78 */	mr r4, r29
/* 80096800 00091D20  7D 89 03 A6 */	mtctr r12
/* 80096804 00091D24  4E 80 04 21 */	bctrl 
/* 80096808 00091D28  7C 60 00 34 */	cntlzw r0, r3
/* 8009680C 00091D2C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80096810 00091D30  54 00 D9 7E */	srwi r0, r0, 5
/* 80096814 00091D34  83 FF 00 08 */	lwz r31, 8(r31)
/* 80096818 00091D38  7F DE 03 78 */	or r30, r30, r0
lbl_8009681C:
/* 8009681C 00091D3C  2C 1F 00 00 */	cmpwi r31, 0
/* 80096820 00091D40  40 82 FF C0 */	bne lbl_800967E0
lbl_80096824:
/* 80096824 00091D44  48 00 0B BD */	bl __OSSyncSram
/* 80096828 00091D48  7C 60 00 34 */	cntlzw r0, r3
/* 8009682C 00091D4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80096830 00091D50  54 00 D9 7E */	srwi r0, r0, 5
/* 80096834 00091D54  7F DE 03 78 */	or r30, r30, r0
/* 80096838 00091D58  7F C0 00 34 */	cntlzw r0, r30
/* 8009683C 00091D5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80096840 00091D60  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80096844 00091D64  54 03 D9 7E */	srwi r3, r0, 5
/* 80096848 00091D68  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8009684C 00091D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80096850 00091D70  7C 08 03 A6 */	mtlr r0
/* 80096854 00091D74  38 21 00 20 */	addi r1, r1, 0x20
/* 80096858 00091D78  4E 80 00 20 */	blr 

glabel __OSShutdownDevices
/* 8009685C 00091D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80096860 00091D80  7C 08 02 A6 */	mflr r0
/* 80096864 00091D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80096868 00091D88  39 61 00 20 */	addi r11, r1, 0x20
/* 8009686C 00091D8C  48 0C 60 D9 */	bl _savegpr_27
/* 80096870 00091D90  2C 03 00 04 */	cmpwi r3, 4
/* 80096874 00091D94  7C 7B 1B 78 */	mr r27, r3
/* 80096878 00091D98  40 80 00 10 */	bge lbl_80096888
/* 8009687C 00091D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80096880 00091DA0  41 82 00 10 */	beq lbl_80096890
/* 80096884 00091DA4  48 00 00 14 */	b lbl_80096898
lbl_80096888:
/* 80096888 00091DA8  2C 03 00 07 */	cmpwi r3, 7
/* 8009688C 00091DAC  40 80 00 0C */	bge lbl_80096898
lbl_80096890:
/* 80096890 00091DB0  3B 80 00 00 */	li r28, 0
/* 80096894 00091DB4  48 00 00 08 */	b lbl_8009689C
lbl_80096898:
/* 80096898 00091DB8  3B 80 00 01 */	li r28, 1
lbl_8009689C:
/* 8009689C 00091DBC  4B FF A2 C5 */	bl __OSStopAudioSystem
/* 800968A0 00091DC0  2C 1C 00 00 */	cmpwi r28, 0
/* 800968A4 00091DC4  40 82 00 10 */	bne lbl_800968B4
/* 800968A8 00091DC8  38 60 00 01 */	li r3, 1
/* 800968AC 00091DCC  48 02 D1 A1 */	bl __PADDisableRecalibration
/* 800968B0 00091DD0  7C 7D 1B 78 */	mr r29, r3
lbl_800968B4:
/* 800968B4 00091DD4  83 CD 8D 08 */	lwz r30, lbl_80247188@sda21(r13)
/* 800968B8 00091DD8  38 60 00 00 */	li r3, 0
/* 800968BC 00091DDC  3B E0 00 00 */	li r31, 0
/* 800968C0 00091DE0  48 00 00 40 */	b lbl_80096900
lbl_800968C4:
/* 800968C4 00091DE4  2C 1F 00 00 */	cmpwi r31, 0
/* 800968C8 00091DE8  41 82 00 10 */	beq lbl_800968D8
/* 800968CC 00091DEC  80 1E 00 04 */	lwz r0, 4(r30)
/* 800968D0 00091DF0  7C 03 00 40 */	cmplw r3, r0
/* 800968D4 00091DF4  40 82 00 34 */	bne lbl_80096908
lbl_800968D8:
/* 800968D8 00091DF8  81 9E 00 00 */	lwz r12, 0(r30)
/* 800968DC 00091DFC  7F 64 DB 78 */	mr r4, r27
/* 800968E0 00091E00  38 60 00 00 */	li r3, 0
/* 800968E4 00091E04  7D 89 03 A6 */	mtctr r12
/* 800968E8 00091E08  4E 80 04 21 */	bctrl 
/* 800968EC 00091E0C  7C 60 00 34 */	cntlzw r0, r3
/* 800968F0 00091E10  80 7E 00 04 */	lwz r3, 4(r30)
/* 800968F4 00091E14  54 00 D9 7E */	srwi r0, r0, 5
/* 800968F8 00091E18  83 DE 00 08 */	lwz r30, 8(r30)
/* 800968FC 00091E1C  7F FF 03 78 */	or r31, r31, r0
lbl_80096900:
/* 80096900 00091E20  2C 1E 00 00 */	cmpwi r30, 0
/* 80096904 00091E24  40 82 FF C0 */	bne lbl_800968C4
lbl_80096908:
/* 80096908 00091E28  48 00 0A D9 */	bl __OSSyncSram
/* 8009690C 00091E2C  7C 60 00 34 */	cntlzw r0, r3
/* 80096910 00091E30  54 00 D9 7E */	srwi r0, r0, 5
/* 80096914 00091E34  7F FF 03 79 */	or. r31, r31, r0
/* 80096918 00091E38  40 82 FF 9C */	bne lbl_800968B4
lbl_8009691C:
/* 8009691C 00091E3C  48 00 0A C5 */	bl __OSSyncSram
/* 80096920 00091E40  2C 03 00 00 */	cmpwi r3, 0
/* 80096924 00091E44  41 82 FF F8 */	beq lbl_8009691C
/* 80096928 00091E48  4B FF E9 8D */	bl OSDisableInterrupts
/* 8009692C 00091E4C  83 ED 8D 08 */	lwz r31, lbl_80247188@sda21(r13)
/* 80096930 00091E50  38 60 00 00 */	li r3, 0
/* 80096934 00091E54  3B C0 00 00 */	li r30, 0
/* 80096938 00091E58  48 00 00 40 */	b lbl_80096978
lbl_8009693C:
/* 8009693C 00091E5C  2C 1E 00 00 */	cmpwi r30, 0
/* 80096940 00091E60  41 82 00 10 */	beq lbl_80096950
/* 80096944 00091E64  80 1F 00 04 */	lwz r0, 4(r31)
/* 80096948 00091E68  7C 03 00 40 */	cmplw r3, r0
/* 8009694C 00091E6C  40 82 00 34 */	bne lbl_80096980
lbl_80096950:
/* 80096950 00091E70  81 9F 00 00 */	lwz r12, 0(r31)
/* 80096954 00091E74  7F 64 DB 78 */	mr r4, r27
/* 80096958 00091E78  38 60 00 01 */	li r3, 1
/* 8009695C 00091E7C  7D 89 03 A6 */	mtctr r12
/* 80096960 00091E80  4E 80 04 21 */	bctrl 
/* 80096964 00091E84  7C 60 00 34 */	cntlzw r0, r3
/* 80096968 00091E88  80 7F 00 04 */	lwz r3, 4(r31)
/* 8009696C 00091E8C  54 00 D9 7E */	srwi r0, r0, 5
/* 80096970 00091E90  83 FF 00 08 */	lwz r31, 8(r31)
/* 80096974 00091E94  7F DE 03 78 */	or r30, r30, r0
lbl_80096978:
/* 80096978 00091E98  2C 1F 00 00 */	cmpwi r31, 0
/* 8009697C 00091E9C  40 82 FF C0 */	bne lbl_8009693C
lbl_80096980:
/* 80096980 00091EA0  48 00 0A 61 */	bl __OSSyncSram
/* 80096984 00091EA4  4B FF A3 F9 */	bl LCDisable
/* 80096988 00091EA8  2C 1C 00 00 */	cmpwi r28, 0
/* 8009698C 00091EAC  40 82 00 0C */	bne lbl_80096998
/* 80096990 00091EB0  7F A3 EB 78 */	mr r3, r29
/* 80096994 00091EB4  48 02 D0 B9 */	bl __PADDisableRecalibration
lbl_80096998:
/* 80096998 00091EB8  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 8009699C 00091EBC  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 800969A0 00091EC0  48 00 00 2C */	b lbl_800969CC
lbl_800969A4:
/* 800969A4 00091EC4  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 800969A8 00091EC8  83 C3 02 FC */	lwz r30, 0x2fc(r3)
/* 800969AC 00091ECC  2C 00 00 04 */	cmpwi r0, 4
/* 800969B0 00091ED0  41 82 00 14 */	beq lbl_800969C4
/* 800969B4 00091ED4  40 80 00 14 */	bge lbl_800969C8
/* 800969B8 00091ED8  2C 00 00 01 */	cmpwi r0, 1
/* 800969BC 00091EDC  41 82 00 08 */	beq lbl_800969C4
/* 800969C0 00091EE0  48 00 00 08 */	b lbl_800969C8
lbl_800969C4:
/* 800969C4 00091EE4  48 00 1A E1 */	bl OSCancelThread
lbl_800969C8:
/* 800969C8 00091EE8  7F C3 F3 78 */	mr r3, r30
lbl_800969CC:
/* 800969CC 00091EEC  2C 03 00 00 */	cmpwi r3, 0
/* 800969D0 00091EF0  40 82 FF D4 */	bne lbl_800969A4
/* 800969D4 00091EF4  39 61 00 20 */	addi r11, r1, 0x20
/* 800969D8 00091EF8  48 0C 5F B9 */	bl _restgpr_27
/* 800969DC 00091EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800969E0 00091F00  7C 08 03 A6 */	mtlr r0
/* 800969E4 00091F04  38 21 00 20 */	addi r1, r1, 0x20
/* 800969E8 00091F08  4E 80 00 20 */	blr 

glabel OSShutdownSystem
/* 800969EC 00091F0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800969F0 00091F10  7C 08 02 A6 */	mflr r0
/* 800969F4 00091F14  38 80 00 00 */	li r4, 0
/* 800969F8 00091F18  38 A0 00 02 */	li r5, 2
/* 800969FC 00091F1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80096A00 00091F20  38 61 00 08 */	addi r3, r1, 8
/* 80096A04 00091F24  4B F6 DA 39 */	bl memset
/* 80096A08 00091F28  48 02 58 01 */	bl SCInit
lbl_80096A0C:
/* 80096A0C 00091F2C  48 02 58 9D */	bl SCCheckStatus
/* 80096A10 00091F30  28 03 00 01 */	cmplwi r3, 1
/* 80096A14 00091F34  41 82 FF F8 */	beq lbl_80096A0C
/* 80096A18 00091F38  38 61 00 08 */	addi r3, r1, 8
/* 80096A1C 00091F3C  48 02 72 19 */	bl SCGetIdleMode
/* 80096A20 00091F40  48 00 38 69 */	bl __OSStopPlayRecord
/* 80096A24 00091F44  48 00 31 29 */	bl __OSUnRegisterStateEvent
/* 80096A28 00091F48  48 01 88 39 */	bl __DVDPrepareReset
/* 80096A2C 00091F4C  38 61 00 18 */	addi r3, r1, 0x18
/* 80096A30 00091F50  48 00 3B 25 */	bl __OSReadStateFlags
/* 80096A34 00091F54  48 01 86 3D */	bl __DVDGetCoverStatus
/* 80096A38 00091F58  28 03 00 02 */	cmplwi r3, 2
/* 80096A3C 00091F5C  41 82 00 10 */	beq lbl_80096A4C
/* 80096A40 00091F60  38 00 00 03 */	li r0, 3
/* 80096A44 00091F64  98 01 00 1E */	stb r0, 0x1e(r1)
/* 80096A48 00091F68  48 00 00 40 */	b lbl_80096A88
lbl_80096A4C:
/* 80096A4C 00091F6C  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 80096A50 00091F70  28 00 00 01 */	cmplwi r0, 1
/* 80096A54 00091F74  40 82 00 20 */	bne lbl_80096A74
/* 80096A58 00091F78  38 61 00 0C */	addi r3, r1, 0xc
/* 80096A5C 00091F7C  48 00 0B CD */	bl __OSGetRTCFlags
/* 80096A60 00091F80  2C 03 00 00 */	cmpwi r3, 0
/* 80096A64 00091F84  41 82 00 1C */	beq lbl_80096A80
/* 80096A68 00091F88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80096A6C 00091F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80096A70 00091F90  41 82 00 10 */	beq lbl_80096A80
lbl_80096A74:
/* 80096A74 00091F94  38 00 00 02 */	li r0, 2
/* 80096A78 00091F98  98 01 00 1E */	stb r0, 0x1e(r1)
/* 80096A7C 00091F9C  48 00 00 0C */	b lbl_80096A88
lbl_80096A80:
/* 80096A80 00091FA0  38 00 00 01 */	li r0, 1
/* 80096A84 00091FA4  98 01 00 1E */	stb r0, 0x1e(r1)
lbl_80096A88:
/* 80096A88 00091FA8  88 01 00 08 */	lbz r0, 8(r1)
/* 80096A8C 00091FAC  28 00 00 01 */	cmplwi r0, 1
/* 80096A90 00091FB0  40 82 00 10 */	bne lbl_80096AA0
/* 80096A94 00091FB4  38 00 00 05 */	li r0, 5
/* 80096A98 00091FB8  98 01 00 1D */	stb r0, 0x1d(r1)
/* 80096A9C 00091FBC  48 00 00 0C */	b lbl_80096AA8
lbl_80096AA0:
/* 80096AA0 00091FC0  38 00 00 01 */	li r0, 1
/* 80096AA4 00091FC4  98 01 00 1D */	stb r0, 0x1d(r1)
lbl_80096AA8:
/* 80096AA8 00091FC8  48 00 0C 9D */	bl __OSClearRTCFlags
/* 80096AAC 00091FCC  38 61 00 18 */	addi r3, r1, 0x18
/* 80096AB0 00091FD0  48 00 39 C1 */	bl __OSWriteStateFlags
/* 80096AB4 00091FD4  38 61 00 10 */	addi r3, r1, 0x10
/* 80096AB8 00091FD8  4B FF 81 59 */	bl __OSGetIOSRev
/* 80096ABC 00091FDC  88 01 00 08 */	lbz r0, 8(r1)
/* 80096AC0 00091FE0  28 00 00 01 */	cmplwi r0, 1
/* 80096AC4 00091FE4  40 82 00 1C */	bne lbl_80096AE0
/* 80096AC8 00091FE8  48 00 10 F1 */	bl OSDisableScheduler
/* 80096ACC 00091FEC  38 60 00 05 */	li r3, 5
/* 80096AD0 00091FF0  4B FF FD 8D */	bl __OSShutdownDevices
/* 80096AD4 00091FF4  48 00 11 21 */	bl OSEnableScheduler
/* 80096AD8 00091FF8  4B FF BB F5 */	bl __OSLaunchMenu
/* 80096ADC 00091FFC  48 00 00 14 */	b lbl_80096AF0
lbl_80096AE0:
/* 80096AE0 00092000  48 00 10 D9 */	bl OSDisableScheduler
/* 80096AE4 00092004  38 60 00 02 */	li r3, 2
/* 80096AE8 00092008  4B FF FD 75 */	bl __OSShutdownDevices
/* 80096AEC 0009200C  48 00 2E 81 */	bl __OSShutdownToSBY
lbl_80096AF0:
/* 80096AF0 00092010  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80096AF4 00092014  7C 08 03 A6 */	mtlr r0
/* 80096AF8 00092018  38 21 00 40 */	addi r1, r1, 0x40
/* 80096AFC 0009201C  4E 80 00 20 */	blr 

glabel __OSRebootForNANDAPP
/* 80096B00 00092020  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80096B04 00092024  7C 08 02 A6 */	mflr r0
/* 80096B08 00092028  90 01 00 34 */	stw r0, 0x34(r1)
/* 80096B0C 0009202C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80096B10 00092030  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80096B14 00092034  7C 7E 1B 78 */	mr r30, r3
/* 80096B18 00092038  3C 60 81 28 */	lis r3, 0x8128
/* 80096B1C 0009203C  4B FF 9C 21 */	bl OSSetArenaLo
/* 80096B20 00092040  3C 60 81 2F */	lis r3, 0x812f
/* 80096B24 00092044  4B FF 9C 01 */	bl OSSetArenaHi
/* 80096B28 00092048  38 60 10 20 */	li r3, 0x1020
/* 80096B2C 0009204C  38 80 00 20 */	li r4, 0x20
/* 80096B30 00092050  4B FF 9C 15 */	bl OSAllocFromMEM1ArenaLo
/* 80096B34 00092054  7C 7F 1B 78 */	mr r31, r3
/* 80096B38 00092058  38 80 00 00 */	li r4, 0
/* 80096B3C 0009205C  38 A0 10 20 */	li r5, 0x1020
/* 80096B40 00092060  4B F6 D8 FD */	bl memset
/* 80096B44 00092064  7F E3 FB 78 */	mr r3, r31
/* 80096B48 00092068  48 00 42 21 */	bl __OSReadNandbootInfo
/* 80096B4C 0009206C  38 60 00 01 */	li r3, 1
/* 80096B50 00092070  67 C0 80 00 */	oris r0, r30, 0x8000
/* 80096B54 00092074  90 7F 00 08 */	stw r3, 8(r31)
/* 80096B58 00092078  7F E3 FB 78 */	mr r3, r31
/* 80096B5C 0009207C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80096B60 00092080  48 00 40 B1 */	bl __OSWriteNandbootInfo
/* 80096B64 00092084  38 61 00 08 */	addi r3, r1, 8
/* 80096B68 00092088  48 00 39 ED */	bl __OSReadStateFlags
/* 80096B6C 0009208C  2C 03 00 00 */	cmpwi r3, 0
/* 80096B70 00092090  41 82 00 14 */	beq lbl_80096B84
/* 80096B74 00092094  38 00 00 03 */	li r0, 3
/* 80096B78 00092098  38 61 00 08 */	addi r3, r1, 8
/* 80096B7C 0009209C  98 01 00 0D */	stb r0, 0xd(r1)
/* 80096B80 000920A0  48 00 38 F1 */	bl __OSWriteStateFlags
lbl_80096B84:
/* 80096B84 000920A4  48 00 10 35 */	bl OSDisableScheduler
/* 80096B88 000920A8  38 60 00 04 */	li r3, 4
/* 80096B8C 000920AC  4B FF FC D1 */	bl __OSShutdownDevices
/* 80096B90 000920B0  48 00 10 65 */	bl OSEnableScheduler
/* 80096B94 000920B4  4B FF BC 35 */	bl __OSRelaunchTitle
/* 80096B98 000920B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80096B9C 000920BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80096BA0 000920C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80096BA4 000920C4  7C 08 03 A6 */	mtlr r0
/* 80096BA8 000920C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80096BAC 000920CC  4E 80 00 20 */	blr 

glabel OSRestart
/* 80096BB0 000920D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80096BB4 000920D4  7C 08 02 A6 */	mflr r0
/* 80096BB8 000920D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80096BBC 000920DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80096BC0 000920E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80096BC4 000920E4  7C 7E 1B 78 */	mr r30, r3
/* 80096BC8 000920E8  4B FF 92 35 */	bl OSGetAppType
/* 80096BCC 000920EC  7C 7F 1B 78 */	mr r31, r3
/* 80096BD0 000920F0  48 00 36 B9 */	bl __OSStopPlayRecord
/* 80096BD4 000920F4  48 00 2F 79 */	bl __OSUnRegisterStateEvent
/* 80096BD8 000920F8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80096BDC 000920FC  28 00 00 81 */	cmplwi r0, 0x81
/* 80096BE0 00092100  40 82 00 10 */	bne lbl_80096BF0
/* 80096BE4 00092104  7F C3 F3 78 */	mr r3, r30
/* 80096BE8 00092108  4B FF FF 19 */	bl __OSRebootForNANDAPP
/* 80096BEC 0009210C  48 00 00 28 */	b lbl_80096C14
lbl_80096BF0:
/* 80096BF0 00092110  28 00 00 80 */	cmplwi r0, 0x80
/* 80096BF4 00092114  40 82 00 20 */	bne lbl_80096C14
/* 80096BF8 00092118  48 00 0F C1 */	bl OSDisableScheduler
/* 80096BFC 0009211C  38 60 00 04 */	li r3, 4
/* 80096C00 00092120  4B FF FC 5D */	bl __OSShutdownDevices
/* 80096C04 00092124  48 00 0F F1 */	bl OSEnableScheduler
/* 80096C08 00092128  80 8D 8D 00 */	lwz r4, lbl_80247180@sda21(r13)
/* 80096C0C 0009212C  7F C3 F3 78 */	mr r3, r30
/* 80096C10 00092130  4B FF FA A1 */	bl __OSReboot
lbl_80096C14:
/* 80096C14 00092134  48 00 0F A5 */	bl OSDisableScheduler
/* 80096C18 00092138  38 60 00 01 */	li r3, 1
/* 80096C1C 0009213C  4B FF FC 41 */	bl __OSShutdownDevices
/* 80096C20 00092140  48 00 2D C5 */	bl __OSHotReset
/* 80096C24 00092144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80096C28 00092148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80096C2C 0009214C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80096C30 00092150  7C 08 03 A6 */	mtlr r0
/* 80096C34 00092154  38 21 00 10 */	addi r1, r1, 0x10
/* 80096C38 00092158  4E 80 00 20 */	blr 

glabel OSReturnToMenu
/* 80096C3C 0009215C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80096C40 00092160  7C 08 02 A6 */	mflr r0
/* 80096C44 00092164  90 01 00 34 */	stw r0, 0x34(r1)
/* 80096C48 00092168  48 00 36 41 */	bl __OSStopPlayRecord
/* 80096C4C 0009216C  48 00 2F 01 */	bl __OSUnRegisterStateEvent
/* 80096C50 00092170  48 01 86 11 */	bl __DVDPrepareReset
/* 80096C54 00092174  38 61 00 10 */	addi r3, r1, 0x10
/* 80096C58 00092178  48 00 38 FD */	bl __OSReadStateFlags
/* 80096C5C 0009217C  48 01 84 15 */	bl __DVDGetCoverStatus
/* 80096C60 00092180  28 03 00 02 */	cmplwi r3, 2
/* 80096C64 00092184  41 82 00 10 */	beq lbl_80096C74
/* 80096C68 00092188  38 00 00 03 */	li r0, 3
/* 80096C6C 0009218C  98 01 00 16 */	stb r0, 0x16(r1)
/* 80096C70 00092190  48 00 00 40 */	b lbl_80096CB0
lbl_80096C74:
/* 80096C74 00092194  88 01 00 16 */	lbz r0, 0x16(r1)
/* 80096C78 00092198  28 00 00 01 */	cmplwi r0, 1
/* 80096C7C 0009219C  40 82 00 20 */	bne lbl_80096C9C
/* 80096C80 000921A0  38 61 00 08 */	addi r3, r1, 8
/* 80096C84 000921A4  48 00 09 A5 */	bl __OSGetRTCFlags
/* 80096C88 000921A8  2C 03 00 00 */	cmpwi r3, 0
/* 80096C8C 000921AC  41 82 00 1C */	beq lbl_80096CA8
/* 80096C90 000921B0  80 01 00 08 */	lwz r0, 8(r1)
/* 80096C94 000921B4  2C 00 00 00 */	cmpwi r0, 0
/* 80096C98 000921B8  41 82 00 10 */	beq lbl_80096CA8
lbl_80096C9C:
/* 80096C9C 000921BC  38 00 00 02 */	li r0, 2
/* 80096CA0 000921C0  98 01 00 16 */	stb r0, 0x16(r1)
/* 80096CA4 000921C4  48 00 00 0C */	b lbl_80096CB0
lbl_80096CA8:
/* 80096CA8 000921C8  38 00 00 01 */	li r0, 1
/* 80096CAC 000921CC  98 01 00 16 */	stb r0, 0x16(r1)
lbl_80096CB0:
/* 80096CB0 000921D0  38 00 00 03 */	li r0, 3
/* 80096CB4 000921D4  98 01 00 15 */	stb r0, 0x15(r1)
/* 80096CB8 000921D8  48 00 0A 8D */	bl __OSClearRTCFlags
/* 80096CBC 000921DC  38 61 00 10 */	addi r3, r1, 0x10
/* 80096CC0 000921E0  48 00 37 B1 */	bl __OSWriteStateFlags
/* 80096CC4 000921E4  48 00 0E F5 */	bl OSDisableScheduler
/* 80096CC8 000921E8  38 60 00 05 */	li r3, 5
/* 80096CCC 000921EC  4B FF FB 91 */	bl __OSShutdownDevices
/* 80096CD0 000921F0  48 00 0F 25 */	bl OSEnableScheduler
/* 80096CD4 000921F4  4B FF B9 F9 */	bl __OSLaunchMenu
/* 80096CD8 000921F8  48 00 0E E1 */	bl OSDisableScheduler
/* 80096CDC 000921FC  48 00 BD 09 */	bl __VISetRGBModeImm
/* 80096CE0 00092200  48 00 2D 05 */	bl __OSHotReset
/* 80096CE4 00092204  3C 60 80 18 */	lis r3, lbl_801840C0@ha
/* 80096CE8 00092208  3C A0 80 18 */	lis r5, lbl_801840CC@ha
/* 80096CEC 0009220C  38 63 40 C0 */	addi r3, r3, lbl_801840C0@l
/* 80096CF0 00092210  38 80 03 4B */	li r4, 0x34b
/* 80096CF4 00092214  38 A5 40 CC */	addi r5, r5, lbl_801840CC@l
/* 80096CF8 00092218  4C C6 31 82 */	crclr 6
/* 80096CFC 0009221C  4B FF AC 41 */	bl OSPanic
/* 80096D00 00092220  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80096D04 00092224  7C 08 03 A6 */	mtlr r0
/* 80096D08 00092228  38 21 00 30 */	addi r1, r1, 0x30
/* 80096D0C 0009222C  4E 80 00 20 */	blr 

glabel __OSReturnToMenuForError
/* 80096D10 00092230  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80096D14 00092234  7C 08 02 A6 */	mflr r0
/* 80096D18 00092238  90 01 00 34 */	stw r0, 0x34(r1)
/* 80096D1C 0009223C  38 61 00 08 */	addi r3, r1, 8
/* 80096D20 00092240  48 00 38 35 */	bl __OSReadStateFlags
/* 80096D24 00092244  38 60 00 02 */	li r3, 2
/* 80096D28 00092248  38 00 00 03 */	li r0, 3
/* 80096D2C 0009224C  98 61 00 0E */	stb r3, 0xe(r1)
/* 80096D30 00092250  98 01 00 0D */	stb r0, 0xd(r1)
/* 80096D34 00092254  48 00 0A 11 */	bl __OSClearRTCFlags
/* 80096D38 00092258  38 61 00 08 */	addi r3, r1, 8
/* 80096D3C 0009225C  48 00 37 35 */	bl __OSWriteStateFlags
/* 80096D40 00092260  4B FF B9 8D */	bl __OSLaunchMenu
/* 80096D44 00092264  48 00 0E 75 */	bl OSDisableScheduler
/* 80096D48 00092268  48 00 BC 9D */	bl __VISetRGBModeImm
/* 80096D4C 0009226C  48 00 2C 99 */	bl __OSHotReset
/* 80096D50 00092270  3C 60 80 18 */	lis r3, lbl_801840C0@ha
/* 80096D54 00092274  3C A0 80 18 */	lis r5, lbl_801840FC@ha
/* 80096D58 00092278  38 63 40 C0 */	addi r3, r3, lbl_801840C0@l
/* 80096D5C 0009227C  38 80 03 65 */	li r4, 0x365
/* 80096D60 00092280  38 A5 40 FC */	addi r5, r5, lbl_801840FC@l
/* 80096D64 00092284  4C C6 31 82 */	crclr 6
/* 80096D68 00092288  4B FF AB D5 */	bl OSPanic
/* 80096D6C 0009228C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80096D70 00092290  7C 08 03 A6 */	mtlr r0
/* 80096D74 00092294  38 21 00 30 */	addi r1, r1, 0x30
/* 80096D78 00092298  4E 80 00 20 */	blr 

glabel OSGetResetCode
/* 80096D7C 0009229C  3C 60 80 1B */	lis r3, lbl_801B3DE0@ha
/* 80096D80 000922A0  80 03 3D E0 */	lwz r0, lbl_801B3DE0@l(r3)
/* 80096D84 000922A4  2C 00 00 00 */	cmpwi r0, 0
/* 80096D88 000922A8  41 82 00 14 */	beq lbl_80096D9C
/* 80096D8C 000922AC  38 63 3D E0 */	addi r3, r3, 0x3de0
/* 80096D90 000922B0  80 03 00 04 */	lwz r0, 4(r3)
/* 80096D94 000922B4  64 03 80 00 */	oris r3, r0, 0x8000
/* 80096D98 000922B8  4E 80 00 20 */	blr 
lbl_80096D9C:
/* 80096D9C 000922BC  3C 60 CC 00 */	lis r3, 0xCC003024@ha
/* 80096DA0 000922C0  80 03 30 24 */	lwz r0, 0xCC003024@l(r3)
/* 80096DA4 000922C4  54 03 E8 FE */	srwi r3, r0, 3
/* 80096DA8 000922C8  4E 80 00 20 */	blr 

glabel OSResetSystem
/* 80096DAC 000922CC  3C 60 80 18 */	lis r3, lbl_801840C0@ha
/* 80096DB0 000922D0  3C A0 80 18 */	lis r5, lbl_80184130@ha
/* 80096DB4 000922D4  38 63 40 C0 */	addi r3, r3, lbl_801840C0@l
/* 80096DB8 000922D8  38 80 03 FC */	li r4, 0x3fc
/* 80096DBC 000922DC  38 A5 41 30 */	addi r5, r5, lbl_80184130@l
/* 80096DC0 000922E0  4C C6 31 82 */	crclr 6
/* 80096DC4 000922E4  4B FF AB 78 */	b OSPanic