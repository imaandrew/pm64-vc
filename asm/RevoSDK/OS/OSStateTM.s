.include "macros.inc"

.section .text, "ax"

glabel OSSetResetCallback
/* 800996DC 00094BFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800996E0 00094C00  7C 08 02 A6 */	mflr r0
/* 800996E4 00094C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 800996E8 00094C08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800996EC 00094C0C  7C 7F 1B 78 */	mr r31, r3
/* 800996F0 00094C10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800996F4 00094C14  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800996F8 00094C18  4B FF BB BD */	bl OSDisableInterrupts
/* 800996FC 00094C1C  80 0D 8D 38 */	lwz r0, lbl_802471B8@sda21(r13)
/* 80099700 00094C20  7C 7E 1B 78 */	mr r30, r3
/* 80099704 00094C24  83 AD 8D 44 */	lwz r29, lbl_802471C4@sda21(r13)
/* 80099708 00094C28  2C 00 00 00 */	cmpwi r0, 0
/* 8009970C 00094C2C  93 ED 8D 44 */	stw r31, lbl_802471C4@sda21(r13)
/* 80099710 00094C30  40 82 00 60 */	bne .L_80099770
/* 80099714 00094C34  4B FF BB A1 */	bl OSDisableInterrupts
/* 80099718 00094C38  7C 7F 1B 78 */	mr r31, r3
/* 8009971C 00094C3C  3C A0 80 1C */	lis r5, lbl_801C5360@ha
/* 80099720 00094C40  3C E0 80 1C */	lis r7, lbl_801C5380@ha
/* 80099724 00094C44  3D 20 80 0A */	lis r9, __OSStateEventHandler@ha
/* 80099728 00094C48  80 6D 8D 34 */	lwz r3, lbl_802471B4@sda21(r13)
/* 8009972C 00094C4C  38 A5 53 60 */	addi r5, r5, lbl_801C5360@l
/* 80099730 00094C50  38 E7 53 80 */	addi r7, r7, lbl_801C5380@l
/* 80099734 00094C54  39 29 9B DC */	addi r9, r9, __OSStateEventHandler@l
/* 80099738 00094C58  38 80 10 00 */	li r4, 0x1000
/* 8009973C 00094C5C  38 C0 00 20 */	li r6, 0x20
/* 80099740 00094C60  39 00 00 20 */	li r8, 0x20
/* 80099744 00094C64  39 40 00 00 */	li r10, 0
/* 80099748 00094C68  48 02 67 DD */	bl IOS_IoCtlAsync
/* 8009974C 00094C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80099750 00094C70  40 82 00 10 */	bne .L_80099760
/* 80099754 00094C74  38 00 00 01 */	li r0, 1
/* 80099758 00094C78  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
/* 8009975C 00094C7C  48 00 00 0C */	b .L_80099768
.L_80099760:
/* 80099760 00094C80  38 00 00 00 */	li r0, 0
/* 80099764 00094C84  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
.L_80099768:
/* 80099768 00094C88  7F E3 FB 78 */	mr r3, r31
/* 8009976C 00094C8C  4B FF BB 71 */	bl OSRestoreInterrupts
.L_80099770:
/* 80099770 00094C90  7F C3 F3 78 */	mr r3, r30
/* 80099774 00094C94  4B FF BB 69 */	bl OSRestoreInterrupts
/* 80099778 00094C98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009977C 00094C9C  7F A3 EB 78 */	mr r3, r29
/* 80099780 00094CA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80099784 00094CA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80099788 00094CA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009978C 00094CAC  7C 08 03 A6 */	mtlr r0
/* 80099790 00094CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80099794 00094CB4  4E 80 00 20 */	blr

