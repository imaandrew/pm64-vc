.include "macros.inc"

.section .text, "ax"

glabel DirectPrint_IsActive__Q26nw4hbm2dbFv
/* 801169A0 00111EC0  3C 80 80 23 */	lis r4, lbl_80228EBC@ha
/* 801169A4 00111EC4  38 60 00 00 */	li r3, 0
/* 801169A8 00111EC8  80 04 8E BC */	lwz r0, lbl_80228EBC@l(r4)
/* 801169AC 00111ECC  2C 00 00 00 */	cmpwi r0, 0
/* 801169B0 00111ED0  4D 82 00 20 */	beqlr 
/* 801169B4 00111ED4  3C 80 80 23 */	lis r4, lbl_80228E98@ha
/* 801169B8 00111ED8  80 04 8E 98 */	lwz r0, lbl_80228E98@l(r4)
/* 801169BC 00111EDC  2C 00 00 00 */	cmpwi r0, 0
/* 801169C0 00111EE0  4D 82 00 20 */	beqlr 
/* 801169C4 00111EE4  38 60 00 01 */	li r3, 1
/* 801169C8 00111EE8  4E 80 00 20 */	blr 

glabel DirectPrint_EraseXfb__Q26nw4hbm2dbFiiii
/* 801169CC 00111EEC  3C E0 80 23 */	lis r7, lbl_80228E98@ha
/* 801169D0 00111EF0  80 07 8E 98 */	lwz r0, lbl_80228E98@l(r7)
/* 801169D4 00111EF4  2C 00 00 00 */	cmpwi r0, 0
/* 801169D8 00111EF8  4D 82 00 20 */	beqlr 
/* 801169DC 00111EFC  39 07 8E 98 */	addi r8, r7, lbl_80228E98@l
/* 801169E0 00111F00  38 E0 01 90 */	li r7, 0x190
/* 801169E4 00111F04  A1 28 00 08 */	lhz r9, 8(r8)
/* 801169E8 00111F08  7C E7 48 10 */	subfc r7, r7, r9
/* 801169EC 00111F0C  7C E7 39 10 */	subfe r7, r7, r7
/* 801169F0 00111F10  38 E7 00 02 */	addi r7, r7, 2
/* 801169F4 00111F14  2C 07 00 02 */	cmpwi r7, 2
/* 801169F8 00111F18  40 82 00 0C */	bne lbl_80116A04
/* 801169FC 00111F1C  54 63 08 3C */	slwi r3, r3, 1
/* 80116A00 00111F20  54 A5 08 3C */	slwi r5, r5, 1
lbl_80116A04:
/* 80116A04 00111F24  7C E3 2A 14 */	add r7, r3, r5
/* 80116A08 00111F28  54 65 0F FE */	srwi r5, r3, 0x1f
/* 80116A0C 00111F2C  7C 07 48 00 */	cmpw r7, r9
/* 80116A10 00111F30  38 A5 FF FF */	addi r5, r5, -1
/* 80116A14 00111F34  7C 68 28 38 */	and r8, r3, r5
/* 80116A18 00111F38  41 81 00 08 */	bgt lbl_80116A20
/* 80116A1C 00111F3C  7C E9 3B 78 */	mr r9, r7
lbl_80116A20:
/* 80116A20 00111F40  3C E0 80 23 */	lis r7, lbl_80228E98@ha
/* 80116A24 00111F44  38 60 01 2C */	li r3, 0x12c
/* 80116A28 00111F48  38 E7 8E 98 */	addi r7, r7, lbl_80228E98@l
/* 80116A2C 00111F4C  7C A8 48 50 */	subf r5, r8, r9
/* 80116A30 00111F50  A1 67 00 0A */	lhz r11, 0xa(r7)
/* 80116A34 00111F54  7C 63 58 10 */	subfc r3, r3, r11
/* 80116A38 00111F58  7C 63 19 10 */	subfe r3, r3, r3
/* 80116A3C 00111F5C  38 63 00 02 */	addi r3, r3, 2
/* 80116A40 00111F60  2C 03 00 02 */	cmpwi r3, 2
/* 80116A44 00111F64  40 82 00 0C */	bne lbl_80116A50
/* 80116A48 00111F68  54 84 08 3C */	slwi r4, r4, 1
/* 80116A4C 00111F6C  54 C6 08 3C */	slwi r6, r6, 1
lbl_80116A50:
/* 80116A50 00111F70  7C C4 32 14 */	add r6, r4, r6
/* 80116A54 00111F74  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80116A58 00111F78  7C 06 58 00 */	cmpw r6, r11
/* 80116A5C 00111F7C  38 63 FF FF */	addi r3, r3, -1
/* 80116A60 00111F80  7C 8A 18 38 */	and r10, r4, r3
/* 80116A64 00111F84  41 81 00 08 */	bgt lbl_80116A6C
/* 80116A68 00111F88  7C CB 33 78 */	mr r11, r6
lbl_80116A6C:
/* 80116A6C 00111F8C  3D 20 80 23 */	lis r9, lbl_80228E98@ha
/* 80116A70 00111F90  7C CA 58 50 */	subf r6, r10, r11
/* 80116A74 00111F94  39 29 8E 98 */	addi r9, r9, lbl_80228E98@l
/* 80116A78 00111F98  55 07 08 3C */	slwi r7, r8, 1
/* 80116A7C 00111F9C  A0 89 00 0C */	lhz r4, 0xc(r9)
/* 80116A80 00111FA0  39 60 00 00 */	li r11, 0
/* 80116A84 00111FA4  38 60 10 80 */	li r3, 0x1080
/* 80116A88 00111FA8  7D 04 51 D6 */	mullw r8, r4, r10
/* 80116A8C 00111FAC  3C 80 80 00 */	lis r4, 0x8000
/* 80116A90 00111FB0  55 08 08 3C */	slwi r8, r8, 1
/* 80116A94 00111FB4  7C 00 42 14 */	add r0, r0, r8
/* 80116A98 00111FB8  7D 47 02 14 */	add r10, r7, r0
/* 80116A9C 00111FBC  48 00 00 B0 */	b lbl_80116B4C
lbl_80116AA0:
/* 80116AA0 00111FC0  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 80116AA4 00111FC4  39 80 00 00 */	li r12, 0
/* 80116AA8 00111FC8  40 85 00 90 */	ble cr1, lbl_80116B38
/* 80116AAC 00111FCC  2C 05 00 08 */	cmpwi r5, 8
/* 80116AB0 00111FD0  38 E5 FF F8 */	addi r7, r5, -8
/* 80116AB4 00111FD4  40 81 00 64 */	ble lbl_80116B18
/* 80116AB8 00111FD8  39 00 00 00 */	li r8, 0
/* 80116ABC 00111FDC  41 84 00 14 */	blt cr1, lbl_80116AD0
/* 80116AC0 00111FE0  38 04 FF FE */	addi r0, r4, -2
/* 80116AC4 00111FE4  7C 05 00 00 */	cmpw r5, r0
/* 80116AC8 00111FE8  41 81 00 08 */	bgt lbl_80116AD0
/* 80116ACC 00111FEC  39 00 00 01 */	li r8, 1
lbl_80116AD0:
/* 80116AD0 00111FF0  2C 08 00 00 */	cmpwi r8, 0
/* 80116AD4 00111FF4  41 82 00 44 */	beq lbl_80116B18
/* 80116AD8 00111FF8  38 07 00 07 */	addi r0, r7, 7
/* 80116ADC 00111FFC  54 00 E8 FE */	srwi r0, r0, 3
/* 80116AE0 00112000  7C 09 03 A6 */	mtctr r0
/* 80116AE4 00112004  2C 07 00 00 */	cmpwi r7, 0
/* 80116AE8 00112008  40 81 00 30 */	ble lbl_80116B18
lbl_80116AEC:
/* 80116AEC 0011200C  B0 6A 00 00 */	sth r3, 0(r10)
/* 80116AF0 00112010  39 8C 00 08 */	addi r12, r12, 8
/* 80116AF4 00112014  B0 6A 00 02 */	sth r3, 2(r10)
/* 80116AF8 00112018  B0 6A 00 04 */	sth r3, 4(r10)
/* 80116AFC 0011201C  B0 6A 00 06 */	sth r3, 6(r10)
/* 80116B00 00112020  B0 6A 00 08 */	sth r3, 8(r10)
/* 80116B04 00112024  B0 6A 00 0A */	sth r3, 0xa(r10)
/* 80116B08 00112028  B0 6A 00 0C */	sth r3, 0xc(r10)
/* 80116B0C 0011202C  B0 6A 00 0E */	sth r3, 0xe(r10)
/* 80116B10 00112030  39 4A 00 10 */	addi r10, r10, 0x10
/* 80116B14 00112034  42 00 FF D8 */	bdnz lbl_80116AEC
lbl_80116B18:
/* 80116B18 00112038  7C 0C 28 50 */	subf r0, r12, r5
/* 80116B1C 0011203C  7C 09 03 A6 */	mtctr r0
/* 80116B20 00112040  7C 0C 28 00 */	cmpw r12, r5
/* 80116B24 00112044  40 80 00 14 */	bge lbl_80116B38
lbl_80116B28:
/* 80116B28 00112048  B0 6A 00 00 */	sth r3, 0(r10)
/* 80116B2C 0011204C  39 4A 00 02 */	addi r10, r10, 2
/* 80116B30 00112050  39 8C 00 01 */	addi r12, r12, 1
/* 80116B34 00112054  42 00 FF F4 */	bdnz lbl_80116B28
lbl_80116B38:
/* 80116B38 00112058  A0 09 00 0C */	lhz r0, 0xc(r9)
/* 80116B3C 0011205C  39 6B 00 01 */	addi r11, r11, 1
/* 80116B40 00112060  7C 05 00 50 */	subf r0, r5, r0
/* 80116B44 00112064  54 00 08 3C */	slwi r0, r0, 1
/* 80116B48 00112068  7D 4A 02 14 */	add r10, r10, r0
lbl_80116B4C:
/* 80116B4C 0011206C  7C 0B 30 00 */	cmpw r11, r6
/* 80116B50 00112070  41 80 FF 50 */	blt lbl_80116AA0
/* 80116B54 00112074  4E 80 00 20 */	blr 

