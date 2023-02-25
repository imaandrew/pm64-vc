.include "macros.inc"

.section .text, "ax"

glabel xlObjectMake
/* 8008703C 0008255C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80087040 00082560  7C 08 02 A6 */	mflr r0
/* 80087044 00082564  90 01 00 24 */	stw r0, 0x24(r1)
/* 80087048 00082568  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8008704C 0008256C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80087050 00082570  7C BE 2B 78 */	mr r30, r5
/* 80087054 00082574  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80087058 00082578  7C 9D 23 78 */	mr r29, r4
/* 8008705C 0008257C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80087060 00082580  7C 7C 1B 78 */	mr r28, r3
/* 80087064 00082584  80 CD 89 10 */	lwz r6, lbl_80246D90@sda21(r13)
/* 80087068 00082588  80 86 00 08 */	lwz r4, 8(r6)
/* 8008706C 0008258C  48 00 00 24 */	b lbl_80087090
lbl_80087070:
/* 80087070 00082590  38 64 00 04 */	addi r3, r4, 4
/* 80087074 00082594  90 61 00 08 */	stw r3, 8(r1)
/* 80087078 00082598  80 04 00 08 */	lwz r0, 8(r4)
/* 8008707C 0008259C  7C 00 28 40 */	cmplw r0, r5
/* 80087080 000825A0  40 82 00 0C */	bne lbl_8008708C
/* 80087084 000825A4  38 00 00 01 */	li r0, 1
/* 80087088 000825A8  48 00 00 14 */	b lbl_8008709C
lbl_8008708C:
/* 8008708C 000825AC  80 84 00 00 */	lwz r4, 0(r4)
lbl_80087090:
/* 80087090 000825B0  2C 04 00 00 */	cmpwi r4, 0
/* 80087094 000825B4  40 82 FF DC */	bne lbl_80087070
/* 80087098 000825B8  38 00 00 00 */	li r0, 0
lbl_8008709C:
/* 8008709C 000825BC  2C 00 00 00 */	cmpwi r0, 0
/* 800870A0 000825C0  40 82 00 5C */	bne lbl_800870FC
/* 800870A4 000825C4  7C C3 33 78 */	mr r3, r6
/* 800870A8 000825C8  38 81 00 08 */	addi r4, r1, 8
/* 800870AC 000825CC  4B FF E5 35 */	bl xlListMakeItem
/* 800870B0 000825D0  2C 03 00 00 */	cmpwi r3, 0
/* 800870B4 000825D4  40 82 00 0C */	bne lbl_800870C0
/* 800870B8 000825D8  38 00 00 00 */	li r0, 0
/* 800870BC 000825DC  48 00 00 28 */	b lbl_800870E4
lbl_800870C0:
/* 800870C0 000825E0  80 61 00 08 */	lwz r3, 8(r1)
/* 800870C4 000825E4  93 C3 00 04 */	stw r30, 4(r3)
/* 800870C8 000825E8  80 9E 00 04 */	lwz r4, 4(r30)
/* 800870CC 000825EC  80 61 00 08 */	lwz r3, 8(r1)
/* 800870D0 000825F0  38 84 00 04 */	addi r4, r4, 4
/* 800870D4 000825F4  4B FF E3 5D */	bl xlListMake
/* 800870D8 000825F8  7C 03 00 D0 */	neg r0, r3
/* 800870DC 000825FC  7C 00 1B 78 */	or r0, r0, r3
/* 800870E0 00082600  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_800870E4:
/* 800870E4 00082604  2C 00 00 00 */	cmpwi r0, 0
/* 800870E8 00082608  40 82 00 0C */	bne lbl_800870F4
/* 800870EC 0008260C  38 60 00 00 */	li r3, 0
/* 800870F0 00082610  48 00 00 88 */	b lbl_80087178
lbl_800870F4:
/* 800870F4 00082614  3B E0 00 01 */	li r31, 1
/* 800870F8 00082618  48 00 00 08 */	b lbl_80087100
lbl_800870FC:
/* 800870FC 0008261C  3B E0 00 00 */	li r31, 0
lbl_80087100:
/* 80087100 00082620  80 61 00 08 */	lwz r3, 8(r1)
/* 80087104 00082624  7F 84 E3 78 */	mr r4, r28
/* 80087108 00082628  80 63 00 00 */	lwz r3, 0(r3)
/* 8008710C 0008262C  4B FF E4 D5 */	bl xlListMakeItem
/* 80087110 00082630  2C 03 00 00 */	cmpwi r3, 0
/* 80087114 00082634  40 82 00 0C */	bne lbl_80087120
/* 80087118 00082638  38 60 00 00 */	li r3, 0
/* 8008711C 0008263C  48 00 00 5C */	b lbl_80087178
lbl_80087120:
/* 80087120 00082640  80 BC 00 00 */	lwz r5, 0(r28)
/* 80087124 00082644  38 80 00 00 */	li r4, 0
/* 80087128 00082648  80 01 00 08 */	lwz r0, 8(r1)
/* 8008712C 0008264C  38 65 00 04 */	addi r3, r5, 4
/* 80087130 00082650  90 05 00 00 */	stw r0, 0(r5)
/* 80087134 00082654  90 7C 00 00 */	stw r3, 0(r28)
/* 80087138 00082658  80 BE 00 04 */	lwz r5, 4(r30)
/* 8008713C 0008265C  4B F7 D3 01 */	bl memset
/* 80087140 00082660  2C 1F 00 00 */	cmpwi r31, 0
/* 80087144 00082664  41 82 00 1C */	beq lbl_80087160
/* 80087148 00082668  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 8008714C 0008266C  38 80 00 00 */	li r4, 0
/* 80087150 00082670  80 7C 00 00 */	lwz r3, 0(r28)
/* 80087154 00082674  38 A0 00 00 */	li r5, 0
/* 80087158 00082678  7D 89 03 A6 */	mtctr r12
/* 8008715C 0008267C  4E 80 04 21 */	bctrl 
lbl_80087160:
/* 80087160 00082680  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 80087164 00082684  7F A5 EB 78 */	mr r5, r29
/* 80087168 00082688  80 7C 00 00 */	lwz r3, 0(r28)
/* 8008716C 0008268C  38 80 00 02 */	li r4, 2
/* 80087170 00082690  7D 89 03 A6 */	mtctr r12
/* 80087174 00082694  4E 80 04 21 */	bctrl 
lbl_80087178:
/* 80087178 00082698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008717C 0008269C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80087180 000826A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80087184 000826A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80087188 000826A8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8008718C 000826AC  7C 08 03 A6 */	mtlr r0
/* 80087190 000826B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80087194 000826B4  4E 80 00 20 */	blr 

