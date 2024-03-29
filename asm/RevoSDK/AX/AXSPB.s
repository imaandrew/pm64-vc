.include "macros.inc"

.section .text, "ax"

glabel __AXGetStudio
/* 800B43E0 000AF900  3C 60 80 1D */	lis r3, lbl_801CF320@ha
/* 800B43E4 000AF904  38 63 F3 20 */	addi r3, r3, lbl_801CF320@l
/* 800B43E8 000AF908  4E 80 00 20 */	blr

glabel __AXDepopFadeMain
/* 800B43EC 000AF90C  3C C0 2A AB */	lis r6, 0x2AAAAAAB@ha
/* 800B43F0 000AF910  80 E3 00 00 */	lwz r7, 0(r3)
/* 800B43F4 000AF914  38 06 AA AB */	addi r0, r6, 0x2AAAAAAB@l
/* 800B43F8 000AF918  7C 00 38 96 */	mulhw r0, r0, r7
/* 800B43FC 000AF91C  7C 00 26 70 */	srawi r0, r0, 4
/* 800B4400 000AF920  54 06 0F FE */	srwi r6, r0, 0x1f
/* 800B4404 000AF924  7C 00 32 15 */	add. r0, r0, r6
/* 800B4408 000AF928  41 82 00 3C */	beq .L_800B4444
/* 800B440C 000AF92C  2C 00 00 14 */	cmpwi r0, 0x14
/* 800B4410 000AF930  40 81 00 08 */	ble .L_800B4418
/* 800B4414 000AF934  38 00 00 14 */	li r0, 0x14
.L_800B4418:
/* 800B4418 000AF938  2C 00 FF EC */	cmpwi r0, -20
/* 800B441C 000AF93C  40 80 00 08 */	bge .L_800B4424
/* 800B4420 000AF940  38 00 FF EC */	li r0, -20
.L_800B4424:
/* 800B4424 000AF944  90 E4 00 00 */	stw r7, 0(r4)
/* 800B4428 000AF948  1C C0 00 60 */	mulli r6, r0, 0x60
/* 800B442C 000AF94C  7C 00 00 D0 */	neg r0, r0
/* 800B4430 000AF950  80 83 00 00 */	lwz r4, 0(r3)
/* 800B4434 000AF954  7C 86 20 50 */	subf r4, r6, r4
/* 800B4438 000AF958  90 83 00 00 */	stw r4, 0(r3)
/* 800B443C 000AF95C  B0 05 00 00 */	sth r0, 0(r5)
/* 800B4440 000AF960  4E 80 00 20 */	blr
.L_800B4444:
/* 800B4444 000AF964  38 00 00 00 */	li r0, 0
/* 800B4448 000AF968  90 03 00 00 */	stw r0, 0(r3)
/* 800B444C 000AF96C  90 04 00 00 */	stw r0, 0(r4)
/* 800B4450 000AF970  B0 05 00 00 */	sth r0, 0(r5)
/* 800B4454 000AF974  4E 80 00 20 */	blr

