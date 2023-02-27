.include "macros.inc"

.section .text, "ax"

glabel gap_conn_init
/* 800EEE6C 000EA38C  3D 40 80 0F */	lis r10, gap_connect_ind@ha
/* 800EEE70 000EA390  3D 20 80 22 */	lis r9, lbl_80222D20@ha
/* 800EEE74 000EA394  3D 00 80 0F */	lis r8, gap_connect_cfm@ha
/* 800EEE78 000EA398  3C E0 80 0F */	lis r7, gap_config_ind@ha
/* 800EEE7C 000EA39C  3C C0 80 0F */	lis r6, gap_config_cfm@ha
/* 800EEE80 000EA3A0  3C A0 80 0F */	lis r5, gap_disconnect_ind@ha
/* 800EEE84 000EA3A4  3C 80 80 0F */	lis r4, gap_data_ind@ha
/* 800EEE88 000EA3A8  3C 60 80 0F */	lis r3, gap_congestion_ind@ha
/* 800EEE8C 000EA3AC  39 4A EE DC */	addi r10, r10, gap_connect_ind@l
/* 800EEE90 000EA3B0  39 29 2D 20 */	addi r9, r9, lbl_80222D20@l
/* 800EEE94 000EA3B4  38 00 00 00 */	li r0, 0
/* 800EEE98 000EA3B8  39 08 F0 68 */	addi r8, r8, gap_connect_cfm@l
/* 800EEE9C 000EA3BC  38 E7 F2 44 */	addi r7, r7, gap_config_ind@l
/* 800EEEA0 000EA3C0  38 C6 F3 80 */	addi r6, r6, gap_config_cfm@l
/* 800EEEA4 000EA3C4  38 A5 F5 6C */	addi r5, r5, gap_disconnect_ind@l
/* 800EEEA8 000EA3C8  38 84 F7 64 */	addi r4, r4, gap_data_ind@l
/* 800EEEAC 000EA3CC  38 63 F8 74 */	addi r3, r3, gap_congestion_ind@l
/* 800EEEB0 000EA3D0  91 49 00 84 */	stw r10, 0x84(r9)
/* 800EEEB4 000EA3D4  91 09 00 88 */	stw r8, 0x88(r9)
/* 800EEEB8 000EA3D8  90 09 00 8C */	stw r0, 0x8c(r9)
/* 800EEEBC 000EA3DC  90 E9 00 90 */	stw r7, 0x90(r9)
/* 800EEEC0 000EA3E0  90 C9 00 94 */	stw r6, 0x94(r9)
/* 800EEEC4 000EA3E4  90 A9 00 98 */	stw r5, 0x98(r9)
/* 800EEEC8 000EA3E8  90 09 00 9C */	stw r0, 0x9c(r9)
/* 800EEECC 000EA3EC  90 09 00 A0 */	stw r0, 0xa0(r9)
/* 800EEED0 000EA3F0  90 89 00 A4 */	stw r4, 0xa4(r9)
/* 800EEED4 000EA3F4  90 69 00 A8 */	stw r3, 0xa8(r9)
/* 800EEED8 000EA3F8  4E 80 00 20 */	blr

glabel gap_connect_ind
/* 800EEEDC 000EA3FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EEEE0 000EA400  7C 08 02 A6 */	mflr r0
/* 800EEEE4 000EA404  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EEEE8 000EA408  39 61 00 20 */	addi r11, r1, 0x20
/* 800EEEEC 000EA40C  48 06 DA 55 */	bl _savegpr_26
/* 800EEEF0 000EA410  3C E0 80 22 */	lis r7, lbl_80222D20@ha
/* 800EEEF4 000EA414  7C 7A 1B 78 */	mr r26, r3
/* 800EEEF8 000EA418  38 E7 2D 20 */	addi r7, r7, lbl_80222D20@l
/* 800EEEFC 000EA41C  7C 9F 23 78 */	mr r31, r4
/* 800EEF00 000EA420  7C BB 2B 78 */	mr r27, r5
/* 800EEF04 000EA424  7C DC 33 78 */	mr r28, r6
/* 800EEF08 000EA428  3B A7 00 AC */	addi r29, r7, 0xac
/* 800EEF0C 000EA42C  3B C0 00 00 */	li r30, 0
.L_800EEF10:
/* 800EEF10 000EA430  88 1D 00 00 */	lbz r0, 0(r29)
/* 800EEF14 000EA434  28 00 00 01 */	cmplwi r0, 1
/* 800EEF18 000EA438  40 82 00 34 */	bne .L_800EEF4C
/* 800EEF1C 000EA43C  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 800EEF20 000EA440  7C 00 D8 40 */	cmplw r0, r27
/* 800EEF24 000EA444  40 82 00 28 */	bne .L_800EEF4C
/* 800EEF28 000EA448  88 1D 00 08 */	lbz r0, 8(r29)
/* 800EEF2C 000EA44C  2C 00 00 00 */	cmpwi r0, 0
/* 800EEF30 000EA450  41 82 00 2C */	beq .L_800EEF5C
/* 800EEF34 000EA454  7F 43 D3 78 */	mr r3, r26
/* 800EEF38 000EA458  38 9D 00 09 */	addi r4, r29, 9
/* 800EEF3C 000EA45C  38 A0 00 06 */	li r5, 6
/* 800EEF40 000EA460  48 07 35 29 */	bl memcmp
/* 800EEF44 000EA464  2C 03 00 00 */	cmpwi r3, 0
/* 800EEF48 000EA468  41 82 00 14 */	beq .L_800EEF5C
.L_800EEF4C:
/* 800EEF4C 000EA46C  3B DE 00 01 */	addi r30, r30, 1
/* 800EEF50 000EA470  3B BD 00 60 */	addi r29, r29, 0x60
/* 800EEF54 000EA474  28 1E 00 08 */	cmplwi r30, 8
/* 800EEF58 000EA478  41 80 FF B8 */	blt .L_800EEF10
.L_800EEF5C:
/* 800EEF5C 000EA47C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800EEF60 000EA480  28 00 00 08 */	cmplwi r0, 8
/* 800EEF64 000EA484  40 82 00 80 */	bne .L_800EEFE4
/* 800EEF68 000EA488  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EEF6C 000EA48C  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EEF70 000EA490  88 03 00 28 */	lbz r0, 0x28(r3)
/* 800EEF74 000EA494  28 00 00 02 */	cmplwi r0, 2
/* 800EEF78 000EA498  41 80 00 14 */	blt .L_800EEF8C
/* 800EEF7C 000EA49C  3C 60 00 0E */	lis r3, 0x000E0001@ha
/* 800EEF80 000EA4A0  38 8D 86 50 */	addi r4, r13, lbl_80246AD0@sda21
/* 800EEF84 000EA4A4  38 63 00 01 */	addi r3, r3, 0x000E0001@l
/* 800EEF88 000EA4A8  4B FE E1 65 */	bl LogMsg_0
.L_800EEF8C:
/* 800EEF8C 000EA4AC  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EEF90 000EA4B0  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EEF94 000EA4B4  88 03 00 28 */	lbz r0, 0x28(r3)
/* 800EEF98 000EA4B8  28 00 00 02 */	cmplwi r0, 2
/* 800EEF9C 000EA4BC  41 80 00 18 */	blt .L_800EEFB4
/* 800EEFA0 000EA4C0  3C 60 00 0E */	lis r3, 0x000E0001@ha
/* 800EEFA4 000EA4C4  3C 80 80 1A */	lis r4, lbl_8019D428@ha
/* 800EEFA8 000EA4C8  38 63 00 01 */	addi r3, r3, 0x000E0001@l
/* 800EEFAC 000EA4CC  38 84 D4 28 */	addi r4, r4, lbl_8019D428@l
/* 800EEFB0 000EA4D0  4B FE E1 3D */	bl LogMsg_0
.L_800EEFB4:
/* 800EEFB4 000EA4D4  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EEFB8 000EA4D8  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EEFBC 000EA4DC  88 03 00 28 */	lbz r0, 0x28(r3)
/* 800EEFC0 000EA4E0  28 00 00 02 */	cmplwi r0, 2
/* 800EEFC4 000EA4E4  41 80 00 14 */	blt .L_800EEFD8
/* 800EEFC8 000EA4E8  3C 60 00 0E */	lis r3, 0x000E0001@ha
/* 800EEFCC 000EA4EC  38 8D 86 50 */	addi r4, r13, lbl_80246AD0@sda21
/* 800EEFD0 000EA4F0  38 63 00 01 */	addi r3, r3, 0x000E0001@l
/* 800EEFD4 000EA4F4  4B FE E1 19 */	bl LogMsg_0
.L_800EEFD8:
/* 800EEFD8 000EA4F8  7F E3 FB 78 */	mr r3, r31
/* 800EEFDC 000EA4FC  48 00 71 A9 */	bl L2CA_DisconnectReq
/* 800EEFE0 000EA500  48 00 00 70 */	b .L_800EF050
.L_800EEFE4:
/* 800EEFE4 000EA504  38 00 00 03 */	li r0, 3
/* 800EEFE8 000EA508  7F 44 D3 78 */	mr r4, r26
/* 800EEFEC 000EA50C  98 1D 00 00 */	stb r0, 0(r29)
/* 800EEFF0 000EA510  38 7D 00 09 */	addi r3, r29, 9
/* 800EEFF4 000EA514  38 A0 00 06 */	li r5, 6
/* 800EEFF8 000EA518  4B F1 53 41 */	bl memcpy
/* 800EEFFC 000EA51C  B3 FD 00 06 */	sth r31, 6(r29)
/* 800EF000 000EA520  7F 43 D3 78 */	mr r3, r26
/* 800EF004 000EA524  7F 84 E3 78 */	mr r4, r28
/* 800EF008 000EA528  7F E5 FB 78 */	mr r5, r31
/* 800EF00C 000EA52C  38 C0 00 00 */	li r6, 0
/* 800EF010 000EA530  38 E0 00 00 */	li r7, 0
/* 800EF014 000EA534  48 00 6E 59 */	bl L2CA_ConnectRsp
/* 800EF018 000EA538  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EF01C 000EA53C  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EF020 000EA540  88 03 00 28 */	lbz r0, 0x28(r3)
/* 800EF024 000EA544  28 00 00 04 */	cmplwi r0, 4
/* 800EF028 000EA548  41 80 00 1C */	blt .L_800EF044
/* 800EF02C 000EA54C  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 800EF030 000EA550  3C 80 80 1A */	lis r4, lbl_8019D46C@ha
/* 800EF034 000EA554  A0 BD 00 06 */	lhz r5, 6(r29)
/* 800EF038 000EA558  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 800EF03C 000EA55C  38 84 D4 6C */	addi r4, r4, lbl_8019D46C@l
/* 800EF040 000EA560  4B FE E0 C5 */	bl LogMsg_1
.L_800EF044:
/* 800EF044 000EA564  7F E3 FB 78 */	mr r3, r31
/* 800EF048 000EA568  38 9D 00 24 */	addi r4, r29, 0x24
/* 800EF04C 000EA56C  48 00 6F B1 */	bl L2CA_ConfigReq
.L_800EF050:
/* 800EF050 000EA570  39 61 00 20 */	addi r11, r1, 0x20
/* 800EF054 000EA574  48 06 D9 39 */	bl _restgpr_26
/* 800EF058 000EA578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EF05C 000EA57C  7C 08 03 A6 */	mtlr r0
/* 800EF060 000EA580  38 21 00 20 */	addi r1, r1, 0x20
/* 800EF064 000EA584  4E 80 00 20 */	blr