glabel xlObjectFree
/* 80087198 000826B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008719C 000826BC  7C 08 02 A6 */	mflr r0
/* 800871A0 000826C0  2C 03 00 00 */	cmpwi r3, 0
/* 800871A4 000826C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800871A8 000826C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800871AC 000826CC  93 C1 00 08 */	stw r30, 8(r1)
/* 800871B0 000826D0  7C 7E 1B 78 */	mr r30, r3
/* 800871B4 000826D4  41 82 00 64 */	beq lbl_80087218
/* 800871B8 000826D8  80 63 00 00 */	lwz r3, 0(r3)
/* 800871BC 000826DC  2C 03 00 00 */	cmpwi r3, 0
/* 800871C0 000826E0  41 82 00 58 */	beq lbl_80087218
/* 800871C4 000826E4  83 E3 FF FC */	lwz r31, -4(r3)
/* 800871C8 000826E8  38 80 00 03 */	li r4, 3
/* 800871CC 000826EC  38 A0 00 00 */	li r5, 0
/* 800871D0 000826F0  80 DF 00 04 */	lwz r6, 4(r31)
/* 800871D4 000826F4  81 86 00 0C */	lwz r12, 0xc(r6)
/* 800871D8 000826F8  7D 89 03 A6 */	mtctr r12
/* 800871DC 000826FC  4E 80 04 21 */	bctrl 
/* 800871E0 00082700  80 7E 00 00 */	lwz r3, 0(r30)
/* 800871E4 00082704  7F C4 F3 78 */	mr r4, r30
/* 800871E8 00082708  38 03 FF FC */	addi r0, r3, -4
/* 800871EC 0008270C  90 1E 00 00 */	stw r0, 0(r30)
/* 800871F0 00082710  80 7F 00 00 */	lwz r3, 0(r31)
/* 800871F4 00082714  4B FF E4 99 */	bl xlListFreeItem
/* 800871F8 00082718  2C 03 00 00 */	cmpwi r3, 0
/* 800871FC 0008271C  40 82 00 0C */	bne lbl_80087208
/* 80087200 00082720  38 60 00 00 */	li r3, 0
/* 80087204 00082724  48 00 00 18 */	b lbl_8008721C
lbl_80087208:
/* 80087208 00082728  38 00 00 00 */	li r0, 0
/* 8008720C 0008272C  38 60 00 01 */	li r3, 1
/* 80087210 00082730  90 1E 00 00 */	stw r0, 0(r30)
/* 80087214 00082734  48 00 00 08 */	b lbl_8008721C
lbl_80087218:
/* 80087218 00082738  38 60 00 00 */	li r3, 0
lbl_8008721C:
/* 8008721C 0008273C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80087220 00082740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80087224 00082744  83 C1 00 08 */	lwz r30, 8(r1)
/* 80087228 00082748  7C 08 03 A6 */	mtlr r0
/* 8008722C 0008274C  38 21 00 10 */	addi r1, r1, 0x10
/* 80087230 00082750  4E 80 00 20 */	blr 