glabel OSSetPowerCallback
/* 80099798 00094CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009979C 00094CBC  7C 08 02 A6 */	mflr r0
/* 800997A0 00094CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800997A4 00094CC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800997A8 00094CC8  7C 7F 1B 78 */	mr r31, r3
/* 800997AC 00094CCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800997B0 00094CD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800997B4 00094CD4  4B FF BB 01 */	bl OSDisableInterrupts
/* 800997B8 00094CD8  80 0D 8D 38 */	lwz r0, lbl_802471B8@sda21(r13)
/* 800997BC 00094CDC  7C 7E 1B 78 */	mr r30, r3
/* 800997C0 00094CE0  83 AD 8D 40 */	lwz r29, lbl_802471C0@sda21(r13)
/* 800997C4 00094CE4  2C 00 00 00 */	cmpwi r0, 0
/* 800997C8 00094CE8  93 ED 8D 40 */	stw r31, lbl_802471C0@sda21(r13)
/* 800997CC 00094CEC  40 82 00 60 */	bne .L_8009982C
/* 800997D0 00094CF0  4B FF BA E5 */	bl OSDisableInterrupts
/* 800997D4 00094CF4  7C 7F 1B 78 */	mr r31, r3
/* 800997D8 00094CF8  3C A0 80 1C */	lis r5, lbl_801C5360@ha
/* 800997DC 00094CFC  3C E0 80 1C */	lis r7, lbl_801C5380@ha
/* 800997E0 00094D00  3D 20 80 0A */	lis r9, __OSStateEventHandler@ha
/* 800997E4 00094D04  80 6D 8D 34 */	lwz r3, lbl_802471B4@sda21(r13)
/* 800997E8 00094D08  38 A5 53 60 */	addi r5, r5, lbl_801C5360@l
/* 800997EC 00094D0C  38 E7 53 80 */	addi r7, r7, lbl_801C5380@l
/* 800997F0 00094D10  39 29 9B DC */	addi r9, r9, __OSStateEventHandler@l
/* 800997F4 00094D14  38 80 10 00 */	li r4, 0x1000
/* 800997F8 00094D18  38 C0 00 20 */	li r6, 0x20
/* 800997FC 00094D1C  39 00 00 20 */	li r8, 0x20
/* 80099800 00094D20  39 40 00 00 */	li r10, 0
/* 80099804 00094D24  48 02 67 21 */	bl IOS_IoCtlAsync
/* 80099808 00094D28  2C 03 00 00 */	cmpwi r3, 0
/* 8009980C 00094D2C  40 82 00 10 */	bne .L_8009981C
/* 80099810 00094D30  38 00 00 01 */	li r0, 1
/* 80099814 00094D34  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
/* 80099818 00094D38  48 00 00 0C */	b .L_80099824
.L_8009981C:
/* 8009981C 00094D3C  38 00 00 00 */	li r0, 0
/* 80099820 00094D40  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
.L_80099824:
/* 80099824 00094D44  7F E3 FB 78 */	mr r3, r31
/* 80099828 00094D48  4B FF BA B5 */	bl OSRestoreInterrupts
.L_8009982C:
/* 8009982C 00094D4C  7F C3 F3 78 */	mr r3, r30
/* 80099830 00094D50  4B FF BA AD */	bl OSRestoreInterrupts
/* 80099834 00094D54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80099838 00094D58  7F A3 EB 78 */	mr r3, r29
/* 8009983C 00094D5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80099840 00094D60  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80099844 00094D64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80099848 00094D68  7C 08 03 A6 */	mtlr r0
/* 8009984C 00094D6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80099850 00094D70  4E 80 00 20 */	blr

