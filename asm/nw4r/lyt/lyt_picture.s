.include "macros.inc"

.section .text, "ax"

glabel __ct__Q36nw4hbm3lyt7PictureFPCQ46nw4hbm3lyt3res7PictureRCQ36nw4hbm3lyt11ResBlockSet
/* 801203C8 0011B8E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801203CC 0011B8EC  7C 08 02 A6 */	mflr r0
/* 801203D0 0011B8F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801203D4 0011B8F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801203D8 0011B8F8  7C BF 2B 78 */	mr r31, r5
/* 801203DC 0011B8FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801203E0 0011B900  7C 7E 1B 78 */	mr r30, r3
/* 801203E4 0011B904  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801203E8 0011B908  93 81 00 10 */	stw r28, 0x10(r1)
/* 801203EC 0011B90C  7C 9C 23 78 */	mr r28, r4
/* 801203F0 0011B910  4B FF EC 81 */	bl __ct__Q36nw4hbm3lyt4PaneFPCQ46nw4hbm3lyt3res4Pane
/* 801203F4 0011B914  3C 60 80 1A */	lis r3, lbl_801A37D8@ha
/* 801203F8 0011B918  3C 80 80 12 */	lis r4, __ct__Q36nw4hbm2ut5ColorFv@ha
/* 801203FC 0011B91C  38 63 37 D8 */	addi r3, r3, lbl_801A37D8@l
/* 80120400 0011B920  3C A0 80 11 */	lis r5, __dt__Q36nw4hbm2ut5ColorFv@ha
/* 80120404 0011B924  90 7E 00 00 */	stw r3, 0(r30)
/* 80120408 0011B928  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8012040C 0011B92C  38 84 BB C4 */	addi r4, r4, __ct__Q36nw4hbm2ut5ColorFv@l
/* 80120410 0011B930  38 A5 69 60 */	addi r5, r5, __dt__Q36nw4hbm2ut5ColorFv@l
/* 80120414 0011B934  38 C0 00 04 */	li r6, 4
/* 80120418 0011B938  38 E0 00 04 */	li r7, 4
/* 8012041C 0011B93C  48 03 C2 2D */	bl __construct_array
/* 80120420 0011B940  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 80120424 0011B944  4B FF 91 21 */	bl __ct__Q46nw4hbm3lyt6detail11TexCoordAryFv
/* 80120428 0011B948  88 1C 00 5E */	lbz r0, 0x5e(r28)
/* 8012042C 0011B94C  3B A0 00 08 */	li r29, 8
/* 80120430 0011B950  28 00 00 08 */	cmplwi r0, 8
/* 80120434 0011B954  41 81 00 08 */	bgt lbl_8012043C
/* 80120438 0011B958  7C 1D 03 78 */	mr r29, r0
lbl_8012043C:
/* 8012043C 0011B95C  57 A4 06 3F */	clrlwi. r4, r29, 0x18
/* 80120440 0011B960  41 82 00 0C */	beq lbl_8012044C
/* 80120444 0011B964  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 80120448 0011B968  4B FF 91 61 */	bl Reserve__Q46nw4hbm3lyt6detail11TexCoordAryFUc
lbl_8012044C:
/* 8012044C 0011B96C  80 DC 00 4C */	lwz r6, 0x4c(r28)
/* 80120450 0011B970  57 A5 06 3F */	clrlwi. r5, r29, 0x18
/* 80120454 0011B974  80 9C 00 50 */	lwz r4, 0x50(r28)
/* 80120458 0011B978  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8012045C 0011B97C  80 1C 00 58 */	lwz r0, 0x58(r28)
/* 80120460 0011B980  90 DE 00 D4 */	stw r6, 0xd4(r30)
/* 80120464 0011B984  90 9E 00 D8 */	stw r4, 0xd8(r30)
/* 80120468 0011B988  90 7E 00 DC */	stw r3, 0xdc(r30)
/* 8012046C 0011B98C  90 1E 00 E0 */	stw r0, 0xe0(r30)
/* 80120470 0011B990  41 82 00 1C */	beq lbl_8012048C
/* 80120474 0011B994  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 80120478 0011B998  2C 00 00 00 */	cmpwi r0, 0
/* 8012047C 0011B99C  41 82 00 10 */	beq lbl_8012048C
/* 80120480 0011B9A0  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 80120484 0011B9A4  38 9C 00 60 */	addi r4, r28, 0x60
/* 80120488 0011B9A8  4B FF 92 C5 */	bl Copy__Q46nw4hbm3lyt6detail11TexCoordAryFPCvUc
lbl_8012048C:
/* 8012048C 0011B9AC  3C 60 80 23 */	lis r3, lbl_80229138@ha
/* 80120490 0011B9B0  38 80 00 5C */	li r4, 0x5c
/* 80120494 0011B9B4  80 63 91 38 */	lwz r3, lbl_80229138@l(r3)
/* 80120498 0011B9B8  4B F9 7A 41 */	bl MEMAllocFromAllocator
/* 8012049C 0011B9BC  2C 03 00 00 */	cmpwi r3, 0
/* 801204A0 0011B9C0  7C 7D 1B 78 */	mr r29, r3
/* 801204A4 0011B9C4  41 82 00 60 */	beq lbl_80120504
/* 801204A8 0011B9C8  80 1F 00 08 */	lwz r0, 8(r31)
/* 801204AC 0011B9CC  2C 00 00 00 */	cmpwi r0, 0
/* 801204B0 0011B9D0  40 82 00 20 */	bne lbl_801204D0
/* 801204B4 0011B9D4  3C 60 80 1A */	lis r3, lbl_801A36F0@ha
/* 801204B8 0011B9D8  3C A0 80 1A */	lis r5, lbl_801A3700@ha
/* 801204BC 0011B9DC  38 63 36 F0 */	addi r3, r3, lbl_801A36F0@l
/* 801204C0 0011B9E0  38 80 00 95 */	li r4, 0x95
/* 801204C4 0011B9E4  38 A5 37 00 */	addi r5, r5, lbl_801A3700@l
/* 801204C8 0011B9E8  4C C6 31 82 */	crclr 6
/* 801204CC 0011B9EC  4B FF 58 F5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_801204D0:
/* 801204D0 0011B9F0  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 801204D4 0011B9F4  2C 1D 00 00 */	cmpwi r29, 0
/* 801204D8 0011B9F8  80 9F 00 08 */	lwz r4, 8(r31)
/* 801204DC 0011B9FC  54 00 10 3A */	slwi r0, r0, 2
/* 801204E0 0011BA00  7C 64 02 14 */	add r3, r4, r0
/* 801204E4 0011BA04  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801204E8 0011BA08  7C 84 02 14 */	add r4, r4, r0
/* 801204EC 0011BA0C  41 82 00 14 */	beq lbl_80120500
/* 801204F0 0011BA10  7F A3 EB 78 */	mr r3, r29
/* 801204F4 0011BA14  7F E5 FB 78 */	mr r5, r31
/* 801204F8 0011BA18  4B FF B6 F9 */	bl __ct__Q36nw4hbm3lyt8MaterialFPCQ46nw4hbm3lyt3res8MaterialRCQ36nw4hbm3lyt11ResBlockSet
/* 801204FC 0011BA1C  7C 7D 1B 78 */	mr r29, r3
lbl_80120500:
/* 80120500 0011BA20  93 BE 00 28 */	stw r29, 0x28(r30)
lbl_80120504:
/* 80120504 0011BA24  7F C3 F3 78 */	mr r3, r30
/* 80120508 0011BA28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012050C 0011BA2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80120510 0011BA30  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80120514 0011BA34  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80120518 0011BA38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012051C 0011BA3C  7C 08 03 A6 */	mtlr r0
/* 80120520 0011BA40  38 21 00 20 */	addi r1, r1, 0x20
/* 80120524 0011BA44  4E 80 00 20 */	blr 