glabel xlObjectTest
/* 80087234 00082754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80087238 00082758  7C 08 02 A6 */	mflr r0
/* 8008723C 0008275C  2C 03 00 00 */	cmpwi r3, 0
/* 80087240 00082760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80087244 00082764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80087248 00082768  93 C1 00 08 */	stw r30, 8(r1)
/* 8008724C 0008276C  7C 9E 23 78 */	mr r30, r4
/* 80087250 00082770  41 82 00 30 */	beq lbl_80087280
/* 80087254 00082774  83 E3 FF FC */	lwz r31, -4(r3)
/* 80087258 00082778  80 6D 89 10 */	lwz r3, lbl_80246D90@sda21(r13)
/* 8008725C 0008277C  7F E4 FB 78 */	mr r4, r31
/* 80087260 00082780  4B FF E4 D5 */	bl xlListTestItem
/* 80087264 00082784  2C 03 00 00 */	cmpwi r3, 0
/* 80087268 00082788  41 82 00 18 */	beq lbl_80087280
/* 8008726C 0008278C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80087270 00082790  7C 00 F0 40 */	cmplw r0, r30
/* 80087274 00082794  40 82 00 0C */	bne lbl_80087280
/* 80087278 00082798  38 60 00 01 */	li r3, 1
/* 8008727C 0008279C  48 00 00 08 */	b lbl_80087284
lbl_80087280:
/* 80087280 000827A0  38 60 00 00 */	li r3, 0
lbl_80087284:
/* 80087284 000827A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80087288 000827A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008728C 000827AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80087290 000827B0  7C 08 03 A6 */	mtlr r0
/* 80087294 000827B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80087298 000827B8  4E 80 00 20 */	blr 

glabel xlObjectEvent
/* 8008729C 000827BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800872A0 000827C0  7C 08 02 A6 */	mflr r0
/* 800872A4 000827C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800872A8 000827C8  39 61 00 20 */	addi r11, r1, 0x20
/* 800872AC 000827CC  48 0D 56 95 */	bl _savegpr_26
/* 800872B0 000827D0  2C 03 00 00 */	cmpwi r3, 0
/* 800872B4 000827D4  7C 7A 1B 78 */	mr r26, r3
/* 800872B8 000827D8  7C 9B 23 78 */	mr r27, r4
/* 800872BC 000827DC  7C BC 2B 78 */	mr r28, r5
/* 800872C0 000827E0  41 82 00 80 */	beq lbl_80087340
/* 800872C4 000827E4  83 A3 FF FC */	lwz r29, -4(r3)
/* 800872C8 000827E8  80 6D 89 10 */	lwz r3, lbl_80246D90@sda21(r13)
/* 800872CC 000827EC  7F A4 EB 78 */	mr r4, r29
/* 800872D0 000827F0  4B FF E4 65 */	bl xlListTestItem
/* 800872D4 000827F4  2C 03 00 00 */	cmpwi r3, 0
/* 800872D8 000827F8  41 82 00 68 */	beq lbl_80087340
/* 800872DC 000827FC  2C 1A 00 00 */	cmpwi r26, 0
/* 800872E0 00082800  83 FD 00 04 */	lwz r31, 4(r29)
/* 800872E4 00082804  41 82 00 30 */	beq lbl_80087314
/* 800872E8 00082808  83 DA FF FC */	lwz r30, -4(r26)
/* 800872EC 0008280C  80 6D 89 10 */	lwz r3, lbl_80246D90@sda21(r13)
/* 800872F0 00082810  7F C4 F3 78 */	mr r4, r30
/* 800872F4 00082814  4B FF E4 41 */	bl xlListTestItem
/* 800872F8 00082818  2C 03 00 00 */	cmpwi r3, 0
/* 800872FC 0008281C  41 82 00 18 */	beq lbl_80087314
/* 80087300 00082820  80 1E 00 04 */	lwz r0, 4(r30)
/* 80087304 00082824  7C 00 F8 40 */	cmplw r0, r31
/* 80087308 00082828  40 82 00 0C */	bne lbl_80087314
/* 8008730C 0008282C  38 00 00 01 */	li r0, 1
/* 80087310 00082830  48 00 00 08 */	b lbl_80087318
lbl_80087314:
/* 80087314 00082834  38 00 00 00 */	li r0, 0
lbl_80087318:
/* 80087318 00082838  2C 00 00 00 */	cmpwi r0, 0
/* 8008731C 0008283C  41 82 00 24 */	beq lbl_80087340
/* 80087320 00082840  80 DD 00 04 */	lwz r6, 4(r29)
/* 80087324 00082844  7F 43 D3 78 */	mr r3, r26
/* 80087328 00082848  7F 64 DB 78 */	mr r4, r27
/* 8008732C 0008284C  7F 85 E3 78 */	mr r5, r28
/* 80087330 00082850  81 86 00 0C */	lwz r12, 0xc(r6)
/* 80087334 00082854  7D 89 03 A6 */	mtctr r12
/* 80087338 00082858  4E 80 04 21 */	bctrl 
/* 8008733C 0008285C  48 00 00 08 */	b lbl_80087344
lbl_80087340:
/* 80087340 00082860  38 60 00 00 */	li r3, 0
lbl_80087344:
/* 80087344 00082864  39 61 00 20 */	addi r11, r1, 0x20
/* 80087348 00082868  48 0D 56 45 */	bl _restgpr_26
/* 8008734C 0008286C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087350 00082870  7C 08 03 A6 */	mtlr r0
/* 80087354 00082874  38 21 00 20 */	addi r1, r1, 0x20
/* 80087358 00082878  4E 80 00 20 */	blr 

