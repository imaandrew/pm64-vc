.include "macros.inc"

.section .text, "ax"

glabel WUDHidHostCallback
/* 800D920C 000D472C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D9210 000D4730  7C 08 02 A6 */	mflr r0
/* 800D9214 000D4734  28 03 00 0F */	cmplwi r3, 0xf
/* 800D9218 000D4738  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D921C 000D473C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D9220 000D4740  3F E0 80 1F */	lis r31, lbl_801F1EC0@ha
/* 800D9224 000D4744  3B FF 1E C0 */	addi r31, r31, lbl_801F1EC0@l
/* 800D9228 000D4748  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D922C 000D474C  7C 9E 23 78 */	mr r30, r4
/* 800D9230 000D4750  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800D9234 000D4754  3F A0 80 1A */	lis r29, lbl_80199FA8@ha
/* 800D9238 000D4758  3B BD 9F A8 */	addi r29, r29, lbl_80199FA8@l
/* 800D923C 000D475C  41 81 04 9C */	bgt lbl_800D96D8
/* 800D9240 000D4760  3C A0 80 1A */	lis r5, lbl_8019A1A8@ha
/* 800D9244 000D4764  54 60 10 3A */	slwi r0, r3, 2
/* 800D9248 000D4768  38 A5 A1 A8 */	addi r5, r5, lbl_8019A1A8@l
/* 800D924C 000D476C  7C A5 00 2E */	lwzx r5, r5, r0
/* 800D9250 000D4770  7C A9 03 A6 */	mtctr r5
/* 800D9254 000D4774  4E 80 04 20 */	bctr

glabel lbl_800D9258
/* 800D9258 000D4778  38 7D 00 00 */	addi r3, r29, 0
/* 800D925C 000D477C  4C C6 31 82 */	crclr 6
/* 800D9260 000D4780  48 00 04 F9 */	bl WUD_DEBUGPrint
/* 800D9264 000D4784  80 1F 07 40 */	lwz r0, 0x740(r31)
/* 800D9268 000D4788  60 00 00 01 */	ori r0, r0, 1
/* 800D926C 000D478C  90 1F 07 40 */	stw r0, 0x740(r31)
/* 800D9270 000D4790  48 00 04 68 */	b lbl_800D96D8

glabel lbl_800D9274
/* 800D9274 000D4794  38 7D 00 14 */	addi r3, r29, 0x14
/* 800D9278 000D4798  4C C6 31 82 */	crclr 6
/* 800D927C 000D479C  48 00 04 DD */	bl WUD_DEBUGPrint
/* 800D9280 000D47A0  48 00 04 58 */	b lbl_800D96D8