glabel DirectPrint_StoreCache__Q26nw4hbm2dbFv
/* 80116B58 00112078  3C 60 80 23 */	lis r3, lbl_80228E98@ha
/* 80116B5C 0011207C  38 83 8E 98 */	addi r4, r3, lbl_80228E98@l
/* 80116B60 00112080  80 63 8E 98 */	lwz r3, -0x7168(r3)
/* 80116B64 00112084  80 84 00 04 */	lwz r4, 4(r4)
/* 80116B68 00112088  4B F7 A1 34 */	b DCStoreRange

glabel DirectPrint_DrawString__Q26nw4hbm2dbFiibPCce
/* 80116B6C 0011208C  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 80116B70 00112090  7C 08 02 A6 */	mflr r0
/* 80116B74 00112094  90 01 01 94 */	stw r0, 0x194(r1)
/* 80116B78 00112098  93 E1 01 8C */	stw r31, 0x18c(r1)
/* 80116B7C 0011209C  7C DF 33 78 */	mr r31, r6
/* 80116B80 001120A0  93 C1 01 88 */	stw r30, 0x188(r1)
/* 80116B84 001120A4  7C BE 2B 78 */	mr r30, r5
/* 80116B88 001120A8  93 A1 01 84 */	stw r29, 0x184(r1)
/* 80116B8C 001120AC  7C 9D 23 78 */	mr r29, r4
/* 80116B90 001120B0  93 81 01 80 */	stw r28, 0x180(r1)
/* 80116B94 001120B4  7C 7C 1B 78 */	mr r28, r3
/* 80116B98 001120B8  40 86 00 24 */	bne cr1, lbl_80116BBC
/* 80116B9C 001120BC  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80116BA0 001120C0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80116BA4 001120C4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80116BA8 001120C8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80116BAC 001120CC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80116BB0 001120D0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80116BB4 001120D4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80116BB8 001120D8  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80116BBC:
/* 80116BBC 001120DC  3D 60 80 23 */	lis r11, lbl_80228E98@ha
/* 80116BC0 001120E0  90 61 00 08 */	stw r3, 8(r1)
/* 80116BC4 001120E4  80 0B 8E 98 */	lwz r0, lbl_80228E98@l(r11)
/* 80116BC8 001120E8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80116BCC 001120EC  2C 00 00 00 */	cmpwi r0, 0
/* 80116BD0 001120F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80116BD4 001120F4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80116BD8 001120F8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80116BDC 001120FC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80116BE0 00112100  91 21 00 20 */	stw r9, 0x20(r1)
/* 80116BE4 00112104  91 41 00 24 */	stw r10, 0x24(r1)
/* 80116BE8 00112108  41 82 00 70 */	beq lbl_80116C58
/* 80116BEC 0011210C  38 61 01 98 */	addi r3, r1, 0x198
/* 80116BF0 00112110  38 01 00 08 */	addi r0, r1, 8
/* 80116BF4 00112114  3C 80 04 00 */	lis r4, 0x400
/* 80116BF8 00112118  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80116BFC 0011211C  90 81 00 68 */	stw r4, 0x68(r1)
/* 80116C00 00112120  90 01 00 70 */	stw r0, 0x70(r1)
/* 80116C04 00112124  40 82 00 20 */	bne lbl_80116C24
/* 80116C08 00112128  3C 60 80 1A */	lis r3, lbl_801A1F58@ha
/* 80116C0C 0011212C  3C A0 80 1A */	lis r5, lbl_801A1F6C@ha
/* 80116C10 00112130  38 63 1F 58 */	addi r3, r3, lbl_801A1F58@l
/* 80116C14 00112134  38 80 02 87 */	li r4, 0x287
/* 80116C18 00112138  38 A5 1F 6C */	addi r5, r5, lbl_801A1F6C@l
/* 80116C1C 0011213C  4C C6 31 82 */	crclr 6
/* 80116C20 00112140  4B FF F1 A1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_80116C24:
/* 80116C24 00112144  7F E5 FB 78 */	mr r5, r31
/* 80116C28 00112148  38 61 00 78 */	addi r3, r1, 0x78
/* 80116C2C 0011214C  38 C1 00 68 */	addi r6, r1, 0x68
/* 80116C30 00112150  38 80 01 00 */	li r4, 0x100
/* 80116C34 00112154  48 04 DE A1 */	bl vsnprintf
/* 80116C38 00112158  2C 03 00 00 */	cmpwi r3, 0
/* 80116C3C 0011215C  40 81 00 1C */	ble lbl_80116C58
/* 80116C40 00112160  7F 83 E3 78 */	mr r3, r28
/* 80116C44 00112164  7F A4 EB 78 */	mr r4, r29
/* 80116C48 00112168  7F C6 F3 78 */	mr r6, r30
/* 80116C4C 0011216C  38 A1 00 78 */	addi r5, r1, 0x78
/* 80116C50 00112170  38 E0 00 00 */	li r7, 0
/* 80116C54 00112174  48 00 00 25 */	bl DrawStringToXfb___Q26nw4hbm2dbFiiPCcbb
lbl_80116C58:
/* 80116C58 00112178  80 01 01 94 */	lwz r0, 0x194(r1)
/* 80116C5C 0011217C  83 E1 01 8C */	lwz r31, 0x18c(r1)
/* 80116C60 00112180  83 C1 01 88 */	lwz r30, 0x188(r1)
/* 80116C64 00112184  83 A1 01 84 */	lwz r29, 0x184(r1)
/* 80116C68 00112188  83 81 01 80 */	lwz r28, 0x180(r1)
/* 80116C6C 0011218C  7C 08 03 A6 */	mtlr r0
/* 80116C70 00112190  38 21 01 90 */	addi r1, r1, 0x190
/* 80116C74 00112194  4E 80 00 20 */	blr 