glabel gap_connect_cfm
/* 800EF068 000EA588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EF06C 000EA58C  7C 08 02 A6 */	mflr r0
/* 800EF070 000EA590  3C A0 80 22 */	lis r5, lbl_80222D20@ha
/* 800EF074 000EA594  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EF078 000EA598  38 00 00 02 */	li r0, 2
/* 800EF07C 000EA59C  38 A5 2D 20 */	addi r5, r5, lbl_80222D20@l
/* 800EF080 000EA5A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EF084 000EA5A4  3B E5 00 AC */	addi r31, r5, 0xac
/* 800EF088 000EA5A8  38 A0 00 00 */	li r5, 0
/* 800EF08C 000EA5AC  93 C1 00 08 */	stw r30, 8(r1)
/* 800EF090 000EA5B0  7C 09 03 A6 */	mtctr r0
.L_800EF094:
/* 800EF094 000EA5B4  88 1F 00 00 */	lbz r0, 0(r31)
/* 800EF098 000EA5B8  2C 00 00 00 */	cmpwi r0, 0
/* 800EF09C 000EA5BC  41 82 00 14 */	beq .L_800EF0B0
/* 800EF0A0 000EA5C0  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF0A4 000EA5C4  7C 00 18 40 */	cmplw r0, r3
/* 800EF0A8 000EA5C8  40 82 00 08 */	bne .L_800EF0B0
/* 800EF0AC 000EA5CC  48 00 00 74 */	b .L_800EF120
.L_800EF0B0:
/* 800EF0B0 000EA5D0  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF0B4 000EA5D4  38 A5 00 01 */	addi r5, r5, 1
/* 800EF0B8 000EA5D8  2C 00 00 00 */	cmpwi r0, 0
/* 800EF0BC 000EA5DC  41 82 00 14 */	beq .L_800EF0D0
/* 800EF0C0 000EA5E0  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF0C4 000EA5E4  7C 00 18 40 */	cmplw r0, r3
/* 800EF0C8 000EA5E8  40 82 00 08 */	bne .L_800EF0D0
/* 800EF0CC 000EA5EC  48 00 00 54 */	b .L_800EF120
.L_800EF0D0:
/* 800EF0D0 000EA5F0  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF0D4 000EA5F4  38 A5 00 01 */	addi r5, r5, 1
/* 800EF0D8 000EA5F8  2C 00 00 00 */	cmpwi r0, 0
/* 800EF0DC 000EA5FC  41 82 00 14 */	beq .L_800EF0F0
/* 800EF0E0 000EA600  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF0E4 000EA604  7C 00 18 40 */	cmplw r0, r3
/* 800EF0E8 000EA608  40 82 00 08 */	bne .L_800EF0F0
/* 800EF0EC 000EA60C  48 00 00 34 */	b .L_800EF120
.L_800EF0F0:
/* 800EF0F0 000EA610  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF0F4 000EA614  38 A5 00 01 */	addi r5, r5, 1
/* 800EF0F8 000EA618  2C 00 00 00 */	cmpwi r0, 0
/* 800EF0FC 000EA61C  41 82 00 14 */	beq .L_800EF110
/* 800EF100 000EA620  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF104 000EA624  7C 00 18 40 */	cmplw r0, r3
/* 800EF108 000EA628  40 82 00 08 */	bne .L_800EF110
/* 800EF10C 000EA62C  48 00 00 14 */	b .L_800EF120
.L_800EF110:
/* 800EF110 000EA630  38 A5 00 01 */	addi r5, r5, 1
/* 800EF114 000EA634  3B FF 00 60 */	addi r31, r31, 0x60
/* 800EF118 000EA638  42 00 FF 7C */	bdnz .L_800EF094
/* 800EF11C 000EA63C  3B E0 00 00 */	li r31, 0
.L_800EF120:
/* 800EF120 000EA640  2C 1F 00 00 */	cmpwi r31, 0
/* 800EF124 000EA644  41 82 01 08 */	beq .L_800EF22C
/* 800EF128 000EA648  2C 04 00 00 */	cmpwi r4, 0
/* 800EF12C 000EA64C  40 82 00 24 */	bne .L_800EF150
/* 800EF130 000EA650  88 1F 00 00 */	lbz r0, 0(r31)
/* 800EF134 000EA654  28 00 00 02 */	cmplwi r0, 2
/* 800EF138 000EA658  40 82 00 18 */	bne .L_800EF150
/* 800EF13C 000EA65C  38 00 00 03 */	li r0, 3
/* 800EF140 000EA660  38 9F 00 24 */	addi r4, r31, 0x24
/* 800EF144 000EA664  98 1F 00 00 */	stb r0, 0(r31)
/* 800EF148 000EA668  48 00 6E B5 */	bl L2CA_ConfigReq
/* 800EF14C 000EA66C  48 00 00 E0 */	b .L_800EF22C
.L_800EF150:
/* 800EF150 000EA670  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 800EF154 000EA674  2C 0C 00 00 */	cmpwi r12, 0
/* 800EF158 000EA678  41 82 00 14 */	beq .L_800EF16C
/* 800EF15C 000EA67C  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800EF160 000EA680  38 80 01 01 */	li r4, 0x101
/* 800EF164 000EA684  7D 89 03 A6 */	mtctr r12
/* 800EF168 000EA688  4E 80 04 21 */	bctrl
.L_800EF16C:
/* 800EF16C 000EA68C  A3 DF 00 10 */	lhz r30, 0x10(r31)
/* 800EF170 000EA690  48 00 00 10 */	b .L_800EF180
.L_800EF174:
/* 800EF174 000EA694  38 7F 00 14 */	addi r3, r31, 0x14
/* 800EF178 000EA698  4B FE B4 35 */	bl GKI_dequeue
/* 800EF17C 000EA69C  4B FE AD 95 */	bl GKI_freebuf
.L_800EF180:
/* 800EF180 000EA6A0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800EF184 000EA6A4  2C 00 00 00 */	cmpwi r0, 0
/* 800EF188 000EA6A8  40 82 FF EC */	bne .L_800EF174
/* 800EF18C 000EA6AC  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EF190 000EA6B0  38 80 00 00 */	li r4, 0
/* 800EF194 000EA6B4  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EF198 000EA6B8  38 00 00 02 */	li r0, 2
/* 800EF19C 000EA6BC  98 9F 00 00 */	stb r4, 0(r31)
/* 800EF1A0 000EA6C0  38 83 00 AC */	addi r4, r3, 0xac
/* 800EF1A4 000EA6C4  38 60 00 00 */	li r3, 0
/* 800EF1A8 000EA6C8  7C 09 03 A6 */	mtctr r0
.L_800EF1AC:
/* 800EF1AC 000EA6CC  88 04 00 00 */	lbz r0, 0(r4)
/* 800EF1B0 000EA6D0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF1B4 000EA6D4  41 82 00 10 */	beq .L_800EF1C4
/* 800EF1B8 000EA6D8  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 800EF1BC 000EA6DC  7C 00 F0 40 */	cmplw r0, r30
/* 800EF1C0 000EA6E0  41 82 00 6C */	beq .L_800EF22C
.L_800EF1C4:
/* 800EF1C4 000EA6E4  88 04 00 60 */	lbz r0, 0x60(r4)
/* 800EF1C8 000EA6E8  38 63 00 01 */	addi r3, r3, 1
/* 800EF1CC 000EA6EC  2C 00 00 00 */	cmpwi r0, 0
/* 800EF1D0 000EA6F0  41 82 00 10 */	beq .L_800EF1E0
/* 800EF1D4 000EA6F4  A0 04 00 70 */	lhz r0, 0x70(r4)
/* 800EF1D8 000EA6F8  7C 00 F0 40 */	cmplw r0, r30
/* 800EF1DC 000EA6FC  41 82 00 50 */	beq .L_800EF22C
.L_800EF1E0:
/* 800EF1E0 000EA700  88 04 00 C0 */	lbz r0, 0xc0(r4)
/* 800EF1E4 000EA704  38 63 00 01 */	addi r3, r3, 1
/* 800EF1E8 000EA708  2C 00 00 00 */	cmpwi r0, 0
/* 800EF1EC 000EA70C  41 82 00 10 */	beq .L_800EF1FC
/* 800EF1F0 000EA710  A0 04 00 D0 */	lhz r0, 0xd0(r4)
/* 800EF1F4 000EA714  7C 00 F0 40 */	cmplw r0, r30
/* 800EF1F8 000EA718  41 82 00 34 */	beq .L_800EF22C
.L_800EF1FC:
/* 800EF1FC 000EA71C  88 04 01 20 */	lbz r0, 0x120(r4)
/* 800EF200 000EA720  38 63 00 01 */	addi r3, r3, 1
/* 800EF204 000EA724  2C 00 00 00 */	cmpwi r0, 0
/* 800EF208 000EA728  41 82 00 10 */	beq .L_800EF218
/* 800EF20C 000EA72C  A0 04 01 30 */	lhz r0, 0x130(r4)
/* 800EF210 000EA730  7C 00 F0 40 */	cmplw r0, r30
/* 800EF214 000EA734  41 82 00 18 */	beq .L_800EF22C
.L_800EF218:
/* 800EF218 000EA738  38 63 00 01 */	addi r3, r3, 1
/* 800EF21C 000EA73C  38 84 01 80 */	addi r4, r4, 0x180
/* 800EF220 000EA740  42 00 FF 8C */	bdnz .L_800EF1AC
/* 800EF224 000EA744  7F C3 F3 78 */	mr r3, r30
/* 800EF228 000EA748  48 00 69 81 */	bl L2CA_Deregister
.L_800EF22C:
/* 800EF22C 000EA74C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF230 000EA750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EF234 000EA754  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EF238 000EA758  7C 08 03 A6 */	mtlr r0
/* 800EF23C 000EA75C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF240 000EA760  4E 80 00 20 */	blr