glabel __dt__Q36nw4hbm3lyt7PictureFv
/* 80120528 0011BA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012052C 0011BA4C  7C 08 02 A6 */	mflr r0
/* 80120530 0011BA50  2C 03 00 00 */	cmpwi r3, 0
/* 80120534 0011BA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80120538 0011BA58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012053C 0011BA5C  7C 9F 23 78 */	mr r31, r4
/* 80120540 0011BA60  93 C1 00 08 */	stw r30, 8(r1)
/* 80120544 0011BA64  7C 7E 1B 78 */	mr r30, r3
/* 80120548 0011BA68  41 82 00 94 */	beq lbl_801205DC
/* 8012054C 0011BA6C  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80120550 0011BA70  3C 80 80 1A */	lis r4, lbl_801A37D8@ha
/* 80120554 0011BA74  38 84 37 D8 */	addi r4, r4, lbl_801A37D8@l
/* 80120558 0011BA78  2C 05 00 00 */	cmpwi r5, 0
/* 8012055C 0011BA7C  90 83 00 00 */	stw r4, 0(r3)
/* 80120560 0011BA80  41 82 00 40 */	beq lbl_801205A0
/* 80120564 0011BA84  88 05 00 54 */	lbz r0, 0x54(r5)
/* 80120568 0011BA88  2C 00 00 00 */	cmpwi r0, 0
/* 8012056C 0011BA8C  40 82 00 34 */	bne lbl_801205A0
/* 80120570 0011BA90  81 85 00 00 */	lwz r12, 0(r5)
/* 80120574 0011BA94  7C A3 2B 78 */	mr r3, r5
/* 80120578 0011BA98  38 80 FF FF */	li r4, -1
/* 8012057C 0011BA9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80120580 0011BAA0  7D 89 03 A6 */	mtctr r12
/* 80120584 0011BAA4  4E 80 04 21 */	bctrl 
/* 80120588 0011BAA8  3C 60 80 23 */	lis r3, lbl_80229138@ha
/* 8012058C 0011BAAC  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80120590 0011BAB0  80 63 91 38 */	lwz r3, lbl_80229138@l(r3)
/* 80120594 0011BAB4  4B F9 79 55 */	bl MEMFreeToAllocator
/* 80120598 0011BAB8  38 00 00 00 */	li r0, 0
/* 8012059C 0011BABC  90 1E 00 28 */	stw r0, 0x28(r30)
lbl_801205A0:
/* 801205A0 0011BAC0  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 801205A4 0011BAC4  4B FF 8F B5 */	bl Free__Q46nw4hbm3lyt6detail11TexCoordAryFv
/* 801205A8 0011BAC8  3C 80 80 11 */	lis r4, __dt__Q36nw4hbm2ut5ColorFv@ha
/* 801205AC 0011BACC  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 801205B0 0011BAD0  38 84 69 60 */	addi r4, r4, __dt__Q36nw4hbm2ut5ColorFv@l
/* 801205B4 0011BAD4  38 A0 00 04 */	li r5, 4
/* 801205B8 0011BAD8  38 C0 00 04 */	li r6, 4
/* 801205BC 0011BADC  48 03 C1 85 */	bl __destroy_arr
/* 801205C0 0011BAE0  7F C3 F3 78 */	mr r3, r30
/* 801205C4 0011BAE4  38 80 00 00 */	li r4, 0
/* 801205C8 0011BAE8  4B FF EB D1 */	bl __dt__Q36nw4hbm3lyt4PaneFv
/* 801205CC 0011BAEC  2C 1F 00 00 */	cmpwi r31, 0
/* 801205D0 0011BAF0  40 81 00 0C */	ble lbl_801205DC
/* 801205D4 0011BAF4  7F C3 F3 78 */	mr r3, r30
/* 801205D8 0011BAF8  48 03 BC 39 */	bl operator_delete
lbl_801205DC:
/* 801205DC 0011BAFC  7F C3 F3 78 */	mr r3, r30
/* 801205E0 0011BB00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801205E4 0011BB04  83 C1 00 08 */	lwz r30, 8(r1)
/* 801205E8 0011BB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801205EC 0011BB0C  7C 08 03 A6 */	mtlr r0
/* 801205F0 0011BB10  38 21 00 10 */	addi r1, r1, 0x10
/* 801205F4 0011BB14  4E 80 00 20 */	blr 

