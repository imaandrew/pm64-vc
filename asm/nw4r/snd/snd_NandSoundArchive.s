.include "macros.inc"

.section .text, "ax"

glabel __ct__Q34nw4r3snd16NandSoundArchiveFv
/* 801320C0 0012D5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801320C4 0012D5E4  7C 08 02 A6 */	mflr r0
/* 801320C8 0012D5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801320CC 0012D5EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801320D0 0012D5F0  7C 7F 1B 78 */	mr r31, r3
/* 801320D4 0012D5F4  48 00 4B 71 */	bl __ct__Q36nw4hbm3snd12SoundArchiveFv
/* 801320D8 0012D5F8  3C 80 80 1A */	lis r4, lbl_801A6D40@ha
/* 801320DC 0012D5FC  38 7F 01 08 */	addi r3, r31, 0x108
/* 801320E0 0012D600  38 84 6D 40 */	addi r4, r4, lbl_801A6D40@l
/* 801320E4 0012D604  90 9F 00 00 */	stw r4, 0(r31)
/* 801320E8 0012D608  48 00 52 61 */	bl __ct__Q46nw4hbm3snd6detail22SoundArchiveFileReaderFv
/* 801320EC 0012D60C  38 00 00 00 */	li r0, 0
/* 801320F0 0012D610  7F E3 FB 78 */	mr r3, r31
/* 801320F4 0012D614  98 1F 01 D8 */	stb r0, 0x1d8(r31)
/* 801320F8 0012D618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801320FC 0012D61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80132100 0012D620  7C 08 03 A6 */	mtlr r0
/* 80132104 0012D624  38 21 00 10 */	addi r1, r1, 0x10
/* 80132108 0012D628  4E 80 00 20 */	blr 

glabel __dt__Q34nw4r3snd16NandSoundArchiveFv
/* 8013210C 0012D62C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80132110 0012D630  7C 08 02 A6 */	mflr r0
/* 80132114 0012D634  2C 03 00 00 */	cmpwi r3, 0
/* 80132118 0012D638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013211C 0012D63C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80132120 0012D640  7C 9F 23 78 */	mr r31, r4
/* 80132124 0012D644  93 C1 00 08 */	stw r30, 8(r1)
/* 80132128 0012D648  7C 7E 1B 78 */	mr r30, r3
/* 8013212C 0012D64C  41 82 00 78 */	beq .L_801321A4
/* 80132130 0012D650  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 80132134 0012D654  3C 80 80 1A */	lis r4, lbl_801A6D40@ha
/* 80132138 0012D658  38 84 6D 40 */	addi r4, r4, lbl_801A6D40@l
/* 8013213C 0012D65C  2C 00 00 00 */	cmpwi r0, 0
/* 80132140 0012D660  90 83 00 00 */	stw r4, 0(r3)
/* 80132144 0012D664  41 82 00 3C */	beq .L_80132180
/* 80132148 0012D668  38 63 01 4C */	addi r3, r3, 0x14c
/* 8013214C 0012D66C  4B F8 81 7D */	bl NANDClose
/* 80132150 0012D670  2C 03 00 00 */	cmpwi r3, 0
/* 80132154 0012D674  7C 66 1B 78 */	mr r6, r3
/* 80132158 0012D678  41 82 00 20 */	beq .L_80132178
/* 8013215C 0012D67C  3C 60 80 1A */	lis r3, lbl_801A6A68@ha
/* 80132160 0012D680  3C A0 80 1A */	lis r5, lbl_801A6A84@ha
/* 80132164 0012D684  38 80 00 8D */	li r4, 0x8d
/* 80132168 0012D688  38 63 6A 68 */	addi r3, r3, lbl_801A6A68@l
/* 8013216C 0012D68C  38 A5 6A 84 */	addi r5, r5, lbl_801A6A84@l
/* 80132170 0012D690  4C C6 31 82 */	crclr 6
/* 80132174 0012D694  4B FE 3C D9 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
.L_80132178:
/* 80132178 0012D698  38 00 00 00 */	li r0, 0
/* 8013217C 0012D69C  98 1E 01 D8 */	stb r0, 0x1d8(r30)
.L_80132180:
/* 80132180 0012D6A0  7F C3 F3 78 */	mr r3, r30
/* 80132184 0012D6A4  48 00 4B 95 */	bl Shutdown__Q36nw4hbm3snd12SoundArchiveFv
/* 80132188 0012D6A8  7F C3 F3 78 */	mr r3, r30
/* 8013218C 0012D6AC  38 80 00 00 */	li r4, 0
/* 80132190 0012D6B0  48 00 4A D9 */	bl __dt__Q36nw4hbm3snd12SoundArchiveFv
/* 80132194 0012D6B4  2C 1F 00 00 */	cmpwi r31, 0
/* 80132198 0012D6B8  40 81 00 0C */	ble .L_801321A4
/* 8013219C 0012D6BC  7F C3 F3 78 */	mr r3, r30
/* 801321A0 0012D6C0  48 02 A0 71 */	bl operator_delete
.L_801321A4:
/* 801321A4 0012D6C4  7F C3 F3 78 */	mr r3, r30
/* 801321A8 0012D6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801321AC 0012D6CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801321B0 0012D6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801321B4 0012D6D4  7C 08 03 A6 */	mtlr r0
/* 801321B8 0012D6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801321BC 0012D6DC  4E 80 00 20 */	blr 