glabel lbl_800D9284
/* 800D9284 000D47A4  38 7D 00 28 */	addi r3, r29, 0x28
/* 800D9288 000D47A8  4C C6 31 82 */	crclr 6
/* 800D928C 000D47AC  48 00 04 CD */	bl WUD_DEBUGPrint
/* 800D9290 000D47B0  88 9E 00 07 */	lbz r4, 7(r30)
/* 800D9294 000D47B4  38 7D 00 3C */	addi r3, r29, 0x3c
/* 800D9298 000D47B8  88 BE 00 00 */	lbz r5, 0(r30)
/* 800D929C 000D47BC  88 DE 00 01 */	lbz r6, 1(r30)
/* 800D92A0 000D47C0  88 FE 00 02 */	lbz r7, 2(r30)
/* 800D92A4 000D47C4  89 1E 00 03 */	lbz r8, 3(r30)
/* 800D92A8 000D47C8  89 3E 00 04 */	lbz r9, 4(r30)
/* 800D92AC 000D47CC  89 5E 00 05 */	lbz r10, 5(r30)
/* 800D92B0 000D47D0  4C C6 31 82 */	crclr 6
/* 800D92B4 000D47D4  48 00 04 A5 */	bl WUD_DEBUGPrint
/* 800D92B8 000D47D8  88 9E 00 06 */	lbz r4, 6(r30)
/* 800D92BC 000D47DC  2C 04 00 00 */	cmpwi r4, 0
/* 800D92C0 000D47E0  40 82 01 30 */	bne .L_800D93F0
/* 800D92C4 000D47E4  3F A0 80 1F */	lis r29, lbl_801F2BA8@ha
/* 800D92C8 000D47E8  7F C4 F3 78 */	mr r4, r30
/* 800D92CC 000D47EC  3B BD 2B A8 */	addi r29, r29, lbl_801F2BA8@l
/* 800D92D0 000D47F0  38 A0 00 06 */	li r5, 6
/* 800D92D4 000D47F4  38 7D 00 40 */	addi r3, r29, 0x40
/* 800D92D8 000D47F8  48 08 91 91 */	bl memcmp
/* 800D92DC 000D47FC  2C 03 00 00 */	cmpwi r3, 0
/* 800D92E0 000D4800  41 82 00 10 */	beq .L_800D92F0
/* 800D92E4 000D4804  7F C3 F3 78 */	mr r3, r30
/* 800D92E8 000D4808  4B FF E6 59 */	bl WUDiGetDevInfo
/* 800D92EC 000D480C  7C 7D 1B 78 */	mr r29, r3
.L_800D92F0:
/* 800D92F0 000D4810  88 1D 00 59 */	lbz r0, 0x59(r29)
/* 800D92F4 000D4814  2C 00 00 0C */	cmpwi r0, 0xc
/* 800D92F8 000D4818  41 82 00 14 */	beq .L_800D930C
/* 800D92FC 000D481C  40 80 00 24 */	bge .L_800D9320
/* 800D9300 000D4820  2C 00 00 02 */	cmpwi r0, 2
/* 800D9304 000D4824  41 82 00 14 */	beq .L_800D9318
/* 800D9308 000D4828  48 00 00 18 */	b .L_800D9320
.L_800D930C:
/* 800D930C 000D482C  38 00 00 12 */	li r0, 0x12
/* 800D9310 000D4830  98 1F 00 0C */	stb r0, 0xc(r31)
/* 800D9314 000D4834  48 00 00 0C */	b .L_800D9320
.L_800D9318:
/* 800D9318 000D4838  38 00 00 17 */	li r0, 0x17
/* 800D931C 000D483C  98 1F 00 0C */	stb r0, 0xc(r31)
.L_800D9320:
/* 800D9320 000D4840  38 00 00 08 */	li r0, 8
/* 800D9324 000D4844  7F C3 F3 78 */	mr r3, r30
/* 800D9328 000D4848  98 1D 00 59 */	stb r0, 0x59(r29)
/* 800D932C 000D484C  88 1E 00 07 */	lbz r0, 7(r30)
/* 800D9330 000D4850  98 1D 00 56 */	stb r0, 0x56(r29)
/* 800D9334 000D4854  88 9F 06 E4 */	lbz r4, 0x6e4(r31)
/* 800D9338 000D4858  38 04 00 01 */	addi r0, r4, 1
/* 800D933C 000D485C  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 800D9340 000D4860  4B FF E6 01 */	bl WUDiGetDevInfo
/* 800D9344 000D4864  2C 03 00 00 */	cmpwi r3, 0
/* 800D9348 000D4868  7C 7D 1B 78 */	mr r29, r3
/* 800D934C 000D486C  40 82 00 0C */	bne .L_800D9358
/* 800D9350 000D4870  3F A0 80 1F */	lis r29, lbl_801F2BA8@ha
/* 800D9354 000D4874  3B BD 2B A8 */	addi r29, r29, lbl_801F2BA8@l
.L_800D9358:
/* 800D9358 000D4878  88 1E 00 07 */	lbz r0, 7(r30)
/* 800D935C 000D487C  3C A0 80 1F */	lis r5, lbl_801F2C08@ha
/* 800D9360 000D4880  3C 80 80 1F */	lis r4, lbl_801F3C60@ha
/* 800D9364 000D4884  3C 60 80 1F */	lis r3, lbl_801F3C80@ha
/* 800D9368 000D4888  38 DD 00 40 */	addi r6, r29, 0x40
/* 800D936C 000D488C  54 00 10 3A */	slwi r0, r0, 2
/* 800D9370 000D4890  38 A5 2C 08 */	addi r5, r5, lbl_801F2C08@l
/* 800D9374 000D4894  38 84 3C 60 */	addi r4, r4, lbl_801F3C60@l
/* 800D9378 000D4898  7C C5 01 2E */	stwx r6, r5, r0
/* 800D937C 000D489C  38 A0 00 00 */	li r5, 0
/* 800D9380 000D48A0  38 63 3C 80 */	addi r3, r3, lbl_801F3C80@l
/* 800D9384 000D48A4  88 1E 00 07 */	lbz r0, 7(r30)
/* 800D9388 000D48A8  54 00 08 3C */	slwi r0, r0, 1
/* 800D938C 000D48AC  7C A4 03 2E */	sthx r5, r4, r0
/* 800D9390 000D48B0  88 1E 00 07 */	lbz r0, 7(r30)
/* 800D9394 000D48B4  54 00 08 3C */	slwi r0, r0, 1
/* 800D9398 000D48B8  7C A3 03 2E */	sthx r5, r3, r0
/* 800D939C 000D48BC  88 1D 00 5B */	lbz r0, 0x5b(r29)
/* 800D93A0 000D48C0  28 00 00 03 */	cmplwi r0, 3
/* 800D93A4 000D48C4  41 82 00 0C */	beq .L_800D93B0
/* 800D93A8 000D48C8  28 00 00 01 */	cmplwi r0, 1
/* 800D93AC 000D48CC  40 82 00 10 */	bne .L_800D93BC
.L_800D93B0:
/* 800D93B0 000D48D0  7F A3 EB 78 */	mr r3, r29
/* 800D93B4 000D48D4  4B FF E7 25 */	bl WUDiMoveTopSmpDevInfoPtr
/* 800D93B8 000D48D8  48 00 00 0C */	b .L_800D93C4
.L_800D93BC:
/* 800D93BC 000D48DC  7F A3 EB 78 */	mr r3, r29
/* 800D93C0 000D48E0  4B FF EA A1 */	bl WUDiMoveTopStdDevInfoPtr
.L_800D93C4:
/* 800D93C4 000D48E4  38 7D 00 40 */	addi r3, r29, 0x40
/* 800D93C8 000D48E8  38 80 00 08 */	li r4, 8
/* 800D93CC 000D48EC  4B FF D8 25 */	bl WUDSetSniffMode
/* 800D93D0 000D48F0  81 9F 06 F0 */	lwz r12, 0x6f0(r31)
/* 800D93D4 000D48F4  2C 0C 00 00 */	cmpwi r12, 0
/* 800D93D8 000D48F8  41 82 03 00 */	beq lbl_800D96D8
/* 800D93DC 000D48FC  88 7E 00 07 */	lbz r3, 7(r30)
/* 800D93E0 000D4900  38 80 00 01 */	li r4, 1
/* 800D93E4 000D4904  7D 89 03 A6 */	mtctr r12
/* 800D93E8 000D4908  4E 80 04 21 */	bctrl
/* 800D93EC 000D490C  48 00 02 EC */	b lbl_800D96D8
.L_800D93F0:
/* 800D93F0 000D4910  38 7D 00 70 */	addi r3, r29, 0x70
/* 800D93F4 000D4914  4C C6 31 82 */	crclr 6
/* 800D93F8 000D4918  48 00 03 61 */	bl WUD_DEBUGPrint
/* 800D93FC 000D491C  3F A0 80 1F */	lis r29, lbl_801F2BA8@ha
/* 800D9400 000D4920  7F C3 F3 78 */	mr r3, r30
/* 800D9404 000D4924  3B BD 2B A8 */	addi r29, r29, lbl_801F2BA8@l
/* 800D9408 000D4928  38 A0 00 06 */	li r5, 6
/* 800D940C 000D492C  38 9D 00 40 */	addi r4, r29, 0x40
/* 800D9410 000D4930  48 08 90 59 */	bl memcmp
/* 800D9414 000D4934  2C 03 00 00 */	cmpwi r3, 0
/* 800D9418 000D4938  40 82 02 C0 */	bne lbl_800D96D8
/* 800D941C 000D493C  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 800D9420 000D4940  2C 00 00 00 */	cmpwi r0, 0
/* 800D9424 000D4944  41 82 02 B4 */	beq lbl_800D96D8
/* 800D9428 000D4948  88 1D 00 59 */	lbz r0, 0x59(r29)
/* 800D942C 000D494C  28 00 00 02 */	cmplwi r0, 2
/* 800D9430 000D4950  40 82 02 A8 */	bne lbl_800D96D8
/* 800D9434 000D4954  7F C3 F3 78 */	mr r3, r30
/* 800D9438 000D4958  4B FF E5 09 */	bl WUDiGetDevInfo
/* 800D943C 000D495C  2C 03 00 00 */	cmpwi r3, 0
/* 800D9440 000D4960  41 82 00 24 */	beq .L_800D9464
/* 800D9444 000D4964  88 1E 00 06 */	lbz r0, 6(r30)
/* 800D9448 000D4968  28 00 00 0C */	cmplwi r0, 0xc
/* 800D944C 000D496C  40 82 00 18 */	bne .L_800D9464
/* 800D9450 000D4970  7F C3 F3 78 */	mr r3, r30
/* 800D9454 000D4974  4B FF E3 A9 */	bl WUDiRemoveDevice
/* 800D9458 000D4978  88 7F 06 E5 */	lbz r3, 0x6e5(r31)
/* 800D945C 000D497C  38 03 FF FF */	addi r0, r3, -1
/* 800D9460 000D4980  98 1F 06 E5 */	stb r0, 0x6e5(r31)
.L_800D9464:
/* 800D9464 000D4984  38 00 00 FF */	li r0, 0xff
/* 800D9468 000D4988  98 1F 00 0C */	stb r0, 0xc(r31)
/* 800D946C 000D498C  48 00 02 6C */	b lbl_800D96D8