glabel __AXDepopFadeRmt
/* 800B4458 000AF978  3C C0 38 E4 */	lis r6, 0x38E38E39@ha
/* 800B445C 000AF97C  80 E3 00 00 */	lwz r7, 0(r3)
/* 800B4460 000AF980  38 06 8E 39 */	addi r0, r6, 0x38E38E39@l
/* 800B4464 000AF984  7C 00 38 96 */	mulhw r0, r0, r7
/* 800B4468 000AF988  7C 00 16 70 */	srawi r0, r0, 2
/* 800B446C 000AF98C  54 06 0F FE */	srwi r6, r0, 0x1f
/* 800B4470 000AF990  7C 00 32 15 */	add. r0, r0, r6
/* 800B4474 000AF994  41 82 00 3C */	beq .L_800B44B0
/* 800B4478 000AF998  2C 00 00 14 */	cmpwi r0, 0x14
/* 800B447C 000AF99C  40 81 00 08 */	ble .L_800B4484
/* 800B4480 000AF9A0  38 00 00 14 */	li r0, 0x14
.L_800B4484:
/* 800B4484 000AF9A4  2C 00 FF EC */	cmpwi r0, -20
/* 800B4488 000AF9A8  40 80 00 08 */	bge .L_800B4490
/* 800B448C 000AF9AC  38 00 FF EC */	li r0, -20
.L_800B4490:
/* 800B4490 000AF9B0  90 E4 00 00 */	stw r7, 0(r4)
/* 800B4494 000AF9B4  1C C0 00 12 */	mulli r6, r0, 0x12
/* 800B4498 000AF9B8  7C 00 00 D0 */	neg r0, r0
/* 800B449C 000AF9BC  80 83 00 00 */	lwz r4, 0(r3)
/* 800B44A0 000AF9C0  7C 86 20 50 */	subf r4, r6, r4
/* 800B44A4 000AF9C4  90 83 00 00 */	stw r4, 0(r3)
/* 800B44A8 000AF9C8  B0 05 00 00 */	sth r0, 0(r5)
/* 800B44AC 000AF9CC  4E 80 00 20 */	blr
.L_800B44B0:
/* 800B44B0 000AF9D0  38 00 00 00 */	li r0, 0
/* 800B44B4 000AF9D4  90 03 00 00 */	stw r0, 0(r3)
/* 800B44B8 000AF9D8  90 04 00 00 */	stw r0, 0(r4)
/* 800B44BC 000AF9DC  B0 05 00 00 */	sth r0, 0(r5)
/* 800B44C0 000AF9E0  4E 80 00 20 */	blr

