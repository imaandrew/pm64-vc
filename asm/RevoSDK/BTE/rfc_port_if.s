.include "macros.inc"

.section .text, "ax"

glabel RFCOMM_StartRsp
/* 800FFC70 000FB190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FFC74 000FB194  7C 08 02 A6 */	mflr r0
/* 800FFC78 000FB198  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FFC7C 000FB19C  38 A1 00 08 */	addi r5, r1, 8
/* 800FFC80 000FB1A0  B0 81 00 08 */	sth r4, 8(r1)
/* 800FFC84 000FB1A4  38 80 00 07 */	li r4, 7
/* 800FFC88 000FB1A8  4B FF E2 05 */	bl rfc_mx_sm_execute
/* 800FFC8C 000FB1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FFC90 000FB1B0  7C 08 03 A6 */	mtlr r0
/* 800FFC94 000FB1B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800FFC98 000FB1B8  4E 80 00 20 */	blr

glabel RFCOMM_DlcEstablishReq
/* 800FFC9C 000FB1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FFCA0 000FB1C0  7C 08 02 A6 */	mflr r0
/* 800FFCA4 000FB1C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FFCA8 000FB1C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FFCAC 000FB1CC  7C 9F 23 78 */	mr r31, r4
/* 800FFCB0 000FB1D0  93 C1 00 08 */	stw r30, 8(r1)
/* 800FFCB4 000FB1D4  7C 7E 1B 78 */	mr r30, r3
/* 800FFCB8 000FB1D8  4B FF D5 21 */	bl port_find_mcb_dlci_port
/* 800FFCBC 000FB1DC  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 800FFCC0 000FB1E0  28 00 00 05 */	cmplwi r0, 5
/* 800FFCC4 000FB1E4  41 82 00 1C */	beq .L_800FFCE0
/* 800FFCC8 000FB1E8  7F C3 F3 78 */	mr r3, r30
/* 800FFCCC 000FB1EC  7F E4 FB 78 */	mr r4, r31
/* 800FFCD0 000FB1F0  38 A0 00 00 */	li r5, 0
/* 800FFCD4 000FB1F4  38 C0 00 01 */	li r6, 1
/* 800FFCD8 000FB1F8  4B FF C4 9D */	bl PORT_DlcEstablishCnf
/* 800FFCDC 000FB1FC  48 00 00 10 */	b .L_800FFCEC
.L_800FFCE0:
/* 800FFCE0 000FB200  38 80 00 09 */	li r4, 9
/* 800FFCE4 000FB204  38 A0 00 00 */	li r5, 0
/* 800FFCE8 000FB208  4B FF ED E9 */	bl rfc_port_sm_execute
.L_800FFCEC:
/* 800FFCEC 000FB20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FFCF0 000FB210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FFCF4 000FB214  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FFCF8 000FB218  7C 08 03 A6 */	mtlr r0
/* 800FFCFC 000FB21C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FFD00 000FB220  4E 80 00 20 */	blr

glabel RFCOMM_DlcEstablishRsp
/* 800FFD04 000FB224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FFD08 000FB228  7C 08 02 A6 */	mflr r0
/* 800FFD0C 000FB22C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FFD10 000FB230  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FFD14 000FB234  7C 9F 23 78 */	mr r31, r4
/* 800FFD18 000FB238  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FFD1C 000FB23C  7C 7E 1B 78 */	mr r30, r3
/* 800FFD20 000FB240  B0 C1 00 08 */	sth r6, 8(r1)
/* 800FFD24 000FB244  4B FF D4 B5 */	bl port_find_mcb_dlci_port
/* 800FFD28 000FB248  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 800FFD2C 000FB24C  28 00 00 05 */	cmplwi r0, 5
/* 800FFD30 000FB250  41 82 00 20 */	beq .L_800FFD50
/* 800FFD34 000FB254  A0 01 00 08 */	lhz r0, 8(r1)
/* 800FFD38 000FB258  2C 00 00 00 */	cmpwi r0, 0
/* 800FFD3C 000FB25C  40 82 00 14 */	bne .L_800FFD50
/* 800FFD40 000FB260  7F C3 F3 78 */	mr r3, r30
/* 800FFD44 000FB264  7F E4 FB 78 */	mr r4, r31
/* 800FFD48 000FB268  4B FF CA DD */	bl PORT_DlcReleaseInd
/* 800FFD4C 000FB26C  48 00 00 10 */	b .L_800FFD5C
.L_800FFD50:
/* 800FFD50 000FB270  38 A1 00 08 */	addi r5, r1, 8
/* 800FFD54 000FB274  38 80 00 0B */	li r4, 0xb
/* 800FFD58 000FB278  4B FF ED 79 */	bl rfc_port_sm_execute
.L_800FFD5C:
/* 800FFD5C 000FB27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FFD60 000FB280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FFD64 000FB284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FFD68 000FB288  7C 08 03 A6 */	mtlr r0
/* 800FFD6C 000FB28C  38 21 00 20 */	addi r1, r1, 0x20
/* 800FFD70 000FB290  4E 80 00 20 */	blr

