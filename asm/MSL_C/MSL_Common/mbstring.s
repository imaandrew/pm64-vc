.include "macros.inc"

.section .text, "ax"

glabel mbtowc
/* 8016220C 0015D72C  3C C0 80 1B */	lis r6, _current_locale@ha
/* 80162210 0015D730  38 C6 D8 D0 */	addi r6, r6, _current_locale@l
/* 80162214 0015D734  80 C6 00 38 */	lwz r6, 0x38(r6)
/* 80162218 0015D738  81 86 00 20 */	lwz r12, 0x20(r6)
/* 8016221C 0015D73C  7D 89 03 A6 */	mtctr r12
/* 80162220 0015D740  4E 80 04 20 */	bctr 

glabel __mbtowc_noconv
/* 80162224 0015D744  2C 04 00 00 */	cmpwi r4, 0
/* 80162228 0015D748  40 82 00 0C */	bne lbl_80162234
/* 8016222C 0015D74C  38 60 00 00 */	li r3, 0
/* 80162230 0015D750  4E 80 00 20 */	blr 
lbl_80162234:
/* 80162234 0015D754  2C 05 00 00 */	cmpwi r5, 0
/* 80162238 0015D758  40 82 00 0C */	bne lbl_80162244
/* 8016223C 0015D75C  38 60 FF FF */	li r3, -1
/* 80162240 0015D760  4E 80 00 20 */	blr 
lbl_80162244:
/* 80162244 0015D764  2C 03 00 00 */	cmpwi r3, 0
/* 80162248 0015D768  41 82 00 0C */	beq lbl_80162254
/* 8016224C 0015D76C  88 04 00 00 */	lbz r0, 0(r4)
/* 80162250 0015D770  B0 03 00 00 */	sth r0, 0(r3)
lbl_80162254:
/* 80162254 0015D774  88 04 00 00 */	lbz r0, 0(r4)
/* 80162258 0015D778  7C 00 07 75 */	extsb. r0, r0
/* 8016225C 0015D77C  40 82 00 0C */	bne lbl_80162268
/* 80162260 0015D780  38 60 00 00 */	li r3, 0
/* 80162264 0015D784  4E 80 00 20 */	blr 
lbl_80162268:
/* 80162268 0015D788  38 60 00 01 */	li r3, 1
/* 8016226C 0015D78C  4E 80 00 20 */	blr 

glabel __wctomb_noconv
/* 80162270 0015D790  2C 03 00 00 */	cmpwi r3, 0
/* 80162274 0015D794  40 82 00 0C */	bne lbl_80162280
/* 80162278 0015D798  38 60 00 00 */	li r3, 0
/* 8016227C 0015D79C  4E 80 00 20 */	blr 
lbl_80162280:
/* 80162280 0015D7A0  98 83 00 00 */	stb r4, 0(r3)
/* 80162284 0015D7A4  38 60 00 01 */	li r3, 1
/* 80162288 0015D7A8  4E 80 00 20 */	blr 

glabel wcstombs
/* 8016228C 0015D7AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80162290 0015D7B0  7C 08 02 A6 */	mflr r0
/* 80162294 0015D7B4  2C 03 00 00 */	cmpwi r3, 0
/* 80162298 0015D7B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016229C 0015D7BC  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 801622A0 0015D7C0  7C 7A 1B 78 */	mr r26, r3
/* 801622A4 0015D7C4  7C BB 2B 78 */	mr r27, r5
/* 801622A8 0015D7C8  3B A0 00 00 */	li r29, 0
/* 801622AC 0015D7CC  41 82 00 0C */	beq lbl_801622B8
/* 801622B0 0015D7D0  2C 04 00 00 */	cmpwi r4, 0
/* 801622B4 0015D7D4  40 82 00 0C */	bne lbl_801622C0
lbl_801622B8:
/* 801622B8 0015D7D8  38 60 00 00 */	li r3, 0
/* 801622BC 0015D7DC  48 00 00 74 */	b lbl_80162330
lbl_801622C0:
/* 801622C0 0015D7E0  3F E0 80 1B */	lis r31, _current_locale@ha
/* 801622C4 0015D7E4  7C 9C 23 78 */	mr r28, r4
/* 801622C8 0015D7E8  3B FF D8 D0 */	addi r31, r31, _current_locale@l
/* 801622CC 0015D7EC  48 00 00 58 */	b lbl_80162324
lbl_801622D0:
/* 801622D0 0015D7F0  A0 9C 00 00 */	lhz r4, 0(r28)
/* 801622D4 0015D7F4  2C 04 00 00 */	cmpwi r4, 0
/* 801622D8 0015D7F8  40 82 00 10 */	bne lbl_801622E8
/* 801622DC 0015D7FC  38 00 00 00 */	li r0, 0
/* 801622E0 0015D800  7C 1A E9 AE */	stbx r0, r26, r29
/* 801622E4 0015D804  48 00 00 48 */	b lbl_8016232C
lbl_801622E8:
/* 801622E8 0015D808  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 801622EC 0015D80C  38 61 00 08 */	addi r3, r1, 8
/* 801622F0 0015D810  81 85 00 24 */	lwz r12, 0x24(r5)
/* 801622F4 0015D814  7D 89 03 A6 */	mtctr r12
/* 801622F8 0015D818  3B 9C 00 02 */	addi r28, r28, 2
/* 801622FC 0015D81C  4E 80 04 21 */	bctrl 
/* 80162300 0015D820  7C 1D 1A 14 */	add r0, r29, r3
/* 80162304 0015D824  7C 7E 1B 78 */	mr r30, r3
/* 80162308 0015D828  7C 00 D8 40 */	cmplw r0, r27
/* 8016230C 0015D82C  41 81 00 20 */	bgt lbl_8016232C
/* 80162310 0015D830  7F C5 F3 78 */	mr r5, r30
/* 80162314 0015D834  7C 7A EA 14 */	add r3, r26, r29
/* 80162318 0015D838  38 81 00 08 */	addi r4, r1, 8
/* 8016231C 0015D83C  48 00 42 D9 */	bl strncpy
/* 80162320 0015D840  7F BD F2 14 */	add r29, r29, r30
lbl_80162324:
/* 80162324 0015D844  7C 1D D8 40 */	cmplw r29, r27
/* 80162328 0015D848  40 81 FF A8 */	ble lbl_801622D0
lbl_8016232C:
/* 8016232C 0015D84C  7F A3 EB 78 */	mr r3, r29
lbl_80162330:
/* 80162330 0015D850  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80162334 0015D854  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80162338 0015D858  7C 08 03 A6 */	mtlr r0
/* 8016233C 0015D85C  38 21 00 30 */	addi r1, r1, 0x30
/* 80162340 0015D860  4E 80 00 20 */	blr 