glabel Open__Q34nw4r3snd16NandSoundArchiveFPCc
/* 801321C0 0012D6E0  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 801321C4 0012D6E4  7C 08 02 A6 */	mflr r0
/* 801321C8 0012D6E8  90 01 01 64 */	stw r0, 0x164(r1)
/* 801321CC 0012D6EC  39 61 01 60 */	addi r11, r1, 0x160
/* 801321D0 0012D6F0  48 02 A7 75 */	bl _savegpr_27
/* 801321D4 0012D6F4  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 801321D8 0012D6F8  3F C0 80 1A */	lis r30, lbl_801A6A68@ha
/* 801321DC 0012D6FC  7C 7B 1B 78 */	mr r27, r3
/* 801321E0 0012D700  7C 9C 23 78 */	mr r28, r4
/* 801321E4 0012D704  2C 00 00 00 */	cmpwi r0, 0
/* 801321E8 0012D708  3B DE 6A 68 */	addi r30, r30, lbl_801A6A68@l
/* 801321EC 0012D70C  41 82 00 40 */	beq .L_8013222C
/* 801321F0 0012D710  41 82 00 34 */	beq .L_80132224
/* 801321F4 0012D714  38 63 01 4C */	addi r3, r3, 0x14c
/* 801321F8 0012D718  4B F8 80 D1 */	bl NANDClose
/* 801321FC 0012D71C  2C 03 00 00 */	cmpwi r3, 0
/* 80132200 0012D720  41 82 00 1C */	beq .L_8013221C
/* 80132204 0012D724  7C 66 1B 78 */	mr r6, r3
/* 80132208 0012D728  38 7E 00 00 */	addi r3, r30, 0
/* 8013220C 0012D72C  38 BE 00 1C */	addi r5, r30, 0x1c
/* 80132210 0012D730  38 80 00 8D */	li r4, 0x8d
/* 80132214 0012D734  4C C6 31 82 */	crclr 6
/* 80132218 0012D738  4B FE 3C 35 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
.L_8013221C:
/* 8013221C 0012D73C  38 00 00 00 */	li r0, 0
/* 80132220 0012D740  98 1B 01 D8 */	stb r0, 0x1d8(r27)
.L_80132224:
/* 80132224 0012D744  7F 63 DB 78 */	mr r3, r27
/* 80132228 0012D748  48 00 4A F1 */	bl Shutdown__Q36nw4hbm3snd12SoundArchiveFv
.L_8013222C:
/* 8013222C 0012D74C  7F 83 E3 78 */	mr r3, r28
/* 80132230 0012D750  38 9B 01 4C */	addi r4, r27, 0x14c
/* 80132234 0012D754  38 A0 00 01 */	li r5, 1
/* 80132238 0012D758  4B F8 7E 11 */	bl NANDOpen
/* 8013223C 0012D75C  2C 03 00 00 */	cmpwi r3, 0
/* 80132240 0012D760  41 82 00 28 */	beq .L_80132268
/* 80132244 0012D764  40 82 00 1C */	bne .L_80132260
/* 80132248 0012D768  7F 86 E3 78 */	mr r6, r28
/* 8013224C 0012D76C  38 7E 00 00 */	addi r3, r30, 0
/* 80132250 0012D770  38 BE 00 40 */	addi r5, r30, 0x40
/* 80132254 0012D774  38 80 00 58 */	li r4, 0x58
/* 80132258 0012D778  4C C6 31 82 */	crclr 6
/* 8013225C 0012D77C  4B FE 3B F1 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
.L_80132260:
/* 80132260 0012D780  38 60 00 00 */	li r3, 0
/* 80132264 0012D784  48 00 01 10 */	b .L_80132374
.L_80132268:
/* 80132268 0012D788  38 00 00 01 */	li r0, 1
/* 8013226C 0012D78C  7F 63 DB 78 */	mr r3, r27
/* 80132270 0012D790  98 1B 01 D8 */	stb r0, 0x1d8(r27)
/* 80132274 0012D794  48 00 03 A1 */	bl func_80132614
/* 80132278 0012D798  2C 03 00 00 */	cmpwi r3, 0
/* 8013227C 0012D79C  40 82 00 24 */	bne .L_801322A0
/* 80132280 0012D7A0  40 82 00 18 */	bne .L_80132298
/* 80132284 0012D7A4  38 7E 00 00 */	addi r3, r30, 0
/* 80132288 0012D7A8  38 BE 00 58 */	addi r5, r30, 0x58
/* 8013228C 0012D7AC  38 80 00 61 */	li r4, 0x61
/* 80132290 0012D7B0  4C C6 31 82 */	crclr 6
/* 80132294 0012D7B4  4B FE 3B B9 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
.L_80132298:
/* 80132298 0012D7B8  38 60 00 00 */	li r3, 0
/* 8013229C 0012D7BC  48 00 00 D8 */	b .L_80132374
.L_801322A0:
/* 801322A0 0012D7C0  38 61 00 08 */	addi r3, r1, 8
/* 801322A4 0012D7C4  4B F8 94 79 */	bl NANDGetCurrentDir
/* 801322A8 0012D7C8  38 61 00 08 */	addi r3, r1, 8
/* 801322AC 0012D7CC  48 02 9D 39 */	bl strlen
/* 801322B0 0012D7D0  38 03 00 01 */	addi r0, r3, 1
/* 801322B4 0012D7D4  7C 7F 1B 78 */	mr r31, r3
/* 801322B8 0012D7D8  28 00 01 00 */	cmplwi r0, 0x100
/* 801322BC 0012D7DC  41 80 00 18 */	blt .L_801322D4
/* 801322C0 0012D7E0  38 7E 00 00 */	addi r3, r30, 0
/* 801322C4 0012D7E4  38 BE 00 6C */	addi r5, r30, 0x6c
/* 801322C8 0012D7E8  38 80 00 69 */	li r4, 0x69
/* 801322CC 0012D7EC  4C C6 31 82 */	crclr 6
/* 801322D0 0012D7F0  4B FE 3A F1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_801322D4:
/* 801322D4 0012D7F4  38 61 00 48 */	addi r3, r1, 0x48
/* 801322D8 0012D7F8  38 81 00 08 */	addi r4, r1, 8
/* 801322DC 0012D7FC  38 BF 00 01 */	addi r5, r31, 1
/* 801322E0 0012D800  48 03 43 15 */	bl strncpy
/* 801322E4 0012D804  7F 83 E3 78 */	mr r3, r28
/* 801322E8 0012D808  48 02 9C FD */	bl strlen
/* 801322EC 0012D80C  37 A3 FF FF */	addic. r29, r3, -1
/* 801322F0 0012D810  38 1D 00 01 */	addi r0, r29, 1
/* 801322F4 0012D814  7C 7C EA 14 */	add r3, r28, r29
/* 801322F8 0012D818  7C 09 03 A6 */	mtctr r0
/* 801322FC 0012D81C  41 80 00 68 */	blt .L_80132364
.L_80132300:
/* 80132300 0012D820  88 03 00 00 */	lbz r0, 0(r3)
/* 80132304 0012D824  7C 00 07 74 */	extsb r0, r0
/* 80132308 0012D828  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8013230C 0012D82C  41 82 00 0C */	beq .L_80132318
/* 80132310 0012D830  2C 00 00 5C */	cmpwi r0, 0x5c
/* 80132314 0012D834  40 82 00 44 */	bne .L_80132358
.L_80132318:
/* 80132318 0012D838  2C 1D 01 00 */	cmpwi r29, 0x100
/* 8013231C 0012D83C  41 80 00 18 */	blt .L_80132334
/* 80132320 0012D840  38 7E 00 00 */	addi r3, r30, 0
/* 80132324 0012D844  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 80132328 0012D848  38 80 00 73 */	li r4, 0x73
/* 8013232C 0012D84C  4C C6 31 82 */	crclr 6
/* 80132330 0012D850  4B FE 3A 91 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80132334:
/* 80132334 0012D854  7F 84 E3 78 */	mr r4, r28
/* 80132338 0012D858  7F A5 EB 78 */	mr r5, r29
/* 8013233C 0012D85C  38 61 00 48 */	addi r3, r1, 0x48
/* 80132340 0012D860  48 03 43 25 */	bl strncat
/* 80132344 0012D864  38 61 00 48 */	addi r3, r1, 0x48
/* 80132348 0012D868  7C 1D FA 14 */	add r0, r29, r31
/* 8013234C 0012D86C  38 80 00 00 */	li r4, 0
/* 80132350 0012D870  7C 83 01 AE */	stbx r4, r3, r0
/* 80132354 0012D874  48 00 00 10 */	b .L_80132364
.L_80132358:
/* 80132358 0012D878  3B BD FF FF */	addi r29, r29, -1
/* 8013235C 0012D87C  38 63 FF FF */	addi r3, r3, -1
/* 80132360 0012D880  42 00 FF A0 */	bdnz .L_80132300
.L_80132364:
/* 80132364 0012D884  7F 63 DB 78 */	mr r3, r27
/* 80132368 0012D888  38 81 00 48 */	addi r4, r1, 0x48
/* 8013236C 0012D88C  48 00 4F 29 */	bl SetExternalFileRoot__Q34nw4r3snd12SoundArchiveFPCc
/* 80132370 0012D890  38 60 00 01 */	li r3, 1
.L_80132374:
/* 80132374 0012D894  39 61 01 60 */	addi r11, r1, 0x160
/* 80132378 0012D898  48 02 A6 19 */	bl _restgpr_27
/* 8013237C 0012D89C  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80132380 0012D8A0  7C 08 03 A6 */	mtlr r0
/* 80132384 0012D8A4  38 21 01 60 */	addi r1, r1, 0x160
/* 80132388 0012D8A8  4E 80 00 20 */	blr 