glabel gap_config_ind
/* 800EF244 000EA764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EF248 000EA768  7C 08 02 A6 */	mflr r0
/* 800EF24C 000EA76C  3C A0 80 22 */	lis r5, lbl_80222D20@ha
/* 800EF250 000EA770  38 C0 00 00 */	li r6, 0
/* 800EF254 000EA774  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EF258 000EA778  38 00 00 02 */	li r0, 2
/* 800EF25C 000EA77C  38 A5 2D 20 */	addi r5, r5, lbl_80222D20@l
/* 800EF260 000EA780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EF264 000EA784  3B E5 00 AC */	addi r31, r5, 0xac
/* 800EF268 000EA788  7C 09 03 A6 */	mtctr r0
.L_800EF26C:
/* 800EF26C 000EA78C  88 1F 00 00 */	lbz r0, 0(r31)
/* 800EF270 000EA790  2C 00 00 00 */	cmpwi r0, 0
/* 800EF274 000EA794  41 82 00 14 */	beq .L_800EF288
/* 800EF278 000EA798  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF27C 000EA79C  7C 00 18 40 */	cmplw r0, r3
/* 800EF280 000EA7A0  40 82 00 08 */	bne .L_800EF288
/* 800EF284 000EA7A4  48 00 00 74 */	b .L_800EF2F8
.L_800EF288:
/* 800EF288 000EA7A8  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF28C 000EA7AC  38 C6 00 01 */	addi r6, r6, 1
/* 800EF290 000EA7B0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF294 000EA7B4  41 82 00 14 */	beq .L_800EF2A8
/* 800EF298 000EA7B8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF29C 000EA7BC  7C 00 18 40 */	cmplw r0, r3
/* 800EF2A0 000EA7C0  40 82 00 08 */	bne .L_800EF2A8
/* 800EF2A4 000EA7C4  48 00 00 54 */	b .L_800EF2F8
.L_800EF2A8:
/* 800EF2A8 000EA7C8  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF2AC 000EA7CC  38 C6 00 01 */	addi r6, r6, 1
/* 800EF2B0 000EA7D0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF2B4 000EA7D4  41 82 00 14 */	beq .L_800EF2C8
/* 800EF2B8 000EA7D8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF2BC 000EA7DC  7C 00 18 40 */	cmplw r0, r3
/* 800EF2C0 000EA7E0  40 82 00 08 */	bne .L_800EF2C8
/* 800EF2C4 000EA7E4  48 00 00 34 */	b .L_800EF2F8
.L_800EF2C8:
/* 800EF2C8 000EA7E8  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF2CC 000EA7EC  38 C6 00 01 */	addi r6, r6, 1
/* 800EF2D0 000EA7F0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF2D4 000EA7F4  41 82 00 14 */	beq .L_800EF2E8
/* 800EF2D8 000EA7F8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF2DC 000EA7FC  7C 00 18 40 */	cmplw r0, r3
/* 800EF2E0 000EA800  40 82 00 08 */	bne .L_800EF2E8
/* 800EF2E4 000EA804  48 00 00 14 */	b .L_800EF2F8
.L_800EF2E8:
/* 800EF2E8 000EA808  38 C6 00 01 */	addi r6, r6, 1
/* 800EF2EC 000EA80C  3B FF 00 60 */	addi r31, r31, 0x60
/* 800EF2F0 000EA810  42 00 FF 7C */	bdnz .L_800EF26C
/* 800EF2F4 000EA814  3B E0 00 00 */	li r31, 0
.L_800EF2F8:
/* 800EF2F8 000EA818  2C 1F 00 00 */	cmpwi r31, 0
/* 800EF2FC 000EA81C  41 82 00 70 */	beq .L_800EF36C
/* 800EF300 000EA820  88 04 00 02 */	lbz r0, 2(r4)
/* 800EF304 000EA824  2C 00 00 00 */	cmpwi r0, 0
/* 800EF308 000EA828  41 82 00 10 */	beq .L_800EF318
/* 800EF30C 000EA82C  A0 04 00 04 */	lhz r0, 4(r4)
/* 800EF310 000EA830  28 00 06 9B */	cmplwi r0, 0x69b
/* 800EF314 000EA834  40 81 00 10 */	ble .L_800EF324
.L_800EF318:
/* 800EF318 000EA838  38 00 06 9B */	li r0, 0x69b
/* 800EF31C 000EA83C  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 800EF320 000EA840  48 00 00 08 */	b .L_800EF328
.L_800EF324:
/* 800EF324 000EA844  B0 1F 00 12 */	sth r0, 0x12(r31)
.L_800EF328:
/* 800EF328 000EA848  38 00 00 00 */	li r0, 0
/* 800EF32C 000EA84C  98 04 00 20 */	stb r0, 0x20(r4)
/* 800EF330 000EA850  98 04 00 02 */	stb r0, 2(r4)
/* 800EF334 000EA854  B0 04 00 00 */	sth r0, 0(r4)
/* 800EF338 000EA858  48 00 6D 7D */	bl L2CA_ConfigRsp
/* 800EF33C 000EA85C  88 1F 00 01 */	lbz r0, 1(r31)
/* 800EF340 000EA860  60 03 00 02 */	ori r3, r0, 2
/* 800EF344 000EA864  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 800EF348 000EA868  98 7F 00 01 */	stb r3, 1(r31)
/* 800EF34C 000EA86C  41 82 00 20 */	beq .L_800EF36C
/* 800EF350 000EA870  38 00 00 04 */	li r0, 4
/* 800EF354 000EA874  38 80 01 00 */	li r4, 0x100
/* 800EF358 000EA878  98 1F 00 00 */	stb r0, 0(r31)
/* 800EF35C 000EA87C  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 800EF360 000EA880  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800EF364 000EA884  7D 89 03 A6 */	mtctr r12
/* 800EF368 000EA888  4E 80 04 21 */	bctrl
.L_800EF36C:
/* 800EF36C 000EA88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF370 000EA890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EF374 000EA894  7C 08 03 A6 */	mtlr r0
/* 800EF378 000EA898  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF37C 000EA89C  4E 80 00 20 */	blr

