.include "macros.inc"

.section .text, "ax"

glabel OSUTF8to32
/* 8009947C 0009499C  88 C3 00 00 */	lbz r6, 0(r3)
/* 80099480 000949A0  2C 06 00 00 */	cmpwi r6, 0
/* 80099484 000949A4  41 82 00 08 */	beq lbl_8009948C
/* 80099488 000949A8  38 63 00 01 */	addi r3, r3, 1
lbl_8009948C:
/* 8009948C 000949AC  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 80099490 000949B0  40 82 00 0C */	bne lbl_8009949C
/* 80099494 000949B4  38 E0 00 00 */	li r7, 0
/* 80099498 000949B8  48 00 00 54 */	b lbl_800994EC
lbl_8009949C:
/* 8009949C 000949BC  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 800994A0 000949C0  28 00 00 C0 */	cmplwi r0, 0xc0
/* 800994A4 000949C4  40 82 00 10 */	bne lbl_800994B4
/* 800994A8 000949C8  54 C6 06 FE */	clrlwi r6, r6, 0x1b
/* 800994AC 000949CC  38 E0 00 01 */	li r7, 1
/* 800994B0 000949D0  48 00 00 3C */	b lbl_800994EC
lbl_800994B4:
/* 800994B4 000949D4  54 C0 06 36 */	rlwinm r0, r6, 0, 0x18, 0x1b
/* 800994B8 000949D8  28 00 00 E0 */	cmplwi r0, 0xe0
/* 800994BC 000949DC  40 82 00 10 */	bne lbl_800994CC
/* 800994C0 000949E0  54 C6 07 3E */	clrlwi r6, r6, 0x1c
/* 800994C4 000949E4  38 E0 00 02 */	li r7, 2
/* 800994C8 000949E8  48 00 00 24 */	b lbl_800994EC
lbl_800994CC:
/* 800994CC 000949EC  54 C0 06 38 */	rlwinm r0, r6, 0, 0x18, 0x1c
/* 800994D0 000949F0  28 00 00 F0 */	cmplwi r0, 0xf0
/* 800994D4 000949F4  40 82 00 10 */	bne lbl_800994E4
/* 800994D8 000949F8  54 C6 07 7E */	clrlwi r6, r6, 0x1d
/* 800994DC 000949FC  38 E0 00 03 */	li r7, 3
/* 800994E0 00094A00  48 00 00 0C */	b lbl_800994EC
lbl_800994E4:
/* 800994E4 00094A04  38 60 00 00 */	li r3, 0
/* 800994E8 00094A08  4E 80 00 20 */	blr 
lbl_800994EC:
/* 800994EC 00094A0C  7C E9 03 A6 */	mtctr r7
/* 800994F0 00094A10  28 07 00 00 */	cmplwi r7, 0
/* 800994F4 00094A14  40 81 00 30 */	ble lbl_80099524
lbl_800994F8:
/* 800994F8 00094A18  88 A3 00 00 */	lbz r5, 0(r3)
/* 800994FC 00094A1C  54 C6 30 32 */	slwi r6, r6, 6
/* 80099500 00094A20  38 63 00 01 */	addi r3, r3, 1
/* 80099504 00094A24  54 A0 06 32 */	rlwinm r0, r5, 0, 0x18, 0x19
/* 80099508 00094A28  28 00 00 80 */	cmplwi r0, 0x80
/* 8009950C 00094A2C  41 82 00 0C */	beq lbl_80099518
/* 80099510 00094A30  38 60 00 00 */	li r3, 0
/* 80099514 00094A34  4E 80 00 20 */	blr 
lbl_80099518:
/* 80099518 00094A38  54 A0 06 BE */	clrlwi r0, r5, 0x1a
/* 8009951C 00094A3C  7C C6 03 78 */	or r6, r6, r0
/* 80099520 00094A40  42 00 FF D8 */	bdnz lbl_800994F8
lbl_80099524:
/* 80099524 00094A44  28 06 00 7F */	cmplwi r6, 0x7f
/* 80099528 00094A48  41 81 00 14 */	bgt lbl_8009953C
/* 8009952C 00094A4C  2C 07 00 00 */	cmpwi r7, 0
/* 80099530 00094A50  41 82 00 3C */	beq lbl_8009956C
/* 80099534 00094A54  38 60 00 00 */	li r3, 0
/* 80099538 00094A58  4E 80 00 20 */	blr 
lbl_8009953C:
/* 8009953C 00094A5C  28 06 07 FF */	cmplwi r6, 0x7ff
/* 80099540 00094A60  41 81 00 14 */	bgt lbl_80099554
/* 80099544 00094A64  28 07 00 01 */	cmplwi r7, 1
/* 80099548 00094A68  41 82 00 24 */	beq lbl_8009956C
/* 8009954C 00094A6C  38 60 00 00 */	li r3, 0
/* 80099550 00094A70  4E 80 00 20 */	blr 
lbl_80099554:
/* 80099554 00094A74  28 06 FF FF */	cmplwi r6, 0xffff
/* 80099558 00094A78  41 81 00 14 */	bgt lbl_8009956C
/* 8009955C 00094A7C  28 07 00 02 */	cmplwi r7, 2
/* 80099560 00094A80  41 82 00 0C */	beq lbl_8009956C
/* 80099564 00094A84  38 60 00 00 */	li r3, 0
/* 80099568 00094A88  4E 80 00 20 */	blr 
lbl_8009956C:
/* 8009956C 00094A8C  28 06 D8 00 */	cmplwi r6, 0xd800
/* 80099570 00094A90  41 80 00 14 */	blt lbl_80099584
/* 80099574 00094A94  28 06 DF FF */	cmplwi r6, 0xdfff
/* 80099578 00094A98  41 81 00 0C */	bgt lbl_80099584
/* 8009957C 00094A9C  38 60 00 00 */	li r3, 0
/* 80099580 00094AA0  4E 80 00 20 */	blr 
lbl_80099584:
/* 80099584 00094AA4  90 C4 00 00 */	stw r6, 0(r4)
/* 80099588 00094AA8  4E 80 00 20 */	blr 

