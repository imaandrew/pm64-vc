glabel func_8000E69C
/* 8000E69C 00009BBC  80 ED 86 E4 */	lwz r7, lbl_80246B64@sda21(r13)
/* 8000E6A0 00009BC0  80 E7 00 14 */	lwz r7, 0x14(r7)
/* 8000E6A4 00009BC4  3C 07 BC B4 */	addis r0, r7, 0xbcb4
/* 8000E6A8 00009BC8  28 00 42 4A */	cmplwi r0, 0x424a
/* 8000E6AC 00009BCC  41 82 00 2C */	beq lbl_8000E6D8
/* 8000E6B0 00009BD0  80 ED 86 E4 */	lwz r7, lbl_80246B64@sda21(r13)
/* 8000E6B4 00009BD4  80 E7 00 14 */	lwz r7, 0x14(r7)
/* 8000E6B8 00009BD8  3C 07 BC B4 */	addis r0, r7, 0xbcb4
/* 8000E6BC 00009BDC  28 00 42 45 */	cmplwi r0, 0x4245
/* 8000E6C0 00009BE0  41 82 00 18 */	beq lbl_8000E6D8
/* 8000E6C4 00009BE4  80 ED 86 E4 */	lwz r7, lbl_80246B64@sda21(r13)
/* 8000E6C8 00009BE8  80 E7 00 14 */	lwz r7, 0x14(r7)
/* 8000E6CC 00009BEC  3C 07 BC B4 */	addis r0, r7, 0xbcb4
/* 8000E6D0 00009BF0  28 00 42 50 */	cmplwi r0, 0x4250
/* 8000E6D4 00009BF4  40 82 01 0C */	bne lbl_8000E7E0
lbl_8000E6D8:
/* 8000E6D8 00009BF8  3C 04 53 61 */	addis r0, r4, 0x5361
/* 8000E6DC 00009BFC  28 00 00 04 */	cmplwi r0, 4
/* 8000E6E0 00009C00  40 82 02 40 */	bne lbl_8000E920
/* 8000E6E4 00009C04  3C 05 53 63 */	addis r0, r5, 0x5363
/* 8000E6E8 00009C08  28 00 00 00 */	cmplwi r0, 0
/* 8000E6EC 00009C0C  40 82 02 34 */	bne lbl_8000E920
/* 8000E6F0 00009C10  3C 06 53 70 */	addis r0, r6, 0x5370
/* 8000E6F4 00009C14  28 00 00 08 */	cmplwi r0, 8
/* 8000E6F8 00009C18  40 82 02 28 */	bne lbl_8000E920
/* 8000E6FC 00009C1C  2C 08 00 00 */	cmpwi r8, 0
/* 8000E700 00009C20  41 82 00 28 */	beq lbl_8000E728
/* 8000E704 00009C24  80 A9 00 00 */	lwz r5, 0(r9)
/* 8000E708 00009C28  38 03 00 30 */	addi r0, r3, 0x30
/* 8000E70C 00009C2C  7C C3 00 50 */	subf r6, r3, r0
/* 8000E710 00009C30  3C C6 80 A3 */	addis r6, r6, 0x80a3
/* 8000E714 00009C34  54 A0 10 3A */	slwi r0, r5, 2
/* 8000E718 00009C38  7C C8 01 2E */	stwx r6, r8, r0
/* 8000E71C 00009C3C  38 85 00 01 */	addi r4, r5, 1
/* 8000E720 00009C40  90 89 00 00 */	stw r4, 0(r9)
/* 8000E724 00009C44  48 00 00 10 */	b lbl_8000E734
lbl_8000E728:
/* 8000E728 00009C48  80 89 00 00 */	lwz r4, 0(r9)
/* 8000E72C 00009C4C  38 04 00 01 */	addi r0, r4, 1
/* 8000E730 00009C50  90 09 00 00 */	stw r0, 0(r9)
lbl_8000E734:
/* 8000E734 00009C54  3C 80 80 18 */	lis r4, lbl_8017AD80@ha
/* 8000E738 00009C58  38 84 AD 80 */	addi r4, r4, lbl_8017AD80@l
/* 8000E73C 00009C5C  80 84 00 7C */	lwz r4, 0x7c(r4)
/* 8000E740 00009C60  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 8000E744 00009C64  90 8A 00 00 */	stw r4, 0(r10)
/* 8000E748 00009C68  41 82 00 48 */	beq lbl_8000E790
/* 8000E74C 00009C6C  2C 08 00 00 */	cmpwi r8, 0
/* 8000E750 00009C70  41 82 00 30 */	beq lbl_8000E780
/* 8000E754 00009C74  38 03 01 40 */	addi r0, r3, 0x140
/* 8000E758 00009C78  80 A9 00 00 */	lwz r5, 0(r9)
/* 8000E75C 00009C7C  7C 83 00 50 */	subf r4, r3, r0
/* 8000E760 00009C80  38 04 00 04 */	addi r0, r4, 4
/* 8000E764 00009C84  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 8000E768 00009C88  38 85 00 01 */	addi r4, r5, 1
/* 8000E76C 00009C8C  3C C6 90 A3 */	addis r6, r6, 0x90a3
/* 8000E770 00009C90  54 A0 10 3A */	slwi r0, r5, 2
/* 8000E774 00009C94  7C C8 01 2E */	stwx r6, r8, r0
/* 8000E778 00009C98  90 89 00 00 */	stw r4, 0(r9)
/* 8000E77C 00009C9C  48 00 00 50 */	b lbl_8000E7CC
lbl_8000E780:
/* 8000E780 00009CA0  80 89 00 00 */	lwz r4, 0(r9)
/* 8000E784 00009CA4  38 04 00 01 */	addi r0, r4, 1
/* 8000E788 00009CA8  90 09 00 00 */	stw r0, 0(r9)
/* 8000E78C 00009CAC  48 00 00 40 */	b lbl_8000E7CC
lbl_8000E790:
/* 8000E790 00009CB0  2C 08 00 00 */	cmpwi r8, 0
/* 8000E794 00009CB4  41 82 00 2C */	beq lbl_8000E7C0
/* 8000E798 00009CB8  80 0A 00 00 */	lwz r0, 0(r10)
/* 8000E79C 00009CBC  80 A9 00 00 */	lwz r5, 0(r9)
/* 8000E7A0 00009CC0  54 00 80 1E */	slwi r0, r0, 0x10
/* 8000E7A4 00009CC4  64 06 7C A0 */	oris r6, r0, 0x7ca0
/* 8000E7A8 00009CC8  38 85 00 01 */	addi r4, r5, 1
/* 8000E7AC 00009CCC  60 C6 2B 78 */	ori r6, r6, 0x2b78
/* 8000E7B0 00009CD0  54 A0 10 3A */	slwi r0, r5, 2
/* 8000E7B4 00009CD4  7C C8 01 2E */	stwx r6, r8, r0
/* 8000E7B8 00009CD8  90 89 00 00 */	stw r4, 0(r9)
/* 8000E7BC 00009CDC  48 00 00 10 */	b lbl_8000E7CC
lbl_8000E7C0:
/* 8000E7C0 00009CE0  80 89 00 00 */	lwz r4, 0(r9)
/* 8000E7C4 00009CE4  38 04 00 01 */	addi r0, r4, 1
/* 8000E7C8 00009CE8  90 09 00 00 */	stw r0, 0(r9)
lbl_8000E7CC:
/* 8000E7CC 00009CEC  3C 63 00 10 */	addis r3, r3, 0x10
/* 8000E7D0 00009CF0  80 03 24 20 */	lwz r0, 0x2420(r3)
/* 8000E7D4 00009CF4  60 00 00 02 */	ori r0, r0, 2
/* 8000E7D8 00009CF8  90 03 24 20 */	stw r0, 0x2420(r3)
/* 8000E7DC 00009CFC  48 00 01 44 */	b lbl_8000E920
lbl_8000E7E0:
/* 8000E7E0 00009D00  80 ED 86 E4 */	lwz r7, lbl_80246B64@sda21(r13)
/* 8000E7E4 00009D04  80 E7 00 14 */	lwz r7, 0x14(r7)
/* 8000E7E8 00009D08  3C 07 B1 BA */	addis r0, r7, 0xb1ba
/* 8000E7EC 00009D0C  28 00 58 4A */	cmplwi r0, 0x584a
/* 8000E7F0 00009D10  41 82 00 2C */	beq lbl_8000E81C
/* 8000E7F4 00009D14  80 ED 86 E4 */	lwz r7, lbl_80246B64@sda21(r13)
/* 8000E7F8 00009D18  80 E7 00 14 */	lwz r7, 0x14(r7)
/* 8000E7FC 00009D1C  3C 07 B1 BA */	addis r0, r7, 0xb1ba
/* 8000E800 00009D20  28 00 58 45 */	cmplwi r0, 0x5845
/* 8000E804 00009D24  41 82 00 18 */	beq lbl_8000E81C
/* 8000E808 00009D28  80 ED 86 E4 */	lwz r7, lbl_80246B64@sda21(r13)
/* 8000E80C 00009D2C  80 E7 00 14 */	lwz r7, 0x14(r7)
/* 8000E810 00009D30  3C 07 B1 BA */	addis r0, r7, 0xb1ba
/* 8000E814 00009D34  28 00 58 50 */	cmplwi r0, 0x5850
/* 8000E818 00009D38  40 82 01 08 */	bne lbl_8000E920
lbl_8000E81C:
/* 8000E81C 00009D3C  3C 04 50 41 */	addis r0, r4, 0x5041
/* 8000E820 00009D40  28 00 00 3C */	cmplwi r0, 0x3c
/* 8000E824 00009D44  40 82 00 FC */	bne lbl_8000E920
/* 8000E828 00009D48  3C 05 FF 80 */	addis r0, r5, 0xff80
/* 8000E82C 00009D4C  28 00 A0 25 */	cmplwi r0, 0xa025
/* 8000E830 00009D50  40 82 00 F0 */	bne lbl_8000E920
/* 8000E834 00009D54  3C 06 50 50 */	addis r0, r6, 0x5050
/* 8000E838 00009D58  28 00 00 18 */	cmplwi r0, 0x18
/* 8000E83C 00009D5C  40 82 00 E4 */	bne lbl_8000E920
/* 8000E840 00009D60  2C 08 00 00 */	cmpwi r8, 0
/* 8000E844 00009D64  41 82 00 28 */	beq lbl_8000E86C
/* 8000E848 00009D68  80 A9 00 00 */	lwz r5, 0(r9)
/* 8000E84C 00009D6C  38 03 00 30 */	addi r0, r3, 0x30
/* 8000E850 00009D70  7C C3 00 50 */	subf r6, r3, r0
/* 8000E854 00009D74  3C C6 80 A3 */	addis r6, r6, 0x80a3
/* 8000E858 00009D78  54 A0 10 3A */	slwi r0, r5, 2
/* 8000E85C 00009D7C  7C C8 01 2E */	stwx r6, r8, r0
/* 8000E860 00009D80  38 85 00 01 */	addi r4, r5, 1
/* 8000E864 00009D84  90 89 00 00 */	stw r4, 0(r9)
/* 8000E868 00009D88  48 00 00 10 */	b lbl_8000E878
lbl_8000E86C:
/* 8000E86C 00009D8C  80 89 00 00 */	lwz r4, 0(r9)
/* 8000E870 00009D90  38 04 00 01 */	addi r0, r4, 1
/* 8000E874 00009D94  90 09 00 00 */	stw r0, 0(r9)
lbl_8000E878:
/* 8000E878 00009D98  3C 80 80 18 */	lis r4, lbl_8017AD80@ha
/* 8000E87C 00009D9C  38 84 AD 80 */	addi r4, r4, lbl_8017AD80@l
/* 8000E880 00009DA0  80 84 00 7C */	lwz r4, 0x7c(r4)
/* 8000E884 00009DA4  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 8000E888 00009DA8  90 8A 00 00 */	stw r4, 0(r10)
/* 8000E88C 00009DAC  41 82 00 48 */	beq lbl_8000E8D4
/* 8000E890 00009DB0  2C 08 00 00 */	cmpwi r8, 0
/* 8000E894 00009DB4  41 82 00 30 */	beq lbl_8000E8C4
/* 8000E898 00009DB8  38 03 01 40 */	addi r0, r3, 0x140
/* 8000E89C 00009DBC  80 A9 00 00 */	lwz r5, 0(r9)
/* 8000E8A0 00009DC0  7C 83 00 50 */	subf r4, r3, r0
/* 8000E8A4 00009DC4  38 04 00 04 */	addi r0, r4, 4
/* 8000E8A8 00009DC8  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 8000E8AC 00009DCC  38 85 00 01 */	addi r4, r5, 1
/* 8000E8B0 00009DD0  3C C6 90 A3 */	addis r6, r6, 0x90a3
/* 8000E8B4 00009DD4  54 A0 10 3A */	slwi r0, r5, 2
/* 8000E8B8 00009DD8  7C C8 01 2E */	stwx r6, r8, r0
/* 8000E8BC 00009DDC  90 89 00 00 */	stw r4, 0(r9)
/* 8000E8C0 00009DE0  48 00 00 50 */	b lbl_8000E910
lbl_8000E8C4:
/* 8000E8C4 00009DE4  80 89 00 00 */	lwz r4, 0(r9)
/* 8000E8C8 00009DE8  38 04 00 01 */	addi r0, r4, 1
/* 8000E8CC 00009DEC  90 09 00 00 */	stw r0, 0(r9)
/* 8000E8D0 00009DF0  48 00 00 40 */	b lbl_8000E910
lbl_8000E8D4:
/* 8000E8D4 00009DF4  2C 08 00 00 */	cmpwi r8, 0
/* 8000E8D8 00009DF8  41 82 00 2C */	beq lbl_8000E904
/* 8000E8DC 00009DFC  80 0A 00 00 */	lwz r0, 0(r10)
/* 8000E8E0 00009E00  80 A9 00 00 */	lwz r5, 0(r9)
/* 8000E8E4 00009E04  54 00 80 1E */	slwi r0, r0, 0x10
/* 8000E8E8 00009E08  64 06 7C A0 */	oris r6, r0, 0x7ca0
/* 8000E8EC 00009E0C  38 85 00 01 */	addi r4, r5, 1
/* 8000E8F0 00009E10  60 C6 2B 78 */	ori r6, r6, 0x2b78
/* 8000E8F4 00009E14  54 A0 10 3A */	slwi r0, r5, 2
/* 8000E8F8 00009E18  7C C8 01 2E */	stwx r6, r8, r0
/* 8000E8FC 00009E1C  90 89 00 00 */	stw r4, 0(r9)
/* 8000E900 00009E20  48 00 00 10 */	b lbl_8000E910
lbl_8000E904:
/* 8000E904 00009E24  80 89 00 00 */	lwz r4, 0(r9)
/* 8000E908 00009E28  38 04 00 01 */	addi r0, r4, 1
/* 8000E90C 00009E2C  90 09 00 00 */	stw r0, 0(r9)
lbl_8000E910:
/* 8000E910 00009E30  3C 63 00 10 */	addis r3, r3, 0x10
/* 8000E914 00009E34  80 03 24 20 */	lwz r0, 0x2420(r3)
/* 8000E918 00009E38  60 00 00 02 */	ori r0, r0, 2
/* 8000E91C 00009E3C  90 03 24 20 */	stw r0, 0x2420(r3)
lbl_8000E920:
/* 8000E920 00009E40  38 60 00 01 */	li r3, 1
/* 8000E924 00009E44  4E 80 00 20 */	blr 