glabel __OSInitSTM
/* 80099854 00094D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099858 00094D78  7C 08 02 A6 */	mflr r0
/* 8009985C 00094D7C  3C 80 80 0A */	lis r4, __OSDefaultPowerCallback@ha
/* 80099860 00094D80  3C 60 80 0A */	lis r3, __OSDefaultResetCallback@ha
/* 80099864 00094D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099868 00094D88  38 84 9B D8 */	addi r4, r4, __OSDefaultPowerCallback@l
/* 8009986C 00094D8C  38 63 9B D4 */	addi r3, r3, __OSDefaultResetCallback@l
/* 80099870 00094D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099874 00094D94  3B E0 00 00 */	li r31, 0
/* 80099878 00094D98  93 C1 00 08 */	stw r30, 8(r1)
/* 8009987C 00094D9C  80 0D 8D 2C */	lwz r0, lbl_802471AC@sda21(r13)
/* 80099880 00094DA0  90 8D 8D 40 */	stw r4, lbl_802471C0@sda21(r13)
/* 80099884 00094DA4  2C 00 00 00 */	cmpwi r0, 0
/* 80099888 00094DA8  90 6D 8D 44 */	stw r3, lbl_802471C4@sda21(r13)
/* 8009988C 00094DAC  93 ED 8D 28 */	stw r31, lbl_802471A8@sda21(r13)
/* 80099890 00094DB0  41 82 00 0C */	beq .L_8009989C
/* 80099894 00094DB4  38 60 00 01 */	li r3, 1
/* 80099898 00094DB8  48 00 00 BC */	b .L_80099954
.L_8009989C:
/* 8009989C 00094DBC  3C 60 80 19 */	lis r3, lbl_80190010@ha
/* 800998A0 00094DC0  93 ED 8D 3C */	stw r31, lbl_802471BC@sda21(r13)
/* 800998A4 00094DC4  38 80 00 00 */	li r4, 0
/* 800998A8 00094DC8  38 63 00 10 */	addi r3, r3, lbl_80190010@l
/* 800998AC 00094DCC  48 02 5E 19 */	bl IOS_Open
/* 800998B0 00094DD0  2C 03 00 00 */	cmpwi r3, 0
/* 800998B4 00094DD4  90 6D 8D 30 */	stw r3, lbl_802471B0@sda21(r13)
/* 800998B8 00094DD8  40 80 00 10 */	bge .L_800998C8
/* 800998BC 00094DDC  93 ED 8D 2C */	stw r31, lbl_802471AC@sda21(r13)
/* 800998C0 00094DE0  38 60 00 00 */	li r3, 0
/* 800998C4 00094DE4  48 00 00 90 */	b .L_80099954
.L_800998C8:
/* 800998C8 00094DE8  3C 60 80 19 */	lis r3, lbl_80190024@ha
/* 800998CC 00094DEC  38 80 00 00 */	li r4, 0
/* 800998D0 00094DF0  38 63 00 24 */	addi r3, r3, lbl_80190024@l
/* 800998D4 00094DF4  48 02 5D F1 */	bl IOS_Open
/* 800998D8 00094DF8  2C 03 00 00 */	cmpwi r3, 0
/* 800998DC 00094DFC  90 6D 8D 34 */	stw r3, lbl_802471B4@sda21(r13)
/* 800998E0 00094E00  40 80 00 10 */	bge .L_800998F0
/* 800998E4 00094E04  93 ED 8D 2C */	stw r31, lbl_802471AC@sda21(r13)
/* 800998E8 00094E08  38 60 00 00 */	li r3, 0
/* 800998EC 00094E0C  48 00 00 68 */	b .L_80099954
.L_800998F0:
/* 800998F0 00094E10  4B FF B9 C5 */	bl OSDisableInterrupts
/* 800998F4 00094E14  7C 7E 1B 78 */	mr r30, r3
/* 800998F8 00094E18  3C A0 80 1C */	lis r5, lbl_801C5360@ha
/* 800998FC 00094E1C  3C E0 80 1C */	lis r7, lbl_801C5380@ha
/* 80099900 00094E20  3D 20 80 0A */	lis r9, __OSStateEventHandler@ha
/* 80099904 00094E24  80 6D 8D 34 */	lwz r3, lbl_802471B4@sda21(r13)
/* 80099908 00094E28  38 A5 53 60 */	addi r5, r5, lbl_801C5360@l
/* 8009990C 00094E2C  38 E7 53 80 */	addi r7, r7, lbl_801C5380@l
/* 80099910 00094E30  39 29 9B DC */	addi r9, r9, __OSStateEventHandler@l
/* 80099914 00094E34  38 80 10 00 */	li r4, 0x1000
/* 80099918 00094E38  38 C0 00 20 */	li r6, 0x20
/* 8009991C 00094E3C  39 00 00 20 */	li r8, 0x20
/* 80099920 00094E40  39 40 00 00 */	li r10, 0
/* 80099924 00094E44  48 02 66 01 */	bl IOS_IoCtlAsync
/* 80099928 00094E48  2C 03 00 00 */	cmpwi r3, 0
/* 8009992C 00094E4C  40 82 00 10 */	bne .L_8009993C
/* 80099930 00094E50  38 00 00 01 */	li r0, 1
/* 80099934 00094E54  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
/* 80099938 00094E58  48 00 00 08 */	b .L_80099940
.L_8009993C:
/* 8009993C 00094E5C  93 ED 8D 38 */	stw r31, lbl_802471B8@sda21(r13)
.L_80099940:
/* 80099940 00094E60  7F C3 F3 78 */	mr r3, r30
/* 80099944 00094E64  4B FF B9 99 */	bl OSRestoreInterrupts
/* 80099948 00094E68  38 00 00 01 */	li r0, 1
/* 8009994C 00094E6C  38 60 00 01 */	li r3, 1
/* 80099950 00094E70  90 0D 8D 2C */	stw r0, lbl_802471AC@sda21(r13)
.L_80099954:
/* 80099954 00094E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099958 00094E78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009995C 00094E7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80099960 00094E80  7C 08 03 A6 */	mtlr r0
/* 80099964 00094E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80099968 00094E88  4E 80 00 20 */	blr