glabel OSUTF16to32
/* 8009958C 00094AAC  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80099590 00094AB0  2C 05 00 00 */	cmpwi r5, 0
/* 80099594 00094AB4  41 82 00 08 */	beq lbl_8009959C
/* 80099598 00094AB8  38 63 00 02 */	addi r3, r3, 2
lbl_8009959C:
/* 8009959C 00094ABC  28 05 D8 00 */	cmplwi r5, 0xd800
/* 800995A0 00094AC0  41 80 00 0C */	blt lbl_800995AC
/* 800995A4 00094AC4  28 05 DF FF */	cmplwi r5, 0xdfff
/* 800995A8 00094AC8  40 81 00 0C */	ble lbl_800995B4
lbl_800995AC:
/* 800995AC 00094ACC  7C A6 2B 78 */	mr r6, r5
/* 800995B0 00094AD0  48 00 00 44 */	b lbl_800995F4
lbl_800995B4:
/* 800995B4 00094AD4  28 05 DB FF */	cmplwi r5, 0xdbff
/* 800995B8 00094AD8  41 81 00 34 */	bgt lbl_800995EC
/* 800995BC 00094ADC  A0 03 00 00 */	lhz r0, 0(r3)
/* 800995C0 00094AE0  38 63 00 02 */	addi r3, r3, 2
/* 800995C4 00094AE4  28 00 DC 00 */	cmplwi r0, 0xdc00
/* 800995C8 00094AE8  41 80 00 1C */	blt lbl_800995E4
/* 800995CC 00094AEC  28 00 DF FF */	cmplwi r0, 0xdfff
/* 800995D0 00094AF0  41 81 00 14 */	bgt lbl_800995E4
/* 800995D4 00094AF4  54 06 05 BE */	clrlwi r6, r0, 0x16
/* 800995D8 00094AF8  50 A6 53 2A */	rlwimi r6, r5, 0xa, 0xc, 0x15
/* 800995DC 00094AFC  3C C6 00 01 */	addis r6, r6, 1
/* 800995E0 00094B00  48 00 00 14 */	b lbl_800995F4
lbl_800995E4:
/* 800995E4 00094B04  38 60 00 00 */	li r3, 0
/* 800995E8 00094B08  4E 80 00 20 */	blr 
lbl_800995EC:
/* 800995EC 00094B0C  38 60 00 00 */	li r3, 0
/* 800995F0 00094B10  4E 80 00 20 */	blr 
lbl_800995F4:
/* 800995F4 00094B14  90 C4 00 00 */	stw r6, 0(r4)
/* 800995F8 00094B18  4E 80 00 20 */	blr 