glabel Append__Q36nw4hbm3lyt7PictureFP10TPLPalette
/* 801205F8 0011BB18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801205FC 0011BB1C  7C 08 02 A6 */	mflr r0
/* 80120600 0011BB20  38 A0 00 00 */	li r5, 0
/* 80120604 0011BB24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80120608 0011BB28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012060C 0011BB2C  7C 7F 1B 78 */	mr r31, r3
/* 80120610 0011BB30  38 61 00 08 */	addi r3, r1, 8
/* 80120614 0011BB34  4B FF 9B D9 */	bl InitGXTexObjFromTPL__Q36nw4hbm3lyt6detailFP9_GXTexObjP10TPLPaletteUl
/* 80120618 0011BB38  81 9F 00 00 */	lwz r12, 0(r31)
/* 8012061C 0011BB3C  7F E3 FB 78 */	mr r3, r31
/* 80120620 0011BB40  38 81 00 08 */	addi r4, r1, 8
/* 80120624 0011BB44  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80120628 0011BB48  7D 89 03 A6 */	mtctr r12
/* 8012062C 0011BB4C  4E 80 04 21 */	bctrl 
/* 80120630 0011BB50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80120634 0011BB54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80120638 0011BB58  7C 08 03 A6 */	mtlr r0
/* 8012063C 0011BB5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80120640 0011BB60  4E 80 00 20 */	blr 

