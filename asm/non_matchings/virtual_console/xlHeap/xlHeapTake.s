glabel xlHeapTake
/* 80085F48 00081468  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80085F4C 0008146C  7C 08 02 A6 */	mflr r0
/* 80085F50 00081470  90 01 00 44 */	stw r0, 0x44(r1)
/* 80085F54 00081474  39 61 00 40 */	addi r11, r1, 0x40
/* 80085F58 00081478  48 0D 69 DD */	bl _savegpr_23
/* 80085F5C 0008147C  54 85 00 86 */	rlwinm r5, r4, 0, 2, 3
/* 80085F60 00081480  3C 00 20 00 */	lis r0, 0x2000
/* 80085F64 00081484  3B C0 00 00 */	li r30, 0
/* 80085F68 00081488  7C 7A 1B 78 */	mr r26, r3
/* 80085F6C 0008148C  7C 05 00 00 */	cmpw r5, r0
/* 80085F70 00081490  93 C3 00 00 */	stw r30, 0(r3)
/* 80085F74 00081494  54 9D 17 FE */	rlwinm r29, r4, 2, 0x1f, 0x1f
/* 80085F78 00081498  41 82 00 44 */	beq lbl_80085FBC
/* 80085F7C 0008149C  40 80 00 20 */	bge lbl_80085F9C
/* 80085F80 000814A0  3C 00 10 00 */	lis r0, 0x1000
/* 80085F84 000814A4  7C 05 00 00 */	cmpw r5, r0
/* 80085F88 000814A8  41 82 00 2C */	beq lbl_80085FB4
/* 80085F8C 000814AC  40 80 00 40 */	bge lbl_80085FCC
/* 80085F90 000814B0  2C 05 00 00 */	cmpwi r5, 0
/* 80085F94 000814B4  41 82 00 18 */	beq lbl_80085FAC
/* 80085F98 000814B8  48 00 00 34 */	b lbl_80085FCC
lbl_80085F9C:
/* 80085F9C 000814BC  3C 00 30 00 */	lis r0, 0x3000
/* 80085FA0 000814C0  7C 05 00 00 */	cmpw r5, r0
/* 80085FA4 000814C4  41 82 00 20 */	beq lbl_80085FC4
/* 80085FA8 000814C8  48 00 00 24 */	b lbl_80085FCC
lbl_80085FAC:
/* 80085FAC 000814CC  3B 80 00 03 */	li r28, 3
/* 80085FB0 000814D0  48 00 00 20 */	b lbl_80085FD0
lbl_80085FB4:
/* 80085FB4 000814D4  3B 80 00 07 */	li r28, 7
/* 80085FB8 000814D8  48 00 00 18 */	b lbl_80085FD0
lbl_80085FBC:
/* 80085FBC 000814DC  3B 80 00 0F */	li r28, 0xf
/* 80085FC0 000814E0  48 00 00 10 */	b lbl_80085FD0
lbl_80085FC4:
/* 80085FC4 000814E4  3B 80 00 1F */	li r28, 0x1f
/* 80085FC8 000814E8  48 00 00 08 */	b lbl_80085FD0
lbl_80085FCC:
/* 80085FCC 000814EC  3B 80 00 00 */	li r28, 0
lbl_80085FD0:
/* 80085FD0 000814F0  54 80 01 00 */	rlwinm r0, r4, 0, 4, 0
/* 80085FD4 000814F4  7C 00 E2 14 */	add r0, r0, r28
/* 80085FD8 000814F8  54 1B F0 BE */	srwi r27, r0, 2
/* 80085FDC 000814FC  2C 1B 00 01 */	cmpwi r27, 1
/* 80085FE0 00081500  40 80 00 0C */	bge lbl_80085FEC
/* 80085FE4 00081504  38 60 00 00 */	li r3, 0
/* 80085FE8 00081508  48 00 01 B4 */	b lbl_8008619C
lbl_80085FEC:
/* 80085FEC 0008150C  3C 00 01 00 */	lis r0, 0x100
/* 80085FF0 00081510  7C 1B 00 00 */	cmpw r27, r0
/* 80085FF4 00081514  40 81 00 0C */	ble lbl_80086000
/* 80085FF8 00081518  38 60 00 00 */	li r3, 0
/* 80085FFC 0008151C  48 00 01 A0 */	b lbl_8008619C
lbl_80086000:
/* 80086000 00081520  57 BF 10 3A */	slwi r31, r29, 2
/* 80086004 00081524  3B 0D 88 F8 */	addi r24, r13, gpHeapBlockFirst@sda21
/* 80086008 00081528  3B 2D 88 F0 */	addi r25, r13, gpHeapBlockLast@sda21
/* 8008600C 0008152C  3A E0 00 01 */	li r23, 1
lbl_80086010:
/* 80086010 00081530  7F A3 EB 78 */	mr r3, r29
/* 80086014 00081534  7F 64 DB 78 */	mr r4, r27
/* 80086018 00081538  38 A1 00 08 */	addi r5, r1, 8
/* 8008601C 0008153C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80086020 00081540  4B FF F7 D1 */	bl func_800857F0
/* 80086024 00081544  2C 03 00 00 */	cmpwi r3, 0
/* 80086028 00081548  41 82 00 0C */	beq lbl_80086034
/* 8008602C 0008154C  3B C0 00 01 */	li r30, 1
/* 80086030 00081550  48 00 00 68 */	b lbl_80086098
lbl_80086034:
/* 80086034 00081554  7C 78 F8 2E */	lwzx r3, r24, r31
/* 80086038 00081558  7C 19 F8 2E */	lwzx r0, r25, r31
/* 8008603C 0008155C  90 61 00 08 */	stw r3, 8(r1)
/* 80086040 00081560  48 00 00 50 */	b lbl_80086090
lbl_80086044:
/* 80086044 00081564  80 E3 00 00 */	lwz r7, 0(r3)
/* 80086048 00081568  54 E5 06 BE */	clrlwi r5, r7, 0x1a
/* 8008604C 0008156C  54 E4 36 BE */	srwi r4, r7, 0x1a
/* 80086050 00081570  54 E6 02 3E */	clrlwi r6, r7, 8
/* 80086054 00081574  7C 05 20 40 */	cmplw r5, r4
/* 80086058 00081578  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8008605C 0008157C  41 82 00 0C */	beq lbl_80086068
/* 80086060 00081580  38 60 00 00 */	li r3, 0
/* 80086064 00081584  48 00 01 38 */	b lbl_8008619C
lbl_80086068:
/* 80086068 00081588  54 E4 01 CF */	rlwinm. r4, r7, 0, 7, 7
/* 8008606C 0008158C  41 82 00 14 */	beq lbl_80086080
/* 80086070 00081590  7C 06 D8 00 */	cmpw r6, r27
/* 80086074 00081594  41 80 00 0C */	blt lbl_80086080
/* 80086078 00081598  3B C0 00 01 */	li r30, 1
/* 8008607C 0008159C  48 00 00 1C */	b lbl_80086098
lbl_80086080:
/* 80086080 000815A0  38 86 00 01 */	addi r4, r6, 1
/* 80086084 000815A4  54 84 10 3A */	slwi r4, r4, 2
/* 80086088 000815A8  7C 63 22 14 */	add r3, r3, r4
/* 8008608C 000815AC  90 61 00 08 */	stw r3, 8(r1)
lbl_80086090:
/* 80086090 000815B0  7C 03 00 40 */	cmplw r3, r0
/* 80086094 000815B4  41 80 FF B0 */	blt lbl_80086044
lbl_80086098:
/* 80086098 000815B8  2C 1E 00 00 */	cmpwi r30, 0
/* 8008609C 000815BC  41 82 00 D8 */	beq lbl_80086174
/* 800860A0 000815C0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800860A4 000815C4  38 03 FF FF */	addi r0, r3, -1
/* 800860A8 000815C8  7C 1B 00 00 */	cmpw r27, r0
/* 800860AC 000815CC  40 82 00 08 */	bne lbl_800860B4
/* 800860B0 000815D0  3B 7B 00 01 */	addi r27, r27, 1
lbl_800860B4:
/* 800860B4 000815D4  7C 1B 18 00 */	cmpw r27, r3
/* 800860B8 000815D8  40 80 00 68 */	bge lbl_80086120
/* 800860BC 000815DC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800860C0 000815E0  57 65 10 3A */	slwi r5, r27, 2
/* 800860C4 000815E4  80 C1 00 08 */	lwz r6, 8(r1)
/* 800860C8 000815E8  54 60 10 3A */	slwi r0, r3, 2
/* 800860CC 000815EC  7C 7B 18 50 */	subf r3, r27, r3
/* 800860D0 000815F0  7C 86 02 14 */	add r4, r6, r0
/* 800860D4 000815F4  84 04 00 04 */	lwzu r0, 4(r4)
/* 800860D8 000815F8  7F 26 2A 14 */	add r25, r6, r5
/* 800860DC 000815FC  3A E3 FF FF */	addi r23, r3, -1
/* 800860E0 00081600  54 18 02 3F */	clrlwi. r24, r0, 8
/* 800860E4 00081604  3B 39 00 04 */	addi r25, r25, 4
/* 800860E8 00081608  41 82 00 1C */	beq lbl_80086104
/* 800860EC 0008160C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800860F0 00081610  41 82 00 14 */	beq lbl_80086104
/* 800860F4 00081614  7F A3 EB 78 */	mr r3, r29
/* 800860F8 00081618  4B FF FA CD */	bl xlHeapBlockCacheClear
/* 800860FC 0008161C  7C 77 C2 14 */	add r3, r23, r24
/* 80086100 00081620  3A E3 00 01 */	addi r23, r3, 1
lbl_80086104:
/* 80086104 00081624  56 E3 D0 0A */	slwi r3, r23, 0x1a
/* 80086108 00081628  66 E0 01 00 */	oris r0, r23, 0x100
/* 8008610C 0008162C  7C 60 03 78 */	or r0, r3, r0
/* 80086110 00081630  7F 24 CB 78 */	mr r4, r25
/* 80086114 00081634  90 19 00 00 */	stw r0, 0(r25)
/* 80086118 00081638  7F A3 EB 78 */	mr r3, r29
/* 8008611C 0008163C  4B FF F8 F5 */	bl xlHeapBlockCacheAdd
lbl_80086120:
/* 80086120 00081640  57 63 D0 0A */	slwi r3, r27, 0x1a
/* 80086124 00081644  67 60 02 00 */	oris r0, r27, 0x200
/* 80086128 00081648  7C 60 03 78 */	or r0, r3, r0
/* 8008612C 0008164C  80 81 00 08 */	lwz r4, 8(r1)
/* 80086130 00081650  38 CD 88 E8 */	addi r6, r13, lbl_80246D68@sda21
/* 80086134 00081654  3C 60 12 35 */	lis r3, 0x1234ABCD@ha
/* 80086138 00081658  90 04 00 00 */	stw r0, 0(r4)
/* 8008613C 0008165C  38 83 AB CD */	addi r4, r3, 0x1234ABCD@l
/* 80086140 00081660  7C A6 F8 2E */	lwzx r5, r6, r31
/* 80086144 00081664  80 61 00 08 */	lwz r3, 8(r1)
/* 80086148 00081668  38 05 00 01 */	addi r0, r5, 1
/* 8008614C 0008166C  7C 06 F9 2E */	stwx r0, r6, r31
/* 80086150 00081670  38 63 00 04 */	addi r3, r3, 4
/* 80086154 00081674  48 00 00 0C */	b lbl_80086160
lbl_80086158:
/* 80086158 00081678  90 83 00 00 */	stw r4, 0(r3)
/* 8008615C 0008167C  38 63 00 04 */	addi r3, r3, 4
lbl_80086160:
/* 80086160 00081680  7C 60 E0 39 */	and. r0, r3, r28
/* 80086164 00081684  40 82 FF F4 */	bne lbl_80086158
/* 80086168 00081688  90 7A 00 00 */	stw r3, 0(r26)
/* 8008616C 0008168C  38 60 00 01 */	li r3, 1
/* 80086170 00081690  48 00 00 2C */	b lbl_8008619C
lbl_80086174:
/* 80086174 00081694  7F A3 EB 78 */	mr r3, r29
/* 80086178 00081698  4B FF FC 99 */	bl xlHeapCompat
/* 8008617C 0008169C  2C 03 00 00 */	cmpwi r3, 0
/* 80086180 000816A0  40 82 00 0C */	bne lbl_8008618C
/* 80086184 000816A4  38 60 00 00 */	li r3, 0
/* 80086188 000816A8  48 00 00 14 */	b lbl_8008619C
lbl_8008618C:
/* 8008618C 000816AC  28 17 00 08 */	cmplwi r23, 8
/* 80086190 000816B0  3A F7 00 01 */	addi r23, r23, 1
/* 80086194 000816B4  41 80 FE 7C */	blt lbl_80086010
/* 80086198 000816B8  38 60 00 00 */	li r3, 0
lbl_8008619C:
/* 8008619C 000816BC  39 61 00 40 */	addi r11, r1, 0x40
/* 800861A0 000816C0  48 0D 67 E1 */	bl _restgpr_23
/* 800861A4 000816C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800861A8 000816C8  7C 08 03 A6 */	mtlr r0
/* 800861AC 000816CC  38 21 00 40 */	addi r1, r1, 0x40
/* 800861B0 000816D0  4E 80 00 20 */	blr 
