glabel xlObjectEvent
/* 8008729C 000827BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800872A0 000827C0  7C 08 02 A6 */	mflr r0
/* 800872A4 000827C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800872A8 000827C8  39 61 00 20 */	addi r11, r1, 0x20
/* 800872AC 000827CC  48 0D 56 95 */	bl __save_registersr26
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
/* 80087348 00082868  48 0D 56 45 */	bl __restore_registersr26
/* 8008734C 0008286C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80087350 00082870  7C 08 03 A6 */	mtlr r0
/* 80087354 00082874  38 21 00 20 */	addi r1, r1, 0x20
/* 80087358 00082878  4E 80 00 20 */	blr 