glabel Append__Q36nw4hbm3lyt7PictureFRC9_GXTexObj
/* 80120644 0011BB64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80120648 0011BB68  7C 08 02 A6 */	mflr r0
/* 8012064C 0011BB6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80120650 0011BB70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80120654 0011BB74  7C 7F 1B 78 */	mr r31, r3
/* 80120658 0011BB78  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012065C 0011BB7C  7C 9E 23 78 */	mr r30, r4
/* 80120660 0011BB80  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80120664 0011BB84  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80120668 0011BB88  80 65 00 4C */	lwz r3, 0x4c(r5)
/* 8012066C 0011BB8C  80 05 00 50 */	lwz r0, 0x50(r5)
/* 80120670 0011BB90  54 67 27 3E */	srwi r7, r3, 0x1c
/* 80120674 0011BB94  54 1D 27 3E */	srwi r29, r0, 0x1c
/* 80120678 0011BB98  7C 1D 38 40 */	cmplw r29, r7
/* 8012067C 0011BB9C  40 80 00 10 */	bge lbl_8012068C
/* 80120680 0011BBA0  54 60 67 3E */	rlwinm r0, r3, 0xc, 0x1c, 0x1f
/* 80120684 0011BBA4  7C 1D 00 40 */	cmplw r29, r0
/* 80120688 0011BBA8  41 80 00 30 */	blt lbl_801206B8
lbl_8012068C:
/* 8012068C 0011BBAC  80 05 00 4C */	lwz r0, 0x4c(r5)
/* 80120690 0011BBB0  3C 60 80 1A */	lis r3, lbl_801A36F0@ha
/* 80120694 0011BBB4  3C A0 80 1A */	lis r5, lbl_801A373C@ha
/* 80120698 0011BBB8  7F A6 EB 78 */	mr r6, r29
/* 8012069C 0011BBBC  38 63 36 F0 */	addi r3, r3, lbl_801A36F0@l
/* 801206A0 0011BBC0  54 08 67 3E */	rlwinm r8, r0, 0xc, 0x1c, 0x1f
/* 801206A4 0011BBC4  38 A5 37 3C */	addi r5, r5, lbl_801A373C@l
/* 801206A8 0011BBC8  38 80 00 C0 */	li r4, 0xc0
/* 801206AC 0011BBCC  4C C6 31 82 */	crclr 6
/* 801206B0 0011BBD0  4B FF 57 9D */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 801206B4 0011BBD4  48 00 01 38 */	b lbl_801207EC
lbl_801206B8:
/* 801206B8 0011BBD8  38 1D 00 01 */	addi r0, r29, 1
/* 801206BC 0011BBDC  7C A3 2B 78 */	mr r3, r5
/* 801206C0 0011BBE0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801206C4 0011BBE4  4B FF CB 55 */	bl SetTextureNum__Q36nw4hbm3lyt8MaterialFUc
/* 801206C8 0011BBE8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801206CC 0011BBEC  7F A4 EB 78 */	mr r4, r29
/* 801206D0 0011BBF0  7F C5 F3 78 */	mr r5, r30
/* 801206D4 0011BBF4  4B FF D3 AD */	bl SetTexture__Q36nw4hbm3lyt8MaterialFUcRC9_GXTexObj
/* 801206D8 0011BBF8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801206DC 0011BBFC  80 03 00 50 */	lwz r0, 0x50(r3)
/* 801206E0 0011BC00  54 04 27 3E */	srwi r4, r0, 0x1c
/* 801206E4 0011BC04  4B FF CC 11 */	bl SetTexCoordGenNum__Q36nw4hbm3lyt8MaterialFUc
/* 801206E8 0011BC08  83 DF 00 28 */	lwz r30, 0x28(r31)
/* 801206EC 0011BC0C  38 C0 00 00 */	li r6, 0
/* 801206F0 0011BC10  38 A0 00 01 */	li r5, 1
/* 801206F4 0011BC14  38 80 00 04 */	li r4, 4
/* 801206F8 0011BC18  38 60 00 3C */	li r3, 0x3c
/* 801206FC 0011BC1C  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 80120700 0011BC20  98 C1 00 0B */	stb r6, 0xb(r1)
/* 80120704 0011BC24  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80120708 0011BC28  98 A1 00 08 */	stb r5, 8(r1)
/* 8012070C 0011BC2C  7C 1D 00 40 */	cmplw r29, r0
/* 80120710 0011BC30  98 81 00 09 */	stb r4, 9(r1)
/* 80120714 0011BC34  98 61 00 0A */	stb r3, 0xa(r1)
/* 80120718 0011BC38  80 01 00 08 */	lwz r0, 8(r1)
/* 8012071C 0011BC3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80120720 0011BC40  41 80 00 20 */	blt lbl_80120740
/* 80120724 0011BC44  3C 60 80 1A */	lis r3, lbl_801A3908@ha
/* 80120728 0011BC48  3C A0 80 1A */	lis r5, lbl_801A38D4@ha
/* 8012072C 0011BC4C  38 63 39 08 */	addi r3, r3, lbl_801A3908@l
/* 80120730 0011BC50  38 80 00 B4 */	li r4, 0xb4
/* 80120734 0011BC54  38 A5 38 D4 */	addi r5, r5, lbl_801A38D4@l
/* 80120738 0011BC58  4C C6 31 82 */	crclr 6
/* 8012073C 0011BC5C  4B FF 56 85 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_80120740:
/* 80120740 0011BC60  7F C3 F3 78 */	mr r3, r30
/* 80120744 0011BC64  4B FF C8 89 */	bl GetTexCoordGenAry__Q36nw4hbm3lyt8MaterialFv
/* 80120748 0011BC68  57 A0 15 BA */	rlwinm r0, r29, 2, 0x16, 0x1d
/* 8012074C 0011BC6C  88 81 00 0C */	lbz r4, 0xc(r1)
/* 80120750 0011BC70  7C A3 02 14 */	add r5, r3, r0
/* 80120754 0011BC74  88 01 00 0D */	lbz r0, 0xd(r1)
/* 80120758 0011BC78  98 85 00 00 */	stb r4, 0(r5)
/* 8012075C 0011BC7C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80120760 0011BC80  88 81 00 0E */	lbz r4, 0xe(r1)
/* 80120764 0011BC84  98 05 00 01 */	stb r0, 1(r5)
/* 80120768 0011BC88  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8012076C 0011BC8C  98 85 00 02 */	stb r4, 2(r5)
/* 80120770 0011BC90  98 05 00 03 */	stb r0, 3(r5)
/* 80120774 0011BC94  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80120778 0011BC98  80 04 00 50 */	lwz r0, 0x50(r4)
/* 8012077C 0011BC9C  54 04 27 3E */	srwi r4, r0, 0x1c
/* 80120780 0011BCA0  4B FF 8E D5 */	bl SetSize__Q46nw4hbm3lyt6detail11TexCoordAryFUc
/* 80120784 0011BCA4  3C 60 80 17 */	lis r3, lbl_80176558@ha
/* 80120788 0011BCA8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8012078C 0011BCAC  C0 23 65 58 */	lfs f1, lbl_80176558@l(r3)
/* 80120790 0011BCB0  38 00 00 00 */	li r0, 0
/* 80120794 0011BCB4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80120798 0011BCB8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8012079C 0011BCBC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801207A0 0011BCC0  40 82 00 14 */	bne lbl_801207B4
/* 801207A4 0011BCC4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801207A8 0011BCC8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801207AC 0011BCCC  40 82 00 08 */	bne lbl_801207B4
/* 801207B0 0011BCD0  38 00 00 01 */	li r0, 1
lbl_801207B4:
/* 801207B4 0011BCD4  2C 00 00 00 */	cmpwi r0, 0
/* 801207B8 0011BCD8  41 82 00 34 */	beq lbl_801207EC
/* 801207BC 0011BCDC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801207C0 0011BCE0  80 04 00 50 */	lwz r0, 0x50(r4)
/* 801207C4 0011BCE4  54 00 27 3E */	srwi r0, r0, 0x1c
/* 801207C8 0011BCE8  28 00 00 01 */	cmplwi r0, 1
/* 801207CC 0011BCEC  40 82 00 20 */	bne lbl_801207EC
/* 801207D0 0011BCF0  38 61 00 10 */	addi r3, r1, 0x10
/* 801207D4 0011BCF4  38 A0 00 00 */	li r5, 0
/* 801207D8 0011BCF8  4B FF E6 ED */	bl GetTextureSize__Q36nw4hbm3lyt6detailFPQ36nw4hbm3lyt8MaterialUc
/* 801207DC 0011BCFC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801207E0 0011BD00  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 801207E4 0011BD04  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801207E8 0011BD08  D0 1F 00 50 */	stfs f0, 0x50(r31)
lbl_801207EC:
/* 801207EC 0011BD0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801207F0 0011BD10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801207F4 0011BD14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801207F8 0011BD18  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801207FC 0011BD1C  7C 08 03 A6 */	mtlr r0
/* 80120800 0011BD20  38 21 00 30 */	addi r1, r1, 0x30
/* 80120804 0011BD24  4E 80 00 20 */	blr 