glabel gap_config_cfm
/* 800EF380 000EA8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EF384 000EA8A4  7C 08 02 A6 */	mflr r0
/* 800EF388 000EA8A8  3C A0 80 22 */	lis r5, lbl_80222D20@ha
/* 800EF38C 000EA8AC  38 C0 00 00 */	li r6, 0
/* 800EF390 000EA8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EF394 000EA8B4  38 00 00 02 */	li r0, 2
/* 800EF398 000EA8B8  38 A5 2D 20 */	addi r5, r5, lbl_80222D20@l
/* 800EF39C 000EA8BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EF3A0 000EA8C0  3B E5 00 AC */	addi r31, r5, 0xac
/* 800EF3A4 000EA8C4  93 C1 00 08 */	stw r30, 8(r1)
/* 800EF3A8 000EA8C8  7C 09 03 A6 */	mtctr r0
.L_800EF3AC:
/* 800EF3AC 000EA8CC  88 1F 00 00 */	lbz r0, 0(r31)
/* 800EF3B0 000EA8D0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF3B4 000EA8D4  41 82 00 14 */	beq .L_800EF3C8
/* 800EF3B8 000EA8D8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF3BC 000EA8DC  7C 00 18 40 */	cmplw r0, r3
/* 800EF3C0 000EA8E0  40 82 00 08 */	bne .L_800EF3C8
/* 800EF3C4 000EA8E4  48 00 00 74 */	b .L_800EF438
.L_800EF3C8:
/* 800EF3C8 000EA8E8  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF3CC 000EA8EC  38 C6 00 01 */	addi r6, r6, 1
/* 800EF3D0 000EA8F0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF3D4 000EA8F4  41 82 00 14 */	beq .L_800EF3E8
/* 800EF3D8 000EA8F8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF3DC 000EA8FC  7C 00 18 40 */	cmplw r0, r3
/* 800EF3E0 000EA900  40 82 00 08 */	bne .L_800EF3E8
/* 800EF3E4 000EA904  48 00 00 54 */	b .L_800EF438
.L_800EF3E8:
/* 800EF3E8 000EA908  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF3EC 000EA90C  38 C6 00 01 */	addi r6, r6, 1
/* 800EF3F0 000EA910  2C 00 00 00 */	cmpwi r0, 0
/* 800EF3F4 000EA914  41 82 00 14 */	beq .L_800EF408
/* 800EF3F8 000EA918  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF3FC 000EA91C  7C 00 18 40 */	cmplw r0, r3
/* 800EF400 000EA920  40 82 00 08 */	bne .L_800EF408
/* 800EF404 000EA924  48 00 00 34 */	b .L_800EF438
.L_800EF408:
/* 800EF408 000EA928  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF40C 000EA92C  38 C6 00 01 */	addi r6, r6, 1
/* 800EF410 000EA930  2C 00 00 00 */	cmpwi r0, 0
/* 800EF414 000EA934  41 82 00 14 */	beq .L_800EF428
/* 800EF418 000EA938  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF41C 000EA93C  7C 00 18 40 */	cmplw r0, r3
/* 800EF420 000EA940  40 82 00 08 */	bne .L_800EF428
/* 800EF424 000EA944  48 00 00 14 */	b .L_800EF438
.L_800EF428:
/* 800EF428 000EA948  38 C6 00 01 */	addi r6, r6, 1
/* 800EF42C 000EA94C  3B FF 00 60 */	addi r31, r31, 0x60
/* 800EF430 000EA950  42 00 FF 7C */	bdnz .L_800EF3AC
/* 800EF434 000EA954  3B E0 00 00 */	li r31, 0
.L_800EF438:
/* 800EF438 000EA958  2C 1F 00 00 */	cmpwi r31, 0
/* 800EF43C 000EA95C  41 82 01 18 */	beq .L_800EF554
/* 800EF440 000EA960  A0 04 00 00 */	lhz r0, 0(r4)
/* 800EF444 000EA964  2C 00 00 00 */	cmpwi r0, 0
/* 800EF448 000EA968  40 82 00 38 */	bne .L_800EF480
/* 800EF44C 000EA96C  88 1F 00 01 */	lbz r0, 1(r31)
/* 800EF450 000EA970  60 03 00 04 */	ori r3, r0, 4
/* 800EF454 000EA974  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800EF458 000EA978  98 7F 00 01 */	stb r3, 1(r31)
/* 800EF45C 000EA97C  41 82 00 F8 */	beq .L_800EF554
/* 800EF460 000EA980  38 00 00 04 */	li r0, 4
/* 800EF464 000EA984  38 80 01 00 */	li r4, 0x100
/* 800EF468 000EA988  98 1F 00 00 */	stb r0, 0(r31)
/* 800EF46C 000EA98C  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 800EF470 000EA990  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800EF474 000EA994  7D 89 03 A6 */	mtctr r12
/* 800EF478 000EA998  4E 80 04 21 */	bctrl
/* 800EF47C 000EA99C  48 00 00 D8 */	b .L_800EF554
.L_800EF480:
/* 800EF480 000EA9A0  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 800EF484 000EA9A4  38 80 01 01 */	li r4, 0x101
/* 800EF488 000EA9A8  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800EF48C 000EA9AC  7D 89 03 A6 */	mtctr r12
/* 800EF490 000EA9B0  4E 80 04 21 */	bctrl
/* 800EF494 000EA9B4  A3 DF 00 10 */	lhz r30, 0x10(r31)
/* 800EF498 000EA9B8  48 00 00 10 */	b .L_800EF4A8
.L_800EF49C:
/* 800EF49C 000EA9BC  38 7F 00 14 */	addi r3, r31, 0x14
/* 800EF4A0 000EA9C0  4B FE B1 0D */	bl GKI_dequeue
/* 800EF4A4 000EA9C4  4B FE AA 6D */	bl GKI_freebuf
.L_800EF4A8:
/* 800EF4A8 000EA9C8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800EF4AC 000EA9CC  2C 00 00 00 */	cmpwi r0, 0
/* 800EF4B0 000EA9D0  40 82 FF EC */	bne .L_800EF49C
/* 800EF4B4 000EA9D4  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EF4B8 000EA9D8  38 80 00 00 */	li r4, 0
/* 800EF4BC 000EA9DC  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EF4C0 000EA9E0  38 00 00 02 */	li r0, 2
/* 800EF4C4 000EA9E4  98 9F 00 00 */	stb r4, 0(r31)
/* 800EF4C8 000EA9E8  38 83 00 AC */	addi r4, r3, 0xac
/* 800EF4CC 000EA9EC  38 60 00 00 */	li r3, 0
/* 800EF4D0 000EA9F0  7C 09 03 A6 */	mtctr r0
.L_800EF4D4:
/* 800EF4D4 000EA9F4  88 04 00 00 */	lbz r0, 0(r4)
/* 800EF4D8 000EA9F8  2C 00 00 00 */	cmpwi r0, 0
/* 800EF4DC 000EA9FC  41 82 00 10 */	beq .L_800EF4EC
/* 800EF4E0 000EAA00  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 800EF4E4 000EAA04  7C 00 F0 40 */	cmplw r0, r30
/* 800EF4E8 000EAA08  41 82 00 6C */	beq .L_800EF554
.L_800EF4EC:
/* 800EF4EC 000EAA0C  88 04 00 60 */	lbz r0, 0x60(r4)
/* 800EF4F0 000EAA10  38 63 00 01 */	addi r3, r3, 1
/* 800EF4F4 000EAA14  2C 00 00 00 */	cmpwi r0, 0
/* 800EF4F8 000EAA18  41 82 00 10 */	beq .L_800EF508
/* 800EF4FC 000EAA1C  A0 04 00 70 */	lhz r0, 0x70(r4)
/* 800EF500 000EAA20  7C 00 F0 40 */	cmplw r0, r30
/* 800EF504 000EAA24  41 82 00 50 */	beq .L_800EF554
.L_800EF508:
/* 800EF508 000EAA28  88 04 00 C0 */	lbz r0, 0xc0(r4)
/* 800EF50C 000EAA2C  38 63 00 01 */	addi r3, r3, 1
/* 800EF510 000EAA30  2C 00 00 00 */	cmpwi r0, 0
/* 800EF514 000EAA34  41 82 00 10 */	beq .L_800EF524
/* 800EF518 000EAA38  A0 04 00 D0 */	lhz r0, 0xd0(r4)
/* 800EF51C 000EAA3C  7C 00 F0 40 */	cmplw r0, r30
/* 800EF520 000EAA40  41 82 00 34 */	beq .L_800EF554
.L_800EF524:
/* 800EF524 000EAA44  88 04 01 20 */	lbz r0, 0x120(r4)
/* 800EF528 000EAA48  38 63 00 01 */	addi r3, r3, 1
/* 800EF52C 000EAA4C  2C 00 00 00 */	cmpwi r0, 0
/* 800EF530 000EAA50  41 82 00 10 */	beq .L_800EF540
/* 800EF534 000EAA54  A0 04 01 30 */	lhz r0, 0x130(r4)
/* 800EF538 000EAA58  7C 00 F0 40 */	cmplw r0, r30
/* 800EF53C 000EAA5C  41 82 00 18 */	beq .L_800EF554
.L_800EF540:
/* 800EF540 000EAA60  38 63 00 01 */	addi r3, r3, 1
/* 800EF544 000EAA64  38 84 01 80 */	addi r4, r4, 0x180
/* 800EF548 000EAA68  42 00 FF 8C */	bdnz .L_800EF4D4
/* 800EF54C 000EAA6C  7F C3 F3 78 */	mr r3, r30
/* 800EF550 000EAA70  48 00 66 59 */	bl L2CA_Deregister
.L_800EF554:
/* 800EF554 000EAA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF558 000EAA78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EF55C 000EAA7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EF560 000EAA80  7C 08 03 A6 */	mtlr r0
/* 800EF564 000EAA84  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF568 000EAA88  4E 80 00 20 */	blr