glabel Close__Q36nw4hbm3snd16NandSoundArchiveFv
/* 8013238C 0012D8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80132390 0012D8B0  7C 08 02 A6 */	mflr r0
/* 80132394 0012D8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80132398 0012D8B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013239C 0012D8BC  7C 7F 1B 78 */	mr r31, r3
/* 801323A0 0012D8C0  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 801323A4 0012D8C4  2C 00 00 00 */	cmpwi r0, 0
/* 801323A8 0012D8C8  41 82 00 3C */	beq .L_801323E4
/* 801323AC 0012D8CC  38 63 01 4C */	addi r3, r3, 0x14c
/* 801323B0 0012D8D0  4B F8 7F 19 */	bl NANDClose
/* 801323B4 0012D8D4  2C 03 00 00 */	cmpwi r3, 0
/* 801323B8 0012D8D8  7C 66 1B 78 */	mr r6, r3
/* 801323BC 0012D8DC  41 82 00 20 */	beq .L_801323DC
/* 801323C0 0012D8E0  3C 60 80 1A */	lis r3, lbl_801A6A68@ha
/* 801323C4 0012D8E4  3C A0 80 1A */	lis r5, lbl_801A6A84@ha
/* 801323C8 0012D8E8  38 80 00 8D */	li r4, 0x8d
/* 801323CC 0012D8EC  38 63 6A 68 */	addi r3, r3, lbl_801A6A68@l
/* 801323D0 0012D8F0  38 A5 6A 84 */	addi r5, r5, lbl_801A6A84@l
/* 801323D4 0012D8F4  4C C6 31 82 */	crclr 6
/* 801323D8 0012D8F8  4B FE 3A 75 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
.L_801323DC:
/* 801323DC 0012D8FC  38 00 00 00 */	li r0, 0
/* 801323E0 0012D900  98 1F 01 D8 */	stb r0, 0x1d8(r31)
.L_801323E4:
/* 801323E4 0012D904  7F E3 FB 78 */	mr r3, r31
/* 801323E8 0012D908  48 00 49 31 */	bl Shutdown__Q36nw4hbm3snd12SoundArchiveFv
/* 801323EC 0012D90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801323F0 0012D910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801323F4 0012D914  7C 08 03 A6 */	mtlr r0
/* 801323F8 0012D918  38 21 00 10 */	addi r1, r1, 0x10
/* 801323FC 0012D91C  4E 80 00 20 */	blr 