glabel GetVtxColor__Q36nw4hbm3lyt7PictureCFUl
/* 80120808 0011BD28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012080C 0011BD2C  7C 08 02 A6 */	mflr r0
/* 80120810 0011BD30  28 05 00 04 */	cmplwi r5, 4
/* 80120814 0011BD34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80120818 0011BD38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012081C 0011BD3C  7C BF 2B 78 */	mr r31, r5
/* 80120820 0011BD40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80120824 0011BD44  7C 9E 23 78 */	mr r30, r4
/* 80120828 0011BD48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8012082C 0011BD4C  7C 7D 1B 78 */	mr r29, r3
/* 80120830 0011BD50  41 80 00 20 */	blt lbl_80120850
/* 80120834 0011BD54  3C 60 80 1A */	lis r3, lbl_801A36F0@ha
/* 80120838 0011BD58  3C A0 80 1A */	lis r5, lbl_801A37A8@ha
/* 8012083C 0011BD5C  38 63 36 F0 */	addi r3, r3, lbl_801A36F0@l
/* 80120840 0011BD60  38 80 00 FB */	li r4, 0xfb
/* 80120844 0011BD64  38 A5 37 A8 */	addi r5, r5, lbl_801A37A8@l
/* 80120848 0011BD68  4C C6 31 82 */	crclr 6
/* 8012084C 0011BD6C  4B FF 55 75 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_80120850:
/* 80120850 0011BD70  57 E0 10 3A */	slwi r0, r31, 2
/* 80120854 0011BD74  7C DE 02 14 */	add r6, r30, r0
/* 80120858 0011BD78  88 A6 00 D4 */	lbz r5, 0xd4(r6)
/* 8012085C 0011BD7C  88 86 00 D5 */	lbz r4, 0xd5(r6)
/* 80120860 0011BD80  88 66 00 D6 */	lbz r3, 0xd6(r6)
/* 80120864 0011BD84  88 06 00 D7 */	lbz r0, 0xd7(r6)
/* 80120868 0011BD88  98 BD 00 00 */	stb r5, 0(r29)
/* 8012086C 0011BD8C  98 9D 00 01 */	stb r4, 1(r29)
/* 80120870 0011BD90  98 7D 00 02 */	stb r3, 2(r29)
/* 80120874 0011BD94  98 1D 00 03 */	stb r0, 3(r29)
/* 80120878 0011BD98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012087C 0011BD9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80120880 0011BDA0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80120884 0011BDA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80120888 0011BDA8  7C 08 03 A6 */	mtlr r0
/* 8012088C 0011BDAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80120890 0011BDB0  4E 80 00 20 */	blr 