glabel __OSShutdownToSBY
/* 8009996C 00094E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099970 00094E90  7C 08 02 A6 */	mflr r0
/* 80099974 00094E94  3C 60 CC 00 */	lis r3, 0xCC002002@ha
/* 80099978 00094E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009997C 00094E9C  38 00 00 00 */	li r0, 0
/* 80099980 00094EA0  B0 03 20 02 */	sth r0, 0xCC002002@l(r3)
/* 80099984 00094EA4  80 0D 8D 2C */	lwz r0, lbl_802471AC@sda21(r13)
/* 80099988 00094EA8  2C 00 00 00 */	cmpwi r0, 0
/* 8009998C 00094EAC  40 82 00 20 */	bne .L_800999AC
/* 80099990 00094EB0  3C 60 80 19 */	lis r3, lbl_80190038@ha
/* 80099994 00094EB4  3C A0 80 19 */	lis r5, lbl_80190044@ha
/* 80099998 00094EB8  38 63 00 38 */	addi r3, r3, lbl_80190038@l
/* 8009999C 00094EBC  38 80 01 14 */	li r4, 0x114
/* 800999A0 00094EC0  38 A5 00 44 */	addi r5, r5, lbl_80190044@l
/* 800999A4 00094EC4  4C C6 31 82 */	crclr 6
/* 800999A8 00094EC8  4B FF 7F 95 */	bl OSPanic
.L_800999AC:
/* 800999AC 00094ECC  3C 80 80 1C */	lis r4, lbl_801C53A0@ha
/* 800999B0 00094ED0  38 00 00 00 */	li r0, 0
/* 800999B4 00094ED4  3C E0 80 1C */	lis r7, lbl_801C53C0@ha
/* 800999B8 00094ED8  90 04 53 A0 */	stw r0, lbl_801C53A0@l(r4)
/* 800999BC 00094EDC  38 A4 53 A0 */	addi r5, r4, lbl_801C53A0@l
/* 800999C0 00094EE0  80 6D 8D 30 */	lwz r3, lbl_802471B0@sda21(r13)
/* 800999C4 00094EE4  38 E7 53 C0 */	addi r7, r7, lbl_801C53C0@l
/* 800999C8 00094EE8  38 80 20 03 */	li r4, 0x2003
/* 800999CC 00094EEC  38 C0 00 20 */	li r6, 0x20
/* 800999D0 00094EF0  39 00 00 20 */	li r8, 0x20
/* 800999D4 00094EF4  48 02 66 89 */	bl IOS_IoCtl
/* 800999D8 00094EF8  4B FF B8 DD */	bl OSDisableInterrupts
/* 800999DC 00094EFC  4B FF 73 7D */	bl ICFlashInvalidate
.L_800999E0:
/* 800999E0 00094F00  48 00 00 00 */	b .L_800999E0

glabel __OSHotReset
/* 800999E4 00094F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800999E8 00094F08  7C 08 02 A6 */	mflr r0
/* 800999EC 00094F0C  3C 60 CC 00 */	lis r3, 0xCC002002@ha
/* 800999F0 00094F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 800999F4 00094F14  38 00 00 00 */	li r0, 0
/* 800999F8 00094F18  B0 03 20 02 */	sth r0, 0xCC002002@l(r3)
/* 800999FC 00094F1C  80 0D 8D 2C */	lwz r0, lbl_802471AC@sda21(r13)
/* 80099A00 00094F20  2C 00 00 00 */	cmpwi r0, 0
/* 80099A04 00094F24  40 82 00 20 */	bne .L_80099A24
/* 80099A08 00094F28  3C 60 80 19 */	lis r3, lbl_80190038@ha
/* 80099A0C 00094F2C  3C A0 80 19 */	lis r5, lbl_8019007C@ha
/* 80099A10 00094F30  38 63 00 38 */	addi r3, r3, lbl_80190038@l
/* 80099A14 00094F34  38 80 01 54 */	li r4, 0x154
/* 80099A18 00094F38  38 A5 00 7C */	addi r5, r5, lbl_8019007C@l
/* 80099A1C 00094F3C  4C C6 31 82 */	crclr 6
/* 80099A20 00094F40  4B FF 7F 1D */	bl OSPanic
.L_80099A24:
/* 80099A24 00094F44  3C A0 80 1C */	lis r5, lbl_801C53A0@ha
/* 80099A28 00094F48  3C E0 80 1C */	lis r7, lbl_801C53C0@ha
/* 80099A2C 00094F4C  80 6D 8D 30 */	lwz r3, lbl_802471B0@sda21(r13)
/* 80099A30 00094F50  38 A5 53 A0 */	addi r5, r5, lbl_801C53A0@l
/* 80099A34 00094F54  38 E7 53 C0 */	addi r7, r7, lbl_801C53C0@l
/* 80099A38 00094F58  38 80 20 01 */	li r4, 0x2001
/* 80099A3C 00094F5C  38 C0 00 20 */	li r6, 0x20
/* 80099A40 00094F60  39 00 00 20 */	li r8, 0x20
/* 80099A44 00094F64  48 02 66 19 */	bl IOS_IoCtl
/* 80099A48 00094F68  4B FF B8 6D */	bl OSDisableInterrupts
/* 80099A4C 00094F6C  4B FF 73 0D */	bl ICFlashInvalidate
.L_80099A50:
/* 80099A50 00094F70  48 00 00 00 */	b .L_80099A50