glabel DrawStringToXfb___Q26nw4hbm2dbFiiPCcbb
/* 80116C78 00112198  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80116C7C 0011219C  7C 08 02 A6 */	mflr r0
/* 80116C80 001121A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80116C84 001121A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80116C88 001121A8  48 04 5C A1 */	bl _savegpr_20
/* 80116C8C 001121AC  3D 00 80 23 */	lis r8, lbl_80228E98@ha
/* 80116C90 001121B0  7C 77 1B 78 */	mr r23, r3
/* 80116C94 001121B4  39 08 8E 98 */	addi r8, r8, lbl_80228E98@l
/* 80116C98 001121B8  3C 60 2A AB */	lis r3, 0x2AAAAAAB@ha
/* 80116C9C 001121BC  A1 08 00 08 */	lhz r8, 8(r8)
/* 80116CA0 001121C0  38 00 01 90 */	li r0, 0x190
/* 80116CA4 001121C4  7C 98 23 78 */	mr r24, r4
/* 80116CA8 001121C8  7C B9 2B 78 */	mr r25, r5
/* 80116CAC 001121CC  7C 00 40 10 */	subfc r0, r0, r8
/* 80116CB0 001121D0  7C DA 33 78 */	mr r26, r6
/* 80116CB4 001121D4  7C 80 01 10 */	subfe r4, r0, r0
/* 80116CB8 001121D8  7C FB 3B 78 */	mr r27, r7
/* 80116CBC 001121DC  38 04 00 02 */	addi r0, r4, 2
/* 80116CC0 001121E0  7E FD BB 78 */	mr r29, r23
/* 80116CC4 001121E4  7F 88 03 D6 */	divw r28, r8, r0
/* 80116CC8 001121E8  3A C3 AA AB */	addi r22, r3, 0x2AAAAAAB@l
/* 80116CCC 001121EC  3F C0 80 1A */	lis r30, lbl_801A1F58@ha
/* 80116CD0 001121F0  3F E0 80 1A */	lis r31, lbl_801A1FAC@ha
/* 80116CD4 001121F4  48 00 00 F8 */	b lbl_80116DCC
lbl_80116CD8:
/* 80116CD8 001121F8  2C 1B 00 00 */	cmpwi r27, 0
/* 80116CDC 001121FC  41 82 00 74 */	beq lbl_80116D50
/* 80116CE0 00112200  2C 19 00 00 */	cmpwi r25, 0
/* 80116CE4 00112204  7F 35 CB 78 */	mr r21, r25
/* 80116CE8 00112208  3A 80 00 00 */	li r20, 0
/* 80116CEC 0011220C  40 82 00 18 */	bne lbl_80116D04
/* 80116CF0 00112210  38 7E 1F 58 */	addi r3, r30, lbl_801A1F58@l
/* 80116CF4 00112214  38 BF 1F AC */	addi r5, r31, lbl_801A1FAC@l
/* 80116CF8 00112218  38 80 01 32 */	li r4, 0x132
/* 80116CFC 0011221C  4C C6 31 82 */	crclr 6
/* 80116D00 00112220  4B FF F0 C1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_80116D04:
/* 80116D04 00112224  88 15 00 00 */	lbz r0, 0(r21)
/* 80116D08 00112228  3A B5 00 01 */	addi r21, r21, 1
/* 80116D0C 0011222C  7C 00 07 75 */	extsb. r0, r0
/* 80116D10 00112230  41 82 00 28 */	beq lbl_80116D38
/* 80116D14 00112234  2C 00 00 0A */	cmpwi r0, 0xa
/* 80116D18 00112238  41 82 00 20 */	beq lbl_80116D38
/* 80116D1C 0011223C  2C 00 00 09 */	cmpwi r0, 9
/* 80116D20 00112240  40 82 00 10 */	bne lbl_80116D30
/* 80116D24 00112244  38 14 00 04 */	addi r0, r20, 4
/* 80116D28 00112248  54 14 00 3A */	rlwinm r20, r0, 0, 0, 0x1d
/* 80116D2C 0011224C  4B FF FF D8 */	b lbl_80116D04
lbl_80116D30:
/* 80116D30 00112250  3A 94 00 01 */	addi r20, r20, 1
/* 80116D34 00112254  4B FF FF D0 */	b lbl_80116D04
lbl_80116D38:
/* 80116D38 00112258  38 14 00 02 */	addi r0, r20, 2
/* 80116D3C 0011225C  38 77 FF FA */	addi r3, r23, -6
/* 80116D40 00112260  1C A0 00 06 */	mulli r5, r0, 6
/* 80116D44 00112264  38 98 FF FD */	addi r4, r24, -3
/* 80116D48 00112268  38 C0 00 0D */	li r6, 0xd
/* 80116D4C 0011226C  4B FF FC 81 */	bl DirectPrint_EraseXfb__Q26nw4hbm2dbFiiii
lbl_80116D50:
/* 80116D50 00112270  7C 17 E0 50 */	subf r0, r23, r28
/* 80116D54 00112274  7E E3 BB 78 */	mr r3, r23
/* 80116D58 00112278  7C D6 00 96 */	mulhw r6, r22, r0
/* 80116D5C 0011227C  7F 04 C3 78 */	mr r4, r24
/* 80116D60 00112280  7F 25 CB 78 */	mr r5, r25
/* 80116D64 00112284  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 80116D68 00112288  7C C6 02 14 */	add r6, r6, r0
/* 80116D6C 0011228C  48 00 00 85 */	bl DrawStringLineToXfb___Q26nw4hbm2dbFiiPCci
/* 80116D70 00112290  88 03 00 00 */	lbz r0, 0(r3)
/* 80116D74 00112294  7C 79 1B 78 */	mr r25, r3
/* 80116D78 00112298  3B 18 00 0A */	addi r24, r24, 0xa
/* 80116D7C 0011229C  7C 00 07 74 */	extsb r0, r0
/* 80116D80 001122A0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80116D84 001122A4  40 82 00 10 */	bne lbl_80116D94
/* 80116D88 001122A8  7F B7 EB 78 */	mr r23, r29
/* 80116D8C 001122AC  3B 23 00 01 */	addi r25, r3, 1
/* 80116D90 001122B0  48 00 00 3C */	b lbl_80116DCC
lbl_80116D94:
/* 80116D94 001122B4  2C 00 00 00 */	cmpwi r0, 0
/* 80116D98 001122B8  41 82 00 34 */	beq lbl_80116DCC
/* 80116D9C 001122BC  2C 1A 00 00 */	cmpwi r26, 0
/* 80116DA0 001122C0  3B 23 00 01 */	addi r25, r3, 1
/* 80116DA4 001122C4  40 82 00 24 */	bne lbl_80116DC8
/* 80116DA8 001122C8  7F 23 CB 78 */	mr r3, r25
/* 80116DAC 001122CC  38 80 00 0A */	li r4, 0xa
/* 80116DB0 001122D0  48 04 FA 5D */	bl strchr
/* 80116DB4 001122D4  2C 03 00 00 */	cmpwi r3, 0
/* 80116DB8 001122D8  41 82 00 20 */	beq lbl_80116DD8
/* 80116DBC 001122DC  7F B7 EB 78 */	mr r23, r29
/* 80116DC0 001122E0  3B 23 00 01 */	addi r25, r3, 1
/* 80116DC4 001122E4  48 00 00 08 */	b lbl_80116DCC
lbl_80116DC8:
/* 80116DC8 001122E8  3A E0 00 00 */	li r23, 0
lbl_80116DCC:
/* 80116DCC 001122EC  88 19 00 00 */	lbz r0, 0(r25)
/* 80116DD0 001122F0  7C 00 07 75 */	extsb. r0, r0
/* 80116DD4 001122F4  40 82 FF 04 */	bne lbl_80116CD8
lbl_80116DD8:
/* 80116DD8 001122F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80116DDC 001122FC  48 04 5B 99 */	bl _restgpr_20
/* 80116DE0 00112300  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80116DE4 00112304  7C 08 03 A6 */	mtlr r0
/* 80116DE8 00112308  38 21 00 40 */	addi r1, r1, 0x40
/* 80116DEC 0011230C  4E 80 00 20 */	blr 