glabel SetVtxColor__Q36nw4hbm3lyt7PictureFUlQ36nw4hbm2ut5Color
/* 80120894 0011BDB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80120898 0011BDB8  7C 08 02 A6 */	mflr r0
/* 8012089C 0011BDBC  28 04 00 04 */	cmplwi r4, 4
/* 801208A0 0011BDC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801208A4 0011BDC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801208A8 0011BDC8  7C BF 2B 78 */	mr r31, r5
/* 801208AC 0011BDCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801208B0 0011BDD0  7C 9E 23 78 */	mr r30, r4
/* 801208B4 0011BDD4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801208B8 0011BDD8  7C 7D 1B 78 */	mr r29, r3
/* 801208BC 0011BDDC  41 80 00 20 */	blt lbl_801208DC
/* 801208C0 0011BDE0  3C 60 80 1A */	lis r3, lbl_801A36F0@ha
/* 801208C4 0011BDE4  3C A0 80 1A */	lis r5, lbl_801A37A8@ha
/* 801208C8 0011BDE8  38 63 36 F0 */	addi r3, r3, lbl_801A36F0@l
/* 801208CC 0011BDEC  38 80 01 06 */	li r4, 0x106
/* 801208D0 0011BDF0  38 A5 37 A8 */	addi r5, r5, lbl_801A37A8@l
/* 801208D4 0011BDF4  4C C6 31 82 */	crclr 6
/* 801208D8 0011BDF8  4B FF 54 E9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_801208DC:
/* 801208DC 0011BDFC  57 C0 10 3A */	slwi r0, r30, 2
/* 801208E0 0011BE00  88 7F 00 00 */	lbz r3, 0(r31)
/* 801208E4 0011BE04  7C 9D 02 14 */	add r4, r29, r0
/* 801208E8 0011BE08  88 1F 00 01 */	lbz r0, 1(r31)
/* 801208EC 0011BE0C  98 64 00 D4 */	stb r3, 0xd4(r4)
/* 801208F0 0011BE10  88 7F 00 02 */	lbz r3, 2(r31)
/* 801208F4 0011BE14  98 04 00 D5 */	stb r0, 0xd5(r4)
/* 801208F8 0011BE18  88 1F 00 03 */	lbz r0, 3(r31)
/* 801208FC 0011BE1C  98 64 00 D6 */	stb r3, 0xd6(r4)
/* 80120900 0011BE20  98 04 00 D7 */	stb r0, 0xd7(r4)
/* 80120904 0011BE24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80120908 0011BE28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012090C 0011BE2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80120910 0011BE30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80120914 0011BE34  7C 08 03 A6 */	mtlr r0
/* 80120918 0011BE38  38 21 00 20 */	addi r1, r1, 0x20
/* 8012091C 0011BE3C  4E 80 00 20 */	blr 