glabel OSUTF32toANSI
/* 800995FC 00094B1C  28 03 00 FF */	cmplwi r3, 0xff
/* 80099600 00094B20  40 81 00 0C */	ble lbl_8009960C
/* 80099604 00094B24  38 60 00 00 */	li r3, 0
/* 80099608 00094B28  4E 80 00 20 */	blr 
lbl_8009960C:
/* 8009960C 00094B2C  28 03 00 80 */	cmplwi r3, 0x80
/* 80099610 00094B30  41 80 00 0C */	blt lbl_8009961C
/* 80099614 00094B34  28 03 00 9F */	cmplwi r3, 0x9f
/* 80099618 00094B38  40 81 00 0C */	ble lbl_80099624
lbl_8009961C:
/* 8009961C 00094B3C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80099620 00094B40  4E 80 00 20 */	blr 
lbl_80099624:
/* 80099624 00094B44  28 03 01 52 */	cmplwi r3, 0x152
/* 80099628 00094B48  41 80 00 44 */	blt lbl_8009966C
/* 8009962C 00094B4C  28 03 21 22 */	cmplwi r3, 0x2122
/* 80099630 00094B50  41 81 00 3C */	bgt lbl_8009966C
/* 80099634 00094B54  3C 80 80 18 */	lis r4, lbl_801841D0@ha
/* 80099638 00094B58  38 00 00 20 */	li r0, 0x20
/* 8009963C 00094B5C  38 84 41 D0 */	addi r4, r4, lbl_801841D0@l
/* 80099640 00094B60  38 A0 00 00 */	li r5, 0
/* 80099644 00094B64  7C 09 03 A6 */	mtctr r0
lbl_80099648:
/* 80099648 00094B68  A0 04 00 00 */	lhz r0, 0(r4)
/* 8009964C 00094B6C  7C 03 00 40 */	cmplw r3, r0
/* 80099650 00094B70  40 82 00 10 */	bne lbl_80099660
/* 80099654 00094B74  38 05 00 80 */	addi r0, r5, 0x80
/* 80099658 00094B78  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8009965C 00094B7C  4E 80 00 20 */	blr 
lbl_80099660:
/* 80099660 00094B80  38 84 00 02 */	addi r4, r4, 2
/* 80099664 00094B84  38 A5 00 01 */	addi r5, r5, 1
/* 80099668 00094B88  42 00 FF E0 */	bdnz lbl_80099648
lbl_8009966C:
/* 8009966C 00094B8C  38 60 00 00 */	li r3, 0
/* 80099670 00094B90  4E 80 00 20 */	blr 

glabel OSUTF32toSJIS
/* 80099674 00094B94  3C 00 00 01 */	lis r0, 1
/* 80099678 00094B98  7C 03 00 40 */	cmplw r3, r0
/* 8009967C 00094B9C  41 80 00 0C */	blt lbl_80099688
/* 80099680 00094BA0  38 60 00 00 */	li r3, 0
/* 80099684 00094BA4  4E 80 00 20 */	blr 
lbl_80099688:
/* 80099688 00094BA8  3C 80 80 19 */	lis r4, lbl_8018FC10@ha
/* 8009968C 00094BAC  54 60 D5 BA */	rlwinm r0, r3, 0x1a, 0x16, 0x1d
/* 80099690 00094BB0  38 84 FC 10 */	addi r4, r4, lbl_8018FC10@l
/* 80099694 00094BB4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80099698 00094BB8  2C 04 00 00 */	cmpwi r4, 0
/* 8009969C 00094BBC  41 82 00 10 */	beq lbl_800996AC
/* 800996A0 00094BC0  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 800996A4 00094BC4  7C 64 02 2E */	lhzx r3, r4, r0
/* 800996A8 00094BC8  4E 80 00 20 */	blr 
lbl_800996AC:
/* 800996AC 00094BCC  38 60 00 00 */	li r3, 0
/* 800996B0 00094BD0  4E 80 00 20 */	blr 