glabel lbl_80132400
/* 80132400 0012D920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80132404 0012D924  7C 08 02 A6 */	mflr r0
/* 80132408 0012D928  7C 68 1B 78 */	mr r8, r3
/* 8013240C 0012D92C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80132410 0012D930  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 80132414 0012D934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80132418 0012D938  7C FF 3B 78 */	mr r31, r7
/* 8013241C 0012D93C  2C 00 00 00 */	cmpwi r0, 0
/* 80132420 0012D940  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80132424 0012D944  7C DE 33 78 */	mr r30, r6
/* 80132428 0012D948  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8013242C 0012D94C  7C 9D 23 78 */	mr r29, r4
/* 80132430 0012D950  40 82 00 0C */	bne .L_8013243C
/* 80132434 0012D954  38 60 00 00 */	li r3, 0
/* 80132438 0012D958  48 00 00 74 */	b .L_801324AC
.L_8013243C:
/* 8013243C 0012D95C  28 05 01 74 */	cmplwi r5, 0x174
/* 80132440 0012D960  40 80 00 0C */	bge .L_8013244C
/* 80132444 0012D964  38 60 00 00 */	li r3, 0
/* 80132448 0012D968  48 00 00 64 */	b .L_801324AC
.L_8013244C:
/* 8013244C 0012D96C  2C 04 00 00 */	cmpwi r4, 0
/* 80132450 0012D970  41 82 00 58 */	beq .L_801324A8
/* 80132454 0012D974  7F A3 EB 78 */	mr r3, r29
/* 80132458 0012D978  38 88 01 4C */	addi r4, r8, 0x14c
/* 8013245C 0012D97C  38 A0 00 01 */	li r5, 1
/* 80132460 0012D980  38 C0 00 00 */	li r6, 0
/* 80132464 0012D984  48 01 A5 09 */	bl __ct__Q34nw4r2ut14NandFileStreamFPC12NANDFileInfoUlb
/* 80132468 0012D988  88 1D 00 04 */	lbz r0, 4(r29)
/* 8013246C 0012D98C  3C 60 80 1A */	lis r3, lbl_801A6CE0@ha
/* 80132470 0012D990  38 63 6C E0 */	addi r3, r3, lbl_801A6CE0@l
/* 80132474 0012D994  93 DD 01 6C */	stw r30, 0x16c(r29)
/* 80132478 0012D998  2C 00 00 00 */	cmpwi r0, 0
/* 8013247C 0012D99C  90 7D 00 00 */	stw r3, 0(r29)
/* 80132480 0012D9A0  93 FD 01 70 */	stw r31, 0x170(r29)
/* 80132484 0012D9A4  41 82 00 24 */	beq .L_801324A8
/* 80132488 0012D9A8  2C 1F 00 00 */	cmpwi r31, 0
/* 8013248C 0012D9AC  40 82 00 0C */	bne .L_80132498
/* 80132490 0012D9B0  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80132494 0012D9B4  90 1D 01 70 */	stw r0, 0x170(r29)
.L_80132498:
/* 80132498 0012D9B8  80 9D 01 6C */	lwz r4, 0x16c(r29)
/* 8013249C 0012D9BC  7F A3 EB 78 */	mr r3, r29
/* 801324A0 0012D9C0  38 A0 00 00 */	li r5, 0
/* 801324A4 0012D9C4  48 01 B2 E5 */	bl Seek__Q34nw4r2ut14NandFileStreamFlUl
.L_801324A8:
/* 801324A8 0012D9C8  7F A3 EB 78 */	mr r3, r29
.L_801324AC:
/* 801324AC 0012D9CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801324B0 0012D9D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801324B4 0012D9D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801324B8 0012D9D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801324BC 0012D9DC  7C 08 03 A6 */	mtlr r0
/* 801324C0 0012D9E0  38 21 00 20 */	addi r1, r1, 0x20
/* 801324C4 0012D9E4  4E 80 00 20 */	blr 

glabel lbl_801324C8
/* 801324C8 0012D9E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801324CC 0012D9EC  7C 08 02 A6 */	mflr r0
/* 801324D0 0012D9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801324D4 0012D9F4  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 801324D8 0012D9F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801324DC 0012D9FC  7D 1F 43 78 */	mr r31, r8
/* 801324E0 0012DA00  2C 00 00 00 */	cmpwi r0, 0
/* 801324E4 0012DA04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801324E8 0012DA08  7C FE 3B 78 */	mr r30, r7
/* 801324EC 0012DA0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801324F0 0012DA10  7C 9D 23 78 */	mr r29, r4
/* 801324F4 0012DA14  40 82 00 0C */	bne .L_80132500
/* 801324F8 0012DA18  38 60 00 00 */	li r3, 0
/* 801324FC 0012DA1C  48 00 00 9C */	b .L_80132598
.L_80132500:
/* 80132500 0012DA20  28 05 01 74 */	cmplwi r5, 0x174
/* 80132504 0012DA24  40 80 00 0C */	bge .L_80132510
/* 80132508 0012DA28  38 60 00 00 */	li r3, 0
/* 8013250C 0012DA2C  48 00 00 8C */	b .L_80132598
.L_80132510:
/* 80132510 0012DA30  2C 04 00 00 */	cmpwi r4, 0
/* 80132514 0012DA34  41 82 00 54 */	beq .L_80132568
/* 80132518 0012DA38  7F A3 EB 78 */	mr r3, r29
/* 8013251C 0012DA3C  7C C4 33 78 */	mr r4, r6
/* 80132520 0012DA40  38 A0 00 01 */	li r5, 1
/* 80132524 0012DA44  48 01 A3 81 */	bl __ct__Q34nw4r2ut14NandFileStreamFPCcUl
/* 80132528 0012DA48  88 1D 00 04 */	lbz r0, 4(r29)
/* 8013252C 0012DA4C  3C 60 80 1A */	lis r3, lbl_801A6CE0@ha
/* 80132530 0012DA50  38 63 6C E0 */	addi r3, r3, lbl_801A6CE0@l
/* 80132534 0012DA54  93 DD 01 6C */	stw r30, 0x16c(r29)
/* 80132538 0012DA58  2C 00 00 00 */	cmpwi r0, 0
/* 8013253C 0012DA5C  90 7D 00 00 */	stw r3, 0(r29)
/* 80132540 0012DA60  93 FD 01 70 */	stw r31, 0x170(r29)
/* 80132544 0012DA64  41 82 00 24 */	beq .L_80132568
/* 80132548 0012DA68  2C 1F 00 00 */	cmpwi r31, 0
/* 8013254C 0012DA6C  40 82 00 0C */	bne .L_80132558
/* 80132550 0012DA70  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80132554 0012DA74  90 1D 01 70 */	stw r0, 0x170(r29)
.L_80132558:
/* 80132558 0012DA78  80 9D 01 6C */	lwz r4, 0x16c(r29)
/* 8013255C 0012DA7C  7F A3 EB 78 */	mr r3, r29
/* 80132560 0012DA80  38 A0 00 00 */	li r5, 0
/* 80132564 0012DA84  48 01 B2 25 */	bl Seek__Q34nw4r2ut14NandFileStreamFlUl
.L_80132568:
/* 80132568 0012DA88  88 1D 00 04 */	lbz r0, 4(r29)
/* 8013256C 0012DA8C  2C 00 00 00 */	cmpwi r0, 0
/* 80132570 0012DA90  40 82 00 24 */	bne .L_80132594
/* 80132574 0012DA94  81 9D 00 00 */	lwz r12, 0(r29)
/* 80132578 0012DA98  7F A3 EB 78 */	mr r3, r29
/* 8013257C 0012DA9C  38 80 FF FF */	li r4, -1
/* 80132580 0012DAA0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80132584 0012DAA4  7D 89 03 A6 */	mtctr r12
/* 80132588 0012DAA8  4E 80 04 21 */	bctrl 
/* 8013258C 0012DAAC  38 60 00 00 */	li r3, 0
/* 80132590 0012DAB0  48 00 00 08 */	b .L_80132598
.L_80132594:
/* 80132594 0012DAB4  7F A3 EB 78 */	mr r3, r29
.L_80132598:
/* 80132598 0012DAB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013259C 0012DABC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801325A0 0012DAC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801325A4 0012DAC4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801325A8 0012DAC8  7C 08 03 A6 */	mtlr r0
/* 801325AC 0012DACC  38 21 00 20 */	addi r1, r1, 0x20
/* 801325B0 0012DAD0  4E 80 00 20 */	blr 

