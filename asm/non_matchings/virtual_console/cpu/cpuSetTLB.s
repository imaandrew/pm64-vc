glabel cpuSetTLB
/* 8000D5F0 00008B10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000D5F4 00008B14  7C 08 02 A6 */	mflr r0
/* 8000D5F8 00008B18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000D5FC 00008B1C  39 61 00 30 */	addi r11, r1, 0x30
/* 8000D600 00008B20  48 14 F3 41 */	bl __save_registersr26
/* 8000D604 00008B24  1F A4 00 28 */	mulli r29, r4, 0x28
/* 8000D608 00008B28  3C 80 02 00 */	lis r4, 0x01FFE000@ha
/* 8000D60C 00008B2C  80 A3 0A 74 */	lwz r5, 0xa74(r3)
/* 8000D610 00008B30  38 00 00 00 */	li r0, 0
/* 8000D614 00008B34  38 84 E0 00 */	addi r4, r4, 0x01FFE000@l
/* 8000D618 00008B38  7F C3 EA 14 */	add r30, r3, r29
/* 8000D61C 00008B3C  7C A4 20 38 */	and r4, r5, r4
/* 8000D620 00008B40  7C 7A 1B 78 */	mr r26, r3
/* 8000D624 00008B44  90 9E 02 64 */	stw r4, 0x264(r30)
/* 8000D628 00008B48  90 1E 02 60 */	stw r0, 0x260(r30)
/* 8000D62C 00008B4C  80 03 0A 98 */	lwz r0, 0xa98(r3)
/* 8000D630 00008B50  80 83 0A 9C */	lwz r4, 0xa9c(r3)
/* 8000D634 00008B54  90 9E 02 5C */	stw r4, 0x25c(r30)
/* 8000D638 00008B58  90 1E 02 58 */	stw r0, 0x258(r30)
/* 8000D63C 00008B5C  80 03 0A 5C */	lwz r0, 0xa5c(r3)
/* 8000D640 00008B60  80 A3 0A 58 */	lwz r5, 0xa58(r3)
/* 8000D644 00008B64  54 04 07 BD */	rlwinm. r4, r0, 0, 0x1e, 0x1e
/* 8000D648 00008B68  90 1E 02 4C */	stw r0, 0x24c(r30)
/* 8000D64C 00008B6C  90 BE 02 48 */	stw r5, 0x248(r30)
/* 8000D650 00008B70  80 A3 0A 60 */	lwz r5, 0xa60(r3)
/* 8000D654 00008B74  80 C3 0A 64 */	lwz r6, 0xa64(r3)
/* 8000D658 00008B78  90 DE 02 54 */	stw r6, 0x254(r30)
/* 8000D65C 00008B7C  90 BE 02 50 */	stw r5, 0x250(r30)
/* 8000D660 00008B80  40 82 00 10 */	bne lbl_8000D670
/* 8000D664 00008B84  80 BE 02 54 */	lwz r5, 0x254(r30)
/* 8000D668 00008B88  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 8000D66C 00008B8C  41 82 04 80 */	beq lbl_8000DAEC
lbl_8000D670:
/* 8000D670 00008B90  3C A0 00 08 */	lis r5, 0x0007E000@ha
/* 8000D674 00008B94  81 1E 02 64 */	lwz r8, 0x264(r30)
/* 8000D678 00008B98  38 C5 E0 00 */	addi r6, r5, 0x0007E000@l
/* 8000D67C 00008B9C  80 FE 02 60 */	lwz r7, 0x260(r30)
/* 8000D680 00008BA0  7D 06 32 78 */	xor r6, r8, r6
/* 8000D684 00008BA4  7C C6 3B 79 */	or. r6, r6, r7
/* 8000D688 00008BA8  41 82 00 E4 */	beq lbl_8000D76C
/* 8000D68C 00008BAC  38 C5 E0 00 */	addi r6, r5, -8192
/* 8000D690 00008BB0  38 A0 00 00 */	li r5, 0
/* 8000D694 00008BB4  7C C6 40 10 */	subfc r6, r6, r8
/* 8000D698 00008BB8  7C A5 39 10 */	subfe r5, r5, r7
/* 8000D69C 00008BBC  7C A6 31 10 */	subfe r5, r6, r6
/* 8000D6A0 00008BC0  7C A5 00 D1 */	neg. r5, r5
/* 8000D6A4 00008BC4  41 82 00 50 */	beq lbl_8000D6F4
/* 8000D6A8 00008BC8  69 05 60 00 */	xori r5, r8, 0x6000
/* 8000D6AC 00008BCC  7C A5 3B 79 */	or. r5, r5, r7
/* 8000D6B0 00008BD0  41 82 00 AC */	beq lbl_8000D75C
/* 8000D6B4 00008BD4  38 C0 60 00 */	li r6, 0x6000
/* 8000D6B8 00008BD8  38 A0 00 00 */	li r5, 0
/* 8000D6BC 00008BDC  7C C6 40 10 */	subfc r6, r6, r8
/* 8000D6C0 00008BE0  7C A5 39 10 */	subfe r5, r5, r7
/* 8000D6C4 00008BE4  7C A6 31 10 */	subfe r5, r6, r6
/* 8000D6C8 00008BE8  7C A5 00 D1 */	neg. r5, r5
/* 8000D6CC 00008BEC  41 82 00 10 */	beq lbl_8000D6DC
/* 8000D6D0 00008BF0  7D 05 3B 79 */	or. r5, r8, r7
/* 8000D6D4 00008BF4  41 82 00 80 */	beq lbl_8000D754
/* 8000D6D8 00008BF8  48 00 00 B4 */	b lbl_8000D78C
lbl_8000D6DC:
/* 8000D6DC 00008BFC  3C A0 00 02 */	lis r5, 0x0001E000@ha
/* 8000D6E0 00008C00  38 A5 E0 00 */	addi r5, r5, 0x0001E000@l
/* 8000D6E4 00008C04  7D 05 2A 78 */	xor r5, r8, r5
/* 8000D6E8 00008C08  7C A5 3B 79 */	or. r5, r5, r7
/* 8000D6EC 00008C0C  41 82 00 78 */	beq lbl_8000D764
/* 8000D6F0 00008C10  48 00 00 9C */	b lbl_8000D78C
lbl_8000D6F4:
/* 8000D6F4 00008C14  3C A0 00 80 */	lis r5, 0x007FE000@ha
/* 8000D6F8 00008C18  38 C5 E0 00 */	addi r6, r5, 0x007FE000@l
/* 8000D6FC 00008C1C  7D 06 32 78 */	xor r6, r8, r6
/* 8000D700 00008C20  7C C6 3B 79 */	or. r6, r6, r7
/* 8000D704 00008C24  41 82 00 78 */	beq lbl_8000D77C
/* 8000D708 00008C28  38 C5 E0 00 */	addi r6, r5, -8192
/* 8000D70C 00008C2C  38 A0 00 00 */	li r5, 0
/* 8000D710 00008C30  7C C6 40 10 */	subfc r6, r6, r8
/* 8000D714 00008C34  7C A5 39 10 */	subfe r5, r5, r7
/* 8000D718 00008C38  7C A6 31 10 */	subfe r5, r6, r6
/* 8000D71C 00008C3C  7C A5 00 D1 */	neg. r5, r5
/* 8000D720 00008C40  41 82 00 1C */	beq lbl_8000D73C
/* 8000D724 00008C44  3C A0 00 20 */	lis r5, 0x001FE000@ha
/* 8000D728 00008C48  38 A5 E0 00 */	addi r5, r5, 0x001FE000@l
/* 8000D72C 00008C4C  7D 05 2A 78 */	xor r5, r8, r5
/* 8000D730 00008C50  7C A5 3B 79 */	or. r5, r5, r7
/* 8000D734 00008C54  41 82 00 40 */	beq lbl_8000D774
/* 8000D738 00008C58  48 00 00 54 */	b lbl_8000D78C
lbl_8000D73C:
/* 8000D73C 00008C5C  3C A0 02 00 */	lis r5, 0x01FFE000@ha
/* 8000D740 00008C60  38 A5 E0 00 */	addi r5, r5, 0x01FFE000@l
/* 8000D744 00008C64  7D 05 2A 78 */	xor r5, r8, r5
/* 8000D748 00008C68  7C A5 3B 79 */	or. r5, r5, r7
/* 8000D74C 00008C6C  41 82 00 38 */	beq lbl_8000D784
/* 8000D750 00008C70  48 00 00 3C */	b lbl_8000D78C
lbl_8000D754:
/* 8000D754 00008C74  3B 80 10 00 */	li r28, 0x1000
/* 8000D758 00008C78  48 00 00 38 */	b lbl_8000D790
lbl_8000D75C:
/* 8000D75C 00008C7C  3B 80 40 00 */	li r28, 0x4000
/* 8000D760 00008C80  48 00 00 30 */	b lbl_8000D790
lbl_8000D764:
/* 8000D764 00008C84  3F 80 00 01 */	lis r28, 1
/* 8000D768 00008C88  48 00 00 28 */	b lbl_8000D790
lbl_8000D76C:
/* 8000D76C 00008C8C  3F 80 00 04 */	lis r28, 4
/* 8000D770 00008C90  48 00 00 20 */	b lbl_8000D790
lbl_8000D774:
/* 8000D774 00008C94  3F 80 00 10 */	lis r28, 0x10
/* 8000D778 00008C98  48 00 00 18 */	b lbl_8000D790
lbl_8000D77C:
/* 8000D77C 00008C9C  3F 80 00 40 */	lis r28, 0x40
/* 8000D780 00008CA0  48 00 00 10 */	b lbl_8000D790
lbl_8000D784:
/* 8000D784 00008CA4  3F 80 01 00 */	lis r28, 0x100
/* 8000D788 00008CA8  48 00 00 08 */	b lbl_8000D790
lbl_8000D78C:
/* 8000D78C 00008CAC  3B 80 00 00 */	li r28, 0
lbl_8000D790:
/* 8000D790 00008CB0  80 BE 02 5C */	lwz r5, 0x25c(r30)
/* 8000D794 00008CB4  2C 04 00 00 */	cmpwi r4, 0
/* 8000D798 00008CB8  54 BB 00 24 */	rlwinm r27, r5, 0, 0, 0x12
/* 8000D79C 00008CBC  41 82 01 60 */	beq lbl_8000D8FC
/* 8000D7A0 00008CC0  7F E3 EA 14 */	add r31, r3, r29
/* 8000D7A4 00008CC4  54 06 30 26 */	rlwinm r6, r0, 6, 0, 0x13
/* 8000D7A8 00008CC8  80 1F 02 6C */	lwz r0, 0x26c(r31)
/* 8000D7AC 00008CCC  54 07 06 3E */	clrlwi r7, r0, 0x18
/* 8000D7B0 00008CD0  2C 07 00 FF */	cmpwi r7, 0xff
/* 8000D7B4 00008CD4  90 E1 00 08 */	stw r7, 8(r1)
/* 8000D7B8 00008CD8  41 82 00 EC */	beq lbl_8000D8A4
/* 8000D7BC 00008CDC  54 E0 10 3A */	slwi r0, r7, 2
/* 8000D7C0 00008CE0  7C 83 02 14 */	add r4, r3, r0
/* 8000D7C4 00008CE4  80 84 0B 60 */	lwz r4, 0xb60(r4)
/* 8000D7C8 00008CE8  80 A4 00 48 */	lwz r5, 0x48(r4)
/* 8000D7CC 00008CEC  81 04 00 44 */	lwz r8, 0x44(r4)
/* 8000D7D0 00008CF0  38 85 00 01 */	addi r4, r5, 1
/* 8000D7D4 00008CF4  7C 08 28 40 */	cmplw r8, r5
/* 8000D7D8 00008CF8  7C 88 20 50 */	subf r4, r8, r4
/* 8000D7DC 00008CFC  41 81 00 B4 */	bgt lbl_8000D890
/* 8000D7E0 00008D00  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 8000D7E4 00008D04  7C 09 03 A6 */	mtctr r0
/* 8000D7E8 00008D08  41 82 00 90 */	beq lbl_8000D878
lbl_8000D7EC:
/* 8000D7EC 00008D0C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D7F0 00008D10  7C A3 42 14 */	add r5, r3, r8
/* 8000D7F4 00008D14  39 08 00 01 */	addi r8, r8, 1
/* 8000D7F8 00008D18  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D7FC 00008D1C  7C A3 42 14 */	add r5, r3, r8
/* 8000D800 00008D20  39 08 00 01 */	addi r8, r8, 1
/* 8000D804 00008D24  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D808 00008D28  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D80C 00008D2C  7C A3 42 14 */	add r5, r3, r8
/* 8000D810 00008D30  39 08 00 01 */	addi r8, r8, 1
/* 8000D814 00008D34  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D818 00008D38  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D81C 00008D3C  7C A3 42 14 */	add r5, r3, r8
/* 8000D820 00008D40  39 08 00 01 */	addi r8, r8, 1
/* 8000D824 00008D44  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D828 00008D48  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D82C 00008D4C  7C A3 42 14 */	add r5, r3, r8
/* 8000D830 00008D50  39 08 00 01 */	addi r8, r8, 1
/* 8000D834 00008D54  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D838 00008D58  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D83C 00008D5C  7C A3 42 14 */	add r5, r3, r8
/* 8000D840 00008D60  39 08 00 01 */	addi r8, r8, 1
/* 8000D844 00008D64  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D848 00008D68  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D84C 00008D6C  7C A3 42 14 */	add r5, r3, r8
/* 8000D850 00008D70  39 08 00 01 */	addi r8, r8, 1
/* 8000D854 00008D74  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D858 00008D78  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D85C 00008D7C  7C A3 42 14 */	add r5, r3, r8
/* 8000D860 00008D80  39 08 00 01 */	addi r8, r8, 1
/* 8000D864 00008D84  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D868 00008D88  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D86C 00008D8C  42 00 FF 80 */	bdnz lbl_8000D7EC
/* 8000D870 00008D90  70 84 00 07 */	andi. r4, r4, 7
/* 8000D874 00008D94  41 82 00 1C */	beq lbl_8000D890
lbl_8000D878:
/* 8000D878 00008D98  7C 89 03 A6 */	mtctr r4
lbl_8000D87C:
/* 8000D87C 00008D9C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000D880 00008DA0  7C A3 42 14 */	add r5, r3, r8
/* 8000D884 00008DA4  39 08 00 01 */	addi r8, r8, 1
/* 8000D888 00008DA8  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000D88C 00008DAC  42 00 FF F0 */	bdnz lbl_8000D87C
lbl_8000D890:
/* 8000D890 00008DB0  54 E0 10 3A */	slwi r0, r7, 2
/* 8000D894 00008DB4  38 80 00 00 */	li r4, 0
/* 8000D898 00008DB8  7C 63 02 14 */	add r3, r3, r0
/* 8000D89C 00008DBC  80 63 0B 60 */	lwz r3, 0xb60(r3)
/* 8000D8A0 00008DC0  90 83 00 40 */	stw r4, 0x40(r3)
lbl_8000D8A4:
/* 8000D8A4 00008DC4  7F 43 D3 78 */	mr r3, r26
/* 8000D8A8 00008DC8  7F 65 DB 78 */	mr r5, r27
/* 8000D8AC 00008DCC  7F 87 E3 78 */	mr r7, r28
/* 8000D8B0 00008DD0  38 81 00 08 */	addi r4, r1, 8
/* 8000D8B4 00008DD4  4B FF FB C1 */	bl cpuCreateTLBDevice
/* 8000D8B8 00008DD8  2C 03 00 00 */	cmpwi r3, 0
/* 8000D8BC 00008DDC  40 82 00 0C */	bne lbl_8000D8C8
/* 8000D8C0 00008DE0  38 60 00 00 */	li r3, 0
/* 8000D8C4 00008DE4  48 00 04 30 */	b lbl_8000DCF4
lbl_8000D8C8:
/* 8000D8C8 00008DE8  80 E1 00 08 */	lwz r7, 8(r1)
/* 8000D8CC 00008DEC  38 00 FF 00 */	li r0, -256
/* 8000D8D0 00008DF0  80 BF 02 6C */	lwz r5, 0x26c(r31)
/* 8000D8D4 00008DF4  38 60 FF FF */	li r3, -1
/* 8000D8D8 00008DF8  80 9F 02 68 */	lwz r4, 0x268(r31)
/* 8000D8DC 00008DFC  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 8000D8E0 00008E00  7C A0 00 38 */	and r0, r5, r0
/* 8000D8E4 00008E04  50 E0 06 3E */	rlwimi r0, r7, 0, 0x18, 0x1f
/* 8000D8E8 00008E08  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 8000D8EC 00008E0C  7C 83 18 38 */	and r3, r4, r3
/* 8000D8F0 00008E10  90 1F 02 6C */	stw r0, 0x26c(r31)
/* 8000D8F4 00008E14  7C A0 1B 78 */	or r0, r5, r3
/* 8000D8F8 00008E18  90 1F 02 68 */	stw r0, 0x268(r31)
lbl_8000D8FC:
/* 8000D8FC 00008E1C  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 8000D900 00008E20  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8000D904 00008E24  41 82 01 64 */	beq lbl_8000DA68
/* 8000D908 00008E28  7F FA EA 14 */	add r31, r26, r29
/* 8000D90C 00008E2C  54 66 30 26 */	rlwinm r6, r3, 6, 0, 0x13
/* 8000D910 00008E30  80 1F 02 6C */	lwz r0, 0x26c(r31)
/* 8000D914 00008E34  54 05 86 3E */	rlwinm r5, r0, 0x10, 0x18, 0x1f
/* 8000D918 00008E38  2C 05 00 FF */	cmpwi r5, 0xff
/* 8000D91C 00008E3C  90 A1 00 08 */	stw r5, 8(r1)
/* 8000D920 00008E40  41 82 00 EC */	beq lbl_8000DA0C
/* 8000D924 00008E44  54 A0 10 3A */	slwi r0, r5, 2
/* 8000D928 00008E48  7C 7A 02 14 */	add r3, r26, r0
/* 8000D92C 00008E4C  80 63 0B 60 */	lwz r3, 0xb60(r3)
/* 8000D930 00008E50  80 83 00 48 */	lwz r4, 0x48(r3)
/* 8000D934 00008E54  80 E3 00 44 */	lwz r7, 0x44(r3)
/* 8000D938 00008E58  38 64 00 01 */	addi r3, r4, 1
/* 8000D93C 00008E5C  7C 07 20 40 */	cmplw r7, r4
/* 8000D940 00008E60  7C 67 18 50 */	subf r3, r7, r3
/* 8000D944 00008E64  41 81 00 B4 */	bgt lbl_8000D9F8
/* 8000D948 00008E68  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 8000D94C 00008E6C  7C 09 03 A6 */	mtctr r0
/* 8000D950 00008E70  41 82 00 90 */	beq lbl_8000D9E0
lbl_8000D954:
/* 8000D954 00008E74  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D958 00008E78  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D95C 00008E7C  38 E7 00 01 */	addi r7, r7, 1
/* 8000D960 00008E80  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D964 00008E84  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D968 00008E88  38 E7 00 01 */	addi r7, r7, 1
/* 8000D96C 00008E8C  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D970 00008E90  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D974 00008E94  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D978 00008E98  38 E7 00 01 */	addi r7, r7, 1
/* 8000D97C 00008E9C  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D980 00008EA0  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D984 00008EA4  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D988 00008EA8  38 E7 00 01 */	addi r7, r7, 1
/* 8000D98C 00008EAC  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D990 00008EB0  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D994 00008EB4  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D998 00008EB8  38 E7 00 01 */	addi r7, r7, 1
/* 8000D99C 00008EBC  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D9A0 00008EC0  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D9A4 00008EC4  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D9A8 00008EC8  38 E7 00 01 */	addi r7, r7, 1
/* 8000D9AC 00008ECC  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D9B0 00008ED0  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D9B4 00008ED4  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D9B8 00008ED8  38 E7 00 01 */	addi r7, r7, 1
/* 8000D9BC 00008EDC  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D9C0 00008EE0  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D9C4 00008EE4  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D9C8 00008EE8  38 E7 00 01 */	addi r7, r7, 1
/* 8000D9CC 00008EEC  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D9D0 00008EF0  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D9D4 00008EF4  42 00 FF 80 */	bdnz lbl_8000D954
/* 8000D9D8 00008EF8  70 63 00 07 */	andi. r3, r3, 7
/* 8000D9DC 00008EFC  41 82 00 1C */	beq lbl_8000D9F8
lbl_8000D9E0:
/* 8000D9E0 00008F00  7C 69 03 A6 */	mtctr r3
lbl_8000D9E4:
/* 8000D9E4 00008F04  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8000D9E8 00008F08  7C 9A 3A 14 */	add r4, r26, r7
/* 8000D9EC 00008F0C  38 E7 00 01 */	addi r7, r7, 1
/* 8000D9F0 00008F10  98 04 0F 60 */	stb r0, 0xf60(r4)
/* 8000D9F4 00008F14  42 00 FF F0 */	bdnz lbl_8000D9E4
lbl_8000D9F8:
/* 8000D9F8 00008F18  54 A0 10 3A */	slwi r0, r5, 2
/* 8000D9FC 00008F1C  38 80 00 00 */	li r4, 0
/* 8000DA00 00008F20  7C 7A 02 14 */	add r3, r26, r0
/* 8000DA04 00008F24  80 63 0B 60 */	lwz r3, 0xb60(r3)
/* 8000DA08 00008F28  90 83 00 40 */	stw r4, 0x40(r3)
lbl_8000DA0C:
/* 8000DA0C 00008F2C  7F 43 D3 78 */	mr r3, r26
/* 8000DA10 00008F30  7F 87 E3 78 */	mr r7, r28
/* 8000DA14 00008F34  38 81 00 08 */	addi r4, r1, 8
/* 8000DA18 00008F38  7C BB E2 14 */	add r5, r27, r28
/* 8000DA1C 00008F3C  4B FF FA 59 */	bl cpuCreateTLBDevice
/* 8000DA20 00008F40  2C 03 00 00 */	cmpwi r3, 0
/* 8000DA24 00008F44  40 82 00 0C */	bne lbl_8000DA30
/* 8000DA28 00008F48  38 60 00 00 */	li r3, 0
/* 8000DA2C 00008F4C  48 00 02 C8 */	b lbl_8000DCF4
lbl_8000DA30:
/* 8000DA30 00008F50  80 81 00 08 */	lwz r4, 8(r1)
/* 8000DA34 00008F54  3C 60 FF 01 */	lis r3, 0xFF00FFFF@ha
/* 8000DA38 00008F58  38 03 FF FF */	addi r0, r3, 0xFF00FFFF@l
/* 8000DA3C 00008F5C  80 BF 02 6C */	lwz r5, 0x26c(r31)
/* 8000DA40 00008F60  54 86 82 1E */	rlwinm r6, r4, 0x10, 8, 0xf
/* 8000DA44 00008F64  80 9F 02 68 */	lwz r4, 0x268(r31)
/* 8000DA48 00008F68  7C A0 00 38 */	and r0, r5, r0
/* 8000DA4C 00008F6C  38 60 FF FF */	li r3, -1
/* 8000DA50 00008F70  7C C0 03 78 */	or r0, r6, r0
/* 8000DA54 00008F74  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 8000DA58 00008F78  7C 83 18 38 */	and r3, r4, r3
/* 8000DA5C 00008F7C  90 1F 02 6C */	stw r0, 0x26c(r31)
/* 8000DA60 00008F80  7C A0 1B 78 */	or r0, r5, r3
/* 8000DA64 00008F84  90 1F 02 68 */	stw r0, 0x268(r31)
lbl_8000DA68:
/* 8000DA68 00008F88  3C 1B 90 00 */	addis r0, r27, 0x9000
/* 8000DA6C 00008F8C  28 00 00 00 */	cmplwi r0, 0
/* 8000DA70 00008F90  40 82 02 80 */	bne lbl_8000DCF0
/* 8000DA74 00008F94  80 6D 86 E4 */	lwz r3, lbl_80246B64@sda21(r13)
/* 8000DA78 00008F98  38 C0 FF FF */	li r6, -1
/* 8000DA7C 00008F9C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8000DA80 00008FA0  3C 03 B1 B9 */	addis r0, r3, 0xb1b9
/* 8000DA84 00008FA4  28 00 45 4A */	cmplwi r0, 0x454a
/* 8000DA88 00008FA8  40 82 00 10 */	bne lbl_8000DA98
/* 8000DA8C 00008FAC  3C 60 10 03 */	lis r3, 0x10034B70@ha
/* 8000DA90 00008FB0  38 C3 4B 70 */	addi r6, r3, 0x10034B70@l
/* 8000DA94 00008FB4  48 00 00 28 */	b lbl_8000DABC
lbl_8000DA98:
/* 8000DA98 00008FB8  28 00 45 45 */	cmplwi r0, 0x4545
/* 8000DA9C 00008FBC  40 82 00 10 */	bne lbl_8000DAAC
/* 8000DAA0 00008FC0  3C 60 10 03 */	lis r3, 0x10034B30@ha
/* 8000DAA4 00008FC4  38 C3 4B 30 */	addi r6, r3, 0x10034B30@l
/* 8000DAA8 00008FC8  48 00 00 14 */	b lbl_8000DABC
lbl_8000DAAC:
/* 8000DAAC 00008FCC  28 00 45 50 */	cmplwi r0, 0x4550
/* 8000DAB0 00008FD0  40 82 00 0C */	bne lbl_8000DABC
/* 8000DAB4 00008FD4  3C 60 10 03 */	lis r3, 0x100329F0@ha
/* 8000DAB8 00008FD8  38 C3 29 F0 */	addi r6, r3, 0x100329F0@l
lbl_8000DABC:
/* 8000DABC 00008FDC  3C 06 00 01 */	addis r0, r6, 1
/* 8000DAC0 00008FE0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8000DAC4 00008FE4  41 82 02 2C */	beq lbl_8000DCF0
/* 8000DAC8 00008FE8  7F 43 D3 78 */	mr r3, r26
/* 8000DACC 00008FEC  38 80 00 00 */	li r4, 0
/* 8000DAD0 00008FF0  3C A0 7F 00 */	lis r5, 0x7f00
/* 8000DAD4 00008FF4  3C E0 01 00 */	lis r7, 0x100
/* 8000DAD8 00008FF8  4B FF F9 9D */	bl cpuCreateTLBDevice
/* 8000DADC 00008FFC  2C 03 00 00 */	cmpwi r3, 0
/* 8000DAE0 00009000  40 82 02 10 */	bne lbl_8000DCF0
/* 8000DAE4 00009004  38 60 00 00 */	li r3, 0
/* 8000DAE8 00009008  48 00 02 0C */	b lbl_8000DCF4
lbl_8000DAEC:
/* 8000DAEC 0000900C  80 1E 02 6C */	lwz r0, 0x26c(r30)
/* 8000DAF0 00009010  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 8000DAF4 00009014  2C 06 00 FF */	cmpwi r6, 0xff
/* 8000DAF8 00009018  90 C1 00 08 */	stw r6, 8(r1)
/* 8000DAFC 0000901C  41 82 00 EC */	beq lbl_8000DBE8
/* 8000DB00 00009020  54 C0 10 3A */	slwi r0, r6, 2
/* 8000DB04 00009024  7C 83 02 14 */	add r4, r3, r0
/* 8000DB08 00009028  80 84 0B 60 */	lwz r4, 0xb60(r4)
/* 8000DB0C 0000902C  80 A4 00 48 */	lwz r5, 0x48(r4)
/* 8000DB10 00009030  80 E4 00 44 */	lwz r7, 0x44(r4)
/* 8000DB14 00009034  38 85 00 01 */	addi r4, r5, 1
/* 8000DB18 00009038  7C 07 28 40 */	cmplw r7, r5
/* 8000DB1C 0000903C  7C 87 20 50 */	subf r4, r7, r4
/* 8000DB20 00009040  41 81 00 B4 */	bgt lbl_8000DBD4
/* 8000DB24 00009044  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 8000DB28 00009048  7C 09 03 A6 */	mtctr r0
/* 8000DB2C 0000904C  41 82 00 90 */	beq lbl_8000DBBC
lbl_8000DB30:
/* 8000DB30 00009050  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DB34 00009054  7C A3 3A 14 */	add r5, r3, r7
/* 8000DB38 00009058  38 E7 00 01 */	addi r7, r7, 1
/* 8000DB3C 0000905C  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DB40 00009060  7C A3 3A 14 */	add r5, r3, r7
/* 8000DB44 00009064  38 E7 00 01 */	addi r7, r7, 1
/* 8000DB48 00009068  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DB4C 0000906C  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DB50 00009070  7C A3 3A 14 */	add r5, r3, r7
/* 8000DB54 00009074  38 E7 00 01 */	addi r7, r7, 1
/* 8000DB58 00009078  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DB5C 0000907C  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DB60 00009080  7C A3 3A 14 */	add r5, r3, r7
/* 8000DB64 00009084  38 E7 00 01 */	addi r7, r7, 1
/* 8000DB68 00009088  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DB6C 0000908C  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DB70 00009090  7C A3 3A 14 */	add r5, r3, r7
/* 8000DB74 00009094  38 E7 00 01 */	addi r7, r7, 1
/* 8000DB78 00009098  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DB7C 0000909C  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DB80 000090A0  7C A3 3A 14 */	add r5, r3, r7
/* 8000DB84 000090A4  38 E7 00 01 */	addi r7, r7, 1
/* 8000DB88 000090A8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DB8C 000090AC  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DB90 000090B0  7C A3 3A 14 */	add r5, r3, r7
/* 8000DB94 000090B4  38 E7 00 01 */	addi r7, r7, 1
/* 8000DB98 000090B8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DB9C 000090BC  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DBA0 000090C0  7C A3 3A 14 */	add r5, r3, r7
/* 8000DBA4 000090C4  38 E7 00 01 */	addi r7, r7, 1
/* 8000DBA8 000090C8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DBAC 000090CC  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DBB0 000090D0  42 00 FF 80 */	bdnz lbl_8000DB30
/* 8000DBB4 000090D4  70 84 00 07 */	andi. r4, r4, 7
/* 8000DBB8 000090D8  41 82 00 1C */	beq lbl_8000DBD4
lbl_8000DBBC:
/* 8000DBBC 000090DC  7C 89 03 A6 */	mtctr r4
lbl_8000DBC0:
/* 8000DBC0 000090E0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DBC4 000090E4  7C A3 3A 14 */	add r5, r3, r7
/* 8000DBC8 000090E8  38 E7 00 01 */	addi r7, r7, 1
/* 8000DBCC 000090EC  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DBD0 000090F0  42 00 FF F0 */	bdnz lbl_8000DBC0
lbl_8000DBD4:
/* 8000DBD4 000090F4  54 C0 10 3A */	slwi r0, r6, 2
/* 8000DBD8 000090F8  38 A0 00 00 */	li r5, 0
/* 8000DBDC 000090FC  7C 83 02 14 */	add r4, r3, r0
/* 8000DBE0 00009100  80 84 0B 60 */	lwz r4, 0xb60(r4)
/* 8000DBE4 00009104  90 A4 00 40 */	stw r5, 0x40(r4)
lbl_8000DBE8:
/* 8000DBE8 00009108  80 1E 02 6C */	lwz r0, 0x26c(r30)
/* 8000DBEC 0000910C  54 06 86 3E */	rlwinm r6, r0, 0x10, 0x18, 0x1f
/* 8000DBF0 00009110  2C 06 00 FF */	cmpwi r6, 0xff
/* 8000DBF4 00009114  90 C1 00 08 */	stw r6, 8(r1)
/* 8000DBF8 00009118  41 82 00 EC */	beq lbl_8000DCE4
/* 8000DBFC 0000911C  54 C0 10 3A */	slwi r0, r6, 2
/* 8000DC00 00009120  7C 83 02 14 */	add r4, r3, r0
/* 8000DC04 00009124  80 84 0B 60 */	lwz r4, 0xb60(r4)
/* 8000DC08 00009128  80 A4 00 48 */	lwz r5, 0x48(r4)
/* 8000DC0C 0000912C  80 E4 00 44 */	lwz r7, 0x44(r4)
/* 8000DC10 00009130  38 85 00 01 */	addi r4, r5, 1
/* 8000DC14 00009134  7C 07 28 40 */	cmplw r7, r5
/* 8000DC18 00009138  7C 87 20 50 */	subf r4, r7, r4
/* 8000DC1C 0000913C  41 81 00 B4 */	bgt lbl_8000DCD0
/* 8000DC20 00009140  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 8000DC24 00009144  7C 09 03 A6 */	mtctr r0
/* 8000DC28 00009148  41 82 00 90 */	beq lbl_8000DCB8
lbl_8000DC2C:
/* 8000DC2C 0000914C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DC30 00009150  7C A3 3A 14 */	add r5, r3, r7
/* 8000DC34 00009154  38 E7 00 01 */	addi r7, r7, 1
/* 8000DC38 00009158  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DC3C 0000915C  7C A3 3A 14 */	add r5, r3, r7
/* 8000DC40 00009160  38 E7 00 01 */	addi r7, r7, 1
/* 8000DC44 00009164  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DC48 00009168  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DC4C 0000916C  7C A3 3A 14 */	add r5, r3, r7
/* 8000DC50 00009170  38 E7 00 01 */	addi r7, r7, 1
/* 8000DC54 00009174  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DC58 00009178  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DC5C 0000917C  7C A3 3A 14 */	add r5, r3, r7
/* 8000DC60 00009180  38 E7 00 01 */	addi r7, r7, 1
/* 8000DC64 00009184  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DC68 00009188  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DC6C 0000918C  7C A3 3A 14 */	add r5, r3, r7
/* 8000DC70 00009190  38 E7 00 01 */	addi r7, r7, 1
/* 8000DC74 00009194  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DC78 00009198  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DC7C 0000919C  7C A3 3A 14 */	add r5, r3, r7
/* 8000DC80 000091A0  38 E7 00 01 */	addi r7, r7, 1
/* 8000DC84 000091A4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DC88 000091A8  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DC8C 000091AC  7C A3 3A 14 */	add r5, r3, r7
/* 8000DC90 000091B0  38 E7 00 01 */	addi r7, r7, 1
/* 8000DC94 000091B4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DC98 000091B8  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DC9C 000091BC  7C A3 3A 14 */	add r5, r3, r7
/* 8000DCA0 000091C0  38 E7 00 01 */	addi r7, r7, 1
/* 8000DCA4 000091C4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DCA8 000091C8  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DCAC 000091CC  42 00 FF 80 */	bdnz lbl_8000DC2C
/* 8000DCB0 000091D0  70 84 00 07 */	andi. r4, r4, 7
/* 8000DCB4 000091D4  41 82 00 1C */	beq lbl_8000DCD0
lbl_8000DCB8:
/* 8000DCB8 000091D8  7C 89 03 A6 */	mtctr r4
lbl_8000DCBC:
/* 8000DCBC 000091DC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000DCC0 000091E0  7C A3 3A 14 */	add r5, r3, r7
/* 8000DCC4 000091E4  38 E7 00 01 */	addi r7, r7, 1
/* 8000DCC8 000091E8  98 05 0F 60 */	stb r0, 0xf60(r5)
/* 8000DCCC 000091EC  42 00 FF F0 */	bdnz lbl_8000DCBC
lbl_8000DCD0:
/* 8000DCD0 000091F0  54 C0 10 3A */	slwi r0, r6, 2
/* 8000DCD4 000091F4  38 80 00 00 */	li r4, 0
/* 8000DCD8 000091F8  7C 63 02 14 */	add r3, r3, r0
/* 8000DCDC 000091FC  80 63 0B 60 */	lwz r3, 0xb60(r3)
/* 8000DCE0 00009200  90 83 00 40 */	stw r4, 0x40(r3)
lbl_8000DCE4:
/* 8000DCE4 00009204  38 00 FF FF */	li r0, -1
/* 8000DCE8 00009208  90 1E 02 6C */	stw r0, 0x26c(r30)
/* 8000DCEC 0000920C  90 1E 02 68 */	stw r0, 0x268(r30)
lbl_8000DCF0:
/* 8000DCF0 00009210  38 60 00 01 */	li r3, 1
lbl_8000DCF4:
/* 8000DCF4 00009214  39 61 00 30 */	addi r11, r1, 0x30
/* 8000DCF8 00009218  48 14 EC 95 */	bl __restore_registersr26
/* 8000DCFC 0000921C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000DD00 00009220  7C 08 03 A6 */	mtlr r0
/* 8000DD04 00009224  38 21 00 30 */	addi r1, r1, 0x30
/* 8000DD08 00009228  4E 80 00 20 */	blr 