glabel RFCOMM_ParNegReq
/* 800FFD74 000FB294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FFD78 000FB298  7C 08 02 A6 */	mflr r0
/* 800FFD7C 000FB29C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FFD80 000FB2A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FFD84 000FB2A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FFD88 000FB2A8  7C BE 2B 78 */	mr r30, r5
/* 800FFD8C 000FB2AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FFD90 000FB2B0  7C 9D 23 78 */	mr r29, r4
/* 800FFD94 000FB2B4  93 81 00 10 */	stw r28, 0x10(r1)
/* 800FFD98 000FB2B8  7C 7C 1B 78 */	mr r28, r3
/* 800FFD9C 000FB2BC  4B FF D4 3D */	bl port_find_mcb_dlci_port
/* 800FFDA0 000FB2C0  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 800FFDA4 000FB2C4  7C 7F 1B 78 */	mr r31, r3
/* 800FFDA8 000FB2C8  28 00 00 05 */	cmplwi r0, 5
/* 800FFDAC 000FB2CC  41 82 00 10 */	beq .L_800FFDBC
/* 800FFDB0 000FB2D0  38 00 00 0D */	li r0, 0xd
/* 800FFDB4 000FB2D4  98 03 00 0E */	stb r0, 0xe(r3)
/* 800FFDB8 000FB2D8  48 00 00 7C */	b .L_800FFE34
.L_800FFDBC:
/* 800FFDBC 000FB2DC  88 9C 00 72 */	lbz r4, 0x72(r28)
/* 800FFDC0 000FB2E0  38 00 00 02 */	li r0, 2
/* 800FFDC4 000FB2E4  2C 04 00 00 */	cmpwi r4, 0
/* 800FFDC8 000FB2E8  41 82 00 08 */	beq .L_800FFDD0
/* 800FFDCC 000FB2EC  7C 80 23 78 */	mr r0, r4
.L_800FFDD0:
/* 800FFDD0 000FB2F0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800FFDD4 000FB2F4  28 00 00 02 */	cmplwi r0, 2
/* 800FFDD8 000FB2F8  40 82 00 28 */	bne .L_800FFE00
/* 800FFDDC 000FB2FC  A0 83 00 9C */	lhz r4, 0x9c(r3)
/* 800FFDE0 000FB300  38 E0 00 F0 */	li r7, 0xf0
/* 800FFDE4 000FB304  38 00 00 07 */	li r0, 7
/* 800FFDE8 000FB308  28 04 00 07 */	cmplwi r4, 7
/* 800FFDEC 000FB30C  40 80 00 08 */	bge .L_800FFDF4
/* 800FFDF0 000FB310  7C 80 23 78 */	mr r0, r4
.L_800FFDF4:
/* 800FFDF4 000FB314  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 800FFDF8 000FB318  B1 03 00 9A */	sth r8, 0x9a(r3)
/* 800FFDFC 000FB31C  48 00 00 0C */	b .L_800FFE08
.L_800FFE00:
/* 800FFE00 000FB320  38 E0 00 00 */	li r7, 0
/* 800FFE04 000FB324  39 00 00 00 */	li r8, 0
.L_800FFE08:
/* 800FFE08 000FB328  88 03 00 69 */	lbz r0, 0x69(r3)
/* 800FFE0C 000FB32C  7F A4 EB 78 */	mr r4, r29
/* 800FFE10 000FB330  7F C6 F3 78 */	mr r6, r30
/* 800FFE14 000FB334  38 A0 00 01 */	li r5, 1
/* 800FFE18 000FB338  60 00 00 01 */	ori r0, r0, 1
/* 800FFE1C 000FB33C  98 03 00 69 */	stb r0, 0x69(r3)
/* 800FFE20 000FB340  7F 83 E3 78 */	mr r3, r28
/* 800FFE24 000FB344  48 00 07 E5 */	bl rfc_send_pn
/* 800FFE28 000FB348  7F E3 FB 78 */	mr r3, r31
/* 800FFE2C 000FB34C  38 80 00 3C */	li r4, 0x3c
/* 800FFE30 000FB350  48 00 1C E5 */	bl rfc_port_timer_start
.L_800FFE34:
/* 800FFE34 000FB354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FFE38 000FB358  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FFE3C 000FB35C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FFE40 000FB360  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FFE44 000FB364  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800FFE48 000FB368  7C 08 03 A6 */	mtlr r0
/* 800FFE4C 000FB36C  38 21 00 20 */	addi r1, r1, 0x20
/* 800FFE50 000FB370  4E 80 00 20 */	blr