glabel lbl_801325B4
/* 801325B4 0012DAD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801325B8 0012DAD8  7C 08 02 A6 */	mflr r0
/* 801325BC 0012DADC  2C 03 00 00 */	cmpwi r3, 0
/* 801325C0 0012DAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801325C4 0012DAE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801325C8 0012DAE8  7C 9F 23 78 */	mr r31, r4
/* 801325CC 0012DAEC  93 C1 00 08 */	stw r30, 8(r1)
/* 801325D0 0012DAF0  7C 7E 1B 78 */	mr r30, r3
/* 801325D4 0012DAF4  41 82 00 1C */	beq .L_801325F0
/* 801325D8 0012DAF8  38 80 00 00 */	li r4, 0
/* 801325DC 0012DAFC  48 01 A4 01 */	bl __dt__Q34nw4r2ut14NandFileStreamFv
/* 801325E0 0012DB00  2C 1F 00 00 */	cmpwi r31, 0
/* 801325E4 0012DB04  40 81 00 0C */	ble .L_801325F0
/* 801325E8 0012DB08  7F C3 F3 78 */	mr r3, r30
/* 801325EC 0012DB0C  48 02 9C 25 */	bl operator_delete
.L_801325F0:
/* 801325F0 0012DB10  7F C3 F3 78 */	mr r3, r30
/* 801325F4 0012DB14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801325F8 0012DB18  83 C1 00 08 */	lwz r30, 8(r1)
/* 801325FC 0012DB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80132600 0012DB20  7C 08 03 A6 */	mtlr r0
/* 80132604 0012DB24  38 21 00 10 */	addi r1, r1, 0x10
/* 80132608 0012DB28  4E 80 00 20 */	blr 

glabel lbl_8013260C
/* 8013260C 0012DB2C  38 60 01 74 */	li r3, 0x174
/* 80132610 0012DB30  4E 80 00 20 */	blr 

glabel func_80132614
/* 80132614 0012DB34  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80132618 0012DB38  7C 08 02 A6 */	mflr r0
/* 8013261C 0012DB3C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80132620 0012DB40  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80132624 0012DB44  3F E0 80 1A */	lis r31, lbl_801A6A68@ha
/* 80132628 0012DB48  3B FF 6A 68 */	addi r31, r31, lbl_801A6A68@l
/* 8013262C 0012DB4C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80132630 0012DB50  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80132634 0012DB54  93 81 00 70 */	stw r28, 0x70(r1)
/* 80132638 0012DB58  7C 7C 1B 78 */	mr r28, r3
/* 8013263C 0012DB5C  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 80132640 0012DB60  2C 00 00 00 */	cmpwi r0, 0
/* 80132644 0012DB64  40 82 00 18 */	bne .L_8013265C
/* 80132648 0012DB68  38 7F 00 00 */	addi r3, r31, 0
/* 8013264C 0012DB6C  38 BF 00 CC */	addi r5, r31, 0xcc
/* 80132650 0012DB70  38 80 00 BC */	li r4, 0xbc
/* 80132654 0012DB74  4C C6 31 82 */	crclr 6
/* 80132658 0012DB78  4B FE 37 69 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013265C:
/* 8013265C 0012DB7C  3C A0 80 24 */	lis r5, lbl_80238DD4@ha
/* 80132660 0012DB80  88 05 8D D4 */	lbz r0, lbl_80238DD4@l(r5)
/* 80132664 0012DB84  7C 00 07 75 */	extsb. r0, r0
/* 80132668 0012DB88  40 82 00 18 */	bne .L_80132680
/* 8013266C 0012DB8C  38 00 00 01 */	li r0, 1
/* 80132670 0012DB90  38 80 00 40 */	li r4, 0x40
/* 80132674 0012DB94  3C 60 80 24 */	lis r3, lbl_80238DD0@ha
/* 80132678 0012DB98  98 05 8D D4 */	stb r0, -0x722c(r5)
/* 8013267C 0012DB9C  90 83 8D D0 */	stw r4, lbl_80238DD0@l(r3)
.L_80132680:
/* 80132680 0012DBA0  38 01 00 27 */	addi r0, r1, 0x27
/* 80132684 0012DBA4  38 7C 01 4C */	addi r3, r28, 0x14c
/* 80132688 0012DBA8  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 8013268C 0012DBAC  38 80 00 00 */	li r4, 0
/* 80132690 0012DBB0  38 A0 00 00 */	li r5, 0
/* 80132694 0012DBB4  4B F8 6F CD */	bl NANDSeek
/* 80132698 0012DBB8  2C 03 00 00 */	cmpwi r3, 0
/* 8013269C 0012DBBC  41 82 00 20 */	beq .L_801326BC
/* 801326A0 0012DBC0  38 7F 00 00 */	addi r3, r31, 0
/* 801326A4 0012DBC4  38 BF 00 F0 */	addi r5, r31, 0xf0
/* 801326A8 0012DBC8  38 80 00 CD */	li r4, 0xcd
/* 801326AC 0012DBCC  4C C6 31 82 */	crclr 6
/* 801326B0 0012DBD0  4B FE 37 9D */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 801326B4 0012DBD4  38 60 00 00 */	li r3, 0
/* 801326B8 0012DBD8  48 00 00 5C */	b .L_80132714
.L_801326BC:
/* 801326BC 0012DBDC  3C 60 80 24 */	lis r3, lbl_80238DD0@ha
/* 801326C0 0012DBE0  7F C4 F3 78 */	mr r4, r30
/* 801326C4 0012DBE4  83 A3 8D D0 */	lwz r29, lbl_80238DD0@l(r3)
/* 801326C8 0012DBE8  38 7C 01 4C */	addi r3, r28, 0x14c
/* 801326CC 0012DBEC  7F A5 EB 78 */	mr r5, r29
/* 801326D0 0012DBF0  4B F8 6D D1 */	bl NANDRead
/* 801326D4 0012DBF4  7C 03 E8 40 */	cmplw r3, r29
/* 801326D8 0012DBF8  41 82 00 20 */	beq .L_801326F8
/* 801326DC 0012DBFC  38 7F 00 00 */	addi r3, r31, 0
/* 801326E0 0012DC00  38 BF 01 20 */	addi r5, r31, 0x120
/* 801326E4 0012DC04  38 80 00 D8 */	li r4, 0xd8
/* 801326E8 0012DC08  4C C6 31 82 */	crclr 6
/* 801326EC 0012DC0C  4B FE 37 61 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 801326F0 0012DC10  38 60 00 00 */	li r3, 0
/* 801326F4 0012DC14  48 00 00 20 */	b .L_80132714
.L_801326F8:
/* 801326F8 0012DC18  7F C4 F3 78 */	mr r4, r30
/* 801326FC 0012DC1C  38 7C 01 08 */	addi r3, r28, 0x108
/* 80132700 0012DC20  48 00 4C 6D */	bl Init__Q46nw4hbm3snd6detail22SoundArchiveFileReaderFPCv
/* 80132704 0012DC24  7F 83 E3 78 */	mr r3, r28
/* 80132708 0012DC28  38 9C 01 08 */	addi r4, r28, 0x108
/* 8013270C 0012DC2C  48 00 45 B1 */	bl Setup__Q36nw4hbm3snd12SoundArchiveFPQ46nw4hbm3snd6detail22SoundArchiveFileReader
/* 80132710 0012DC30  38 60 00 01 */	li r3, 1
.L_80132714:
/* 80132714 0012DC34  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80132718 0012DC38  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8013271C 0012DC3C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80132720 0012DC40  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 80132724 0012DC44  83 81 00 70 */	lwz r28, 0x70(r1)
/* 80132728 0012DC48  7C 08 03 A6 */	mtlr r0
/* 8013272C 0012DC4C  38 21 00 80 */	addi r1, r1, 0x80
/* 80132730 0012DC50  4E 80 00 20 */	blr 