glabel __OSSetVIForceDimming
/* 80099A54 00094F74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80099A58 00094F78  7C 08 02 A6 */	mflr r0
/* 80099A5C 00094F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80099A60 00094F80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80099A64 00094F84  7C BF 2B 78 */	mr r31, r5
/* 80099A68 00094F88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80099A6C 00094F8C  7C 9E 23 78 */	mr r30, r4
/* 80099A70 00094F90  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80099A74 00094F94  7C 7D 1B 78 */	mr r29, r3
/* 80099A78 00094F98  80 0D 8D 2C */	lwz r0, lbl_802471AC@sda21(r13)
/* 80099A7C 00094F9C  2C 00 00 00 */	cmpwi r0, 0
/* 80099A80 00094FA0  40 82 00 0C */	bne .L_80099A8C
/* 80099A84 00094FA4  38 60 FF F6 */	li r3, -10
/* 80099A88 00094FA8  48 00 00 A8 */	b .L_80099B30
.L_80099A8C:
/* 80099A8C 00094FAC  4B FF B8 29 */	bl OSDisableInterrupts
/* 80099A90 00094FB0  80 0D 8D 3C */	lwz r0, lbl_802471BC@sda21(r13)
/* 80099A94 00094FB4  2C 00 00 00 */	cmpwi r0, 0
/* 80099A98 00094FB8  41 82 00 10 */	beq .L_80099AA8
/* 80099A9C 00094FBC  4B FF B8 41 */	bl OSRestoreInterrupts
/* 80099AA0 00094FC0  38 60 00 00 */	li r3, 0
/* 80099AA4 00094FC4  48 00 00 8C */	b .L_80099B30
.L_80099AA8:
/* 80099AA8 00094FC8  38 00 00 01 */	li r0, 1
/* 80099AAC 00094FCC  90 0D 8D 3C */	stw r0, lbl_802471BC@sda21(r13)
/* 80099AB0 00094FD0  4B FF B8 2D */	bl OSRestoreInterrupts
/* 80099AB4 00094FD4  57 A0 38 30 */	slwi r0, r29, 7
/* 80099AB8 00094FD8  3C 60 80 1C */	lis r3, lbl_801C53E0@ha
/* 80099ABC 00094FDC  7C 04 FB 78 */	or r4, r0, r31
/* 80099AC0 00094FE0  3C E0 80 1C */	lis r7, lbl_801C5400@ha
/* 80099AC4 00094FE4  57 C0 18 38 */	slwi r0, r30, 3
/* 80099AC8 00094FE8  38 A3 53 E0 */	addi r5, r3, lbl_801C53E0@l
/* 80099ACC 00094FEC  39 80 00 00 */	li r12, 0
/* 80099AD0 00094FF0  39 60 FF FF */	li r11, -1
/* 80099AD4 00094FF4  7C 84 03 78 */	or r4, r4, r0
/* 80099AD8 00094FF8  3C 00 FF FF */	lis r0, 0xffff
/* 80099ADC 00094FFC  90 83 53 E0 */	stw r4, lbl_801C53E0@l(r3)
/* 80099AE0 00095000  3D 20 80 0A */	lis r9, __OSVIDimReplyHandler@ha
/* 80099AE4 00095004  80 6D 8D 30 */	lwz r3, lbl_802471B0@sda21(r13)
/* 80099AE8 00095008  38 E7 54 00 */	addi r7, r7, lbl_801C5400@l
/* 80099AEC 0009500C  91 85 00 04 */	stw r12, 4(r5)
/* 80099AF0 00095010  39 29 9B C4 */	addi r9, r9, __OSVIDimReplyHandler@l
/* 80099AF4 00095014  38 80 50 01 */	li r4, 0x5001
/* 80099AF8 00095018  38 C0 00 20 */	li r6, 0x20
/* 80099AFC 0009501C  91 85 00 08 */	stw r12, 8(r5)
/* 80099B00 00095020  39 00 00 20 */	li r8, 0x20
/* 80099B04 00095024  39 40 00 00 */	li r10, 0
/* 80099B08 00095028  91 85 00 0C */	stw r12, 0xc(r5)
/* 80099B0C 0009502C  91 85 00 10 */	stw r12, 0x10(r5)
/* 80099B10 00095030  91 65 00 14 */	stw r11, 0x14(r5)
/* 80099B14 00095034  90 05 00 18 */	stw r0, 0x18(r5)
/* 80099B18 00095038  91 85 00 1C */	stw r12, 0x1c(r5)
/* 80099B1C 0009503C  48 02 64 09 */	bl IOS_IoCtlAsync
/* 80099B20 00095040  2C 03 00 00 */	cmpwi r3, 0
/* 80099B24 00095044  41 82 00 08 */	beq .L_80099B2C
/* 80099B28 00095048  48 00 00 08 */	b .L_80099B30
.L_80099B2C:
/* 80099B2C 0009504C  38 60 00 01 */	li r3, 1
.L_80099B30:
/* 80099B30 00095050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80099B34 00095054  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80099B38 00095058  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80099B3C 0009505C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80099B40 00095060  7C 08 03 A6 */	mtlr r0
/* 80099B44 00095064  38 21 00 20 */	addi r1, r1, 0x20
/* 80099B48 00095068  4E 80 00 20 */	blr