glabel lbl_800D9470
/* 800D9470 000D4990  38 7D 00 80 */	addi r3, r29, 0x80
/* 800D9474 000D4994  4C C6 31 82 */	crclr 6
/* 800D9478 000D4998  48 00 02 E1 */	bl WUD_DEBUGPrint
/* 800D947C 000D499C  88 9F 06 E4 */	lbz r4, 0x6e4(r31)
/* 800D9480 000D49A0  38 7D 00 94 */	addi r3, r29, 0x94
/* 800D9484 000D49A4  38 04 FF FF */	addi r0, r4, -1
/* 800D9488 000D49A8  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 800D948C 000D49AC  88 9E 00 01 */	lbz r4, 1(r30)
/* 800D9490 000D49B0  88 BE 00 00 */	lbz r5, 0(r30)
/* 800D9494 000D49B4  4C C6 31 82 */	crclr 6
/* 800D9498 000D49B8  48 00 02 C1 */	bl WUD_DEBUGPrint
/* 800D949C 000D49BC  88 1E 00 01 */	lbz r0, 1(r30)
/* 800D94A0 000D49C0  3C 60 80 1F */	lis r3, lbl_801F2C08@ha
/* 800D94A4 000D49C4  38 63 2C 08 */	addi r3, r3, lbl_801F2C08@l
/* 800D94A8 000D49C8  54 00 10 3A */	slwi r0, r0, 2
/* 800D94AC 000D49CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 800D94B0 000D49D0  4B FF E4 91 */	bl WUDiGetDevInfo
/* 800D94B4 000D49D4  2C 03 00 00 */	cmpwi r3, 0
/* 800D94B8 000D49D8  41 82 00 24 */	beq .L_800D94DC
/* 800D94BC 000D49DC  88 03 00 5B */	lbz r0, 0x5b(r3)
/* 800D94C0 000D49E0  28 00 00 03 */	cmplwi r0, 3
/* 800D94C4 000D49E4  41 82 00 0C */	beq .L_800D94D0
/* 800D94C8 000D49E8  28 00 00 01 */	cmplwi r0, 1
/* 800D94CC 000D49EC  40 82 00 0C */	bne .L_800D94D8
.L_800D94D0:
/* 800D94D0 000D49F0  4B FF E8 39 */	bl WUDiMoveTopOfDisconnectedSmpDevice
/* 800D94D4 000D49F4  48 00 00 08 */	b .L_800D94DC
.L_800D94D8:
/* 800D94D8 000D49F8  4B FF EB B9 */	bl WUDiMoveTopOfDisconnectedStdDevice
.L_800D94DC:
/* 800D94DC 000D49FC  88 1E 00 01 */	lbz r0, 1(r30)
/* 800D94E0 000D4A00  3C A0 80 1F */	lis r5, lbl_801F2C08@ha
/* 800D94E4 000D4A04  3C 80 80 1F */	lis r4, lbl_801F3C60@ha
/* 800D94E8 000D4A08  81 9F 06 F0 */	lwz r12, 0x6f0(r31)
/* 800D94EC 000D4A0C  54 00 10 3A */	slwi r0, r0, 2
/* 800D94F0 000D4A10  38 A5 2C 08 */	addi r5, r5, lbl_801F2C08@l
/* 800D94F4 000D4A14  38 C0 00 00 */	li r6, 0
/* 800D94F8 000D4A18  3C 60 80 1F */	lis r3, lbl_801F3C80@ha
/* 800D94FC 000D4A1C  7C C5 01 2E */	stwx r6, r5, r0
/* 800D9500 000D4A20  38 84 3C 60 */	addi r4, r4, lbl_801F3C60@l
/* 800D9504 000D4A24  2C 0C 00 00 */	cmpwi r12, 0
/* 800D9508 000D4A28  38 63 3C 80 */	addi r3, r3, lbl_801F3C80@l
/* 800D950C 000D4A2C  88 1E 00 01 */	lbz r0, 1(r30)
/* 800D9510 000D4A30  54 00 08 3C */	slwi r0, r0, 1
/* 800D9514 000D4A34  7C C4 03 2E */	sthx r6, r4, r0
/* 800D9518 000D4A38  88 1E 00 01 */	lbz r0, 1(r30)
/* 800D951C 000D4A3C  54 00 08 3C */	slwi r0, r0, 1
/* 800D9520 000D4A40  7C C3 03 2E */	sthx r6, r3, r0
/* 800D9524 000D4A44  41 82 01 B4 */	beq lbl_800D96D8
/* 800D9528 000D4A48  88 7E 00 01 */	lbz r3, 1(r30)
/* 800D952C 000D4A4C  38 80 00 00 */	li r4, 0
/* 800D9530 000D4A50  7D 89 03 A6 */	mtctr r12
/* 800D9534 000D4A54  4E 80 04 21 */	bctrl
/* 800D9538 000D4A58  48 00 01 A0 */	b lbl_800D96D8