glabel func_80132734
/* 80132734 0012DC54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80132738 0012DC58  7C 08 02 A6 */	mflr r0
/* 8013273C 0012DC5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80132740 0012DC60  39 61 00 20 */	addi r11, r1, 0x20
/* 80132744 0012DC64  48 02 A1 FD */	bl _savegpr_26
/* 80132748 0012DC68  88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 8013274C 0012DC6C  3F E0 80 1A */	lis r31, lbl_801A6A68@ha
/* 80132750 0012DC70  7C 7A 1B 78 */	mr r26, r3
/* 80132754 0012DC74  7C 9B 23 78 */	mr r27, r4
/* 80132758 0012DC78  2C 00 00 00 */	cmpwi r0, 0
/* 8013275C 0012DC7C  7C BC 2B 78 */	mr r28, r5
/* 80132760 0012DC80  3B FF 6A 68 */	addi r31, r31, lbl_801A6A68@l
/* 80132764 0012DC84  40 82 00 18 */	bne .L_8013277C
/* 80132768 0012DC88  38 7F 00 00 */	addi r3, r31, 0
/* 8013276C 0012DC8C  38 BF 00 CC */	addi r5, r31, 0xcc
/* 80132770 0012DC90  38 80 00 EF */	li r4, 0xef
/* 80132774 0012DC94  4C C6 31 82 */	crclr 6
/* 80132778 0012DC98  4B FE 36 49 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013277C:
/* 8013277C 0012DC9C  83 BA 01 24 */	lwz r29, 0x124(r26)
/* 80132780 0012DCA0  83 DA 01 20 */	lwz r30, 0x120(r26)
/* 80132784 0012DCA4  7C 1C E8 40 */	cmplw r28, r29
/* 80132788 0012DCA8  40 80 00 24 */	bge .L_801327AC
/* 8013278C 0012DCAC  40 80 00 18 */	bge .L_801327A4
/* 80132790 0012DCB0  38 7F 00 00 */	addi r3, r31, 0
/* 80132794 0012DCB4  38 BF 01 50 */	addi r5, r31, 0x150
/* 80132798 0012DCB8  38 80 00 F9 */	li r4, 0xf9
/* 8013279C 0012DCBC  4C C6 31 82 */	crclr 6
/* 801327A0 0012DCC0  4B FE 36 AD */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
.L_801327A4:
/* 801327A4 0012DCC4  38 60 00 00 */	li r3, 0
/* 801327A8 0012DCC8  48 00 00 80 */	b .L_80132828
.L_801327AC:
/* 801327AC 0012DCCC  7F C4 F3 78 */	mr r4, r30
/* 801327B0 0012DCD0  38 7A 01 4C */	addi r3, r26, 0x14c
/* 801327B4 0012DCD4  38 A0 00 00 */	li r5, 0
/* 801327B8 0012DCD8  4B F8 6E A9 */	bl NANDSeek
/* 801327BC 0012DCDC  7C 03 F0 00 */	cmpw r3, r30
/* 801327C0 0012DCE0  41 82 00 20 */	beq .L_801327E0
/* 801327C4 0012DCE4  38 7F 00 00 */	addi r3, r31, 0
/* 801327C8 0012DCE8  38 BF 00 F0 */	addi r5, r31, 0xf0
/* 801327CC 0012DCEC  38 80 01 06 */	li r4, 0x106
/* 801327D0 0012DCF0  4C C6 31 82 */	crclr 6
/* 801327D4 0012DCF4  4B FE 36 79 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 801327D8 0012DCF8  38 60 00 00 */	li r3, 0
/* 801327DC 0012DCFC  48 00 00 4C */	b .L_80132828
.L_801327E0:
/* 801327E0 0012DD00  7F 64 DB 78 */	mr r4, r27
/* 801327E4 0012DD04  7F A5 EB 78 */	mr r5, r29
/* 801327E8 0012DD08  38 7A 01 4C */	addi r3, r26, 0x14c
/* 801327EC 0012DD0C  4B F8 6C B5 */	bl NANDRead
/* 801327F0 0012DD10  7C 03 E8 40 */	cmplw r3, r29
/* 801327F4 0012DD14  41 82 00 20 */	beq .L_80132814
/* 801327F8 0012DD18  38 7F 00 00 */	addi r3, r31, 0
/* 801327FC 0012DD1C  38 BF 01 20 */	addi r5, r31, 0x120
/* 80132800 0012DD20  38 80 01 11 */	li r4, 0x111
/* 80132804 0012DD24  4C C6 31 82 */	crclr 6
/* 80132808 0012DD28  4B FE 36 45 */	bl Warning__Q36nw4hbm2db6detailFPCciPCce
/* 8013280C 0012DD2C  38 60 00 00 */	li r3, 0
/* 80132810 0012DD30  48 00 00 18 */	b .L_80132828
.L_80132814:
/* 80132814 0012DD34  7F 64 DB 78 */	mr r4, r27
/* 80132818 0012DD38  7F A5 EB 78 */	mr r5, r29
/* 8013281C 0012DD3C  38 7A 01 08 */	addi r3, r26, 0x108
/* 80132820 0012DD40  48 00 4C AD */	bl SetInfoChunk__Q46nw4hbm3snd6detail22SoundArchiveFileReaderFPCvUl
/* 80132824 0012DD44  38 60 00 01 */	li r3, 1
.L_80132828:
/* 80132828 0012DD48  39 61 00 20 */	addi r11, r1, 0x20
/* 8013282C 0012DD4C  48 02 A1 61 */	bl _restgpr_26
/* 80132830 0012DD50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80132834 0012DD54  7C 08 03 A6 */	mtlr r0
/* 80132838 0012DD58  38 21 00 20 */	addi r1, r1, 0x20
/* 8013283C 0012DD5C  4E 80 00 20 */	blr 