glabel DrawStringLineToXfb___Q26nw4hbm2dbFiiPCci
/* 80116DF0 00112310  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80116DF4 00112314  7C 08 02 A6 */	mflr r0
/* 80116DF8 00112318  90 01 00 24 */	stw r0, 0x24(r1)
/* 80116DFC 0011231C  39 61 00 20 */	addi r11, r1, 0x20
/* 80116E00 00112320  48 04 5B 41 */	bl _savegpr_26
/* 80116E04 00112324  2C 05 00 00 */	cmpwi r5, 0
/* 80116E08 00112328  3F E0 80 1A */	lis r31, lbl_801A1F58@ha
/* 80116E0C 0011232C  7C 7A 1B 78 */	mr r26, r3
/* 80116E10 00112330  7C 9B 23 78 */	mr r27, r4
/* 80116E14 00112334  7C BC 2B 78 */	mr r28, r5
/* 80116E18 00112338  7C DD 33 78 */	mr r29, r6
/* 80116E1C 0011233C  3B FF 1F 58 */	addi r31, r31, lbl_801A1F58@l
/* 80116E20 00112340  3B C0 00 00 */	li r30, 0
/* 80116E24 00112344  40 82 00 18 */	bne lbl_80116E3C
/* 80116E28 00112348  38 7F 00 00 */	addi r3, r31, 0
/* 80116E2C 0011234C  38 BF 00 54 */	addi r5, r31, 0x54
/* 80116E30 00112350  38 80 02 E9 */	li r4, 0x2e9
/* 80116E34 00112354  4C C6 31 82 */	crclr 6
/* 80116E38 00112358  4B FF EF 89 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_80116E3C:
/* 80116E3C 0011235C  2C 1D 00 00 */	cmpwi r29, 0
/* 80116E40 00112360  41 81 00 18 */	bgt lbl_80116E58
/* 80116E44 00112364  38 7F 00 00 */	addi r3, r31, 0
/* 80116E48 00112368  38 BF 00 7C */	addi r5, r31, 0x7c
/* 80116E4C 0011236C  38 80 02 EA */	li r4, 0x2ea
/* 80116E50 00112370  4C C6 31 82 */	crclr 6
/* 80116E54 00112374  4B FF EF 6D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_80116E58:
/* 80116E58 00112378  3F E0 80 17 */	lis r31, lbl_80176210@ha
/* 80116E5C 0011237C  3B FF 62 10 */	addi r31, r31, lbl_80176210@l
/* 80116E60 00112380  48 00 00 84 */	b lbl_80116EE4
lbl_80116E64:
/* 80116E64 00112384  2C 00 00 0A */	cmpwi r0, 0xa
/* 80116E68 00112388  41 82 00 0C */	beq lbl_80116E74
/* 80116E6C 0011238C  2C 00 00 00 */	cmpwi r0, 0
/* 80116E70 00112390  40 82 00 0C */	bne lbl_80116E7C
lbl_80116E74:
/* 80116E74 00112394  7F 83 E3 78 */	mr r3, r28
/* 80116E78 00112398  48 00 00 7C */	b lbl_80116EF4
lbl_80116E7C:
/* 80116E7C 0011239C  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 80116E80 001123A0  7C BF 00 AE */	lbzx r5, r31, r0
/* 80116E84 001123A4  2C 05 00 FD */	cmpwi r5, 0xfd
/* 80116E88 001123A8  40 82 00 1C */	bne lbl_80116EA4
/* 80116E8C 001123AC  57 C0 07 BE */	clrlwi r0, r30, 0x1e
/* 80116E90 001123B0  20 60 00 04 */	subfic r3, r0, 4
/* 80116E94 001123B4  1C 03 00 06 */	mulli r0, r3, 6
/* 80116E98 001123B8  7F DE 1A 14 */	add r30, r30, r3
/* 80116E9C 001123BC  7F 5A 02 14 */	add r26, r26, r0
/* 80116EA0 001123C0  48 00 00 20 */	b lbl_80116EC0
lbl_80116EA4:
/* 80116EA4 001123C4  2C 05 00 FF */	cmpwi r5, 0xff
/* 80116EA8 001123C8  41 82 00 10 */	beq lbl_80116EB8
/* 80116EAC 001123CC  7F 43 D3 78 */	mr r3, r26
/* 80116EB0 001123D0  7F 64 DB 78 */	mr r4, r27
/* 80116EB4 001123D4  48 00 00 59 */	bl DrawCharToXfb___Q26nw4hbm2dbFiii
lbl_80116EB8:
/* 80116EB8 001123D8  3B 5A 00 06 */	addi r26, r26, 6
/* 80116EBC 001123DC  3B DE 00 01 */	addi r30, r30, 1
lbl_80116EC0:
/* 80116EC0 001123E0  7C 1E E8 00 */	cmpw r30, r29
/* 80116EC4 001123E4  41 80 00 1C */	blt lbl_80116EE0
/* 80116EC8 001123E8  88 1C 00 01 */	lbz r0, 1(r28)
/* 80116ECC 001123EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80116ED0 001123F0  40 82 00 08 */	bne lbl_80116ED8
/* 80116ED4 001123F4  3B 9C 00 01 */	addi r28, r28, 1
lbl_80116ED8:
/* 80116ED8 001123F8  7F 83 E3 78 */	mr r3, r28
/* 80116EDC 001123FC  48 00 00 18 */	b lbl_80116EF4
lbl_80116EE0:
/* 80116EE0 00112400  3B 9C 00 01 */	addi r28, r28, 1
lbl_80116EE4:
/* 80116EE4 00112404  88 1C 00 00 */	lbz r0, 0(r28)
/* 80116EE8 00112408  7C 00 07 75 */	extsb. r0, r0
/* 80116EEC 0011240C  40 82 FF 78 */	bne lbl_80116E64
/* 80116EF0 00112410  7F 83 E3 78 */	mr r3, r28
lbl_80116EF4:
/* 80116EF4 00112414  39 61 00 20 */	addi r11, r1, 0x20
/* 80116EF8 00112418  48 04 5A 95 */	bl _restgpr_26
/* 80116EFC 0011241C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80116F00 00112420  7C 08 03 A6 */	mtlr r0
/* 80116F04 00112424  38 21 00 20 */	addi r1, r1, 0x20
/* 80116F08 00112428  4E 80 00 20 */	blr 