glabel lbl_800D953C
/* 800D953C 000D4A5C  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 800D9540 000D4A60  4C C6 31 82 */	crclr 6
/* 800D9544 000D4A64  48 00 02 15 */	bl WUD_DEBUGPrint
/* 800D9548 000D4A68  48 00 01 90 */	b lbl_800D96D8

glabel lbl_800D954C
/* 800D954C 000D4A6C  38 7D 00 CC */	addi r3, r29, 0xcc
/* 800D9550 000D4A70  4C C6 31 82 */	crclr 6
/* 800D9554 000D4A74  48 00 02 05 */	bl WUD_DEBUGPrint
/* 800D9558 000D4A78  48 00 01 80 */	b lbl_800D96D8

glabel lbl_800D955C
/* 800D955C 000D4A7C  38 7D 00 E0 */	addi r3, r29, 0xe0
/* 800D9560 000D4A80  4C C6 31 82 */	crclr 6
/* 800D9564 000D4A84  48 00 01 F5 */	bl WUD_DEBUGPrint
/* 800D9568 000D4A88  48 00 01 70 */	b lbl_800D96D8

glabel lbl_800D956C
/* 800D956C 000D4A8C  38 7D 00 F8 */	addi r3, r29, 0xf8
/* 800D9570 000D4A90  4C C6 31 82 */	crclr 6
/* 800D9574 000D4A94  48 00 01 E5 */	bl WUD_DEBUGPrint
/* 800D9578 000D4A98  48 00 01 60 */	b lbl_800D96D8