glabel GetVtxColorElement__Q36nw4hbm3lyt7PictureCFUl
/* 80120920 0011BE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80120924 0011BE44  7C 08 02 A6 */	mflr r0
/* 80120928 0011BE48  28 04 00 10 */	cmplwi r4, 0x10
/* 8012092C 0011BE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80120930 0011BE50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80120934 0011BE54  7C 9F 23 78 */	mr r31, r4
/* 80120938 0011BE58  93 C1 00 08 */	stw r30, 8(r1)
/* 8012093C 0011BE5C  7C 7E 1B 78 */	mr r30, r3
/* 80120940 0011BE60  41 80 00 20 */	blt lbl_80120960
/* 80120944 0011BE64  3C 60 80 1A */	lis r3, lbl_801A38C8@ha
/* 80120948 0011BE68  3C A0 80 1A */	lis r5, lbl_801A388C@ha
/* 8012094C 0011BE6C  38 63 38 C8 */	addi r3, r3, lbl_801A38C8@l
/* 80120950 0011BE70  38 80 00 C7 */	li r4, 0xc7
/* 80120954 0011BE74  38 A5 38 8C */	addi r5, r5, lbl_801A388C@l
/* 80120958 0011BE78  4C C6 31 82 */	crclr 6
/* 8012095C 0011BE7C  4B FF 54 65 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_80120960:
/* 80120960 0011BE80  57 E3 00 3A */	rlwinm r3, r31, 0, 0, 0x1d
/* 80120964 0011BE84  57 E0 07 BE */	clrlwi r0, r31, 0x1e
/* 80120968 0011BE88  7C 7E 1A 14 */	add r3, r30, r3
/* 8012096C 0011BE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80120970 0011BE90  7C 63 02 14 */	add r3, r3, r0
/* 80120974 0011BE94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80120978 0011BE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012097C 0011BE9C  88 63 00 D4 */	lbz r3, 0xd4(r3)
/* 80120980 0011BEA0  7C 08 03 A6 */	mtlr r0
/* 80120984 0011BEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80120988 0011BEA8  4E 80 00 20 */	blr 

glabel SetVtxColorElement__Q36nw4hbm3lyt7PictureFUlUc
/* 8012098C 0011BEAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80120990 0011BEB0  7C 08 02 A6 */	mflr r0
/* 80120994 0011BEB4  28 04 00 10 */	cmplwi r4, 0x10
/* 80120998 0011BEB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012099C 0011BEBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801209A0 0011BEC0  7C BF 2B 78 */	mr r31, r5
/* 801209A4 0011BEC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801209A8 0011BEC8  7C 9E 23 78 */	mr r30, r4
/* 801209AC 0011BECC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801209B0 0011BED0  7C 7D 1B 78 */	mr r29, r3
/* 801209B4 0011BED4  41 80 00 20 */	blt lbl_801209D4
/* 801209B8 0011BED8  3C 60 80 1A */	lis r3, lbl_801A3880@ha
/* 801209BC 0011BEDC  3C A0 80 1A */	lis r5, lbl_801A3844@ha
/* 801209C0 0011BEE0  38 63 38 80 */	addi r3, r3, lbl_801A3880@l
/* 801209C4 0011BEE4  38 80 00 D4 */	li r4, 0xd4
/* 801209C8 0011BEE8  38 A5 38 44 */	addi r5, r5, lbl_801A3844@l
/* 801209CC 0011BEEC  4C C6 31 82 */	crclr 6
/* 801209D0 0011BEF0  4B FF 53 F1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
lbl_801209D4:
/* 801209D4 0011BEF4  57 C3 00 3A */	rlwinm r3, r30, 0, 0, 0x1d
/* 801209D8 0011BEF8  57 C0 07 BE */	clrlwi r0, r30, 0x1e
/* 801209DC 0011BEFC  7C 7D 1A 14 */	add r3, r29, r3
/* 801209E0 0011BF00  7C 63 02 14 */	add r3, r3, r0
/* 801209E4 0011BF04  9B E3 00 D4 */	stb r31, 0xd4(r3)
/* 801209E8 0011BF08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801209EC 0011BF0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801209F0 0011BF10  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801209F4 0011BF14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801209F8 0011BF18  7C 08 03 A6 */	mtlr r0
/* 801209FC 0011BF1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80120A00 0011BF20  4E 80 00 20 */	blr 