glabel __OSUnRegisterStateEvent
/* 80099B4C 0009506C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099B50 00095070  7C 08 02 A6 */	mflr r0
/* 80099B54 00095074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099B58 00095078  80 0D 8D 38 */	lwz r0, lbl_802471B8@sda21(r13)
/* 80099B5C 0009507C  2C 00 00 00 */	cmpwi r0, 0
/* 80099B60 00095080  40 82 00 0C */	bne .L_80099B6C
/* 80099B64 00095084  38 60 00 00 */	li r3, 0
/* 80099B68 00095088  48 00 00 4C */	b .L_80099BB4
.L_80099B6C:
/* 80099B6C 0009508C  80 0D 8D 2C */	lwz r0, lbl_802471AC@sda21(r13)
/* 80099B70 00095090  2C 00 00 00 */	cmpwi r0, 0
/* 80099B74 00095094  40 82 00 0C */	bne .L_80099B80
/* 80099B78 00095098  38 60 FF FA */	li r3, -6
/* 80099B7C 0009509C  48 00 00 38 */	b .L_80099BB4
.L_80099B80:
/* 80099B80 000950A0  3C A0 80 1C */	lis r5, lbl_801C53A0@ha
/* 80099B84 000950A4  3C E0 80 1C */	lis r7, lbl_801C53C0@ha
/* 80099B88 000950A8  80 6D 8D 30 */	lwz r3, lbl_802471B0@sda21(r13)
/* 80099B8C 000950AC  38 A5 53 A0 */	addi r5, r5, lbl_801C53A0@l
/* 80099B90 000950B0  38 E7 53 C0 */	addi r7, r7, lbl_801C53C0@l
/* 80099B94 000950B4  38 80 30 02 */	li r4, 0x3002
/* 80099B98 000950B8  38 C0 00 20 */	li r6, 0x20
/* 80099B9C 000950BC  39 00 00 20 */	li r8, 0x20
/* 80099BA0 000950C0  48 02 64 BD */	bl IOS_IoCtl
/* 80099BA4 000950C4  2C 03 00 00 */	cmpwi r3, 0
/* 80099BA8 000950C8  40 82 00 0C */	bne .L_80099BB4
/* 80099BAC 000950CC  38 00 00 00 */	li r0, 0
/* 80099BB0 000950D0  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
.L_80099BB4:
/* 80099BB4 000950D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099BB8 000950D8  7C 08 03 A6 */	mtlr r0
/* 80099BBC 000950DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80099BC0 000950E0  4E 80 00 20 */	blr