glabel RFCOMM_ParNegRsp
/* 800FFE54 000FB374  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 800FFE58 000FB378  7C C9 33 78 */	mr r9, r6
/* 800FFE5C 000FB37C  7C E8 3B 78 */	mr r8, r7
/* 800FFE60 000FB380  28 00 00 05 */	cmplwi r0, 5
/* 800FFE64 000FB384  4C 82 00 20 */	bnelr
/* 800FFE68 000FB388  7C A6 2B 78 */	mr r6, r5
/* 800FFE6C 000FB38C  7D 27 4B 78 */	mr r7, r9
/* 800FFE70 000FB390  38 A0 00 00 */	li r5, 0
/* 800FFE74 000FB394  48 00 07 94 */	b rfc_send_pn
/* 800FFE78 000FB398  4E 80 00 20 */	blr

glabel RFCOMM_PortNegReq
/* 800FFE7C 000FB39C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FFE80 000FB3A0  7C 08 02 A6 */	mflr r0
/* 800FFE84 000FB3A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FFE88 000FB3A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FFE8C 000FB3AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FFE90 000FB3B0  7C BE 2B 78 */	mr r30, r5
/* 800FFE94 000FB3B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FFE98 000FB3B8  7C 9D 23 78 */	mr r29, r4
/* 800FFE9C 000FB3BC  93 81 00 10 */	stw r28, 0x10(r1)
/* 800FFEA0 000FB3C0  7C 7C 1B 78 */	mr r28, r3
/* 800FFEA4 000FB3C4  4B FF D3 35 */	bl port_find_mcb_dlci_port
/* 800FFEA8 000FB3C8  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 800FFEAC 000FB3CC  7C 7F 1B 78 */	mr r31, r3
/* 800FFEB0 000FB3D0  28 00 00 05 */	cmplwi r0, 5
/* 800FFEB4 000FB3D4  41 82 00 1C */	beq .L_800FFED0
/* 800FFEB8 000FB3D8  7F 83 E3 78 */	mr r3, r28
/* 800FFEBC 000FB3DC  7F A4 EB 78 */	mr r4, r29
/* 800FFEC0 000FB3E0  38 A0 00 00 */	li r5, 0
/* 800FFEC4 000FB3E4  38 C0 00 01 */	li r6, 1
/* 800FFEC8 000FB3E8  4B FF C5 41 */	bl PORT_PortNegCnf
/* 800FFECC 000FB3EC  48 00 00 4C */	b .L_800FFF18
.L_800FFED0:
/* 800FFED0 000FB3F0  2C 1E 00 00 */	cmpwi r30, 0
/* 800FFED4 000FB3F4  40 82 00 14 */	bne .L_800FFEE8
/* 800FFED8 000FB3F8  88 03 00 69 */	lbz r0, 0x69(r3)
/* 800FFEDC 000FB3FC  60 00 00 02 */	ori r0, r0, 2
/* 800FFEE0 000FB400  98 03 00 69 */	stb r0, 0x69(r3)
/* 800FFEE4 000FB404  48 00 00 10 */	b .L_800FFEF4
.L_800FFEE8:
/* 800FFEE8 000FB408  88 03 00 69 */	lbz r0, 0x69(r3)
/* 800FFEEC 000FB40C  60 00 00 04 */	ori r0, r0, 4
/* 800FFEF0 000FB410  98 03 00 69 */	stb r0, 0x69(r3)
.L_800FFEF4:
/* 800FFEF4 000FB414  7F 83 E3 78 */	mr r3, r28
/* 800FFEF8 000FB418  7F A4 EB 78 */	mr r4, r29
/* 800FFEFC 000FB41C  7F C6 F3 78 */	mr r6, r30
/* 800FFF00 000FB420  38 A0 00 01 */	li r5, 1
/* 800FFF04 000FB424  38 E0 3F 7F */	li r7, 0x3f7f
/* 800FFF08 000FB428  48 00 0A C1 */	bl rfc_send_rpn
/* 800FFF0C 000FB42C  7F E3 FB 78 */	mr r3, r31
/* 800FFF10 000FB430  38 80 00 3C */	li r4, 0x3c
/* 800FFF14 000FB434  48 00 1C 01 */	bl rfc_port_timer_start
.L_800FFF18:
/* 800FFF18 000FB438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FFF1C 000FB43C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FFF20 000FB440  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FFF24 000FB444  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FFF28 000FB448  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800FFF2C 000FB44C  7C 08 03 A6 */	mtlr r0
/* 800FFF30 000FB450  38 21 00 20 */	addi r1, r1, 0x20
/* 800FFF34 000FB454  4E 80 00 20 */	blr