glabel __AXPrintStudio
/* 800B44C4 000AF9E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B44C8 000AF9E8  7C 08 02 A6 */	mflr r0
/* 800B44CC 000AF9EC  38 6D 91 2C */	addi r3, r13, lbl_802475AC@sda21
/* 800B44D0 000AF9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B44D4 000AF9F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B44D8 000AF9F8  3F E0 80 1D */	lis r31, lbl_801CF320@ha
/* 800B44DC 000AF9FC  38 9F F3 20 */	addi r4, r31, lbl_801CF320@l
/* 800B44E0 000AFA00  38 A4 00 04 */	addi r5, r4, 4
/* 800B44E4 000AFA04  4B FF FF 09 */	bl __AXDepopFadeMain
/* 800B44E8 000AFA08  3B FF F3 20 */	addi r31, r31, -3296
/* 800B44EC 000AFA0C  38 6D 91 28 */	addi r3, r13, lbl_802475A8@sda21
/* 800B44F0 000AFA10  38 9F 00 06 */	addi r4, r31, 6
/* 800B44F4 000AFA14  38 BF 00 0A */	addi r5, r31, 0xa
/* 800B44F8 000AFA18  4B FF FE F5 */	bl __AXDepopFadeMain
/* 800B44FC 000AFA1C  38 9F 00 0C */	addi r4, r31, 0xc
/* 800B4500 000AFA20  38 BF 00 10 */	addi r5, r31, 0x10
/* 800B4504 000AFA24  38 6D 91 24 */	addi r3, r13, lbl_802475A4@sda21
/* 800B4508 000AFA28  4B FF FE E5 */	bl __AXDepopFadeMain
/* 800B450C 000AFA2C  38 9F 00 12 */	addi r4, r31, 0x12
/* 800B4510 000AFA30  38 BF 00 16 */	addi r5, r31, 0x16
/* 800B4514 000AFA34  38 6D 91 20 */	addi r3, r13, lbl_802475A0@sda21
/* 800B4518 000AFA38  4B FF FE D5 */	bl __AXDepopFadeMain
/* 800B451C 000AFA3C  38 9F 00 18 */	addi r4, r31, 0x18
/* 800B4520 000AFA40  38 BF 00 1C */	addi r5, r31, 0x1c
/* 800B4524 000AFA44  38 6D 91 1C */	addi r3, r13, lbl_8024759C@sda21
/* 800B4528 000AFA48  4B FF FE C5 */	bl __AXDepopFadeMain
/* 800B452C 000AFA4C  38 9F 00 1E */	addi r4, r31, 0x1e
/* 800B4530 000AFA50  38 BF 00 22 */	addi r5, r31, 0x22
/* 800B4534 000AFA54  38 6D 91 18 */	addi r3, r13, lbl_80247598@sda21
/* 800B4538 000AFA58  4B FF FE B5 */	bl __AXDepopFadeMain
/* 800B453C 000AFA5C  38 9F 00 24 */	addi r4, r31, 0x24
/* 800B4540 000AFA60  38 BF 00 28 */	addi r5, r31, 0x28
/* 800B4544 000AFA64  38 6D 91 14 */	addi r3, r13, lbl_80247594@sda21
/* 800B4548 000AFA68  4B FF FE A5 */	bl __AXDepopFadeMain
/* 800B454C 000AFA6C  38 9F 00 2A */	addi r4, r31, 0x2a
/* 800B4550 000AFA70  38 BF 00 2E */	addi r5, r31, 0x2e
/* 800B4554 000AFA74  38 6D 91 10 */	addi r3, r13, lbl_80247590@sda21
/* 800B4558 000AFA78  4B FF FE 95 */	bl __AXDepopFadeMain
/* 800B455C 000AFA7C  38 9F 00 30 */	addi r4, r31, 0x30
/* 800B4560 000AFA80  38 BF 00 34 */	addi r5, r31, 0x34
/* 800B4564 000AFA84  38 6D 91 0C */	addi r3, r13, lbl_8024758C@sda21
/* 800B4568 000AFA88  4B FF FE 85 */	bl __AXDepopFadeMain
/* 800B456C 000AFA8C  38 9F 00 36 */	addi r4, r31, 0x36
/* 800B4570 000AFA90  38 BF 00 3A */	addi r5, r31, 0x3a
/* 800B4574 000AFA94  38 6D 91 08 */	addi r3, r13, lbl_80247588@sda21
/* 800B4578 000AFA98  4B FF FE 75 */	bl __AXDepopFadeMain
/* 800B457C 000AFA9C  38 9F 00 3C */	addi r4, r31, 0x3c
/* 800B4580 000AFAA0  38 BF 00 40 */	addi r5, r31, 0x40
/* 800B4584 000AFAA4  38 6D 91 04 */	addi r3, r13, lbl_80247584@sda21
/* 800B4588 000AFAA8  4B FF FE 65 */	bl __AXDepopFadeMain
/* 800B458C 000AFAAC  38 9F 00 42 */	addi r4, r31, 0x42
/* 800B4590 000AFAB0  38 BF 00 46 */	addi r5, r31, 0x46
/* 800B4594 000AFAB4  38 6D 91 00 */	addi r3, r13, lbl_80247580@sda21
/* 800B4598 000AFAB8  4B FF FE 55 */	bl __AXDepopFadeMain
/* 800B459C 000AFABC  38 9F 00 48 */	addi r4, r31, 0x48
/* 800B45A0 000AFAC0  38 BF 00 4C */	addi r5, r31, 0x4c
/* 800B45A4 000AFAC4  38 6D 90 FC */	addi r3, r13, lbl_8024757C@sda21
/* 800B45A8 000AFAC8  4B FF FE B1 */	bl __AXDepopFadeRmt
/* 800B45AC 000AFACC  38 9F 00 54 */	addi r4, r31, 0x54
/* 800B45B0 000AFAD0  38 BF 00 58 */	addi r5, r31, 0x58
/* 800B45B4 000AFAD4  38 6D 90 F8 */	addi r3, r13, lbl_80247578@sda21
/* 800B45B8 000AFAD8  4B FF FE A1 */	bl __AXDepopFadeRmt
/* 800B45BC 000AFADC  38 9F 00 60 */	addi r4, r31, 0x60
/* 800B45C0 000AFAE0  38 BF 00 64 */	addi r5, r31, 0x64
/* 800B45C4 000AFAE4  38 6D 90 F4 */	addi r3, r13, lbl_80247574@sda21
/* 800B45C8 000AFAE8  4B FF FE 91 */	bl __AXDepopFadeRmt
/* 800B45CC 000AFAEC  38 9F 00 6C */	addi r4, r31, 0x6c
/* 800B45D0 000AFAF0  38 BF 00 70 */	addi r5, r31, 0x70
/* 800B45D4 000AFAF4  38 6D 90 F0 */	addi r3, r13, lbl_80247570@sda21
/* 800B45D8 000AFAF8  4B FF FE 81 */	bl __AXDepopFadeRmt
/* 800B45DC 000AFAFC  38 9F 00 4E */	addi r4, r31, 0x4e
/* 800B45E0 000AFB00  38 BF 00 52 */	addi r5, r31, 0x52
/* 800B45E4 000AFB04  38 6D 90 EC */	addi r3, r13, lbl_8024756C@sda21
/* 800B45E8 000AFB08  4B FF FE 71 */	bl __AXDepopFadeRmt
/* 800B45EC 000AFB0C  38 9F 00 5A */	addi r4, r31, 0x5a
/* 800B45F0 000AFB10  38 BF 00 5E */	addi r5, r31, 0x5e
/* 800B45F4 000AFB14  38 6D 90 E8 */	addi r3, r13, lbl_80247568@sda21
/* 800B45F8 000AFB18  4B FF FE 61 */	bl __AXDepopFadeRmt
/* 800B45FC 000AFB1C  38 9F 00 66 */	addi r4, r31, 0x66
/* 800B4600 000AFB20  38 BF 00 6A */	addi r5, r31, 0x6a
/* 800B4604 000AFB24  38 6D 90 E4 */	addi r3, r13, lbl_80247564@sda21
/* 800B4608 000AFB28  4B FF FE 51 */	bl __AXDepopFadeRmt
/* 800B460C 000AFB2C  38 9F 00 72 */	addi r4, r31, 0x72
/* 800B4610 000AFB30  38 BF 00 76 */	addi r5, r31, 0x76
/* 800B4614 000AFB34  38 6D 90 E0 */	addi r3, r13, lbl_80247560@sda21
/* 800B4618 000AFB38  4B FF FE 41 */	bl __AXDepopFadeRmt
/* 800B461C 000AFB3C  7F E3 FB 78 */	mr r3, r31
/* 800B4620 000AFB40  38 80 00 78 */	li r4, 0x78
/* 800B4624 000AFB44  4B FD C6 49 */	bl DCFlushRange
/* 800B4628 000AFB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B462C 000AFB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B4630 000AFB50  7C 08 03 A6 */	mtlr r0
/* 800B4634 000AFB54  38 21 00 10 */	addi r1, r1, 0x10
/* 800B4638 000AFB58  4E 80 00 20 */	blr