glabel gap_disconnect_ind
/* 800EF56C 000EAA8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EF570 000EAA90  7C 08 02 A6 */	mflr r0
/* 800EF574 000EAA94  3C A0 80 22 */	lis r5, lbl_80222D20@ha
/* 800EF578 000EAA98  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EF57C 000EAA9C  38 A5 2D 20 */	addi r5, r5, lbl_80222D20@l
/* 800EF580 000EAAA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EF584 000EAAA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EF588 000EAAA8  7C 9E 23 78 */	mr r30, r4
/* 800EF58C 000EAAAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800EF590 000EAAB0  7C 7D 1B 78 */	mr r29, r3
/* 800EF594 000EAAB4  88 05 00 28 */	lbz r0, 0x28(r5)
/* 800EF598 000EAAB8  28 00 00 04 */	cmplwi r0, 4
/* 800EF59C 000EAABC  41 80 00 1C */	blt .L_800EF5B8
/* 800EF5A0 000EAAC0  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 800EF5A4 000EAAC4  3C 80 80 1A */	lis r4, lbl_8019D498@ha
/* 800EF5A8 000EAAC8  7F A5 EB 78 */	mr r5, r29
/* 800EF5AC 000EAACC  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 800EF5B0 000EAAD0  38 84 D4 98 */	addi r4, r4, lbl_8019D498@l
/* 800EF5B4 000EAAD4  4B FE DB 51 */	bl LogMsg_1
.L_800EF5B8:
/* 800EF5B8 000EAAD8  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EF5BC 000EAADC  38 00 00 02 */	li r0, 2
/* 800EF5C0 000EAAE0  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EF5C4 000EAAE4  38 80 00 00 */	li r4, 0
/* 800EF5C8 000EAAE8  3B E3 00 AC */	addi r31, r3, 0xac
/* 800EF5CC 000EAAEC  7C 09 03 A6 */	mtctr r0
.L_800EF5D0:
/* 800EF5D0 000EAAF0  88 1F 00 00 */	lbz r0, 0(r31)
/* 800EF5D4 000EAAF4  2C 00 00 00 */	cmpwi r0, 0
/* 800EF5D8 000EAAF8  41 82 00 14 */	beq .L_800EF5EC
/* 800EF5DC 000EAAFC  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF5E0 000EAB00  7C 00 E8 40 */	cmplw r0, r29
/* 800EF5E4 000EAB04  40 82 00 08 */	bne .L_800EF5EC
/* 800EF5E8 000EAB08  48 00 00 74 */	b .L_800EF65C
.L_800EF5EC:
/* 800EF5EC 000EAB0C  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF5F0 000EAB10  38 84 00 01 */	addi r4, r4, 1
/* 800EF5F4 000EAB14  2C 00 00 00 */	cmpwi r0, 0
/* 800EF5F8 000EAB18  41 82 00 14 */	beq .L_800EF60C
/* 800EF5FC 000EAB1C  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF600 000EAB20  7C 00 E8 40 */	cmplw r0, r29
/* 800EF604 000EAB24  40 82 00 08 */	bne .L_800EF60C
/* 800EF608 000EAB28  48 00 00 54 */	b .L_800EF65C
.L_800EF60C:
/* 800EF60C 000EAB2C  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF610 000EAB30  38 84 00 01 */	addi r4, r4, 1
/* 800EF614 000EAB34  2C 00 00 00 */	cmpwi r0, 0
/* 800EF618 000EAB38  41 82 00 14 */	beq .L_800EF62C
/* 800EF61C 000EAB3C  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF620 000EAB40  7C 00 E8 40 */	cmplw r0, r29
/* 800EF624 000EAB44  40 82 00 08 */	bne .L_800EF62C
/* 800EF628 000EAB48  48 00 00 34 */	b .L_800EF65C
.L_800EF62C:
/* 800EF62C 000EAB4C  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF630 000EAB50  38 84 00 01 */	addi r4, r4, 1
/* 800EF634 000EAB54  2C 00 00 00 */	cmpwi r0, 0
/* 800EF638 000EAB58  41 82 00 14 */	beq .L_800EF64C
/* 800EF63C 000EAB5C  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF640 000EAB60  7C 00 E8 40 */	cmplw r0, r29
/* 800EF644 000EAB64  40 82 00 08 */	bne .L_800EF64C
/* 800EF648 000EAB68  48 00 00 14 */	b .L_800EF65C
.L_800EF64C:
/* 800EF64C 000EAB6C  38 84 00 01 */	addi r4, r4, 1
/* 800EF650 000EAB70  3B FF 00 60 */	addi r31, r31, 0x60
/* 800EF654 000EAB74  42 00 FF 7C */	bdnz .L_800EF5D0
/* 800EF658 000EAB78  3B E0 00 00 */	li r31, 0
.L_800EF65C:
/* 800EF65C 000EAB7C  2C 1F 00 00 */	cmpwi r31, 0
/* 800EF660 000EAB80  41 82 00 E8 */	beq .L_800EF748
/* 800EF664 000EAB84  2C 1E 00 00 */	cmpwi r30, 0
/* 800EF668 000EAB88  41 82 00 0C */	beq .L_800EF674
/* 800EF66C 000EAB8C  7F A3 EB 78 */	mr r3, r29
/* 800EF670 000EAB90  48 00 6B B9 */	bl L2CA_DisconnectRsp
.L_800EF674:
/* 800EF674 000EAB94  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 800EF678 000EAB98  38 80 01 01 */	li r4, 0x101
/* 800EF67C 000EAB9C  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800EF680 000EABA0  7D 89 03 A6 */	mtctr r12
/* 800EF684 000EABA4  4E 80 04 21 */	bctrl
/* 800EF688 000EABA8  A3 DF 00 10 */	lhz r30, 0x10(r31)
/* 800EF68C 000EABAC  48 00 00 10 */	b .L_800EF69C
.L_800EF690:
/* 800EF690 000EABB0  38 7F 00 14 */	addi r3, r31, 0x14
/* 800EF694 000EABB4  4B FE AF 19 */	bl GKI_dequeue
/* 800EF698 000EABB8  4B FE A8 79 */	bl GKI_freebuf
.L_800EF69C:
/* 800EF69C 000EABBC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800EF6A0 000EABC0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF6A4 000EABC4  40 82 FF EC */	bne .L_800EF690
/* 800EF6A8 000EABC8  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EF6AC 000EABCC  38 80 00 00 */	li r4, 0
/* 800EF6B0 000EABD0  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EF6B4 000EABD4  38 00 00 02 */	li r0, 2
/* 800EF6B8 000EABD8  98 9F 00 00 */	stb r4, 0(r31)
/* 800EF6BC 000EABDC  38 83 00 AC */	addi r4, r3, 0xac
/* 800EF6C0 000EABE0  38 60 00 00 */	li r3, 0
/* 800EF6C4 000EABE4  7C 09 03 A6 */	mtctr r0
.L_800EF6C8:
/* 800EF6C8 000EABE8  88 04 00 00 */	lbz r0, 0(r4)
/* 800EF6CC 000EABEC  2C 00 00 00 */	cmpwi r0, 0
/* 800EF6D0 000EABF0  41 82 00 10 */	beq .L_800EF6E0
/* 800EF6D4 000EABF4  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 800EF6D8 000EABF8  7C 00 F0 40 */	cmplw r0, r30
/* 800EF6DC 000EABFC  41 82 00 6C */	beq .L_800EF748
.L_800EF6E0:
/* 800EF6E0 000EAC00  88 04 00 60 */	lbz r0, 0x60(r4)
/* 800EF6E4 000EAC04  38 63 00 01 */	addi r3, r3, 1
/* 800EF6E8 000EAC08  2C 00 00 00 */	cmpwi r0, 0
/* 800EF6EC 000EAC0C  41 82 00 10 */	beq .L_800EF6FC
/* 800EF6F0 000EAC10  A0 04 00 70 */	lhz r0, 0x70(r4)
/* 800EF6F4 000EAC14  7C 00 F0 40 */	cmplw r0, r30
/* 800EF6F8 000EAC18  41 82 00 50 */	beq .L_800EF748
.L_800EF6FC:
/* 800EF6FC 000EAC1C  88 04 00 C0 */	lbz r0, 0xc0(r4)
/* 800EF700 000EAC20  38 63 00 01 */	addi r3, r3, 1
/* 800EF704 000EAC24  2C 00 00 00 */	cmpwi r0, 0
/* 800EF708 000EAC28  41 82 00 10 */	beq .L_800EF718
/* 800EF70C 000EAC2C  A0 04 00 D0 */	lhz r0, 0xd0(r4)
/* 800EF710 000EAC30  7C 00 F0 40 */	cmplw r0, r30
/* 800EF714 000EAC34  41 82 00 34 */	beq .L_800EF748
.L_800EF718:
/* 800EF718 000EAC38  88 04 01 20 */	lbz r0, 0x120(r4)
/* 800EF71C 000EAC3C  38 63 00 01 */	addi r3, r3, 1
/* 800EF720 000EAC40  2C 00 00 00 */	cmpwi r0, 0
/* 800EF724 000EAC44  41 82 00 10 */	beq .L_800EF734
/* 800EF728 000EAC48  A0 04 01 30 */	lhz r0, 0x130(r4)
/* 800EF72C 000EAC4C  7C 00 F0 40 */	cmplw r0, r30
/* 800EF730 000EAC50  41 82 00 18 */	beq .L_800EF748
.L_800EF734:
/* 800EF734 000EAC54  38 63 00 01 */	addi r3, r3, 1
/* 800EF738 000EAC58  38 84 01 80 */	addi r4, r4, 0x180
/* 800EF73C 000EAC5C  42 00 FF 8C */	bdnz .L_800EF6C8
/* 800EF740 000EAC60  7F C3 F3 78 */	mr r3, r30
/* 800EF744 000EAC64  48 00 64 65 */	bl L2CA_Deregister
.L_800EF748:
/* 800EF748 000EAC68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EF74C 000EAC6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EF750 000EAC70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EF754 000EAC74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800EF758 000EAC78  7C 08 03 A6 */	mtlr r0
/* 800EF75C 000EAC7C  38 21 00 20 */	addi r1, r1, 0x20
/* 800EF760 000EAC80  4E 80 00 20 */	blr

