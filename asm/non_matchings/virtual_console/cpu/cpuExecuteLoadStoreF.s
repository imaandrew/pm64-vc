glabel cpuExecuteLoadStoreF
/* 8003AD20 00036240  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003AD24 00036244  7C 08 02 A6 */	mflr r0
/* 8003AD28 00036248  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003AD2C 0003624C  39 61 00 40 */	addi r11, r1, 0x40
/* 8003AD30 00036250  48 12 1C 05 */	bl __save_registersr23
/* 8003AD34 00036254  38 03 00 24 */	addi r0, r3, 0x24
/* 8003AD38 00036258  7C 7F 1B 78 */	mr r31, r3
/* 8003AD3C 0003625C  7C E3 00 50 */	subf r7, r3, r0
/* 8003AD40 00036260  7C B7 2B 78 */	mr r23, r5
/* 8003AD44 00036264  7C DA 33 78 */	mr r26, r6
/* 8003AD48 00036268  38 81 00 08 */	addi r4, r1, 8
/* 8003AD4C 0003626C  3F 27 90 C3 */	addis r25, r7, 0x90c3
/* 8003AD50 00036270  3B C0 00 00 */	li r30, 0
/* 8003AD54 00036274  3B A0 00 00 */	li r29, 0
/* 8003AD58 00036278  3B 80 00 00 */	li r28, 0
/* 8003AD5C 0003627C  48 00 25 21 */	bl cpuGetAddressBuffer
/* 8003AD60 00036280  2C 03 00 00 */	cmpwi r3, 0
/* 8003AD64 00036284  40 82 00 0C */	bne lbl_8003AD70
/* 8003AD68 00036288  38 60 00 00 */	li r3, 0
/* 8003AD6C 0003628C  48 00 0A 70 */	b lbl_8003B7DC
lbl_8003AD70:
/* 8003AD70 00036290  80 81 00 08 */	lwz r4, 8(r1)
/* 8003AD74 00036294  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003AD78 00036298  80 03 24 24 */	lwz r0, 0x2424(r3)
/* 8003AD7C 0003629C  80 E4 00 00 */	lwz r7, 0(r4)
/* 8003AD80 000362A0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8003AD84 000362A4  54 E3 76 38 */	rlwinm r3, r7, 0xe, 0x18, 0x1c
/* 8003AD88 000362A8  7C 9F 1A 14 */	add r4, r31, r3
/* 8003AD8C 000362AC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8003AD90 000362B0  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 8003AD94 000362B4  7C 05 07 34 */	extsh r5, r0
/* 8003AD98 000362B8  54 E0 5E FE */	rlwinm r0, r7, 0xb, 0x1b, 0x1f
/* 8003AD9C 000362BC  7C C5 22 14 */	add r6, r5, r4
/* 8003ADA0 000362C0  54 C4 A3 3E */	srwi r4, r6, 0xc
/* 8003ADA4 000362C4  7C 9F 22 14 */	add r4, r31, r4
/* 8003ADA8 000362C8  88 A4 0F 60 */	lbz r5, 0xf60(r4)
/* 8003ADAC 000362CC  41 82 00 14 */	beq lbl_8003ADC0
/* 8003ADB0 000362D0  3B 1A FF F4 */	addi r24, r26, -12
/* 8003ADB4 000362D4  3B 5A 00 10 */	addi r26, r26, 0x10
/* 8003ADB8 000362D8  3B 78 FF F8 */	addi r27, r24, -8
/* 8003ADBC 000362DC  48 00 00 10 */	b lbl_8003ADCC
lbl_8003ADC0:
/* 8003ADC0 000362E0  3B 1A FF F4 */	addi r24, r26, -12
/* 8003ADC4 000362E4  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8003ADC8 000362E8  3B 78 FF F8 */	addi r27, r24, -8
lbl_8003ADCC:
/* 8003ADCC 000362EC  54 C4 27 3E */	srwi r4, r6, 0x1c
/* 8003ADD0 000362F0  28 04 00 08 */	cmplwi r4, 8
/* 8003ADD4 000362F4  40 80 00 08 */	bge lbl_8003ADDC
/* 8003ADD8 000362F8  3B 80 00 01 */	li r28, 1
lbl_8003ADDC:
/* 8003ADDC 000362FC  2C 1C 00 00 */	cmpwi r28, 0
/* 8003ADE0 00036300  40 82 07 7C */	bne lbl_8003B55C
/* 8003ADE4 00036304  28 05 00 80 */	cmplwi r5, 0x80
/* 8003ADE8 00036308  41 80 07 74 */	blt lbl_8003B55C
/* 8003ADEC 0003630C  54 E6 36 BE */	srwi r6, r7, 0x1a
/* 8003ADF0 00036310  54 E5 86 FE */	rlwinm r5, r7, 0x10, 0x1b, 0x1f
/* 8003ADF4 00036314  38 E6 FF CF */	addi r7, r6, -49
/* 8003ADF8 00036318  28 07 00 0E */	cmplwi r7, 0xe
/* 8003ADFC 0003631C  41 81 07 58 */	bgt lbl_8003B554
/* 8003AE00 00036320  3C C0 80 18 */	lis r6, lbl_8017C0B4@ha
/* 8003AE04 00036324  54 E7 10 3A */	slwi r7, r7, 2
/* 8003AE08 00036328  38 C6 C0 B4 */	addi r6, r6, lbl_8017C0B4@l
/* 8003AE0C 0003632C  7C C6 38 2E */	lwzx r6, r6, r7
/* 8003AE10 00036330  7C C9 03 A6 */	mtctr r6
/* 8003AE14 00036334  4E 80 04 20 */	bctr 
/* 8003AE18 00036338  3C C0 80 18 */	lis r6, lbl_8017AD80@ha
/* 8003AE1C 0003633C  54 00 10 3A */	slwi r0, r0, 2
/* 8003AE20 00036340  38 C6 AD 80 */	addi r6, r6, lbl_8017AD80@l
/* 8003AE24 00036344  7C 06 00 2E */	lwzx r0, r6, r0
/* 8003AE28 00036348  54 06 05 EF */	rlwinm. r6, r0, 0, 0x17, 0x17
/* 8003AE2C 0003634C  41 82 00 28 */	beq lbl_8003AE54
/* 8003AE30 00036350  7C 7F 1A 14 */	add r3, r31, r3
/* 8003AE34 00036354  38 00 00 06 */	li r0, 6
/* 8003AE38 00036358  38 63 00 48 */	addi r3, r3, 0x48
/* 8003AE3C 0003635C  3B C0 00 01 */	li r30, 1
/* 8003AE40 00036360  7C 7F 18 50 */	subf r3, r31, r3
/* 8003AE44 00036364  38 63 00 04 */	addi r3, r3, 4
/* 8003AE48 00036368  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8003AE4C 0003636C  3C 63 80 C3 */	addis r3, r3, 0x80c3
/* 8003AE50 00036370  90 78 00 00 */	stw r3, 0(r24)
lbl_8003AE54:
/* 8003AE54 00036374  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003AE58 00036378  80 63 24 24 */	lwz r3, 0x2424(r3)
/* 8003AE5C 0003637C  54 63 05 EF */	rlwinm. r3, r3, 0, 0x17, 0x17
/* 8003AE60 00036380  41 82 00 30 */	beq lbl_8003AE90
/* 8003AE64 00036384  28 04 00 0A */	cmplwi r4, 0xa
/* 8003AE68 00036388  41 80 00 28 */	blt lbl_8003AE90
/* 8003AE6C 0003638C  54 03 A8 14 */	slwi r3, r0, 0x15
/* 8003AE70 00036390  54 04 80 1E */	slwi r4, r0, 0x10
/* 8003AE74 00036394  64 66 7C 00 */	oris r6, r3, 0x7c00
/* 8003AE78 00036398  60 C6 00 38 */	ori r6, r6, 0x38
/* 8003AE7C 0003639C  60 84 48 00 */	ori r4, r4, 0x4800
/* 8003AE80 000363A0  57 C3 10 3A */	slwi r3, r30, 2
/* 8003AE84 000363A4  3B DE 00 01 */	addi r30, r30, 1
/* 8003AE88 000363A8  7C C4 23 78 */	or r4, r6, r4
/* 8003AE8C 000363AC  7C 98 19 2E */	stwx r4, r24, r3
lbl_8003AE90:
/* 8003AE90 000363B0  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 8003AE94 000363B4  54 A3 07 FE */	clrlwi r3, r5, 0x1f
/* 8003AE98 000363B8  54 07 80 1E */	slwi r7, r0, 0x10
/* 8003AE9C 000363BC  57 C6 10 3A */	slwi r6, r30, 2
/* 8003AEA0 000363C0  7C 60 22 78 */	xor r0, r3, r4
/* 8003AEA4 000363C4  3B DE 00 01 */	addi r30, r30, 1
/* 8003AEA8 000363C8  64 E3 7C E0 */	oris r3, r7, 0x7ce0
/* 8003AEAC 000363CC  7C 04 00 50 */	subf r0, r4, r0
/* 8003AEB0 000363D0  60 63 42 14 */	ori r3, r3, 0x4214
/* 8003AEB4 000363D4  2C 00 00 01 */	cmpwi r0, 1
/* 8003AEB8 000363D8  7C 78 31 2E */	stwx r3, r24, r6
/* 8003AEBC 000363DC  40 82 00 48 */	bne lbl_8003AF04
/* 8003AEC0 000363E0  80 61 00 08 */	lwz r3, 8(r1)
/* 8003AEC4 000363E4  38 05 FF FF */	addi r0, r5, -1
/* 8003AEC8 000363E8  57 C4 10 3A */	slwi r4, r30, 2
/* 8003AECC 000363EC  3B DE 00 01 */	addi r30, r30, 1
/* 8003AED0 000363F0  54 00 18 38 */	slwi r0, r0, 3
/* 8003AED4 000363F4  80 A3 00 00 */	lwz r5, 0(r3)
/* 8003AED8 000363F8  7C 7F 02 14 */	add r3, r31, r0
/* 8003AEDC 000363FC  38 03 01 48 */	addi r0, r3, 0x148
/* 8003AEE0 00036400  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 8003AEE4 00036404  64 65 80 A7 */	oris r5, r3, 0x80a7
/* 8003AEE8 00036408  7C 7F 00 50 */	subf r3, r31, r0
/* 8003AEEC 0003640C  57 C0 10 3A */	slwi r0, r30, 2
/* 8003AEF0 00036410  7C B8 21 2E */	stwx r5, r24, r4
/* 8003AEF4 00036414  3C 63 90 A3 */	addis r3, r3, 0x90a3
/* 8003AEF8 00036418  3B DE 00 01 */	addi r30, r30, 1
/* 8003AEFC 0003641C  7C 78 01 2E */	stwx r3, r24, r0
/* 8003AF00 00036420  48 00 06 98 */	b lbl_8003B598
lbl_8003AF04:
/* 8003AF04 00036424  80 C1 00 08 */	lwz r6, 8(r1)
/* 8003AF08 00036428  54 A0 18 38 */	slwi r0, r5, 3
/* 8003AF0C 0003642C  7C 7F 02 14 */	add r3, r31, r0
/* 8003AF10 00036430  57 C4 10 3A */	slwi r4, r30, 2
/* 8003AF14 00036434  80 A6 00 00 */	lwz r5, 0(r6)
/* 8003AF18 00036438  38 03 01 48 */	addi r0, r3, 0x148
/* 8003AF1C 0003643C  7C 7F 00 50 */	subf r3, r31, r0
/* 8003AF20 00036440  3B DE 00 01 */	addi r30, r30, 1
/* 8003AF24 00036444  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8003AF28 00036448  64 00 80 A7 */	oris r0, r0, 0x80a7
/* 8003AF2C 0003644C  3C 63 90 A3 */	addis r3, r3, 0x90a3
/* 8003AF30 00036450  7C 18 21 2E */	stwx r0, r24, r4
/* 8003AF34 00036454  57 C0 10 3A */	slwi r0, r30, 2
/* 8003AF38 00036458  38 63 00 04 */	addi r3, r3, 4
/* 8003AF3C 0003645C  3B DE 00 01 */	addi r30, r30, 1
/* 8003AF40 00036460  7C 78 01 2E */	stwx r3, r24, r0
/* 8003AF44 00036464  48 00 06 54 */	b lbl_8003B598
/* 8003AF48 00036468  3C C0 80 18 */	lis r6, lbl_8017AD80@ha
/* 8003AF4C 0003646C  54 00 10 3A */	slwi r0, r0, 2
/* 8003AF50 00036470  38 C6 AD 80 */	addi r6, r6, lbl_8017AD80@l
/* 8003AF54 00036474  7C 06 00 2E */	lwzx r0, r6, r0
/* 8003AF58 00036478  54 06 05 EF */	rlwinm. r6, r0, 0, 0x17, 0x17
/* 8003AF5C 0003647C  41 82 00 28 */	beq lbl_8003AF84
/* 8003AF60 00036480  7C 7F 1A 14 */	add r3, r31, r3
/* 8003AF64 00036484  38 00 00 06 */	li r0, 6
/* 8003AF68 00036488  38 63 00 48 */	addi r3, r3, 0x48
/* 8003AF6C 0003648C  3B C0 00 01 */	li r30, 1
/* 8003AF70 00036490  7C 7F 18 50 */	subf r3, r31, r3
/* 8003AF74 00036494  38 63 00 04 */	addi r3, r3, 4
/* 8003AF78 00036498  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8003AF7C 0003649C  3C 63 80 C3 */	addis r3, r3, 0x80c3
/* 8003AF80 000364A0  90 78 00 00 */	stw r3, 0(r24)
lbl_8003AF84:
/* 8003AF84 000364A4  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003AF88 000364A8  80 63 24 24 */	lwz r3, 0x2424(r3)
/* 8003AF8C 000364AC  54 63 05 EF */	rlwinm. r3, r3, 0, 0x17, 0x17
/* 8003AF90 000364B0  41 82 00 30 */	beq lbl_8003AFC0
/* 8003AF94 000364B4  28 04 00 0A */	cmplwi r4, 0xa
/* 8003AF98 000364B8  41 80 00 28 */	blt lbl_8003AFC0
/* 8003AF9C 000364BC  54 03 A8 14 */	slwi r3, r0, 0x15
/* 8003AFA0 000364C0  54 04 80 1E */	slwi r4, r0, 0x10
/* 8003AFA4 000364C4  64 66 7C 00 */	oris r6, r3, 0x7c00
/* 8003AFA8 000364C8  60 C6 00 38 */	ori r6, r6, 0x38
/* 8003AFAC 000364CC  60 84 48 00 */	ori r4, r4, 0x4800
/* 8003AFB0 000364D0  57 C3 10 3A */	slwi r3, r30, 2
/* 8003AFB4 000364D4  3B DE 00 01 */	addi r30, r30, 1
/* 8003AFB8 000364D8  7C C4 23 78 */	or r4, r6, r4
/* 8003AFBC 000364DC  7C 98 19 2E */	stwx r4, r24, r3
lbl_8003AFC0:
/* 8003AFC0 000364E0  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 8003AFC4 000364E4  54 A3 07 FE */	clrlwi r3, r5, 0x1f
/* 8003AFC8 000364E8  54 07 80 1E */	slwi r7, r0, 0x10
/* 8003AFCC 000364EC  57 C6 10 3A */	slwi r6, r30, 2
/* 8003AFD0 000364F0  7C 60 22 78 */	xor r0, r3, r4
/* 8003AFD4 000364F4  3B DE 00 01 */	addi r30, r30, 1
/* 8003AFD8 000364F8  64 E3 7C E0 */	oris r3, r7, 0x7ce0
/* 8003AFDC 000364FC  7C 04 00 50 */	subf r0, r4, r0
/* 8003AFE0 00036500  60 63 42 14 */	ori r3, r3, 0x4214
/* 8003AFE4 00036504  2C 00 00 01 */	cmpwi r0, 1
/* 8003AFE8 00036508  7C 78 31 2E */	stwx r3, r24, r6
/* 8003AFEC 0003650C  40 82 00 2C */	bne lbl_8003B018
/* 8003AFF0 00036510  38 65 FF FF */	addi r3, r5, -1
/* 8003AFF4 00036514  57 C0 10 3A */	slwi r0, r30, 2
/* 8003AFF8 00036518  54 63 18 38 */	slwi r3, r3, 3
/* 8003AFFC 0003651C  3B DE 00 01 */	addi r30, r30, 1
/* 8003B000 00036520  7C 7F 1A 14 */	add r3, r31, r3
/* 8003B004 00036524  38 63 01 48 */	addi r3, r3, 0x148
/* 8003B008 00036528  7C 7F 18 50 */	subf r3, r31, r3
/* 8003B00C 0003652C  3C 63 80 A3 */	addis r3, r3, 0x80a3
/* 8003B010 00036530  7C 78 01 2E */	stwx r3, r24, r0
/* 8003B014 00036534  48 00 00 28 */	b lbl_8003B03C
lbl_8003B018:
/* 8003B018 00036538  54 A3 18 38 */	slwi r3, r5, 3
/* 8003B01C 0003653C  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B020 00036540  7C 7F 1A 14 */	add r3, r31, r3
/* 8003B024 00036544  3B DE 00 01 */	addi r30, r30, 1
/* 8003B028 00036548  38 63 01 48 */	addi r3, r3, 0x148
/* 8003B02C 0003654C  7C 7F 18 50 */	subf r3, r31, r3
/* 8003B030 00036550  3C 63 80 A3 */	addis r3, r3, 0x80a3
/* 8003B034 00036554  38 63 00 04 */	addi r3, r3, 4
/* 8003B038 00036558  7C 78 01 2E */	stwx r3, r24, r0
lbl_8003B03C:
/* 8003B03C 0003655C  80 61 00 08 */	lwz r3, 8(r1)
/* 8003B040 00036560  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B044 00036564  3B DE 00 01 */	addi r30, r30, 1
/* 8003B048 00036568  80 63 00 00 */	lwz r3, 0(r3)
/* 8003B04C 0003656C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8003B050 00036570  64 63 90 A7 */	oris r3, r3, 0x90a7
/* 8003B054 00036574  7C 78 01 2E */	stwx r3, r24, r0
/* 8003B058 00036578  48 00 05 40 */	b lbl_8003B598
/* 8003B05C 0003657C  3C C0 80 18 */	lis r6, lbl_8017AD80@ha
/* 8003B060 00036580  54 00 10 3A */	slwi r0, r0, 2
/* 8003B064 00036584  38 C6 AD 80 */	addi r6, r6, lbl_8017AD80@l
/* 8003B068 00036588  7C C6 00 2E */	lwzx r6, r6, r0
/* 8003B06C 0003658C  54 C0 05 EF */	rlwinm. r0, r6, 0, 0x17, 0x17
/* 8003B070 00036590  41 82 00 28 */	beq lbl_8003B098
/* 8003B074 00036594  7C 7F 1A 14 */	add r3, r31, r3
/* 8003B078 00036598  38 C0 00 06 */	li r6, 6
/* 8003B07C 0003659C  38 03 00 48 */	addi r0, r3, 0x48
/* 8003B080 000365A0  3B C0 00 01 */	li r30, 1
/* 8003B084 000365A4  7C 7F 00 50 */	subf r3, r31, r0
/* 8003B088 000365A8  38 03 00 04 */	addi r0, r3, 4
/* 8003B08C 000365AC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8003B090 000365B0  3C 03 80 C3 */	addis r0, r3, 0x80c3
/* 8003B094 000365B4  90 18 00 00 */	stw r0, 0(r24)
lbl_8003B098:
/* 8003B098 000365B8  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003B09C 000365BC  80 03 24 24 */	lwz r0, 0x2424(r3)
/* 8003B0A0 000365C0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8003B0A4 000365C4  41 82 00 30 */	beq lbl_8003B0D4
/* 8003B0A8 000365C8  28 04 00 0A */	cmplwi r4, 0xa
/* 8003B0AC 000365CC  41 80 00 28 */	blt lbl_8003B0D4
/* 8003B0B0 000365D0  54 C0 A8 14 */	slwi r0, r6, 0x15
/* 8003B0B4 000365D4  54 C3 80 1E */	slwi r3, r6, 0x10
/* 8003B0B8 000365D8  64 04 7C 00 */	oris r4, r0, 0x7c00
/* 8003B0BC 000365DC  60 84 00 38 */	ori r4, r4, 0x38
/* 8003B0C0 000365E0  60 63 48 00 */	ori r3, r3, 0x4800
/* 8003B0C4 000365E4  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B0C8 000365E8  3B DE 00 01 */	addi r30, r30, 1
/* 8003B0CC 000365EC  7C 83 1B 78 */	or r3, r4, r3
/* 8003B0D0 000365F0  7C 78 01 2E */	stwx r3, r24, r0
lbl_8003B0D4:
/* 8003B0D4 000365F4  54 C0 80 1E */	slwi r0, r6, 0x10
/* 8003B0D8 000365F8  57 C3 10 3A */	slwi r3, r30, 2
/* 8003B0DC 000365FC  64 04 7C E0 */	oris r4, r0, 0x7ce0
/* 8003B0E0 00036600  3B DE 00 01 */	addi r30, r30, 1
/* 8003B0E4 00036604  60 84 42 14 */	ori r4, r4, 0x4214
/* 8003B0E8 00036608  54 A0 18 38 */	slwi r0, r5, 3
/* 8003B0EC 0003660C  7C 98 19 2E */	stwx r4, r24, r3
/* 8003B0F0 00036610  7C 7F 02 14 */	add r3, r31, r0
/* 8003B0F4 00036614  38 03 01 48 */	addi r0, r3, 0x148
/* 8003B0F8 00036618  57 C7 10 3A */	slwi r7, r30, 2
/* 8003B0FC 0003661C  80 81 00 08 */	lwz r4, 8(r1)
/* 8003B100 00036620  7C 7F 00 50 */	subf r3, r31, r0
/* 8003B104 00036624  3B DE 00 01 */	addi r30, r30, 1
/* 8003B108 00036628  80 04 00 00 */	lwz r0, 0(r4)
/* 8003B10C 0003662C  57 C5 10 3A */	slwi r5, r30, 2
/* 8003B110 00036630  3C C3 90 A3 */	addis r6, r3, 0x90a3
/* 8003B114 00036634  3B DE 00 01 */	addi r30, r30, 1
/* 8003B118 00036638  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8003B11C 0003663C  64 00 80 A7 */	oris r0, r0, 0x80a7
/* 8003B120 00036640  57 C4 10 3A */	slwi r4, r30, 2
/* 8003B124 00036644  7C 18 39 2E */	stwx r0, r24, r7
/* 8003B128 00036648  3B DE 00 01 */	addi r30, r30, 1
/* 8003B12C 0003664C  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B130 00036650  38 66 00 04 */	addi r3, r6, 4
/* 8003B134 00036654  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B138 00036658  3B DE 00 01 */	addi r30, r30, 1
/* 8003B13C 0003665C  80 A1 00 08 */	lwz r5, 8(r1)
/* 8003B140 00036660  80 A5 00 00 */	lwz r5, 0(r5)
/* 8003B144 00036664  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 8003B148 00036668  38 A5 00 04 */	addi r5, r5, 4
/* 8003B14C 0003666C  64 A5 80 A7 */	oris r5, r5, 0x80a7
/* 8003B150 00036670  7C B8 21 2E */	stwx r5, r24, r4
/* 8003B154 00036674  7C 78 01 2E */	stwx r3, r24, r0
/* 8003B158 00036678  48 00 04 40 */	b lbl_8003B598
/* 8003B15C 0003667C  3C C0 80 18 */	lis r6, lbl_8017AD80@ha
/* 8003B160 00036680  54 00 10 3A */	slwi r0, r0, 2
/* 8003B164 00036684  38 C6 AD 80 */	addi r6, r6, lbl_8017AD80@l
/* 8003B168 00036688  7C C6 00 2E */	lwzx r6, r6, r0
/* 8003B16C 0003668C  54 C0 05 EF */	rlwinm. r0, r6, 0, 0x17, 0x17
/* 8003B170 00036690  41 82 00 28 */	beq lbl_8003B198
/* 8003B174 00036694  7C 7F 1A 14 */	add r3, r31, r3
/* 8003B178 00036698  38 C0 00 06 */	li r6, 6
/* 8003B17C 0003669C  38 03 00 48 */	addi r0, r3, 0x48
/* 8003B180 000366A0  3B C0 00 01 */	li r30, 1
/* 8003B184 000366A4  7C 7F 00 50 */	subf r3, r31, r0
/* 8003B188 000366A8  38 03 00 04 */	addi r0, r3, 4
/* 8003B18C 000366AC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8003B190 000366B0  3C 03 80 C3 */	addis r0, r3, 0x80c3
/* 8003B194 000366B4  90 18 00 00 */	stw r0, 0(r24)
lbl_8003B198:
/* 8003B198 000366B8  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003B19C 000366BC  80 03 24 24 */	lwz r0, 0x2424(r3)
/* 8003B1A0 000366C0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8003B1A4 000366C4  41 82 00 30 */	beq lbl_8003B1D4
/* 8003B1A8 000366C8  28 04 00 0A */	cmplwi r4, 0xa
/* 8003B1AC 000366CC  41 80 00 28 */	blt lbl_8003B1D4
/* 8003B1B0 000366D0  54 C0 A8 14 */	slwi r0, r6, 0x15
/* 8003B1B4 000366D4  54 C3 80 1E */	slwi r3, r6, 0x10
/* 8003B1B8 000366D8  64 04 7C 00 */	oris r4, r0, 0x7c00
/* 8003B1BC 000366DC  60 84 00 38 */	ori r4, r4, 0x38
/* 8003B1C0 000366E0  60 63 48 00 */	ori r3, r3, 0x4800
/* 8003B1C4 000366E4  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B1C8 000366E8  3B DE 00 01 */	addi r30, r30, 1
/* 8003B1CC 000366EC  7C 83 1B 78 */	or r3, r4, r3
/* 8003B1D0 000366F0  7C 78 01 2E */	stwx r3, r24, r0
lbl_8003B1D4:
/* 8003B1D4 000366F4  54 C3 80 1E */	slwi r3, r6, 0x10
/* 8003B1D8 000366F8  54 A0 18 38 */	slwi r0, r5, 3
/* 8003B1DC 000366FC  64 65 7C E0 */	oris r5, r3, 0x7ce0
/* 8003B1E0 00036700  57 C4 10 3A */	slwi r4, r30, 2
/* 8003B1E4 00036704  7C 7F 02 14 */	add r3, r31, r0
/* 8003B1E8 00036708  3B DE 00 01 */	addi r30, r30, 1
/* 8003B1EC 0003670C  60 A5 42 14 */	ori r5, r5, 0x4214
/* 8003B1F0 00036710  38 63 01 48 */	addi r3, r3, 0x148
/* 8003B1F4 00036714  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B1F8 00036718  7C 7F 18 50 */	subf r3, r31, r3
/* 8003B1FC 0003671C  7C B8 21 2E */	stwx r5, r24, r4
/* 8003B200 00036720  3C 63 80 A3 */	addis r3, r3, 0x80a3
/* 8003B204 00036724  3B DE 00 01 */	addi r30, r30, 1
/* 8003B208 00036728  7C 78 01 2E */	stwx r3, r24, r0
/* 8003B20C 0003672C  57 C5 10 3A */	slwi r5, r30, 2
/* 8003B210 00036730  3B DE 00 01 */	addi r30, r30, 1
/* 8003B214 00036734  38 83 00 04 */	addi r4, r3, 4
/* 8003B218 00036738  80 C1 00 08 */	lwz r6, 8(r1)
/* 8003B21C 0003673C  57 C3 10 3A */	slwi r3, r30, 2
/* 8003B220 00036740  3B DE 00 01 */	addi r30, r30, 1
/* 8003B224 00036744  80 C6 00 00 */	lwz r6, 0(r6)
/* 8003B228 00036748  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B22C 0003674C  3B DE 00 01 */	addi r30, r30, 1
/* 8003B230 00036750  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 8003B234 00036754  64 C6 90 A7 */	oris r6, r6, 0x90a7
/* 8003B238 00036758  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B23C 0003675C  7C 98 19 2E */	stwx r4, r24, r3
/* 8003B240 00036760  80 61 00 08 */	lwz r3, 8(r1)
/* 8003B244 00036764  80 63 00 00 */	lwz r3, 0(r3)
/* 8003B248 00036768  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8003B24C 0003676C  38 63 00 04 */	addi r3, r3, 4
/* 8003B250 00036770  64 63 90 A7 */	oris r3, r3, 0x90a7
/* 8003B254 00036774  7C 78 01 2E */	stwx r3, r24, r0
/* 8003B258 00036778  48 00 03 40 */	b lbl_8003B598
/* 8003B25C 0003677C  3C C0 80 18 */	lis r6, lbl_8017AD80@ha
/* 8003B260 00036780  54 A5 10 3A */	slwi r5, r5, 2
/* 8003B264 00036784  38 C6 AD 80 */	addi r6, r6, lbl_8017AD80@l
/* 8003B268 00036788  7C A6 28 2E */	lwzx r5, r6, r5
/* 8003B26C 0003678C  54 A6 05 EF */	rlwinm. r6, r5, 0, 0x17, 0x17
/* 8003B270 00036790  41 82 00 08 */	beq lbl_8003B278
/* 8003B274 00036794  38 A0 00 05 */	li r5, 5
lbl_8003B278:
/* 8003B278 00036798  3C C0 80 18 */	lis r6, lbl_8017AD80@ha
/* 8003B27C 0003679C  54 00 10 3A */	slwi r0, r0, 2
/* 8003B280 000367A0  38 C6 AD 80 */	addi r6, r6, lbl_8017AD80@l
/* 8003B284 000367A4  7C 06 00 2E */	lwzx r0, r6, r0
/* 8003B288 000367A8  54 06 05 EF */	rlwinm. r6, r0, 0, 0x17, 0x17
/* 8003B28C 000367AC  41 82 00 28 */	beq lbl_8003B2B4
/* 8003B290 000367B0  7C 7F 1A 14 */	add r3, r31, r3
/* 8003B294 000367B4  38 00 00 06 */	li r0, 6
/* 8003B298 000367B8  38 63 00 48 */	addi r3, r3, 0x48
/* 8003B29C 000367BC  3B C0 00 01 */	li r30, 1
/* 8003B2A0 000367C0  7C 7F 18 50 */	subf r3, r31, r3
/* 8003B2A4 000367C4  38 63 00 04 */	addi r3, r3, 4
/* 8003B2A8 000367C8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8003B2AC 000367CC  3C 63 80 C3 */	addis r3, r3, 0x80c3
/* 8003B2B0 000367D0  90 78 00 00 */	stw r3, 0(r24)
lbl_8003B2B4:
/* 8003B2B4 000367D4  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003B2B8 000367D8  80 C3 24 24 */	lwz r6, 0x2424(r3)
/* 8003B2BC 000367DC  54 C3 05 EF */	rlwinm. r3, r6, 0, 0x17, 0x17
/* 8003B2C0 000367E0  41 82 00 60 */	beq lbl_8003B320
/* 8003B2C4 000367E4  54 C3 04 E7 */	rlwinm. r3, r6, 0, 0x13, 0x13
/* 8003B2C8 000367E8  41 82 00 2C */	beq lbl_8003B2F4
/* 8003B2CC 000367EC  54 03 A8 14 */	slwi r3, r0, 0x15
/* 8003B2D0 000367F0  54 04 80 1E */	slwi r4, r0, 0x10
/* 8003B2D4 000367F4  64 66 7C 00 */	oris r6, r3, 0x7c00
/* 8003B2D8 000367F8  60 C6 00 38 */	ori r6, r6, 0x38
/* 8003B2DC 000367FC  60 84 48 00 */	ori r4, r4, 0x4800
/* 8003B2E0 00036800  57 C3 10 3A */	slwi r3, r30, 2
/* 8003B2E4 00036804  3B DE 00 01 */	addi r30, r30, 1
/* 8003B2E8 00036808  7C C4 23 78 */	or r4, r6, r4
/* 8003B2EC 0003680C  7C 98 19 2E */	stwx r4, r24, r3
/* 8003B2F0 00036810  48 00 00 30 */	b lbl_8003B320
lbl_8003B2F4:
/* 8003B2F4 00036814  28 04 00 0A */	cmplwi r4, 0xa
/* 8003B2F8 00036818  41 80 00 28 */	blt lbl_8003B320
/* 8003B2FC 0003681C  54 03 A8 14 */	slwi r3, r0, 0x15
/* 8003B300 00036820  54 04 80 1E */	slwi r4, r0, 0x10
/* 8003B304 00036824  64 66 7C 00 */	oris r6, r3, 0x7c00
/* 8003B308 00036828  60 C6 00 38 */	ori r6, r6, 0x38
/* 8003B30C 0003682C  60 84 48 00 */	ori r4, r4, 0x4800
/* 8003B310 00036830  57 C3 10 3A */	slwi r3, r30, 2
/* 8003B314 00036834  3B DE 00 01 */	addi r30, r30, 1
/* 8003B318 00036838  7C C4 23 78 */	or r4, r6, r4
/* 8003B31C 0003683C  7C 98 19 2E */	stwx r4, r24, r3
lbl_8003B320:
/* 8003B320 00036840  54 00 80 1E */	slwi r0, r0, 0x10
/* 8003B324 00036844  54 A4 A8 14 */	slwi r4, r5, 0x15
/* 8003B328 00036848  64 03 7C E0 */	oris r3, r0, 0x7ce0
/* 8003B32C 0003684C  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B330 00036850  3B DE 00 01 */	addi r30, r30, 1
/* 8003B334 00036854  60 63 42 14 */	ori r3, r3, 0x4214
/* 8003B338 00036858  64 86 80 07 */	oris r6, r4, 0x8007
/* 8003B33C 0003685C  7C 78 01 2E */	stwx r3, r24, r0
/* 8003B340 00036860  57 C7 10 3A */	slwi r7, r30, 2
/* 8003B344 00036864  3B DE 00 01 */	addi r30, r30, 1
/* 8003B348 00036868  64 84 90 03 */	oris r4, r4, 0x9003
/* 8003B34C 0003686C  80 61 00 08 */	lwz r3, 8(r1)
/* 8003B350 00036870  57 C5 10 3A */	slwi r5, r30, 2
/* 8003B354 00036874  3B DE 00 01 */	addi r30, r30, 1
/* 8003B358 00036878  80 03 00 00 */	lwz r0, 0(r3)
/* 8003B35C 0003687C  57 C3 10 3A */	slwi r3, r30, 2
/* 8003B360 00036880  3B DE 00 01 */	addi r30, r30, 1
/* 8003B364 00036884  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8003B368 00036888  64 08 80 A7 */	oris r8, r0, 0x80a7
/* 8003B36C 0003688C  7D 18 39 2E */	stwx r8, r24, r7
/* 8003B370 00036890  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B374 00036894  3B DE 00 01 */	addi r30, r30, 1
/* 8003B378 00036898  80 E1 00 08 */	lwz r7, 8(r1)
/* 8003B37C 0003689C  80 E7 00 00 */	lwz r7, 0(r7)
/* 8003B380 000368A0  54 E7 9E 38 */	rlwinm r7, r7, 0x13, 0x18, 0x1c
/* 8003B384 000368A4  7C FF 3A 14 */	add r7, r31, r7
/* 8003B388 000368A8  38 E7 00 48 */	addi r7, r7, 0x48
/* 8003B38C 000368AC  7C FF 38 50 */	subf r7, r31, r7
/* 8003B390 000368B0  3C E7 90 A3 */	addis r7, r7, 0x90a3
/* 8003B394 000368B4  7C F8 29 2E */	stwx r7, r24, r5
/* 8003B398 000368B8  80 A1 00 08 */	lwz r5, 8(r1)
/* 8003B39C 000368BC  80 A5 00 00 */	lwz r5, 0(r5)
/* 8003B3A0 000368C0  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 8003B3A4 000368C4  38 A5 00 04 */	addi r5, r5, 4
/* 8003B3A8 000368C8  7C C5 2B 78 */	or r5, r6, r5
/* 8003B3AC 000368CC  7C B8 19 2E */	stwx r5, r24, r3
/* 8003B3B0 000368D0  80 61 00 08 */	lwz r3, 8(r1)
/* 8003B3B4 000368D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8003B3B8 000368D8  54 63 9E 38 */	rlwinm r3, r3, 0x13, 0x18, 0x1c
/* 8003B3BC 000368DC  7C 7F 1A 14 */	add r3, r31, r3
/* 8003B3C0 000368E0  38 63 00 48 */	addi r3, r3, 0x48
/* 8003B3C4 000368E4  7C 7F 18 50 */	subf r3, r31, r3
/* 8003B3C8 000368E8  7C 63 22 14 */	add r3, r3, r4
/* 8003B3CC 000368EC  38 63 00 04 */	addi r3, r3, 4
/* 8003B3D0 000368F0  7C 78 01 2E */	stwx r3, r24, r0
/* 8003B3D4 000368F4  48 00 01 C4 */	b lbl_8003B598
/* 8003B3D8 000368F8  3C A0 80 18 */	lis r5, lbl_8017AD80@ha
/* 8003B3DC 000368FC  54 00 10 3A */	slwi r0, r0, 2
/* 8003B3E0 00036900  38 A5 AD 80 */	addi r5, r5, lbl_8017AD80@l
/* 8003B3E4 00036904  7C 05 00 2E */	lwzx r0, r5, r0
/* 8003B3E8 00036908  54 05 05 EF */	rlwinm. r5, r0, 0, 0x17, 0x17
/* 8003B3EC 0003690C  41 82 00 28 */	beq lbl_8003B414
/* 8003B3F0 00036910  7C 7F 1A 14 */	add r3, r31, r3
/* 8003B3F4 00036914  38 00 00 07 */	li r0, 7
/* 8003B3F8 00036918  38 63 00 48 */	addi r3, r3, 0x48
/* 8003B3FC 0003691C  3B C0 00 01 */	li r30, 1
/* 8003B400 00036920  7C 7F 18 50 */	subf r3, r31, r3
/* 8003B404 00036924  38 63 00 04 */	addi r3, r3, 4
/* 8003B408 00036928  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8003B40C 0003692C  3C 63 80 E3 */	addis r3, r3, 0x80e3
/* 8003B410 00036930  90 78 00 00 */	stw r3, 0(r24)
lbl_8003B414:
/* 8003B414 00036934  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003B418 00036938  80 A3 24 24 */	lwz r5, 0x2424(r3)
/* 8003B41C 0003693C  54 A3 05 EF */	rlwinm. r3, r5, 0, 0x17, 0x17
/* 8003B420 00036940  41 82 00 60 */	beq lbl_8003B480
/* 8003B424 00036944  54 A3 04 E7 */	rlwinm. r3, r5, 0, 0x13, 0x13
/* 8003B428 00036948  41 82 00 2C */	beq lbl_8003B454
/* 8003B42C 0003694C  54 03 A8 14 */	slwi r3, r0, 0x15
/* 8003B430 00036950  54 04 80 1E */	slwi r4, r0, 0x10
/* 8003B434 00036954  64 65 7C 00 */	oris r5, r3, 0x7c00
/* 8003B438 00036958  60 A5 00 38 */	ori r5, r5, 0x38
/* 8003B43C 0003695C  60 84 48 00 */	ori r4, r4, 0x4800
/* 8003B440 00036960  57 C3 10 3A */	slwi r3, r30, 2
/* 8003B444 00036964  3B DE 00 01 */	addi r30, r30, 1
/* 8003B448 00036968  7C A4 23 78 */	or r4, r5, r4
/* 8003B44C 0003696C  7C 98 19 2E */	stwx r4, r24, r3
/* 8003B450 00036970  48 00 00 30 */	b lbl_8003B480
lbl_8003B454:
/* 8003B454 00036974  28 04 00 0A */	cmplwi r4, 0xa
/* 8003B458 00036978  41 80 00 28 */	blt lbl_8003B480
/* 8003B45C 0003697C  54 03 A8 14 */	slwi r3, r0, 0x15
/* 8003B460 00036980  54 04 80 1E */	slwi r4, r0, 0x10
/* 8003B464 00036984  64 65 7C 00 */	oris r5, r3, 0x7c00
/* 8003B468 00036988  60 A5 00 38 */	ori r5, r5, 0x38
/* 8003B46C 0003698C  60 84 48 00 */	ori r4, r4, 0x4800
/* 8003B470 00036990  57 C3 10 3A */	slwi r3, r30, 2
/* 8003B474 00036994  3B DE 00 01 */	addi r30, r30, 1
/* 8003B478 00036998  7C A4 23 78 */	or r4, r5, r4
/* 8003B47C 0003699C  7C 98 19 2E */	stwx r4, r24, r3
lbl_8003B480:
/* 8003B480 000369A0  54 03 80 1E */	slwi r3, r0, 0x10
/* 8003B484 000369A4  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B488 000369A8  64 64 7C E0 */	oris r4, r3, 0x7ce0
/* 8003B48C 000369AC  3B DE 00 01 */	addi r30, r30, 1
/* 8003B490 000369B0  60 84 42 14 */	ori r4, r4, 0x4214
/* 8003B494 000369B4  3C 60 80 18 */	lis r3, lbl_8017AD80@ha
/* 8003B498 000369B8  7C 98 01 2E */	stwx r4, r24, r0
/* 8003B49C 000369BC  57 C4 10 3A */	slwi r4, r30, 2
/* 8003B4A0 000369C0  3B DE 00 01 */	addi r30, r30, 1
/* 8003B4A4 000369C4  38 63 AD 80 */	addi r3, r3, lbl_8017AD80@l
/* 8003B4A8 000369C8  80 A1 00 08 */	lwz r5, 8(r1)
/* 8003B4AC 000369CC  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B4B0 000369D0  3B DE 00 01 */	addi r30, r30, 1
/* 8003B4B4 000369D4  80 A5 00 00 */	lwz r5, 0(r5)
/* 8003B4B8 000369D8  54 A5 9E 38 */	rlwinm r5, r5, 0x13, 0x18, 0x1c
/* 8003B4BC 000369DC  7C BF 2A 14 */	add r5, r31, r5
/* 8003B4C0 000369E0  38 A5 00 48 */	addi r5, r5, 0x48
/* 8003B4C4 000369E4  7C BF 28 50 */	subf r5, r31, r5
/* 8003B4C8 000369E8  3C A5 80 C3 */	addis r5, r5, 0x80c3
/* 8003B4CC 000369EC  7C B8 21 2E */	stwx r5, r24, r4
/* 8003B4D0 000369F0  80 81 00 08 */	lwz r4, 8(r1)
/* 8003B4D4 000369F4  80 84 00 00 */	lwz r4, 0(r4)
/* 8003B4D8 000369F8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8003B4DC 000369FC  64 84 90 C7 */	oris r4, r4, 0x90c7
/* 8003B4E0 00036A00  7C 98 01 2E */	stwx r4, r24, r0
/* 8003B4E4 00036A04  80 81 00 08 */	lwz r4, 8(r1)
/* 8003B4E8 00036A08  80 84 00 00 */	lwz r4, 0(r4)
/* 8003B4EC 00036A0C  54 80 96 7A */	rlwinm r0, r4, 0x12, 0x19, 0x1d
/* 8003B4F0 00036A10  54 84 86 FE */	rlwinm r4, r4, 0x10, 0x1b, 0x1f
/* 8003B4F4 00036A14  7C A3 00 2E */	lwzx r5, r3, r0
/* 8003B4F8 00036A18  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 8003B4FC 00036A1C  41 82 00 2C */	beq lbl_8003B528
/* 8003B500 00036A20  54 83 18 38 */	slwi r3, r4, 3
/* 8003B504 00036A24  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B508 00036A28  7C 7F 1A 14 */	add r3, r31, r3
/* 8003B50C 00036A2C  38 A0 00 06 */	li r5, 6
/* 8003B510 00036A30  38 63 00 48 */	addi r3, r3, 0x48
/* 8003B514 00036A34  3B DE 00 01 */	addi r30, r30, 1
/* 8003B518 00036A38  7C 7F 18 50 */	subf r3, r31, r3
/* 8003B51C 00036A3C  3C 63 80 C3 */	addis r3, r3, 0x80c3
/* 8003B520 00036A40  38 63 00 04 */	addi r3, r3, 4
/* 8003B524 00036A44  7C 78 01 2E */	stwx r3, r24, r0
lbl_8003B528:
/* 8003B528 00036A48  80 61 00 08 */	lwz r3, 8(r1)
/* 8003B52C 00036A4C  54 A4 A8 14 */	slwi r4, r5, 0x15
/* 8003B530 00036A50  57 C0 10 3A */	slwi r0, r30, 2
/* 8003B534 00036A54  3B DE 00 01 */	addi r30, r30, 1
/* 8003B538 00036A58  80 63 00 00 */	lwz r3, 0(r3)
/* 8003B53C 00036A5C  64 84 90 07 */	oris r4, r4, 0x9007
/* 8003B540 00036A60  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8003B544 00036A64  38 63 00 04 */	addi r3, r3, 4
/* 8003B548 00036A68  7C 83 1B 78 */	or r3, r4, r3
/* 8003B54C 00036A6C  7C 78 01 2E */	stwx r3, r24, r0
/* 8003B550 00036A70  48 00 00 48 */	b lbl_8003B598
lbl_8003B554:
/* 8003B554 00036A74  48 04 95 A1 */	bl invalidInst
/* 8003B558 00036A78  48 00 00 40 */	b lbl_8003B598
lbl_8003B55C:
/* 8003B55C 00036A7C  56 E3 84 3E */	srwi r3, r23, 0x10
/* 8003B560 00036A80  56 E0 04 3E */	clrlwi r0, r23, 0x10
/* 8003B564 00036A84  64 64 3C A0 */	oris r4, r3, 0x3ca0
/* 8003B568 00036A88  3B 80 00 01 */	li r28, 1
/* 8003B56C 00036A8C  90 98 00 00 */	stw r4, 0(r24)
/* 8003B570 00036A90  64 00 60 A5 */	oris r0, r0, 0x60a5
/* 8003B574 00036A94  38 78 00 08 */	addi r3, r24, 8
/* 8003B578 00036A98  3B C0 00 03 */	li r30, 3
/* 8003B57C 00036A9C  90 18 00 04 */	stw r0, 4(r24)
/* 8003B580 00036AA0  80 1F 0B 48 */	lwz r0, 0xb48(r31)
/* 8003B584 00036AA4  7C 03 00 50 */	subf r0, r3, r0
/* 8003B588 00036AA8  54 00 01 BA */	rlwinm r0, r0, 0, 6, 0x1d
/* 8003B58C 00036AAC  64 00 48 00 */	oris r0, r0, 0x4800
/* 8003B590 00036AB0  60 00 00 01 */	ori r0, r0, 1
/* 8003B594 00036AB4  90 18 00 08 */	stw r0, 8(r24)
lbl_8003B598:
/* 8003B598 00036AB8  3C 7F 00 10 */	addis r3, r31, 0x10
/* 8003B59C 00036ABC  80 03 24 24 */	lwz r0, 0x2424(r3)
/* 8003B5A0 00036AC0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8003B5A4 00036AC4  41 82 00 BC */	beq lbl_8003B660
/* 8003B5A8 00036AC8  20 1E 00 07 */	subfic r0, r30, 7
/* 8003B5AC 00036ACC  2C 00 00 02 */	cmpwi r0, 2
/* 8003B5B0 00036AD0  41 80 00 28 */	blt lbl_8003B5D8
/* 8003B5B4 00036AD4  57 C4 10 3A */	slwi r4, r30, 2
/* 8003B5B8 00036AD8  7F DD F3 78 */	mr r29, r30
/* 8003B5BC 00036ADC  7C 78 22 14 */	add r3, r24, r4
/* 8003B5C0 00036AE0  38 18 00 1C */	addi r0, r24, 0x1c
/* 8003B5C4 00036AE4  7C 03 00 50 */	subf r0, r3, r0
/* 8003B5C8 00036AE8  3B DE 00 01 */	addi r30, r30, 1
/* 8003B5CC 00036AEC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8003B5D0 00036AF0  64 00 48 00 */	oris r0, r0, 0x4800
/* 8003B5D4 00036AF4  7C 18 21 2E */	stwx r0, r24, r4
lbl_8003B5D8:
/* 8003B5D8 00036AF8  2C 1E 00 06 */	cmpwi r30, 6
/* 8003B5DC 00036AFC  57 C5 10 3A */	slwi r5, r30, 2
/* 8003B5E0 00036B00  20 9E 00 07 */	subfic r4, r30, 7
/* 8003B5E4 00036B04  3C C0 60 00 */	lis r6, 0x6000
/* 8003B5E8 00036B08  41 81 01 2C */	bgt lbl_8003B714
/* 8003B5EC 00036B0C  54 83 E8 FF */	rlwinm. r3, r4, 0x1d, 3, 0x1f
/* 8003B5F0 00036B10  7C 80 23 78 */	mr r0, r4
/* 8003B5F4 00036B14  7C 69 03 A6 */	mtctr r3
/* 8003B5F8 00036B18  41 82 00 50 */	beq lbl_8003B648
lbl_8003B5FC:
/* 8003B5FC 00036B1C  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B600 00036B20  38 A5 00 04 */	addi r5, r5, 4
/* 8003B604 00036B24  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B608 00036B28  38 A5 00 04 */	addi r5, r5, 4
/* 8003B60C 00036B2C  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B610 00036B30  38 A5 00 04 */	addi r5, r5, 4
/* 8003B614 00036B34  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B618 00036B38  38 A5 00 04 */	addi r5, r5, 4
/* 8003B61C 00036B3C  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B620 00036B40  38 A5 00 04 */	addi r5, r5, 4
/* 8003B624 00036B44  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B628 00036B48  38 A5 00 04 */	addi r5, r5, 4
/* 8003B62C 00036B4C  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B630 00036B50  38 A5 00 04 */	addi r5, r5, 4
/* 8003B634 00036B54  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B638 00036B58  38 A5 00 04 */	addi r5, r5, 4
/* 8003B63C 00036B5C  42 00 FF C0 */	bdnz lbl_8003B5FC
/* 8003B640 00036B60  70 84 00 07 */	andi. r4, r4, 7
/* 8003B644 00036B64  41 82 00 14 */	beq lbl_8003B658
lbl_8003B648:
/* 8003B648 00036B68  7C 89 03 A6 */	mtctr r4
lbl_8003B64C:
/* 8003B64C 00036B6C  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B650 00036B70  38 A5 00 04 */	addi r5, r5, 4
/* 8003B654 00036B74  42 00 FF F8 */	bdnz lbl_8003B64C
lbl_8003B658:
/* 8003B658 00036B78  7F DE 02 14 */	add r30, r30, r0
/* 8003B65C 00036B7C  48 00 00 B8 */	b lbl_8003B714
lbl_8003B660:
/* 8003B660 00036B80  20 1E 00 06 */	subfic r0, r30, 6
/* 8003B664 00036B84  2C 00 00 02 */	cmpwi r0, 2
/* 8003B668 00036B88  41 80 00 28 */	blt lbl_8003B690
/* 8003B66C 00036B8C  57 C4 10 3A */	slwi r4, r30, 2
/* 8003B670 00036B90  7F DD F3 78 */	mr r29, r30
/* 8003B674 00036B94  7C 78 22 14 */	add r3, r24, r4
/* 8003B678 00036B98  38 18 00 18 */	addi r0, r24, 0x18
/* 8003B67C 00036B9C  7C 03 00 50 */	subf r0, r3, r0
/* 8003B680 00036BA0  3B DE 00 01 */	addi r30, r30, 1
/* 8003B684 00036BA4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8003B688 00036BA8  64 00 48 00 */	oris r0, r0, 0x4800
/* 8003B68C 00036BAC  7C 18 21 2E */	stwx r0, r24, r4
lbl_8003B690:
/* 8003B690 00036BB0  2C 1E 00 05 */	cmpwi r30, 5
/* 8003B694 00036BB4  57 C5 10 3A */	slwi r5, r30, 2
/* 8003B698 00036BB8  20 9E 00 06 */	subfic r4, r30, 6
/* 8003B69C 00036BBC  3C C0 60 00 */	lis r6, 0x6000
/* 8003B6A0 00036BC0  41 81 00 74 */	bgt lbl_8003B714
/* 8003B6A4 00036BC4  54 83 E8 FF */	rlwinm. r3, r4, 0x1d, 3, 0x1f
/* 8003B6A8 00036BC8  7C 80 23 78 */	mr r0, r4
/* 8003B6AC 00036BCC  7C 69 03 A6 */	mtctr r3
/* 8003B6B0 00036BD0  41 82 00 50 */	beq lbl_8003B700
lbl_8003B6B4:
/* 8003B6B4 00036BD4  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B6B8 00036BD8  38 A5 00 04 */	addi r5, r5, 4
/* 8003B6BC 00036BDC  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B6C0 00036BE0  38 A5 00 04 */	addi r5, r5, 4
/* 8003B6C4 00036BE4  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B6C8 00036BE8  38 A5 00 04 */	addi r5, r5, 4
/* 8003B6CC 00036BEC  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B6D0 00036BF0  38 A5 00 04 */	addi r5, r5, 4
/* 8003B6D4 00036BF4  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B6D8 00036BF8  38 A5 00 04 */	addi r5, r5, 4
/* 8003B6DC 00036BFC  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B6E0 00036C00  38 A5 00 04 */	addi r5, r5, 4
/* 8003B6E4 00036C04  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B6E8 00036C08  38 A5 00 04 */	addi r5, r5, 4
/* 8003B6EC 00036C0C  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B6F0 00036C10  38 A5 00 04 */	addi r5, r5, 4
/* 8003B6F4 00036C14  42 00 FF C0 */	bdnz lbl_8003B6B4
/* 8003B6F8 00036C18  70 84 00 07 */	andi. r4, r4, 7
/* 8003B6FC 00036C1C  41 82 00 14 */	beq lbl_8003B710
lbl_8003B700:
/* 8003B700 00036C20  7C 89 03 A6 */	mtctr r4
lbl_8003B704:
/* 8003B704 00036C24  7C D8 29 2E */	stwx r6, r24, r5
/* 8003B708 00036C28  38 A5 00 04 */	addi r5, r5, 4
/* 8003B70C 00036C2C  42 00 FF F8 */	bdnz lbl_8003B704
lbl_8003B710:
/* 8003B710 00036C30  7F DE 02 14 */	add r30, r30, r0
lbl_8003B714:
/* 8003B714 00036C34  2C 1C 00 00 */	cmpwi r28, 0
/* 8003B718 00036C38  40 82 00 A4 */	bne lbl_8003B7BC
/* 8003B71C 00036C3C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8003B720 00036C40  3C 03 C7 40 */	addis r0, r3, 0xc740
/* 8003B724 00036C44  28 00 00 00 */	cmplwi r0, 0
/* 8003B728 00036C48  40 82 00 94 */	bne lbl_8003B7BC
/* 8003B72C 00036C4C  80 1B 00 04 */	lwz r0, 4(r27)
/* 8003B730 00036C50  7C 00 C8 00 */	cmpw r0, r25
/* 8003B734 00036C54  40 82 00 88 */	bne lbl_8003B7BC
/* 8003B738 00036C58  38 7B 00 08 */	addi r3, r27, 8
/* 8003B73C 00036C5C  3C 00 60 00 */	lis r0, 0x6000
/* 8003B740 00036C60  7C 9B 18 50 */	subf r4, r27, r3
/* 8003B744 00036C64  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 8003B748 00036C68  7F 63 DB 78 */	mr r3, r27
/* 8003B74C 00036C6C  64 A5 48 00 */	oris r5, r5, 0x4800
/* 8003B750 00036C70  38 80 00 08 */	li r4, 8
/* 8003B754 00036C74  90 BB 00 00 */	stw r5, 0(r27)
/* 8003B758 00036C78  90 1B 00 04 */	stw r0, 4(r27)
/* 8003B75C 00036C7C  48 05 55 41 */	bl DCStoreRange
/* 8003B760 00036C80  7F 63 DB 78 */	mr r3, r27
/* 8003B764 00036C84  38 80 00 08 */	li r4, 8
/* 8003B768 00036C88  48 05 55 BD */	bl ICInvalidateRange
/* 8003B76C 00036C8C  2C 1D 00 00 */	cmpwi r29, 0
/* 8003B770 00036C90  41 82 00 20 */	beq lbl_8003B790
/* 8003B774 00036C94  57 A3 10 3A */	slwi r3, r29, 2
/* 8003B778 00036C98  38 1A 00 08 */	addi r0, r26, 8
/* 8003B77C 00036C9C  7C 78 1A 14 */	add r3, r24, r3
/* 8003B780 00036CA0  7C 03 00 50 */	subf r0, r3, r0
/* 8003B784 00036CA4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8003B788 00036CA8  64 00 48 00 */	oris r0, r0, 0x4800
/* 8003B78C 00036CAC  90 03 00 00 */	stw r0, 0(r3)
lbl_8003B790:
/* 8003B790 00036CB0  3C 00 60 00 */	lis r0, 0x6000
/* 8003B794 00036CB4  7F 43 D3 78 */	mr r3, r26
/* 8003B798 00036CB8  90 1A 00 00 */	stw r0, 0(r26)
/* 8003B79C 00036CBC  38 80 00 08 */	li r4, 8
/* 8003B7A0 00036CC0  90 1A 00 04 */	stw r0, 4(r26)
/* 8003B7A4 00036CC4  48 05 54 F9 */	bl DCStoreRange
/* 8003B7A8 00036CC8  7F 43 D3 78 */	mr r3, r26
/* 8003B7AC 00036CCC  38 80 00 08 */	li r4, 8
/* 8003B7B0 00036CD0  48 05 55 75 */	bl ICInvalidateRange
/* 8003B7B4 00036CD4  38 00 FF FF */	li r0, -1
/* 8003B7B8 00036CD8  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_8003B7BC:
/* 8003B7BC 00036CDC  57 D7 10 3A */	slwi r23, r30, 2
/* 8003B7C0 00036CE0  7F 03 C3 78 */	mr r3, r24
/* 8003B7C4 00036CE4  7E E4 BB 78 */	mr r4, r23
/* 8003B7C8 00036CE8  48 05 54 D5 */	bl DCStoreRange
/* 8003B7CC 00036CEC  7F 03 C3 78 */	mr r3, r24
/* 8003B7D0 00036CF0  7E E4 BB 78 */	mr r4, r23
/* 8003B7D4 00036CF4  48 05 55 51 */	bl ICInvalidateRange
/* 8003B7D8 00036CF8  7F 03 C3 78 */	mr r3, r24
lbl_8003B7DC:
/* 8003B7DC 00036CFC  39 61 00 40 */	addi r11, r1, 0x40
/* 8003B7E0 00036D00  48 12 11 A1 */	bl __restore_registersr23
/* 8003B7E4 00036D04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003B7E8 00036D08  7C 08 03 A6 */	mtlr r0
/* 8003B7EC 00036D0C  38 21 00 40 */	addi r1, r1, 0x40
/* 8003B7F0 00036D10  4E 80 00 20 */	blr 