glabel xlObjectSetup
/* 8008735C 0008287C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80087360 00082880  7C 08 02 A6 */	mflr r0
/* 80087364 00082884  38 6D 89 10 */	addi r3, r13, lbl_80246D90@sda21
/* 80087368 00082888  38 80 00 08 */	li r4, 8
/* 8008736C 0008288C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80087370 00082890  4B FF E0 C1 */	bl xlListMake
/* 80087374 00082894  7C 03 00 D0 */	neg r0, r3
/* 80087378 00082898  7C 00 1B 78 */	or r0, r0, r3
/* 8008737C 0008289C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80087380 000828A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80087384 000828A4  7C 08 03 A6 */	mtlr r0
/* 80087388 000828A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8008738C 000828AC  4E 80 00 20 */	blr 

glabel xlObjectReset
/* 80087390 000828B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80087394 000828B4  7C 08 02 A6 */	mflr r0
/* 80087398 000828B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008739C 000828BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800873A0 000828C0  80 6D 89 10 */	lwz r3, lbl_80246D90@sda21(r13)
/* 800873A4 000828C4  83 E3 00 08 */	lwz r31, 8(r3)
/* 800873A8 000828C8  48 00 00 20 */	b lbl_800873C8
lbl_800873AC:
/* 800873AC 000828CC  38 7F 00 04 */	addi r3, r31, 4
/* 800873B0 000828D0  4B FF E1 81 */	bl xlListFree
/* 800873B4 000828D4  2C 03 00 00 */	cmpwi r3, 0
/* 800873B8 000828D8  40 82 00 0C */	bne lbl_800873C4
/* 800873BC 000828DC  38 60 00 00 */	li r3, 0
/* 800873C0 000828E0  48 00 00 24 */	b lbl_800873E4
lbl_800873C4:
/* 800873C4 000828E4  83 FF 00 00 */	lwz r31, 0(r31)
lbl_800873C8:
/* 800873C8 000828E8  2C 1F 00 00 */	cmpwi r31, 0
/* 800873CC 000828EC  40 82 FF E0 */	bne lbl_800873AC
/* 800873D0 000828F0  38 6D 89 10 */	addi r3, r13, lbl_80246D90@sda21
/* 800873D4 000828F4  4B FF E1 5D */	bl xlListFree
/* 800873D8 000828F8  7C 03 00 D0 */	neg r0, r3
/* 800873DC 000828FC  7C 00 1B 78 */	or r0, r0, r3
/* 800873E0 00082900  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_800873E4:
/* 800873E4 00082904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800873E8 00082908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800873EC 0008290C  7C 08 03 A6 */	mtlr r0
/* 800873F0 00082910  38 21 00 10 */	addi r1, r1, 0x10
/* 800873F4 00082914  4E 80 00 20 */	blr 