glabel lbl_800D957C
/* 800D957C 000D4A9C  38 7D 01 10 */	addi r3, r29, 0x110
/* 800D9580 000D4AA0  4C C6 31 82 */	crclr 6
/* 800D9584 000D4AA4  48 00 01 D5 */	bl WUD_DEBUGPrint
/* 800D9588 000D4AA8  48 00 01 50 */	b lbl_800D96D8

glabel lbl_800D958C
/* 800D958C 000D4AAC  38 7D 01 28 */	addi r3, r29, 0x128
/* 800D9590 000D4AB0  4C C6 31 82 */	crclr 6
/* 800D9594 000D4AB4  48 00 01 C5 */	bl WUD_DEBUGPrint
/* 800D9598 000D4AB8  48 00 01 40 */	b lbl_800D96D8

glabel lbl_800D959C
/* 800D959C 000D4ABC  38 7D 01 40 */	addi r3, r29, 0x140
/* 800D95A0 000D4AC0  4C C6 31 82 */	crclr 6
/* 800D95A4 000D4AC4  48 00 01 B5 */	bl WUD_DEBUGPrint
/* 800D95A8 000D4AC8  48 00 01 30 */	b lbl_800D96D8

glabel lbl_800D95AC
/* 800D95AC 000D4ACC  38 7D 01 58 */	addi r3, r29, 0x158
/* 800D95B0 000D4AD0  4C C6 31 82 */	crclr 6
/* 800D95B4 000D4AD4  48 00 01 A5 */	bl WUD_DEBUGPrint
/* 800D95B8 000D4AD8  88 1E 00 05 */	lbz r0, 5(r30)
/* 800D95BC 000D4ADC  38 7D 01 6C */	addi r3, r29, 0x16c
/* 800D95C0 000D4AE0  90 01 00 08 */	stw r0, 8(r1)
/* 800D95C4 000D4AE4  88 9E 00 06 */	lbz r4, 6(r30)
/* 800D95C8 000D4AE8  88 BE 00 07 */	lbz r5, 7(r30)
/* 800D95CC 000D4AEC  88 DE 00 00 */	lbz r6, 0(r30)
/* 800D95D0 000D4AF0  88 FE 00 01 */	lbz r7, 1(r30)
/* 800D95D4 000D4AF4  89 1E 00 02 */	lbz r8, 2(r30)
/* 800D95D8 000D4AF8  89 3E 00 03 */	lbz r9, 3(r30)
/* 800D95DC 000D4AFC  89 5E 00 04 */	lbz r10, 4(r30)
/* 800D95E0 000D4B00  4C C6 31 82 */	crclr 6
/* 800D95E4 000D4B04  48 00 01 75 */	bl WUD_DEBUGPrint
/* 800D95E8 000D4B08  7F C3 F3 78 */	mr r3, r30
/* 800D95EC 000D4B0C  4B FF E3 55 */	bl WUDiGetDevInfo
/* 800D95F0 000D4B10  88 1E 00 07 */	lbz r0, 7(r30)
/* 800D95F4 000D4B14  98 03 00 56 */	stb r0, 0x56(r3)
/* 800D95F8 000D4B18  48 00 00 E0 */	b lbl_800D96D8