glabel DrawCharToXfb___Q26nw4hbm2dbFiii
/* 80116F0C 0011242C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80116F10 00112430  7C 08 02 A6 */	mflr r0
/* 80116F14 00112434  90 01 00 24 */	stw r0, 0x24(r1)
/* 80116F18 00112438  39 61 00 20 */	addi r11, r1, 0x20
/* 80116F1C 0011243C  48 04 5A 25 */	bl _savegpr_26
/* 80116F20 00112440  2C 05 00 64 */	cmpwi r5, 0x64
/* 80116F24 00112444  7C A8 2B 78 */	mr r8, r5
/* 80116F28 00112448  41 80 00 08 */	blt lbl_80116F30
/* 80116F2C 0011244C  39 05 FF 9C */	addi r8, r5, -100
lbl_80116F30:
/* 80116F30 00112450  3C E0 66 66 */	lis r7, 0x66666667@ha
/* 80116F34 00112454  3C C0 80 17 */	lis r6, lbl_80176390@ha
/* 80116F38 00112458  38 07 66 67 */	addi r0, r7, 0x66666667@l
/* 80116F3C 0011245C  2C 05 00 64 */	cmpwi r5, 0x64
/* 80116F40 00112460  7C 00 40 96 */	mulhw r0, r0, r8
/* 80116F44 00112464  38 C6 63 90 */	addi r6, r6, lbl_80176390@l
/* 80116F48 00112468  7C 05 0E 70 */	srawi r5, r0, 1
/* 80116F4C 0011246C  54 A7 0F FE */	srwi r7, r5, 0x1f
/* 80116F50 00112470  7C 00 0E 70 */	srawi r0, r0, 1
/* 80116F54 00112474  7C A5 3A 14 */	add r5, r5, r7
/* 80116F58 00112478  1C E5 00 05 */	mulli r7, r5, 5
/* 80116F5C 0011247C  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80116F60 00112480  7C A0 2A 14 */	add r5, r0, r5
/* 80116F64 00112484  7C E7 40 50 */	subf r7, r7, r8
/* 80116F68 00112488  54 A0 18 38 */	slwi r0, r5, 3
/* 80116F6C 0011248C  7C 05 00 50 */	subf r0, r5, r0
/* 80116F70 00112490  54 00 10 3A */	slwi r0, r0, 2
/* 80116F74 00112494  1D 27 00 06 */	mulli r9, r7, 6
/* 80116F78 00112498  7D 46 02 14 */	add r10, r6, r0
/* 80116F7C 0011249C  40 80 00 10 */	bge lbl_80116F8C
/* 80116F80 001124A0  3C A0 80 17 */	lis r5, lbl_80176290@ha
/* 80116F84 001124A4  38 A5 62 90 */	addi r5, r5, lbl_80176290@l
/* 80116F88 001124A8  7D 45 02 14 */	add r10, r5, r0
lbl_80116F8C:
/* 80116F8C 001124AC  3D 80 80 23 */	lis r12, lbl_80228E98@ha
/* 80116F90 001124B0  38 C0 01 90 */	li r6, 0x190
/* 80116F94 001124B4  38 AC 8E 98 */	addi r5, r12, lbl_80228E98@l
/* 80116F98 001124B8  38 00 01 2C */	li r0, 0x12c
/* 80116F9C 001124BC  A3 85 00 08 */	lhz r28, 8(r5)
/* 80116FA0 001124C0  2C 04 00 00 */	cmpwi r4, 0
/* 80116FA4 001124C4  A0 E5 00 0A */	lhz r7, 0xa(r5)
/* 80116FA8 001124C8  7C C6 E0 10 */	subfc r6, r6, r28
/* 80116FAC 001124CC  A1 05 00 0C */	lhz r8, 0xc(r5)
/* 80116FB0 001124D0  7D 66 31 10 */	subfe r11, r6, r6
/* 80116FB4 001124D4  81 8C 8E 98 */	lwz r12, -0x7168(r12)
/* 80116FB8 001124D8  7C 00 38 10 */	subfc r0, r0, r7
/* 80116FBC 001124DC  7C C0 01 10 */	subfe r6, r0, r0
/* 80116FC0 001124E0  38 C6 00 02 */	addi r6, r6, 2
/* 80116FC4 001124E4  38 0B 00 02 */	addi r0, r11, 2
/* 80116FC8 001124E8  7D 66 21 D6 */	mullw r11, r6, r4
/* 80116FCC 001124EC  7D 0B 41 D6 */	mullw r8, r11, r8
/* 80116FD0 001124F0  7D 63 01 D6 */	mullw r11, r3, r0
/* 80116FD4 001124F4  55 08 08 3C */	slwi r8, r8, 1
/* 80116FD8 001124F8  7D 0C 42 14 */	add r8, r12, r8
/* 80116FDC 001124FC  55 6B 08 3C */	slwi r11, r11, 1
/* 80116FE0 00112500  7D 6B 42 14 */	add r11, r11, r8
/* 80116FE4 00112504  41 80 01 C8 */	blt lbl_801171AC
/* 80116FE8 00112508  2C 03 00 00 */	cmpwi r3, 0
/* 80116FEC 0011250C  40 80 00 08 */	bge lbl_80116FF4
/* 80116FF0 00112510  48 00 01 BC */	b lbl_801171AC
lbl_80116FF4:
/* 80116FF4 00112514  38 63 00 06 */	addi r3, r3, 6
/* 80116FF8 00112518  7C 60 19 D6 */	mullw r3, r0, r3
/* 80116FFC 0011251C  7C 1C 18 00 */	cmpw r28, r3
/* 80117000 00112520  40 81 01 AC */	ble lbl_801171AC
/* 80117004 00112524  38 64 00 07 */	addi r3, r4, 7
/* 80117008 00112528  7C 66 19 D6 */	mullw r3, r6, r3
/* 8011700C 0011252C  7C 07 18 00 */	cmpw r7, r3
/* 80117010 00112530  41 81 00 08 */	bgt lbl_80117018
/* 80117014 00112534  48 00 01 98 */	b lbl_801171AC
lbl_80117018:
/* 80117018 00112538  1C E0 00 06 */	mulli r7, r0, 6
/* 8011701C 0011253C  3C 60 80 23 */	lis r3, lbl_80228EA8@ha
/* 80117020 00112540  3C 80 80 1A */	lis r4, lbl_801A1FF8@ha
/* 80117024 00112544  38 63 8E A8 */	addi r3, r3, lbl_80228EA8@l
/* 80117028 00112548  38 84 1F F8 */	addi r4, r4, lbl_801A1FF8@l
/* 8011702C 0011254C  39 80 00 00 */	li r12, 0
lbl_80117030:
/* 80117030 00112550  81 0A 00 00 */	lwz r8, 0(r10)
/* 80117034 00112554  2C 00 00 01 */	cmpwi r0, 1
/* 80117038 00112558  39 4A 00 04 */	addi r10, r10, 4
/* 8011703C 0011255C  7D 1A 48 30 */	slw r26, r8, r9
/* 80117040 00112560  40 82 00 0C */	bne lbl_8011704C
/* 80117044 00112564  57 48 F8 4C */	rlwinm r8, r26, 0x1f, 1, 6
/* 80117048 00112568  48 00 00 30 */	b lbl_80117078
lbl_8011704C:
/* 8011704C 0011256C  57 48 37 3A */	rlwinm r8, r26, 6, 0x1c, 0x1d
/* 80117050 00112570  57 5F 27 3A */	rlwinm r31, r26, 4, 0x1c, 0x1d
/* 80117054 00112574  57 5E 47 3A */	rlwinm r30, r26, 8, 0x1c, 0x1d
/* 80117058 00112578  7D 04 40 2E */	lwzx r8, r4, r8
/* 8011705C 0011257C  7F E4 F8 2E */	lwzx r31, r4, r31
/* 80117060 00112580  7F C4 F0 2E */	lwzx r30, r4, r30
/* 80117064 00112584  55 08 20 36 */	slwi r8, r8, 4
/* 80117068 00112588  57 FF 40 2E */	slwi r31, r31, 8
/* 8011706C 0011258C  7F C8 43 78 */	or r8, r30, r8
/* 80117070 00112590  7F E8 43 78 */	or r8, r31, r8
/* 80117074 00112594  55 08 98 18 */	slwi r8, r8, 0x13
lbl_80117078:
/* 80117078 00112598  3B E7 00 01 */	addi r31, r7, 1
/* 8011707C 0011259C  57 FF F8 7E */	srwi r31, r31, 1
/* 80117080 001125A0  7F E9 03 A6 */	mtctr r31
/* 80117084 001125A4  2C 07 00 00 */	cmpwi r7, 0
/* 80117088 001125A8  40 81 01 04 */	ble lbl_8011718C
lbl_8011708C:
/* 8011708C 001125AC  55 1B 00 43 */	rlwinm. r27, r8, 0, 1, 1
/* 80117090 001125B0  41 82 00 0C */	beq lbl_8011709C
/* 80117094 001125B4  A3 A3 00 08 */	lhz r29, 8(r3)
/* 80117098 001125B8  48 00 00 08 */	b lbl_801170A0
lbl_8011709C:
/* 8011709C 001125BC  3B A0 00 40 */	li r29, 0x40
lbl_801170A0:
/* 801170A0 001125C0  55 1E 00 01 */	rlwinm. r30, r8, 0, 0, 0
/* 801170A4 001125C4  41 82 00 0C */	beq lbl_801170B0
/* 801170A8 001125C8  A3 C3 00 0A */	lhz r30, 0xa(r3)
/* 801170AC 001125CC  48 00 00 08 */	b lbl_801170B4
lbl_801170B0:
/* 801170B0 001125D0  3B C0 00 20 */	li r30, 0x20
lbl_801170B4:
/* 801170B4 001125D4  55 1A 00 85 */	rlwinm. r26, r8, 0, 2, 2
/* 801170B8 001125D8  41 82 00 0C */	beq lbl_801170C4
/* 801170BC 001125DC  A3 83 00 0A */	lhz r28, 0xa(r3)
/* 801170C0 001125E0  48 00 00 08 */	b lbl_801170C8
lbl_801170C4:
/* 801170C4 001125E4  3B 80 00 20 */	li r28, 0x20
lbl_801170C8:
/* 801170C8 001125E8  2C 1B 00 00 */	cmpwi r27, 0
/* 801170CC 001125EC  41 82 00 0C */	beq lbl_801170D8
/* 801170D0 001125F0  A3 E3 00 04 */	lhz r31, 4(r3)
/* 801170D4 001125F4  48 00 00 08 */	b lbl_801170DC
lbl_801170D8:
/* 801170D8 001125F8  3B E0 00 00 */	li r31, 0
lbl_801170DC:
/* 801170DC 001125FC  7F DC F2 14 */	add r30, r28, r30
/* 801170E0 00112600  2C 06 00 01 */	cmpwi r6, 1
/* 801170E4 00112604  7F DD F2 14 */	add r30, r29, r30
/* 801170E8 00112608  7F FE F3 78 */	or r30, r31, r30
/* 801170EC 0011260C  B3 CB 00 00 */	sth r30, 0(r11)
/* 801170F0 00112610  57 DC 04 3E */	clrlwi r28, r30, 0x10
/* 801170F4 00112614  40 81 00 10 */	ble lbl_80117104
/* 801170F8 00112618  A3 C5 00 0C */	lhz r30, 0xc(r5)
/* 801170FC 0011261C  57 DE 08 3C */	slwi r30, r30, 1
/* 80117100 00112620  7F 8B F3 2E */	sthx r28, r11, r30
lbl_80117104:
/* 80117104 00112624  2C 1A 00 00 */	cmpwi r26, 0
/* 80117108 00112628  41 82 00 0C */	beq lbl_80117114
/* 8011710C 0011262C  A3 83 00 0E */	lhz r28, 0xe(r3)
/* 80117110 00112630  48 00 00 08 */	b lbl_80117118
lbl_80117114:
/* 80117114 00112634  3B 80 00 40 */	li r28, 0x40
lbl_80117118:
/* 80117118 00112638  2C 1B 00 00 */	cmpwi r27, 0
/* 8011711C 0011263C  41 82 00 0C */	beq lbl_80117128
/* 80117120 00112640  A3 A3 00 10 */	lhz r29, 0x10(r3)
/* 80117124 00112644  48 00 00 08 */	b lbl_8011712C
lbl_80117128:
/* 80117128 00112648  3B A0 00 20 */	li r29, 0x20
lbl_8011712C:
/* 8011712C 0011264C  55 1E 00 C7 */	rlwinm. r30, r8, 0, 3, 3
/* 80117130 00112650  41 82 00 0C */	beq lbl_8011713C
/* 80117134 00112654  A3 E3 00 10 */	lhz r31, 0x10(r3)
/* 80117138 00112658  48 00 00 08 */	b lbl_80117140
lbl_8011713C:
/* 8011713C 0011265C  3B E0 00 20 */	li r31, 0x20
lbl_80117140:
/* 80117140 00112660  2C 1A 00 00 */	cmpwi r26, 0
/* 80117144 00112664  41 82 00 0C */	beq lbl_80117150
/* 80117148 00112668  A3 C3 00 04 */	lhz r30, 4(r3)
/* 8011714C 0011266C  48 00 00 08 */	b lbl_80117154
lbl_80117150:
/* 80117150 00112670  3B C0 00 00 */	li r30, 0
lbl_80117154:
/* 80117154 00112674  7F FF EA 14 */	add r31, r31, r29
/* 80117158 00112678  2C 06 00 01 */	cmpwi r6, 1
/* 8011715C 0011267C  7F FC FA 14 */	add r31, r28, r31
/* 80117160 00112680  7F DF FB 78 */	or r31, r30, r31
/* 80117164 00112684  B3 EB 00 02 */	sth r31, 2(r11)
/* 80117168 00112688  57 FA 04 3E */	clrlwi r26, r31, 0x10
/* 8011716C 0011268C  40 81 00 14 */	ble lbl_80117180
/* 80117170 00112690  A3 E5 00 0C */	lhz r31, 0xc(r5)
/* 80117174 00112694  57 FF 08 3C */	slwi r31, r31, 1
/* 80117178 00112698  7F EB FA 14 */	add r31, r11, r31
/* 8011717C 0011269C  B3 5F 00 02 */	sth r26, 2(r31)
lbl_80117180:
/* 80117180 001126A0  55 08 10 3A */	slwi r8, r8, 2
/* 80117184 001126A4  39 6B 00 04 */	addi r11, r11, 4
/* 80117188 001126A8  42 00 FF 04 */	bdnz lbl_8011708C
lbl_8011718C:
/* 8011718C 001126AC  A1 05 00 0C */	lhz r8, 0xc(r5)
/* 80117190 001126B0  39 8C 00 01 */	addi r12, r12, 1
/* 80117194 001126B4  2C 0C 00 07 */	cmpwi r12, 7
/* 80117198 001126B8  7D 08 31 D6 */	mullw r8, r8, r6
/* 8011719C 001126BC  7D 07 40 50 */	subf r8, r7, r8
/* 801171A0 001126C0  55 08 08 3C */	slwi r8, r8, 1
/* 801171A4 001126C4  7D 6B 42 14 */	add r11, r11, r8
/* 801171A8 001126C8  41 80 FE 88 */	blt lbl_80117030
lbl_801171AC:
/* 801171AC 001126CC  39 61 00 20 */	addi r11, r1, 0x20
/* 801171B0 001126D0  48 04 57 DD */	bl _restgpr_26
/* 801171B4 001126D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801171B8 001126D8  7C 08 03 A6 */	mtlr r0
/* 801171BC 001126DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801171C0 001126E0  4E 80 00 20 */	blr 