glabel lbl_80132840
/* 80132840 0012DD60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80132844 0012DD64  7C 08 02 A6 */	mflr r0
/* 80132848 0012DD68  2C 04 00 00 */	cmpwi r4, 0
/* 8013284C 0012DD6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80132850 0012DD70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80132854 0012DD74  7C 7F 1B 78 */	mr r31, r3
/* 80132858 0012DD78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013285C 0012DD7C  7C BE 2B 78 */	mr r30, r5
/* 80132860 0012DD80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80132864 0012DD84  7C 9D 23 78 */	mr r29, r4
/* 80132868 0012DD88  40 82 00 20 */	bne .L_80132888
/* 8013286C 0012DD8C  3C 60 80 1A */	lis r3, lbl_801A6A68@ha
/* 80132870 0012DD90  3C A0 80 1A */	lis r5, lbl_801A6CA0@ha
/* 80132874 0012DD94  38 63 6A 68 */	addi r3, r3, lbl_801A6A68@l
/* 80132878 0012DD98  38 80 01 80 */	li r4, 0x180
/* 8013287C 0012DD9C  38 A5 6C A0 */	addi r5, r5, lbl_801A6CA0@l
/* 80132880 0012DDA0  4C C6 31 82 */	crclr 6
/* 80132884 0012DDA4  4B FE 35 3D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_80132888:
/* 80132888 0012DDA8  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8013288C 0012DDAC  80 9F 01 6C */	lwz r4, 0x16c(r31)
/* 80132890 0012DDB0  80 7F 01 70 */	lwz r3, 0x170(r31)
/* 80132894 0012DDB4  7C 05 F2 14 */	add r0, r5, r30
/* 80132898 0012DDB8  7C 64 1A 14 */	add r3, r4, r3
/* 8013289C 0012DDBC  7C 00 18 40 */	cmplw r0, r3
/* 801328A0 0012DDC0  40 81 00 10 */	ble .L_801328B0
/* 801328A4 0012DDC4  7C 65 18 50 */	subf r3, r5, r3
/* 801328A8 0012DDC8  38 03 00 1F */	addi r0, r3, 0x1f
/* 801328AC 0012DDCC  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
.L_801328B0:
/* 801328B0 0012DDD0  7F E3 FB 78 */	mr r3, r31
/* 801328B4 0012DDD4  7F A4 EB 78 */	mr r4, r29
/* 801328B8 0012DDD8  7F C5 F3 78 */	mr r5, r30
/* 801328BC 0012DDDC  48 01 AA 91 */	bl Read__Q34nw4r2ut14NandFileStreamFPvUl
/* 801328C0 0012DDE0  7C 7F 1B 78 */	mr r31, r3
/* 801328C4 0012DDE4  7F A3 EB 78 */	mr r3, r29
/* 801328C8 0012DDE8  7F C4 F3 78 */	mr r4, r30
/* 801328CC 0012DDEC  4B F5 E3 D1 */	bl DCStoreRange
/* 801328D0 0012DDF0  7F E3 FB 78 */	mr r3, r31
/* 801328D4 0012DDF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801328D8 0012DDF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801328DC 0012DDFC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801328E0 0012DE00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801328E4 0012DE04  7C 08 03 A6 */	mtlr r0
/* 801328E8 0012DE08  38 21 00 20 */	addi r1, r1, 0x20
/* 801328EC 0012DE0C  4E 80 00 20 */	blr 