glabel lbl_800D95FC
/* 800D95FC 000D4B1C  38 7D 01 AC */	addi r3, r29, 0x1ac
/* 800D9600 000D4B20  4C C6 31 82 */	crclr 6
/* 800D9604 000D4B24  48 00 01 55 */	bl WUD_DEBUGPrint
/* 800D9608 000D4B28  88 1E 00 05 */	lbz r0, 5(r30)
/* 800D960C 000D4B2C  38 7D 01 6C */	addi r3, r29, 0x16c
/* 800D9610 000D4B30  90 01 00 08 */	stw r0, 8(r1)
/* 800D9614 000D4B34  88 9E 00 06 */	lbz r4, 6(r30)
/* 800D9618 000D4B38  88 BE 00 07 */	lbz r5, 7(r30)
/* 800D961C 000D4B3C  88 DE 00 00 */	lbz r6, 0(r30)
/* 800D9620 000D4B40  88 FE 00 01 */	lbz r7, 1(r30)
/* 800D9624 000D4B44  89 1E 00 02 */	lbz r8, 2(r30)
/* 800D9628 000D4B48  89 3E 00 03 */	lbz r9, 3(r30)
/* 800D962C 000D4B4C  89 5E 00 04 */	lbz r10, 4(r30)
/* 800D9630 000D4B50  4C C6 31 82 */	crclr 6
/* 800D9634 000D4B54  48 00 01 25 */	bl WUD_DEBUGPrint
/* 800D9638 000D4B58  48 00 00 A0 */	b lbl_800D96D8