glabel __OSVIDimReplyHandler
/* 80099BC4 000950E4  38 00 00 00 */	li r0, 0
/* 80099BC8 000950E8  38 60 00 00 */	li r3, 0
/* 80099BCC 000950EC  90 0D 8D 3C */	stw r0, lbl_802471BC@sda21(r13)
/* 80099BD0 000950F0  4E 80 00 20 */	blr

glabel __OSDefaultResetCallback
/* 80099BD4 000950F4  4E 80 00 20 */	blr

glabel __OSDefaultPowerCallback
/* 80099BD8 000950F8  4E 80 00 20 */	blr

glabel __OSStateEventHandler
/* 80099BDC 000950FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099BE0 00095100  7C 08 02 A6 */	mflr r0
/* 80099BE4 00095104  2C 03 00 00 */	cmpwi r3, 0
/* 80099BE8 00095108  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099BEC 0009510C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80099BF0 00095110  41 82 00 20 */	beq .L_80099C10
/* 80099BF4 00095114  3C 60 80 19 */	lis r3, lbl_80190038@ha
/* 80099BF8 00095118  3C A0 80 19 */	lis r5, lbl_801900B4@ha
/* 80099BFC 0009511C  38 63 00 38 */	addi r3, r3, lbl_80190038@l
/* 80099C00 00095120  38 80 02 EC */	li r4, 0x2ec
/* 80099C04 00095124  38 A5 00 B4 */	addi r5, r5, lbl_801900B4@l
/* 80099C08 00095128  4C C6 31 82 */	crclr 6
/* 80099C0C 0009512C  4B FF 7D 31 */	bl OSPanic
.L_80099C10:
/* 80099C10 00095130  3C 60 80 1C */	lis r3, lbl_801C5380@ha
/* 80099C14 00095134  38 00 00 00 */	li r0, 0
/* 80099C18 00095138  80 63 53 80 */	lwz r3, lbl_801C5380@l(r3)
/* 80099C1C 0009513C  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
/* 80099C20 00095140  3C 03 FF FE */	addis r0, r3, 0xfffe
/* 80099C24 00095144  28 00 00 00 */	cmplwi r0, 0
/* 80099C28 00095148  40 82 00 B4 */	bne .L_80099CDC
/* 80099C2C 0009514C  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 80099C30 00095150  80 03 30 00 */	lwz r0, 0xCC003000@l(r3)
/* 80099C34 00095154  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80099C38 00095158  40 82 00 0C */	bne .L_80099C44
/* 80099C3C 0009515C  38 00 00 01 */	li r0, 1
/* 80099C40 00095160  48 00 00 08 */	b .L_80099C48
.L_80099C44:
/* 80099C44 00095164  38 00 00 00 */	li r0, 0
.L_80099C48:
/* 80099C48 00095168  2C 00 00 00 */	cmpwi r0, 0
/* 80099C4C 0009516C  41 82 00 34 */	beq .L_80099C80
/* 80099C50 00095170  4B FF B6 65 */	bl OSDisableInterrupts
/* 80099C54 00095174  3C 80 80 0A */	lis r4, __OSDefaultResetCallback@ha
/* 80099C58 00095178  81 8D 8D 44 */	lwz r12, lbl_802471C4@sda21(r13)
/* 80099C5C 0009517C  38 84 9B D4 */	addi r4, r4, __OSDefaultResetCallback@l
/* 80099C60 00095180  38 00 00 01 */	li r0, 1
/* 80099C64 00095184  7C 7F 1B 78 */	mr r31, r3
/* 80099C68 00095188  90 0D 8D 28 */	stw r0, lbl_802471A8@sda21(r13)
/* 80099C6C 0009518C  90 8D 8D 44 */	stw r4, lbl_802471C4@sda21(r13)
/* 80099C70 00095190  7D 89 03 A6 */	mtctr r12
/* 80099C74 00095194  4E 80 04 21 */	bctrl
/* 80099C78 00095198  7F E3 FB 78 */	mr r3, r31
/* 80099C7C 0009519C  4B FF B6 61 */	bl OSRestoreInterrupts
.L_80099C80:
/* 80099C80 000951A0  4B FF B6 35 */	bl OSDisableInterrupts
/* 80099C84 000951A4  7C 7F 1B 78 */	mr r31, r3
/* 80099C88 000951A8  3C A0 80 1C */	lis r5, lbl_801C5360@ha
/* 80099C8C 000951AC  3C E0 80 1C */	lis r7, lbl_801C5380@ha
/* 80099C90 000951B0  3D 20 80 0A */	lis r9, __OSStateEventHandler@ha
/* 80099C94 000951B4  80 6D 8D 34 */	lwz r3, lbl_802471B4@sda21(r13)
/* 80099C98 000951B8  38 A5 53 60 */	addi r5, r5, lbl_801C5360@l
/* 80099C9C 000951BC  38 E7 53 80 */	addi r7, r7, lbl_801C5380@l
/* 80099CA0 000951C0  39 29 9B DC */	addi r9, r9, __OSStateEventHandler@l
/* 80099CA4 000951C4  38 80 10 00 */	li r4, 0x1000
/* 80099CA8 000951C8  38 C0 00 20 */	li r6, 0x20
/* 80099CAC 000951CC  39 00 00 20 */	li r8, 0x20
/* 80099CB0 000951D0  39 40 00 00 */	li r10, 0
/* 80099CB4 000951D4  48 02 62 71 */	bl IOS_IoCtlAsync
/* 80099CB8 000951D8  2C 03 00 00 */	cmpwi r3, 0
/* 80099CBC 000951DC  40 82 00 10 */	bne .L_80099CCC
/* 80099CC0 000951E0  38 00 00 01 */	li r0, 1
/* 80099CC4 000951E4  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
/* 80099CC8 000951E8  48 00 00 0C */	b .L_80099CD4
.L_80099CCC:
/* 80099CCC 000951EC  38 00 00 00 */	li r0, 0
/* 80099CD0 000951F0  90 0D 8D 38 */	stw r0, lbl_802471B8@sda21(r13)
.L_80099CD4:
/* 80099CD4 000951F4  7F E3 FB 78 */	mr r3, r31
/* 80099CD8 000951F8  4B FF B6 05 */	bl OSRestoreInterrupts
.L_80099CDC:
/* 80099CDC 000951FC  3C 60 80 1C */	lis r3, lbl_801C5380@ha
/* 80099CE0 00095200  80 03 53 80 */	lwz r0, lbl_801C5380@l(r3)
/* 80099CE4 00095204  28 00 08 00 */	cmplwi r0, 0x800
/* 80099CE8 00095208  40 82 00 2C */	bne .L_80099D14
/* 80099CEC 0009520C  4B FF B5 C9 */	bl OSDisableInterrupts
/* 80099CF0 00095210  3C 80 80 0A */	lis r4, __OSDefaultPowerCallback@ha
/* 80099CF4 00095214  81 8D 8D 40 */	lwz r12, lbl_802471C0@sda21(r13)
/* 80099CF8 00095218  38 84 9B D8 */	addi r4, r4, __OSDefaultPowerCallback@l
/* 80099CFC 0009521C  7C 7F 1B 78 */	mr r31, r3
/* 80099D00 00095220  90 8D 8D 40 */	stw r4, lbl_802471C0@sda21(r13)
/* 80099D04 00095224  7D 89 03 A6 */	mtctr r12
/* 80099D08 00095228  4E 80 04 21 */	bctrl
/* 80099D0C 0009522C  7F E3 FB 78 */	mr r3, r31
/* 80099D10 00095230  4B FF B5 CD */	bl OSRestoreInterrupts
.L_80099D14:
/* 80099D14 00095234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80099D18 00095238  38 60 00 00 */	li r3, 0
/* 80099D1C 0009523C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099D20 00095240  7C 08 03 A6 */	mtlr r0
/* 80099D24 00095244  38 21 00 10 */	addi r1, r1, 0x10
/* 80099D28 00095248  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_801C5360
	.skip 0x20

glabel lbl_801C5380
	.skip 0x20

glabel lbl_801C53A0
	.skip 0x20

glabel lbl_801C53C0
	.skip 0x20

glabel lbl_801C53E0
	.skip 0x20

glabel lbl_801C5400
	.skip 0x20

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_802471A8
	.skip 0x4

glabel lbl_802471AC
	.skip 0x4

glabel lbl_802471B0
	.skip 0x4

glabel lbl_802471B4
	.skip 0x4

glabel lbl_802471B8
	.skip 0x4

glabel lbl_802471BC
	.skip 0x4

glabel lbl_802471C0
	.skip 0x4

glabel lbl_802471C4
	.skip 0x4