glabel RFCOMM_PortNegRsp
/* 800FFF38 000FB458  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 800FFF3C 000FB45C  7C C7 33 78 */	mr r7, r6
/* 800FFF40 000FB460  28 00 00 05 */	cmplwi r0, 5
/* 800FFF44 000FB464  4C 82 00 20 */	bnelr
/* 800FFF48 000FB468  7C A6 2B 78 */	mr r6, r5
/* 800FFF4C 000FB46C  38 A0 00 00 */	li r5, 0
/* 800FFF50 000FB470  48 00 0A 78 */	b rfc_send_rpn
/* 800FFF54 000FB474  4E 80 00 20 */	blr

glabel RFCOMM_ControlReq
/* 800FFF58 000FB478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FFF5C 000FB47C  7C 08 02 A6 */	mflr r0
/* 800FFF60 000FB480  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FFF64 000FB484  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FFF68 000FB488  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FFF6C 000FB48C  7C BE 2B 78 */	mr r30, r5
/* 800FFF70 000FB490  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FFF74 000FB494  7C 9D 23 78 */	mr r29, r4
/* 800FFF78 000FB498  93 81 00 10 */	stw r28, 0x10(r1)
/* 800FFF7C 000FB49C  7C 7C 1B 78 */	mr r28, r3
/* 800FFF80 000FB4A0  4B FF D2 59 */	bl port_find_mcb_dlci_port
/* 800FFF84 000FB4A4  88 03 00 02 */	lbz r0, 2(r3)
/* 800FFF88 000FB4A8  7C 7F 1B 78 */	mr r31, r3
/* 800FFF8C 000FB4AC  28 00 00 02 */	cmplwi r0, 2
/* 800FFF90 000FB4B0  40 82 00 4C */	bne .L_800FFFDC
/* 800FFF94 000FB4B4  88 03 00 68 */	lbz r0, 0x68(r3)
/* 800FFF98 000FB4B8  28 00 00 04 */	cmplwi r0, 4
/* 800FFF9C 000FB4BC  41 82 00 08 */	beq .L_800FFFA4
/* 800FFFA0 000FB4C0  48 00 00 3C */	b .L_800FFFDC
.L_800FFFA4:
/* 800FFFA4 000FB4C4  88 03 00 64 */	lbz r0, 0x64(r3)
/* 800FFFA8 000FB4C8  7F A4 EB 78 */	mr r4, r29
/* 800FFFAC 000FB4CC  7F C6 F3 78 */	mr r6, r30
/* 800FFFB0 000FB4D0  38 A0 00 01 */	li r5, 1
/* 800FFFB4 000FB4D4  60 00 00 01 */	ori r0, r0, 1
/* 800FFFB8 000FB4D8  98 03 00 64 */	stb r0, 0x64(r3)
/* 800FFFBC 000FB4DC  88 03 00 69 */	lbz r0, 0x69(r3)
/* 800FFFC0 000FB4E0  60 00 00 08 */	ori r0, r0, 8
/* 800FFFC4 000FB4E4  98 03 00 69 */	stb r0, 0x69(r3)
/* 800FFFC8 000FB4E8  7F 83 E3 78 */	mr r3, r28
/* 800FFFCC 000FB4EC  48 00 08 2D */	bl rfc_send_msc
/* 800FFFD0 000FB4F0  7F E3 FB 78 */	mr r3, r31
/* 800FFFD4 000FB4F4  38 80 00 3C */	li r4, 0x3c
/* 800FFFD8 000FB4F8  48 00 1B 3D */	bl rfc_port_timer_start
.L_800FFFDC:
/* 800FFFDC 000FB4FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FFFE0 000FB500  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FFFE4 000FB504  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FFFE8 000FB508  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FFFEC 000FB50C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800FFFF0 000FB510  7C 08 03 A6 */	mtlr r0
/* 800FFFF4 000FB514  38 21 00 20 */	addi r1, r1, 0x20
/* 800FFFF8 000FB518  4E 80 00 20 */	blr