glabel lbl_800D963C
/* 800D963C 000D4B5C  38 7D 01 C0 */	addi r3, r29, 0x1c0
/* 800D9640 000D4B60  4C C6 31 82 */	crclr 6
/* 800D9644 000D4B64  48 00 01 15 */	bl WUD_DEBUGPrint
/* 800D9648 000D4B68  48 00 00 90 */	b lbl_800D96D8

glabel lbl_800D964C
/* 800D964C 000D4B6C  A0 04 00 00 */	lhz r0, 0(r4)
/* 800D9650 000D4B70  88 7F 06 E5 */	lbz r3, 0x6e5(r31)
/* 800D9654 000D4B74  B0 1F 07 44 */	sth r0, 0x744(r31)
/* 800D9658 000D4B78  A0 04 00 02 */	lhz r0, 2(r4)
/* 800D965C 000D4B7C  B0 1F 07 46 */	sth r0, 0x746(r31)
/* 800D9660 000D4B80  A0 04 00 04 */	lhz r0, 4(r4)
/* 800D9664 000D4B84  7C 03 00 00 */	cmpw r3, r0
/* 800D9668 000D4B88  40 80 00 18 */	bge .L_800D9680
/* 800D966C 000D4B8C  38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 800D9670 000D4B90  4C C6 31 82 */	crclr 6
/* 800D9674 000D4B94  4B FB 82 39 */	bl OSReport
/* 800D9678 000D4B98  A0 1E 00 04 */	lhz r0, 4(r30)
/* 800D967C 000D4B9C  98 1F 06 E5 */	stb r0, 0x6e5(r31)
.L_800D9680:
/* 800D9680 000D4BA0  3C A0 80 1F */	lis r5, lbl_801F3C60@ha
/* 800D9684 000D4BA4  3C 60 80 1F */	lis r3, lbl_801F3C80@ha
/* 800D9688 000D4BA8  7F C6 F3 78 */	mr r6, r30
/* 800D968C 000D4BAC  38 E0 00 00 */	li r7, 0
/* 800D9690 000D4BB0  38 A5 3C 60 */	addi r5, r5, lbl_801F3C60@l
/* 800D9694 000D4BB4  38 63 3C 80 */	addi r3, r3, lbl_801F3C80@l
/* 800D9698 000D4BB8  48 00 00 34 */	b .L_800D96CC
.L_800D969C:
/* 800D969C 000D4BBC  88 06 00 06 */	lbz r0, 6(r6)
/* 800D96A0 000D4BC0  28 00 00 10 */	cmplwi r0, 0x10
/* 800D96A4 000D4BC4  40 80 00 20 */	bge .L_800D96C4
/* 800D96A8 000D4BC8  A0 86 00 08 */	lhz r4, 8(r6)
/* 800D96AC 000D4BCC  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 800D96B0 000D4BD0  7C 85 03 2E */	sthx r4, r5, r0
/* 800D96B4 000D4BD4  88 06 00 06 */	lbz r0, 6(r6)
/* 800D96B8 000D4BD8  A0 86 00 0A */	lhz r4, 0xa(r6)
/* 800D96BC 000D4BDC  54 00 08 3C */	slwi r0, r0, 1
/* 800D96C0 000D4BE0  7C 83 03 2E */	sthx r4, r3, r0
.L_800D96C4:
/* 800D96C4 000D4BE4  38 C6 00 06 */	addi r6, r6, 6
/* 800D96C8 000D4BE8  38 E7 00 01 */	addi r7, r7, 1
.L_800D96CC:
/* 800D96CC 000D4BEC  A0 1E 00 04 */	lhz r0, 4(r30)
/* 800D96D0 000D4BF0  7C 07 00 00 */	cmpw r7, r0
/* 800D96D4 000D4BF4  41 80 FF C8 */	blt .L_800D969C