glabel DrawSelf__Q36nw4hbm3lyt7PictureFRCQ36nw4hbm3lyt8DrawInfo
/* 80120A04 0011BF24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80120A08 0011BF28  7C 08 02 A6 */	mflr r0
/* 80120A0C 0011BF2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80120A10 0011BF30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80120A14 0011BF34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80120A18 0011BF38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80120A1C 0011BF3C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80120A20 0011BF40  7C 7C 1B 78 */	mr r28, r3
/* 80120A24 0011BF44  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80120A28 0011BF48  2C 00 00 00 */	cmpwi r0, 0
/* 80120A2C 0011BF4C  41 82 00 94 */	beq lbl_80120AC0
/* 80120A30 0011BF50  81 83 00 00 */	lwz r12, 0(r3)
/* 80120A34 0011BF54  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80120A38 0011BF58  7D 89 03 A6 */	mtctr r12
/* 80120A3C 0011BF5C  4E 80 04 21 */	bctrl 
/* 80120A40 0011BF60  8B BC 00 CE */	lbz r29, 0xce(r28)
/* 80120A44 0011BF64  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80120A48 0011BF68  7F A4 EB 78 */	mr r4, r29
/* 80120A4C 0011BF6C  4B FF 8D F9 */	bl IsModulateVertexColor__Q36nw4hbm3lyt6detailFPQ36nw4hbm2ut5ColorUc
/* 80120A50 0011BF70  7C 64 1B 78 */	mr r4, r3
/* 80120A54 0011BF74  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80120A58 0011BF78  7F A5 EB 78 */	mr r5, r29
/* 80120A5C 0011BF7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80120A60 0011BF80  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80120A64 0011BF84  7D 89 03 A6 */	mtctr r12
/* 80120A68 0011BF88  4E 80 04 21 */	bctrl 
/* 80120A6C 0011BF8C  88 9C 00 E5 */	lbz r4, 0xe5(r28)
/* 80120A70 0011BF90  7C 7D 1B 78 */	mr r29, r3
/* 80120A74 0011BF94  4B FF 8E 8D */	bl SetVertexFormat__Q36nw4hbm3lyt6detailFbUc
/* 80120A78 0011BF98  2C 1D 00 00 */	cmpwi r29, 0
/* 80120A7C 0011BF9C  41 82 00 0C */	beq lbl_80120A88
/* 80120A80 0011BFA0  3B DC 00 D4 */	addi r30, r28, 0xd4
/* 80120A84 0011BFA4  48 00 00 08 */	b lbl_80120A8C
lbl_80120A88:
/* 80120A88 0011BFA8  3B C0 00 00 */	li r30, 0
lbl_80120A8C:
/* 80120A8C 0011BFAC  83 BC 00 E8 */	lwz r29, 0xe8(r28)
/* 80120A90 0011BFB0  7F 83 E3 78 */	mr r3, r28
/* 80120A94 0011BFB4  8B FC 00 E5 */	lbz r31, 0xe5(r28)
/* 80120A98 0011BFB8  4B FF F8 19 */	bl GetVtxPos__Q36nw4hbm3lyt4PaneCFv
/* 80120A9C 0011BFBC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80120AA0 0011BFC0  7F E5 FB 78 */	mr r5, r31
/* 80120AA4 0011BFC4  7F A6 EB 78 */	mr r6, r29
/* 80120AA8 0011BFC8  7F C7 F3 78 */	mr r7, r30
/* 80120AAC 0011BFCC  90 61 00 08 */	stw r3, 8(r1)
/* 80120AB0 0011BFD0  38 61 00 08 */	addi r3, r1, 8
/* 80120AB4 0011BFD4  38 9C 00 4C */	addi r4, r28, 0x4c
/* 80120AB8 0011BFD8  89 1C 00 CE */	lbz r8, 0xce(r28)
/* 80120ABC 0011BFDC  4B FF 94 89 */	bl DrawQuad__Q36nw4hbm3lyt6detailFRCQ36nw4hbm4math4VEC2RCQ36nw4hbm3lyt4SizeUcPA4_CQ36nw4hbm4math4VEC2PCQ36nw4hbm2ut5ColorUc
lbl_80120AC0:
/* 80120AC0 0011BFE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80120AC4 0011BFE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80120AC8 0011BFE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80120ACC 0011BFEC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80120AD0 0011BFF0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80120AD4 0011BFF4  7C 08 03 A6 */	mtlr r0
/* 80120AD8 0011BFF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80120ADC 0011BFFC  4E 80 00 20 */	blr 

glabel GetRuntimeTypeInfo__Q36nw4hbm3lyt7PictureCFv
/* 80120AE0 0011C000  3C 60 80 23 */	lis r3, lbl_80229148@ha
/* 80120AE4 0011C004  38 63 91 48 */	addi r3, r3, lbl_80229148@l
/* 80120AE8 0011C008  4E 80 00 20 */	blr 

glabel __sinit_lyt_picture_cpp
/* 80120AEC 0011C00C  3C 80 80 23 */	lis r4, lbl_80229140@ha
/* 80120AF0 0011C010  3C 60 80 23 */	lis r3, lbl_80229148@ha
/* 80120AF4 0011C014  38 84 91 40 */	addi r4, r4, lbl_80229140@l
/* 80120AF8 0011C018  90 83 91 48 */	stw r4, lbl_80229148@l(r3)
/* 80120AFC 0011C01C  4E 80 00 20 */	blr 