glabel RFCOMM_FlowReq
/* 800FFFFC 000FB51C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80100000 000FB520  7C 08 02 A6 */	mflr r0
/* 80100004 000FB524  90 01 00 24 */	stw r0, 0x24(r1)
/* 80100008 000FB528  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010000C 000FB52C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80100010 000FB530  7C BE 2B 78 */	mr r30, r5
/* 80100014 000FB534  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80100018 000FB538  7C 9D 23 78 */	mr r29, r4
/* 8010001C 000FB53C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80100020 000FB540  7C 7C 1B 78 */	mr r28, r3
/* 80100024 000FB544  4B FF D1 B5 */	bl port_find_mcb_dlci_port
/* 80100028 000FB548  88 03 00 02 */	lbz r0, 2(r3)
/* 8010002C 000FB54C  7C 7F 1B 78 */	mr r31, r3
/* 80100030 000FB550  28 00 00 02 */	cmplwi r0, 2
/* 80100034 000FB554  40 82 00 4C */	bne .L_80100080
/* 80100038 000FB558  88 03 00 68 */	lbz r0, 0x68(r3)
/* 8010003C 000FB55C  28 00 00 04 */	cmplwi r0, 4
/* 80100040 000FB560  41 82 00 08 */	beq .L_80100048
/* 80100044 000FB564  48 00 00 3C */	b .L_80100080
.L_80100048:
/* 80100048 000FB568  7F C0 00 34 */	cntlzw r0, r30
/* 8010004C 000FB56C  7F A4 EB 78 */	mr r4, r29
/* 80100050 000FB570  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80100054 000FB574  38 DF 00 5A */	addi r6, r31, 0x5a
/* 80100058 000FB578  98 03 00 5E */	stb r0, 0x5e(r3)
/* 8010005C 000FB57C  38 A0 00 01 */	li r5, 1
/* 80100060 000FB580  88 03 00 69 */	lbz r0, 0x69(r3)
/* 80100064 000FB584  60 00 00 08 */	ori r0, r0, 8
/* 80100068 000FB588  98 03 00 69 */	stb r0, 0x69(r3)
/* 8010006C 000FB58C  7F 83 E3 78 */	mr r3, r28
/* 80100070 000FB590  48 00 07 89 */	bl rfc_send_msc
/* 80100074 000FB594  7F E3 FB 78 */	mr r3, r31
/* 80100078 000FB598  38 80 00 3C */	li r4, 0x3c
/* 8010007C 000FB59C  48 00 1A 99 */	bl rfc_port_timer_start
.L_80100080:
/* 80100080 000FB5A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80100084 000FB5A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80100088 000FB5A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010008C 000FB5AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80100090 000FB5B0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80100094 000FB5B4  7C 08 03 A6 */	mtlr r0
/* 80100098 000FB5B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8010009C 000FB5BC  4E 80 00 20 */	blr