glabel lbl_800D96D8
/* 800D96D8 000D4BF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D96DC 000D4BFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D96E0 000D4C00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D96E4 000D4C04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800D96E8 000D4C08  7C 08 03 A6 */	mtlr r0
/* 800D96EC 000D4C0C  38 21 00 20 */	addi r1, r1, 0x20
/* 800D96F0 000D4C10  4E 80 00 20 */	blr

glabel bta_hh_co_data
/* 800D96F4 000D4C14  28 08 00 03 */	cmplwi r8, 3
/* 800D96F8 000D4C18  3C C0 80 1F */	lis r6, lbl_801F1EC0@ha
/* 800D96FC 000D4C1C  38 C6 1E C0 */	addi r6, r6, lbl_801F1EC0@l
/* 800D9700 000D4C20  40 82 00 18 */	bne .L_800D9718
/* 800D9704 000D4C24  81 86 06 EC */	lwz r12, 0x6ec(r6)
/* 800D9708 000D4C28  2C 0C 00 00 */	cmpwi r12, 0
/* 800D970C 000D4C2C  4D 82 00 20 */	beqlr
/* 800D9710 000D4C30  7D 89 03 A6 */	mtctr r12
/* 800D9714 000D4C34  4E 80 04 20 */	bctr
.L_800D9718:
/* 800D9718 000D4C38  3C 60 80 1A */	lis r3, lbl_8019A1E8@ha
/* 800D971C 000D4C3C  7D 04 43 78 */	mr r4, r8
/* 800D9720 000D4C40  38 63 A1 E8 */	addi r3, r3, lbl_8019A1E8@l
/* 800D9724 000D4C44  4C C6 31 82 */	crclr 6
/* 800D9728 000D4C48  48 00 00 30 */	b WUD_DEBUGPrint
/* 800D972C 000D4C4C  4E 80 00 20 */	blr

glabel bta_hh_co_open
/* 800D9730 000D4C50  3C 60 80 1A */	lis r3, lbl_8019A200@ha
/* 800D9734 000D4C54  38 63 A2 00 */	addi r3, r3, lbl_8019A200@l
/* 800D9738 000D4C58  4C C6 31 82 */	crclr 6
/* 800D973C 000D4C5C  48 00 00 1C */	b WUD_DEBUGPrint

glabel bta_hh_co_close
/* 800D9740 000D4C60  3C 60 80 1A */	lis r3, lbl_8019A214@ha
/* 800D9744 000D4C64  38 63 A2 14 */	addi r3, r3, lbl_8019A214@l
/* 800D9748 000D4C68  4C C6 31 82 */	crclr 6
/* 800D974C 000D4C6C  48 00 00 0C */	b WUD_DEBUGPrint

glabel bta_dm_co_get_compress_memory
/* 800D9750 000D4C70  38 60 00 00 */	li r3, 0
/* 800D9754 000D4C74  4E 80 00 20 */	blr