glabel gap_data_ind
/* 800EF764 000EAC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EF768 000EAC88  7C 08 02 A6 */	mflr r0
/* 800EF76C 000EAC8C  3C A0 80 22 */	lis r5, lbl_80222D20@ha
/* 800EF770 000EAC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EF774 000EAC94  38 00 00 02 */	li r0, 2
/* 800EF778 000EAC98  38 A5 2D 20 */	addi r5, r5, lbl_80222D20@l
/* 800EF77C 000EAC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EF780 000EACA0  3B E5 00 AC */	addi r31, r5, 0xac
/* 800EF784 000EACA4  38 A0 00 00 */	li r5, 0
/* 800EF788 000EACA8  7C 09 03 A6 */	mtctr r0
.L_800EF78C:
/* 800EF78C 000EACAC  88 1F 00 00 */	lbz r0, 0(r31)
/* 800EF790 000EACB0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF794 000EACB4  41 82 00 14 */	beq .L_800EF7A8
/* 800EF798 000EACB8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF79C 000EACBC  7C 00 18 40 */	cmplw r0, r3
/* 800EF7A0 000EACC0  40 82 00 08 */	bne .L_800EF7A8
/* 800EF7A4 000EACC4  48 00 00 74 */	b .L_800EF818
.L_800EF7A8:
/* 800EF7A8 000EACC8  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF7AC 000EACCC  38 A5 00 01 */	addi r5, r5, 1
/* 800EF7B0 000EACD0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF7B4 000EACD4  41 82 00 14 */	beq .L_800EF7C8
/* 800EF7B8 000EACD8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF7BC 000EACDC  7C 00 18 40 */	cmplw r0, r3
/* 800EF7C0 000EACE0  40 82 00 08 */	bne .L_800EF7C8
/* 800EF7C4 000EACE4  48 00 00 54 */	b .L_800EF818
.L_800EF7C8:
/* 800EF7C8 000EACE8  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF7CC 000EACEC  38 A5 00 01 */	addi r5, r5, 1
/* 800EF7D0 000EACF0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF7D4 000EACF4  41 82 00 14 */	beq .L_800EF7E8
/* 800EF7D8 000EACF8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF7DC 000EACFC  7C 00 18 40 */	cmplw r0, r3
/* 800EF7E0 000EAD00  40 82 00 08 */	bne .L_800EF7E8
/* 800EF7E4 000EAD04  48 00 00 34 */	b .L_800EF818
.L_800EF7E8:
/* 800EF7E8 000EAD08  8C 1F 00 60 */	lbzu r0, 0x60(r31)
/* 800EF7EC 000EAD0C  38 A5 00 01 */	addi r5, r5, 1
/* 800EF7F0 000EAD10  2C 00 00 00 */	cmpwi r0, 0
/* 800EF7F4 000EAD14  41 82 00 14 */	beq .L_800EF808
/* 800EF7F8 000EAD18  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800EF7FC 000EAD1C  7C 00 18 40 */	cmplw r0, r3
/* 800EF800 000EAD20  40 82 00 08 */	bne .L_800EF808
/* 800EF804 000EAD24  48 00 00 14 */	b .L_800EF818
.L_800EF808:
/* 800EF808 000EAD28  38 A5 00 01 */	addi r5, r5, 1
/* 800EF80C 000EAD2C  3B FF 00 60 */	addi r31, r31, 0x60
/* 800EF810 000EAD30  42 00 FF 7C */	bdnz .L_800EF78C
/* 800EF814 000EAD34  3B E0 00 00 */	li r31, 0
.L_800EF818:
/* 800EF818 000EAD38  2C 1F 00 00 */	cmpwi r31, 0
/* 800EF81C 000EAD3C  40 82 00 10 */	bne .L_800EF82C
/* 800EF820 000EAD40  7C 83 23 78 */	mr r3, r4
/* 800EF824 000EAD44  4B FE A6 ED */	bl GKI_freebuf
/* 800EF828 000EAD48  48 00 00 38 */	b .L_800EF860
.L_800EF82C:
/* 800EF82C 000EAD4C  88 1F 00 00 */	lbz r0, 0(r31)
/* 800EF830 000EAD50  28 00 00 04 */	cmplwi r0, 4
/* 800EF834 000EAD54  40 82 00 24 */	bne .L_800EF858
/* 800EF838 000EAD58  38 7F 00 14 */	addi r3, r31, 0x14
/* 800EF83C 000EAD5C  4B FE AA F5 */	bl GKI_enqueue
/* 800EF840 000EAD60  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 800EF844 000EAD64  38 80 01 02 */	li r4, 0x102
/* 800EF848 000EAD68  A0 7F 00 04 */	lhz r3, 4(r31)
/* 800EF84C 000EAD6C  7D 89 03 A6 */	mtctr r12
/* 800EF850 000EAD70  4E 80 04 21 */	bctrl
/* 800EF854 000EAD74  48 00 00 0C */	b .L_800EF860
.L_800EF858:
/* 800EF858 000EAD78  7C 83 23 78 */	mr r3, r4
/* 800EF85C 000EAD7C  4B FE A6 B5 */	bl GKI_freebuf
.L_800EF860:
/* 800EF860 000EAD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF864 000EAD84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EF868 000EAD88  7C 08 03 A6 */	mtlr r0
/* 800EF86C 000EAD8C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF870 000EAD90  4E 80 00 20 */	blr