glabel RFCOMM_LineStatusReq
/* 801000A0 000FB5C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801000A4 000FB5C4  7C 08 02 A6 */	mflr r0
/* 801000A8 000FB5C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801000AC 000FB5CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801000B0 000FB5D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801000B4 000FB5D4  7C BE 2B 78 */	mr r30, r5
/* 801000B8 000FB5D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801000BC 000FB5DC  7C 9D 23 78 */	mr r29, r4
/* 801000C0 000FB5E0  93 81 00 10 */	stw r28, 0x10(r1)
/* 801000C4 000FB5E4  7C 7C 1B 78 */	mr r28, r3
/* 801000C8 000FB5E8  4B FF D1 11 */	bl port_find_mcb_dlci_port
/* 801000CC 000FB5EC  88 03 00 02 */	lbz r0, 2(r3)
/* 801000D0 000FB5F0  7C 7F 1B 78 */	mr r31, r3
/* 801000D4 000FB5F4  28 00 00 02 */	cmplwi r0, 2
/* 801000D8 000FB5F8  40 82 00 40 */	bne .L_80100118
/* 801000DC 000FB5FC  88 03 00 68 */	lbz r0, 0x68(r3)
/* 801000E0 000FB600  28 00 00 04 */	cmplwi r0, 4
/* 801000E4 000FB604  41 82 00 08 */	beq .L_801000EC
/* 801000E8 000FB608  48 00 00 30 */	b .L_80100118
.L_801000EC:
/* 801000EC 000FB60C  88 03 00 69 */	lbz r0, 0x69(r3)
/* 801000F0 000FB610  7F A4 EB 78 */	mr r4, r29
/* 801000F4 000FB614  7F C6 F3 78 */	mr r6, r30
/* 801000F8 000FB618  38 A0 00 01 */	li r5, 1
/* 801000FC 000FB61C  60 00 00 10 */	ori r0, r0, 0x10
/* 80100100 000FB620  98 03 00 69 */	stb r0, 0x69(r3)
/* 80100104 000FB624  7F 83 E3 78 */	mr r3, r28
/* 80100108 000FB628  48 00 08 11 */	bl rfc_send_rls
/* 8010010C 000FB62C  7F E3 FB 78 */	mr r3, r31
/* 80100110 000FB630  38 80 00 3C */	li r4, 0x3c
/* 80100114 000FB634  48 00 1A 01 */	bl rfc_port_timer_start
.L_80100118:
/* 80100118 000FB638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010011C 000FB63C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80100120 000FB640  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80100124 000FB644  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80100128 000FB648  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8010012C 000FB64C  7C 08 03 A6 */	mtlr r0
/* 80100130 000FB650  38 21 00 20 */	addi r1, r1, 0x20
/* 80100134 000FB654  4E 80 00 20 */	blr

glabel RFCOMM_DlcReleaseReq
/* 80100138 000FB658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010013C 000FB65C  7C 08 02 A6 */	mflr r0
/* 80100140 000FB660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80100144 000FB664  4B FF D0 95 */	bl port_find_mcb_dlci_port
/* 80100148 000FB668  38 80 00 0C */	li r4, 0xc
/* 8010014C 000FB66C  38 A0 00 00 */	li r5, 0
/* 80100150 000FB670  4B FF E9 81 */	bl rfc_port_sm_execute
/* 80100154 000FB674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80100158 000FB678  7C 08 03 A6 */	mtlr r0
/* 8010015C 000FB67C  38 21 00 10 */	addi r1, r1, 0x10
/* 80100160 000FB680  4E 80 00 20 */	blr

glabel RFCOMM_DataReq
/* 80100164 000FB684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80100168 000FB688  7C 08 02 A6 */	mflr r0
/* 8010016C 000FB68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80100170 000FB690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80100174 000FB694  7C BF 2B 78 */	mr r31, r5
/* 80100178 000FB698  4B FF D0 61 */	bl port_find_mcb_dlci_port
/* 8010017C 000FB69C  7F E5 FB 78 */	mr r5, r31
/* 80100180 000FB6A0  38 80 00 0E */	li r4, 0xe
/* 80100184 000FB6A4  4B FF E9 4D */	bl rfc_port_sm_execute
/* 80100188 000FB6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010018C 000FB6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80100190 000FB6B0  7C 08 03 A6 */	mtlr r0
/* 80100194 000FB6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80100198 000FB6B8  4E 80 00 20 */	blr