glabel DirectPrint_SetupFB__Q36nw4hbm2db6detailFPC16_GXRenderModeObj
/* 801171C4 001126E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801171C8 001126E8  7C 08 02 A6 */	mflr r0
/* 801171CC 001126EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801171D0 001126F0  39 61 00 20 */	addi r11, r1, 0x20
/* 801171D4 001126F4  48 04 57 71 */	bl _savegpr_27
/* 801171D8 001126F8  3F E0 80 23 */	lis r31, lbl_80228E98@ha
/* 801171DC 001126FC  7C 7E 1B 78 */	mr r30, r3
/* 801171E0 00112700  3B FF 8E 98 */	addi r31, r31, lbl_80228E98@l
/* 801171E4 00112704  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801171E8 00112708  2C 00 00 00 */	cmpwi r0, 0
/* 801171EC 0011270C  40 82 00 80 */	bne lbl_8011726C
/* 801171F0 00112710  39 80 02 80 */	li r12, 0x280
/* 801171F4 00112714  39 40 01 E0 */	li r10, 0x1e0
/* 801171F8 00112718  7C 0C 51 D6 */	mullw r0, r12, r10
/* 801171FC 0011271C  39 7F 00 00 */	addi r11, r31, 0
/* 80117200 00112720  3C C0 00 01 */	lis r6, 0x0000EB00@ha
/* 80117204 00112724  B1 8B 00 08 */	sth r12, 8(r11)
/* 80117208 00112728  3B A0 00 00 */	li r29, 0
/* 8011720C 0011272C  39 00 00 FF */	li r8, 0xff
/* 80117210 00112730  38 FF 00 10 */	addi r7, r31, 0x10
/* 80117214 00112734  38 A0 00 7F */	li r5, 0x7f
/* 80117218 00112738  38 80 00 3F */	li r4, 0x3f
/* 8011721C 0011273C  38 60 00 1F */	li r3, 0x1f
/* 80117220 00112740  54 09 08 3C */	slwi r9, r0, 1
/* 80117224 00112744  38 C6 EB 00 */	addi r6, r6, 0x0000EB00@l
/* 80117228 00112748  38 00 00 01 */	li r0, 1
/* 8011722C 0011274C  93 BF 00 00 */	stw r29, 0(r31)
/* 80117230 00112750  B1 4B 00 0A */	sth r10, 0xa(r11)
/* 80117234 00112754  B1 8B 00 0C */	sth r12, 0xc(r11)
/* 80117238 00112758  91 2B 00 04 */	stw r9, 4(r11)
/* 8011723C 0011275C  99 1F 00 10 */	stb r8, 0x10(r31)
/* 80117240 00112760  99 07 00 01 */	stb r8, 1(r7)
/* 80117244 00112764  99 07 00 02 */	stb r8, 2(r7)
/* 80117248 00112768  99 07 00 03 */	stb r8, 3(r7)
/* 8011724C 0011276C  B0 C7 00 04 */	sth r6, 4(r7)
/* 80117250 00112770  B0 A7 00 06 */	sth r5, 6(r7)
/* 80117254 00112774  B0 87 00 08 */	sth r4, 8(r7)
/* 80117258 00112778  B0 67 00 0A */	sth r3, 0xa(r7)
/* 8011725C 0011277C  B0 A7 00 0C */	sth r5, 0xc(r7)
/* 80117260 00112780  B0 87 00 0E */	sth r4, 0xe(r7)
/* 80117264 00112784  B0 67 00 10 */	sth r3, 0x10(r7)
/* 80117268 00112788  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_8011726C:
/* 8011726C 0011278C  4B F8 95 65 */	bl VIGetNextFrameBuffer
/* 80117270 00112790  2C 03 00 00 */	cmpwi r3, 0
/* 80117274 00112794  7C 7B 1B 78 */	mr r27, r3
/* 80117278 00112798  40 82 00 98 */	bne lbl_80117310
/* 8011727C 0011279C  2C 1E 00 00 */	cmpwi r30, 0
/* 80117280 001127A0  40 82 00 5C */	bne lbl_801172DC
/* 80117284 001127A4  4B F8 97 01 */	bl VIGetTvFormat
/* 80117288 001127A8  2C 03 00 02 */	cmpwi r3, 2
/* 8011728C 001127AC  41 82 00 48 */	beq lbl_801172D4
/* 80117290 001127B0  40 80 00 14 */	bge lbl_801172A4
/* 80117294 001127B4  2C 03 00 00 */	cmpwi r3, 0
/* 80117298 001127B8  41 82 00 18 */	beq lbl_801172B0
/* 8011729C 001127BC  40 80 00 20 */	bge lbl_801172BC
/* 801172A0 001127C0  48 00 00 3C */	b lbl_801172DC
lbl_801172A4:
/* 801172A4 001127C4  2C 03 00 05 */	cmpwi r3, 5
/* 801172A8 001127C8  41 82 00 20 */	beq lbl_801172C8
/* 801172AC 001127CC  48 00 00 30 */	b lbl_801172DC
lbl_801172B0:
/* 801172B0 001127D0  3F C0 80 19 */	lis r30, lbl_80191230@ha
/* 801172B4 001127D4  3B DE 12 30 */	addi r30, r30, lbl_80191230@l
/* 801172B8 001127D8  48 00 00 24 */	b lbl_801172DC
lbl_801172BC:
/* 801172BC 001127DC  3F C0 80 19 */	lis r30, lbl_801912E4@ha
/* 801172C0 001127E0  3B DE 12 E4 */	addi r30, r30, lbl_801912E4@l
/* 801172C4 001127E4  48 00 00 18 */	b lbl_801172DC
lbl_801172C8:
/* 801172C8 001127E8  3F C0 80 19 */	lis r30, lbl_80191320@ha
/* 801172CC 001127EC  3B DE 13 20 */	addi r30, r30, lbl_80191320@l
/* 801172D0 001127F0  48 00 00 0C */	b lbl_801172DC
lbl_801172D4:
/* 801172D4 001127F4  3F C0 80 19 */	lis r30, lbl_801912A8@ha
/* 801172D8 001127F8  3B DE 12 A8 */	addi r30, r30, lbl_801912A8@l
lbl_801172DC:
/* 801172DC 001127FC  4B F7 94 19 */	bl OSGetArenaHi
/* 801172E0 00112800  A0 9E 00 04 */	lhz r4, 4(r30)
/* 801172E4 00112804  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801172E8 00112808  38 84 00 0F */	addi r4, r4, 0xf
/* 801172EC 0011280C  54 84 04 36 */	rlwinm r4, r4, 0, 0x10, 0x1b
/* 801172F0 00112810  7C 04 01 D6 */	mullw r0, r4, r0
/* 801172F4 00112814  54 00 08 3C */	slwi r0, r0, 1
/* 801172F8 00112818  7C 00 18 50 */	subf r0, r0, r3
/* 801172FC 0011281C  7F C3 F3 78 */	mr r3, r30
/* 80117300 00112820  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 80117304 00112824  4B F8 88 65 */	bl VIConfigure
/* 80117308 00112828  7F 63 DB 78 */	mr r3, r27
/* 8011730C 0011282C  4B F8 94 59 */	bl VISetNextFrameBuffer
lbl_80117310:
/* 80117310 00112830  38 60 00 00 */	li r3, 0
/* 80117314 00112834  4B F8 94 C5 */	bl VISetBlack
/* 80117318 00112838  4B F8 93 39 */	bl VIFlush
/* 8011731C 0011283C  4B F7 DF AD */	bl OSEnableInterrupts
/* 80117320 00112840  7C 7C 1B 78 */	mr r28, r3
/* 80117324 00112844  4B F8 95 2D */	bl VIGetRetraceCount
/* 80117328 00112848  7C 7D 1B 78 */	mr r29, r3
lbl_8011732C:
/* 8011732C 0011284C  4B F8 95 25 */	bl VIGetRetraceCount
/* 80117330 00112850  7C 1D 18 40 */	cmplw r29, r3
/* 80117334 00112854  41 82 FF F8 */	beq lbl_8011732C
/* 80117338 00112858  7F 83 E3 78 */	mr r3, r28
/* 8011733C 0011285C  4B F7 DF A1 */	bl OSRestoreInterrupts
/* 80117340 00112860  2C 1E 00 00 */	cmpwi r30, 0
/* 80117344 00112864  41 82 00 38 */	beq lbl_8011737C
/* 80117348 00112868  A0 BE 00 04 */	lhz r5, 4(r30)
/* 8011734C 0011286C  38 9F 00 00 */	addi r4, r31, 0
/* 80117350 00112870  A0 DE 00 08 */	lhz r6, 8(r30)
/* 80117354 00112874  38 05 00 0F */	addi r0, r5, 0xf
/* 80117358 00112878  54 03 04 36 */	rlwinm r3, r0, 0, 0x10, 0x1b
/* 8011735C 0011287C  93 7F 00 00 */	stw r27, 0(r31)
/* 80117360 00112880  7C 03 31 D6 */	mullw r0, r3, r6
/* 80117364 00112884  B0 A4 00 08 */	sth r5, 8(r4)
/* 80117368 00112888  B0 C4 00 0A */	sth r6, 0xa(r4)
/* 8011736C 0011288C  54 00 08 3C */	slwi r0, r0, 1
/* 80117370 00112890  B0 64 00 0C */	sth r3, 0xc(r4)
/* 80117374 00112894  90 04 00 04 */	stw r0, 4(r4)
/* 80117378 00112898  48 00 00 08 */	b lbl_80117380
lbl_8011737C:
/* 8011737C 0011289C  93 7F 00 00 */	stw r27, 0(r31)
lbl_80117380:
/* 80117380 001128A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80117384 001128A4  7F 63 DB 78 */	mr r3, r27
/* 80117388 001128A8  48 04 56 09 */	bl _restgpr_27
/* 8011738C 001128AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80117390 001128B0  7C 08 03 A6 */	mtlr r0
/* 80117394 001128B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80117398 001128B8  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80228E98
	.skip 0x10

glabel lbl_80228EA8
	.skip 0x14

glabel lbl_80228EBC
	.skip 0x4