glabel gap_congestion_ind
/* 800EF874 000EAD94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EF878 000EAD98  7C 08 02 A6 */	mflr r0
/* 800EF87C 000EAD9C  3C A0 80 22 */	lis r5, lbl_80222D20@ha
/* 800EF880 000EADA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EF884 000EADA4  38 A5 2D 20 */	addi r5, r5, lbl_80222D20@l
/* 800EF888 000EADA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EF88C 000EADAC  7C 9F 23 78 */	mr r31, r4
/* 800EF890 000EADB0  93 C1 00 08 */	stw r30, 8(r1)
/* 800EF894 000EADB4  7C 7E 1B 78 */	mr r30, r3
/* 800EF898 000EADB8  88 05 00 28 */	lbz r0, 0x28(r5)
/* 800EF89C 000EADBC  28 00 00 04 */	cmplwi r0, 4
/* 800EF8A0 000EADC0  41 80 00 20 */	blt .L_800EF8C0
/* 800EF8A4 000EADC4  3C 60 00 0E */	lis r3, 0x000E0003@ha
/* 800EF8A8 000EADC8  3C 80 80 1A */	lis r4, lbl_8019D4C0@ha
/* 800EF8AC 000EADCC  7F E5 FB 78 */	mr r5, r31
/* 800EF8B0 000EADD0  7F C6 F3 78 */	mr r6, r30
/* 800EF8B4 000EADD4  38 63 00 03 */	addi r3, r3, 0x000E0003@l
/* 800EF8B8 000EADD8  38 84 D4 C0 */	addi r4, r4, lbl_8019D4C0@l
/* 800EF8BC 000EADDC  4B FE D8 61 */	bl LogMsg_2
.L_800EF8C0:
/* 800EF8C0 000EADE0  3C 60 80 22 */	lis r3, lbl_80222D20@ha
/* 800EF8C4 000EADE4  38 00 00 02 */	li r0, 2
/* 800EF8C8 000EADE8  38 63 2D 20 */	addi r3, r3, lbl_80222D20@l
/* 800EF8CC 000EADEC  38 80 00 00 */	li r4, 0
/* 800EF8D0 000EADF0  38 63 00 AC */	addi r3, r3, 0xac
/* 800EF8D4 000EADF4  7C 09 03 A6 */	mtctr r0
.L_800EF8D8:
/* 800EF8D8 000EADF8  88 03 00 00 */	lbz r0, 0(r3)
/* 800EF8DC 000EADFC  2C 00 00 00 */	cmpwi r0, 0
/* 800EF8E0 000EAE00  41 82 00 14 */	beq .L_800EF8F4
/* 800EF8E4 000EAE04  A0 03 00 06 */	lhz r0, 6(r3)
/* 800EF8E8 000EAE08  7C 00 F0 40 */	cmplw r0, r30
/* 800EF8EC 000EAE0C  40 82 00 08 */	bne .L_800EF8F4
/* 800EF8F0 000EAE10  48 00 00 74 */	b .L_800EF964
.L_800EF8F4:
/* 800EF8F4 000EAE14  8C 03 00 60 */	lbzu r0, 0x60(r3)
/* 800EF8F8 000EAE18  38 84 00 01 */	addi r4, r4, 1
/* 800EF8FC 000EAE1C  2C 00 00 00 */	cmpwi r0, 0
/* 800EF900 000EAE20  41 82 00 14 */	beq .L_800EF914
/* 800EF904 000EAE24  A0 03 00 06 */	lhz r0, 6(r3)
/* 800EF908 000EAE28  7C 00 F0 40 */	cmplw r0, r30
/* 800EF90C 000EAE2C  40 82 00 08 */	bne .L_800EF914
/* 800EF910 000EAE30  48 00 00 54 */	b .L_800EF964
.L_800EF914:
/* 800EF914 000EAE34  8C 03 00 60 */	lbzu r0, 0x60(r3)
/* 800EF918 000EAE38  38 84 00 01 */	addi r4, r4, 1
/* 800EF91C 000EAE3C  2C 00 00 00 */	cmpwi r0, 0
/* 800EF920 000EAE40  41 82 00 14 */	beq .L_800EF934
/* 800EF924 000EAE44  A0 03 00 06 */	lhz r0, 6(r3)
/* 800EF928 000EAE48  7C 00 F0 40 */	cmplw r0, r30
/* 800EF92C 000EAE4C  40 82 00 08 */	bne .L_800EF934
/* 800EF930 000EAE50  48 00 00 34 */	b .L_800EF964
.L_800EF934:
/* 800EF934 000EAE54  8C 03 00 60 */	lbzu r0, 0x60(r3)
/* 800EF938 000EAE58  38 84 00 01 */	addi r4, r4, 1
/* 800EF93C 000EAE5C  2C 00 00 00 */	cmpwi r0, 0
/* 800EF940 000EAE60  41 82 00 14 */	beq .L_800EF954
/* 800EF944 000EAE64  A0 03 00 06 */	lhz r0, 6(r3)
/* 800EF948 000EAE68  7C 00 F0 40 */	cmplw r0, r30
/* 800EF94C 000EAE6C  40 82 00 08 */	bne .L_800EF954
/* 800EF950 000EAE70  48 00 00 14 */	b .L_800EF964
.L_800EF954:
/* 800EF954 000EAE74  38 84 00 01 */	addi r4, r4, 1
/* 800EF958 000EAE78  38 63 00 60 */	addi r3, r3, 0x60
/* 800EF95C 000EAE7C  42 00 FF 7C */	bdnz .L_800EF8D8
/* 800EF960 000EAE80  38 60 00 00 */	li r3, 0
.L_800EF964:
/* 800EF964 000EAE84  2C 03 00 00 */	cmpwi r3, 0
/* 800EF968 000EAE88  41 82 00 28 */	beq .L_800EF990
/* 800EF96C 000EAE8C  7C 1F 00 D0 */	neg r0, r31
/* 800EF970 000EAE90  81 83 00 20 */	lwz r12, 0x20(r3)
/* 800EF974 000EAE94  7C 00 FB 78 */	or r0, r0, r31
/* 800EF978 000EAE98  A0 63 00 04 */	lhz r3, 4(r3)
/* 800EF97C 000EAE9C  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 800EF980 000EAEA0  38 04 01 04 */	addi r0, r4, 0x104
/* 800EF984 000EAEA4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 800EF988 000EAEA8  7D 89 03 A6 */	mtctr r12
/* 800EF98C 000EAEAC  4E 80 04 21 */	bctrl
.L_800EF990:
/* 800EF990 000EAEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF994 000EAEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EF998 000EAEB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EF99C 000EAEBC  7C 08 03 A6 */	mtlr r0
/* 800EF9A0 000EAEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF9A4 000EAEC4  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80222D20
	.skip 0x3B0