glabel lbl_801328F0
/* 801328F0 0012DE10  2C 05 00 01 */	cmpwi r5, 1
/* 801328F4 0012DE14  41 82 00 2C */	beq .L_80132920
/* 801328F8 0012DE18  40 80 00 10 */	bge .L_80132908
/* 801328FC 0012DE1C  2C 05 00 00 */	cmpwi r5, 0
/* 80132900 0012DE20  40 80 00 14 */	bge .L_80132914
/* 80132904 0012DE24  48 00 00 3C */	b .L_80132940
.L_80132908:
/* 80132908 0012DE28  2C 05 00 03 */	cmpwi r5, 3
/* 8013290C 0012DE2C  40 80 00 34 */	bge .L_80132940
/* 80132910 0012DE30  48 00 00 1C */	b .L_8013292C
.L_80132914:
/* 80132914 0012DE34  80 03 01 6C */	lwz r0, 0x16c(r3)
/* 80132918 0012DE38  7C 84 02 14 */	add r4, r4, r0
/* 8013291C 0012DE3C  48 00 00 40 */	b .L_8013295C
.L_80132920:
/* 80132920 0012DE40  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80132924 0012DE44  7C 84 02 14 */	add r4, r4, r0
/* 80132928 0012DE48  48 00 00 34 */	b .L_8013295C
.L_8013292C:
/* 8013292C 0012DE4C  80 A3 01 6C */	lwz r5, 0x16c(r3)
/* 80132930 0012DE50  80 03 01 70 */	lwz r0, 0x170(r3)
/* 80132934 0012DE54  7C 05 02 14 */	add r0, r5, r0
/* 80132938 0012DE58  7C 84 00 50 */	subf r4, r4, r0
/* 8013293C 0012DE5C  48 00 00 20 */	b .L_8013295C
.L_80132940:
/* 80132940 0012DE60  3C 60 80 1A */	lis r3, lbl_801A6A68@ha
/* 80132944 0012DE64  3C A0 80 1A */	lis r5, lbl_801A6CC8@ha
/* 80132948 0012DE68  38 63 6A 68 */	addi r3, r3, lbl_801A6A68@l
/* 8013294C 0012DE6C  38 80 01 9D */	li r4, 0x19d
/* 80132950 0012DE70  38 A5 6C C8 */	addi r5, r5, lbl_801A6CC8@l
/* 80132954 0012DE74  4C C6 31 82 */	crclr 6
/* 80132958 0012DE78  4B FE 34 68 */	b Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8013295C:
/* 8013295C 0012DE7C  80 A3 01 6C */	lwz r5, 0x16c(r3)
/* 80132960 0012DE80  7C 04 28 00 */	cmpw r4, r5
/* 80132964 0012DE84  40 80 00 0C */	bge .L_80132970
/* 80132968 0012DE88  7C A4 2B 78 */	mr r4, r5
/* 8013296C 0012DE8C  48 00 00 18 */	b .L_80132984
.L_80132970:
/* 80132970 0012DE90  80 03 01 70 */	lwz r0, 0x170(r3)
/* 80132974 0012DE94  7C 05 02 14 */	add r0, r5, r0
/* 80132978 0012DE98  7C 04 00 00 */	cmpw r4, r0
/* 8013297C 0012DE9C  40 81 00 08 */	ble .L_80132984
/* 80132980 0012DEA0  7C 04 03 78 */	mr r4, r0
.L_80132984:
/* 80132984 0012DEA4  38 A0 00 00 */	li r5, 0
/* 80132988 0012DEA8  48 01 AE 00 */	b Seek__Q34nw4r2ut14NandFileStreamFlUl

glabel lbl_8013298C
/* 8013298C 0012DEAC  38 60 00 20 */	li r3, 0x20
/* 80132990 0012DEB0  4E 80 00 20 */	blr 

glabel lbl_80132994
/* 80132994 0012DEB4  38 60 00 20 */	li r3, 0x20
/* 80132998 0012DEB8  4E 80 00 20 */	blr 

glabel lbl_8013299C
/* 8013299C 0012DEBC  38 60 00 01 */	li r3, 1
/* 801329A0 0012DEC0  4E 80 00 20 */	blr 

glabel lbl_801329A4
/* 801329A4 0012DEC4  38 60 00 00 */	li r3, 0
/* 801329A8 0012DEC8  4E 80 00 20 */	blr 

glabel lbl_801329AC
/* 801329AC 0012DECC  88 63 01 65 */	lbz r3, 0x165(r3)
/* 801329B0 0012DED0  4E 80 00 20 */	blr 

glabel lbl_801329B4
/* 801329B4 0012DED4  88 63 01 64 */	lbz r3, 0x164(r3)
/* 801329B8 0012DED8  4E 80 00 20 */	blr 

glabel lbl_801329BC
/* 801329BC 0012DEDC  38 60 00 01 */	li r3, 1
/* 801329C0 0012DEE0  4E 80 00 20 */	blr 

glabel lbl_801329C4
/* 801329C4 0012DEE4  38 60 00 01 */	li r3, 1
/* 801329C8 0012DEE8  4E 80 00 20 */	blr 

glabel lbl_801329CC
/* 801329CC 0012DEEC  88 63 01 66 */	lbz r3, 0x166(r3)
/* 801329D0 0012DEF0  4E 80 00 20 */	blr 

glabel lbl_801329D4
/* 801329D4 0012DEF4  3C 60 80 24 */	lis r3, lbl_80243BA0@ha
/* 801329D8 0012DEF8  38 63 3B A0 */	addi r3, r3, lbl_80243BA0@l
/* 801329DC 0012DEFC  4E 80 00 20 */	blr 

glabel GetSize__Q44nw4r3snd16NandSoundArchive14NandFileStreamCFv
/* 801329E0 0012DF00  80 63 01 70 */	lwz r3, 0x170(r3)
/* 801329E4 0012DF04  4E 80 00 20 */	blr 

glabel Tell__Q44nw4r3snd16NandSoundArchive14NandFileStreamCFv
/* 801329E8 0012DF08  80 83 01 6C */	lwz r4, 0x16c(r3)
/* 801329EC 0012DF0C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801329F0 0012DF10  7C 64 00 50 */	subf r3, r4, r0
/* 801329F4 0012DF14  4E 80 00 20 */	blr 

glabel detail_GetWaveDataFileAddress__Q34nw4r3snd16NandSoundArchiveCFUl
/* 801329F8 0012DF18  38 60 00 00 */	li r3, 0
/* 801329FC 0012DF1C  4E 80 00 20 */	blr 

glabel detail_GetFileAddress__Q34nw4r3snd16NandSoundArchiveCFUl
/* 80132A00 0012DF20  38 60 00 00 */	li r3, 0
/* 80132A04 0012DF24  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_80238DD0
	.skip 0x4

glabel lbl_80238DD4
	.skip 0x4