glabel __AXSPBInit
/* 800B463C 000AFB5C  38 00 00 00 */	li r0, 0
/* 800B4640 000AFB60  90 0D 90 E0 */	stw r0, lbl_80247560@sda21(r13)
/* 800B4644 000AFB64  90 0D 90 E4 */	stw r0, lbl_80247564@sda21(r13)
/* 800B4648 000AFB68  90 0D 90 E8 */	stw r0, lbl_80247568@sda21(r13)
/* 800B464C 000AFB6C  90 0D 90 EC */	stw r0, lbl_8024756C@sda21(r13)
/* 800B4650 000AFB70  90 0D 90 F0 */	stw r0, lbl_80247570@sda21(r13)
/* 800B4654 000AFB74  90 0D 90 F4 */	stw r0, lbl_80247574@sda21(r13)
/* 800B4658 000AFB78  90 0D 90 F8 */	stw r0, lbl_80247578@sda21(r13)
/* 800B465C 000AFB7C  90 0D 90 FC */	stw r0, lbl_8024757C@sda21(r13)
/* 800B4660 000AFB80  90 0D 91 00 */	stw r0, lbl_80247580@sda21(r13)
/* 800B4664 000AFB84  90 0D 91 04 */	stw r0, lbl_80247584@sda21(r13)
/* 800B4668 000AFB88  90 0D 91 08 */	stw r0, lbl_80247588@sda21(r13)
/* 800B466C 000AFB8C  90 0D 91 0C */	stw r0, lbl_8024758C@sda21(r13)
/* 800B4670 000AFB90  90 0D 91 10 */	stw r0, lbl_80247590@sda21(r13)
/* 800B4674 000AFB94  90 0D 91 14 */	stw r0, lbl_80247594@sda21(r13)
/* 800B4678 000AFB98  90 0D 91 18 */	stw r0, lbl_80247598@sda21(r13)
/* 800B467C 000AFB9C  90 0D 91 1C */	stw r0, lbl_8024759C@sda21(r13)
/* 800B4680 000AFBA0  90 0D 91 20 */	stw r0, lbl_802475A0@sda21(r13)
/* 800B4684 000AFBA4  90 0D 91 24 */	stw r0, lbl_802475A4@sda21(r13)
/* 800B4688 000AFBA8  90 0D 91 28 */	stw r0, lbl_802475A8@sda21(r13)
/* 800B468C 000AFBAC  90 0D 91 2C */	stw r0, lbl_802475AC@sda21(r13)
/* 800B4690 000AFBB0  4E 80 00 20 */	blr

glabel __AXSPBQuit
/* 800B4694 000AFBB4  4E 80 00 20 */	blr

glabel __AXDepopVoice
/* 800B4698 000AFBB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B469C 000AFBBC  7C 08 02 A6 */	mflr r0
/* 800B46A0 000AFBC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B46A4 000AFBC4  39 61 00 20 */	addi r11, r1, 0x20
/* 800B46A8 000AFBC8  48 0A 82 9D */	bl _savegpr_27
/* 800B46AC 000AFBCC  80 AD 91 2C */	lwz r5, lbl_802475AC@sda21(r13)
/* 800B46B0 000AFBD0  A8 03 00 52 */	lha r0, 0x52(r3)
/* 800B46B4 000AFBD4  80 8D 91 20 */	lwz r4, lbl_802475A0@sda21(r13)
/* 800B46B8 000AFBD8  7C 05 02 14 */	add r0, r5, r0
/* 800B46BC 000AFBDC  80 ED 91 14 */	lwz r7, lbl_80247594@sda21(r13)
/* 800B46C0 000AFBE0  90 0D 91 2C */	stw r0, lbl_802475AC@sda21(r13)
/* 800B46C4 000AFBE4  80 CD 91 08 */	lwz r6, lbl_80247588@sda21(r13)
/* 800B46C8 000AFBE8  A8 03 00 54 */	lha r0, 0x54(r3)
/* 800B46CC 000AFBEC  80 AD 91 28 */	lwz r5, lbl_802475A8@sda21(r13)
/* 800B46D0 000AFBF0  7C 04 02 14 */	add r0, r4, r0
/* 800B46D4 000AFBF4  80 8D 91 1C */	lwz r4, lbl_8024759C@sda21(r13)
/* 800B46D8 000AFBF8  90 0D 91 20 */	stw r0, lbl_802475A0@sda21(r13)
/* 800B46DC 000AFBFC  83 6D 91 10 */	lwz r27, lbl_80247590@sda21(r13)
/* 800B46E0 000AFC00  A8 03 00 56 */	lha r0, 0x56(r3)
/* 800B46E4 000AFC04  83 8D 91 04 */	lwz r28, lbl_80247584@sda21(r13)
/* 800B46E8 000AFC08  7C 07 02 14 */	add r0, r7, r0
/* 800B46EC 000AFC0C  83 AD 91 24 */	lwz r29, lbl_802475A4@sda21(r13)
/* 800B46F0 000AFC10  90 0D 91 14 */	stw r0, lbl_80247594@sda21(r13)
/* 800B46F4 000AFC14  83 CD 91 18 */	lwz r30, lbl_80247598@sda21(r13)
/* 800B46F8 000AFC18  A8 03 00 58 */	lha r0, 0x58(r3)
/* 800B46FC 000AFC1C  83 ED 91 0C */	lwz r31, lbl_8024758C@sda21(r13)
/* 800B4700 000AFC20  7C 06 02 14 */	add r0, r6, r0
/* 800B4704 000AFC24  81 8D 91 00 */	lwz r12, lbl_80247580@sda21(r13)
/* 800B4708 000AFC28  90 0D 91 08 */	stw r0, lbl_80247588@sda21(r13)
/* 800B470C 000AFC2C  81 6D 90 FC */	lwz r11, lbl_8024757C@sda21(r13)
/* 800B4710 000AFC30  A8 03 00 5A */	lha r0, 0x5a(r3)
/* 800B4714 000AFC34  81 4D 90 F8 */	lwz r10, lbl_80247578@sda21(r13)
/* 800B4718 000AFC38  7C 05 02 14 */	add r0, r5, r0
/* 800B471C 000AFC3C  81 2D 90 F4 */	lwz r9, lbl_80247574@sda21(r13)
/* 800B4720 000AFC40  90 0D 91 28 */	stw r0, lbl_802475A8@sda21(r13)
/* 800B4724 000AFC44  81 0D 90 F0 */	lwz r8, lbl_80247570@sda21(r13)
/* 800B4728 000AFC48  A8 03 00 5C */	lha r0, 0x5c(r3)
/* 800B472C 000AFC4C  80 ED 90 EC */	lwz r7, lbl_8024756C@sda21(r13)
/* 800B4730 000AFC50  7C 04 02 14 */	add r0, r4, r0
/* 800B4734 000AFC54  80 CD 90 E8 */	lwz r6, lbl_80247568@sda21(r13)
/* 800B4738 000AFC58  90 0D 91 1C */	stw r0, lbl_8024759C@sda21(r13)
/* 800B473C 000AFC5C  80 AD 90 E4 */	lwz r5, lbl_80247564@sda21(r13)
/* 800B4740 000AFC60  A8 03 00 5E */	lha r0, 0x5e(r3)
/* 800B4744 000AFC64  80 8D 90 E0 */	lwz r4, lbl_80247560@sda21(r13)
/* 800B4748 000AFC68  7C 1B 02 14 */	add r0, r27, r0
/* 800B474C 000AFC6C  90 0D 91 10 */	stw r0, lbl_80247590@sda21(r13)
/* 800B4750 000AFC70  A8 03 00 60 */	lha r0, 0x60(r3)
/* 800B4754 000AFC74  7C 1C 02 14 */	add r0, r28, r0
/* 800B4758 000AFC78  90 0D 91 04 */	stw r0, lbl_80247584@sda21(r13)
/* 800B475C 000AFC7C  A8 03 00 62 */	lha r0, 0x62(r3)
/* 800B4760 000AFC80  7C 1D 02 14 */	add r0, r29, r0
/* 800B4764 000AFC84  90 0D 91 24 */	stw r0, lbl_802475A4@sda21(r13)
/* 800B4768 000AFC88  A8 03 00 64 */	lha r0, 0x64(r3)
/* 800B476C 000AFC8C  7C 1E 02 14 */	add r0, r30, r0
/* 800B4770 000AFC90  90 0D 91 18 */	stw r0, lbl_80247598@sda21(r13)
/* 800B4774 000AFC94  A8 03 00 66 */	lha r0, 0x66(r3)
/* 800B4778 000AFC98  7C 1F 02 14 */	add r0, r31, r0
/* 800B477C 000AFC9C  90 0D 91 0C */	stw r0, lbl_8024758C@sda21(r13)
/* 800B4780 000AFCA0  A8 03 00 68 */	lha r0, 0x68(r3)
/* 800B4784 000AFCA4  7C 0C 02 14 */	add r0, r12, r0
/* 800B4788 000AFCA8  90 0D 91 00 */	stw r0, lbl_80247580@sda21(r13)
/* 800B478C 000AFCAC  A8 03 00 FA */	lha r0, 0xfa(r3)
/* 800B4790 000AFCB0  7C 0B 02 14 */	add r0, r11, r0
/* 800B4794 000AFCB4  39 61 00 20 */	addi r11, r1, 0x20
/* 800B4798 000AFCB8  90 0D 90 FC */	stw r0, lbl_8024757C@sda21(r13)
/* 800B479C 000AFCBC  A8 03 00 FC */	lha r0, 0xfc(r3)
/* 800B47A0 000AFCC0  7C 0A 02 14 */	add r0, r10, r0
/* 800B47A4 000AFCC4  90 0D 90 F8 */	stw r0, lbl_80247578@sda21(r13)
/* 800B47A8 000AFCC8  A8 03 00 FE */	lha r0, 0xfe(r3)
/* 800B47AC 000AFCCC  7C 09 02 14 */	add r0, r9, r0
/* 800B47B0 000AFCD0  90 0D 90 F4 */	stw r0, lbl_80247574@sda21(r13)
/* 800B47B4 000AFCD4  A8 03 01 00 */	lha r0, 0x100(r3)
/* 800B47B8 000AFCD8  7C 08 02 14 */	add r0, r8, r0
/* 800B47BC 000AFCDC  90 0D 90 F0 */	stw r0, lbl_80247570@sda21(r13)
/* 800B47C0 000AFCE0  A8 03 01 02 */	lha r0, 0x102(r3)
/* 800B47C4 000AFCE4  7C 07 02 14 */	add r0, r7, r0
/* 800B47C8 000AFCE8  90 0D 90 EC */	stw r0, lbl_8024756C@sda21(r13)
/* 800B47CC 000AFCEC  A8 03 01 04 */	lha r0, 0x104(r3)
/* 800B47D0 000AFCF0  7C 06 02 14 */	add r0, r6, r0
/* 800B47D4 000AFCF4  90 0D 90 E8 */	stw r0, lbl_80247568@sda21(r13)
/* 800B47D8 000AFCF8  A8 03 01 06 */	lha r0, 0x106(r3)
/* 800B47DC 000AFCFC  7C 05 02 14 */	add r0, r5, r0
/* 800B47E0 000AFD00  90 0D 90 E4 */	stw r0, lbl_80247564@sda21(r13)
/* 800B47E4 000AFD04  A8 03 01 08 */	lha r0, 0x108(r3)
/* 800B47E8 000AFD08  7C 04 02 14 */	add r0, r4, r0
/* 800B47EC 000AFD0C  90 0D 90 E0 */	stw r0, lbl_80247560@sda21(r13)
/* 800B47F0 000AFD10  48 0A 81 A1 */	bl _restgpr_27
/* 800B47F4 000AFD14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B47F8 000AFD18  7C 08 03 A6 */	mtlr r0
/* 800B47FC 000AFD1C  38 21 00 20 */	addi r1, r1, 0x20
/* 800B4800 000AFD20  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_801CF320
	.skip 0x80

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247560
	.skip 0x4

glabel lbl_80247564
	.skip 0x4

glabel lbl_80247568
	.skip 0x4

glabel lbl_8024756C
	.skip 0x4

glabel lbl_80247570
	.skip 0x4

glabel lbl_80247574
	.skip 0x4

glabel lbl_80247578
	.skip 0x4

glabel lbl_8024757C
	.skip 0x4

glabel lbl_80247580
	.skip 0x4

glabel lbl_80247584
	.skip 0x4

glabel lbl_80247588
	.skip 0x4

glabel lbl_8024758C
	.skip 0x4

glabel lbl_80247590
	.skip 0x4

glabel lbl_80247594
	.skip 0x4

glabel lbl_80247598
	.skip 0x4

glabel lbl_8024759C
	.skip 0x4

glabel lbl_802475A0
	.skip 0x4

glabel lbl_802475A4
	.skip 0x4

glabel lbl_802475A8
	.skip 0x4

glabel lbl_802475AC
	.skip 0x4
