.include "macros.inc"

.section .text, "ax"

glabel IPCiProfInit
/* 800C0A94 000BBFB4  38 80 00 00 */	li r4, 0
/* 800C0A98 000BBFB8  3C A0 80 1F */	lis r5, lbl_801ED190@ha
/* 800C0A9C 000BBFBC  3C C0 80 1F */	lis r6, lbl_801ED110@ha
/* 800C0AA0 000BBFC0  38 00 00 02 */	li r0, 2
/* 800C0AA4 000BBFC4  90 8D 91 F0 */	stw r4, lbl_80247670@sda21(r13)
/* 800C0AA8 000BBFC8  38 A5 D1 90 */	addi r5, r5, lbl_801ED190@l
/* 800C0AAC 000BBFCC  38 C6 D1 10 */	addi r6, r6, lbl_801ED110@l
/* 800C0AB0 000BBFD0  38 60 FF FF */	li r3, -1
/* 800C0AB4 000BBFD4  90 8D 91 F4 */	stw r4, lbl_80247674@sda21(r13)
/* 800C0AB8 000BBFD8  7C 09 03 A6 */	mtctr r0
lbl_800C0ABC:
/* 800C0ABC 000BBFDC  90 85 00 00 */	stw r4, 0(r5)
/* 800C0AC0 000BBFE0  90 66 00 00 */	stw r3, 0(r6)
/* 800C0AC4 000BBFE4  90 85 00 04 */	stw r4, 4(r5)
/* 800C0AC8 000BBFE8  90 66 00 04 */	stw r3, 4(r6)
/* 800C0ACC 000BBFEC  90 85 00 08 */	stw r4, 8(r5)
/* 800C0AD0 000BBFF0  90 66 00 08 */	stw r3, 8(r6)
/* 800C0AD4 000BBFF4  90 85 00 0C */	stw r4, 0xc(r5)
/* 800C0AD8 000BBFF8  90 66 00 0C */	stw r3, 0xc(r6)
/* 800C0ADC 000BBFFC  90 85 00 10 */	stw r4, 0x10(r5)
/* 800C0AE0 000BC000  90 66 00 10 */	stw r3, 0x10(r6)
/* 800C0AE4 000BC004  90 85 00 14 */	stw r4, 0x14(r5)
/* 800C0AE8 000BC008  90 66 00 14 */	stw r3, 0x14(r6)
/* 800C0AEC 000BC00C  90 85 00 18 */	stw r4, 0x18(r5)
/* 800C0AF0 000BC010  90 66 00 18 */	stw r3, 0x18(r6)
/* 800C0AF4 000BC014  90 85 00 1C */	stw r4, 0x1c(r5)
/* 800C0AF8 000BC018  90 66 00 1C */	stw r3, 0x1c(r6)
/* 800C0AFC 000BC01C  90 85 00 20 */	stw r4, 0x20(r5)
/* 800C0B00 000BC020  90 66 00 20 */	stw r3, 0x20(r6)
/* 800C0B04 000BC024  90 85 00 24 */	stw r4, 0x24(r5)
/* 800C0B08 000BC028  90 66 00 24 */	stw r3, 0x24(r6)
/* 800C0B0C 000BC02C  90 85 00 28 */	stw r4, 0x28(r5)
/* 800C0B10 000BC030  90 66 00 28 */	stw r3, 0x28(r6)
/* 800C0B14 000BC034  90 85 00 2C */	stw r4, 0x2c(r5)
/* 800C0B18 000BC038  90 66 00 2C */	stw r3, 0x2c(r6)
/* 800C0B1C 000BC03C  90 85 00 30 */	stw r4, 0x30(r5)
/* 800C0B20 000BC040  90 66 00 30 */	stw r3, 0x30(r6)
/* 800C0B24 000BC044  90 85 00 34 */	stw r4, 0x34(r5)
/* 800C0B28 000BC048  90 66 00 34 */	stw r3, 0x34(r6)
/* 800C0B2C 000BC04C  90 85 00 38 */	stw r4, 0x38(r5)
/* 800C0B30 000BC050  90 66 00 38 */	stw r3, 0x38(r6)
/* 800C0B34 000BC054  90 85 00 3C */	stw r4, 0x3c(r5)
/* 800C0B38 000BC058  38 A5 00 40 */	addi r5, r5, 0x40
/* 800C0B3C 000BC05C  90 66 00 3C */	stw r3, 0x3c(r6)
/* 800C0B40 000BC060  38 C6 00 40 */	addi r6, r6, 0x40
/* 800C0B44 000BC064  42 00 FF 78 */	bdnz lbl_800C0ABC
/* 800C0B48 000BC068  4E 80 00 20 */	blr 

glabel IPCiProfQueueReq
/* 800C0B4C 000BC06C  80 CD 91 F0 */	lwz r6, lbl_80247670@sda21(r13)
/* 800C0B50 000BC070  3D 00 80 1F */	lis r8, lbl_801ED190@ha
/* 800C0B54 000BC074  80 AD 91 F4 */	lwz r5, lbl_80247674@sda21(r13)
/* 800C0B58 000BC078  3D 20 80 1F */	lis r9, lbl_801ED110@ha
/* 800C0B5C 000BC07C  38 C6 00 01 */	addi r6, r6, 1
/* 800C0B60 000BC080  38 00 00 20 */	li r0, 0x20
/* 800C0B64 000BC084  38 A5 00 01 */	addi r5, r5, 1
/* 800C0B68 000BC088  90 CD 91 F0 */	stw r6, lbl_80247670@sda21(r13)
/* 800C0B6C 000BC08C  39 08 D1 90 */	addi r8, r8, lbl_801ED190@l
/* 800C0B70 000BC090  39 29 D1 10 */	addi r9, r9, lbl_801ED110@l
/* 800C0B74 000BC094  90 AD 91 F4 */	stw r5, lbl_80247674@sda21(r13)
/* 800C0B78 000BC098  38 E0 00 00 */	li r7, 0
/* 800C0B7C 000BC09C  7C 09 03 A6 */	mtctr r0
lbl_800C0B80:
/* 800C0B80 000BC0A0  80 08 00 00 */	lwz r0, 0(r8)
/* 800C0B84 000BC0A4  2C 00 00 00 */	cmpwi r0, 0
/* 800C0B88 000BC0A8  40 82 00 30 */	bne lbl_800C0BB8
/* 800C0B8C 000BC0AC  80 09 00 00 */	lwz r0, 0(r9)
/* 800C0B90 000BC0B0  2C 00 FF FF */	cmpwi r0, -1
/* 800C0B94 000BC0B4  40 82 00 24 */	bne lbl_800C0BB8
/* 800C0B98 000BC0B8  3C C0 80 1F */	lis r6, lbl_801ED190@ha
/* 800C0B9C 000BC0BC  3C A0 80 1F */	lis r5, lbl_801ED110@ha
/* 800C0BA0 000BC0C0  54 E0 10 3A */	slwi r0, r7, 2
/* 800C0BA4 000BC0C4  38 C6 D1 90 */	addi r6, r6, lbl_801ED190@l
/* 800C0BA8 000BC0C8  38 A5 D1 10 */	addi r5, r5, lbl_801ED110@l
/* 800C0BAC 000BC0CC  7C 66 01 2E */	stwx r3, r6, r0
/* 800C0BB0 000BC0D0  7C 85 01 2E */	stwx r4, r5, r0
/* 800C0BB4 000BC0D4  4E 80 00 20 */	blr 
lbl_800C0BB8:
/* 800C0BB8 000BC0D8  39 08 00 04 */	addi r8, r8, 4
/* 800C0BBC 000BC0DC  39 29 00 04 */	addi r9, r9, 4
/* 800C0BC0 000BC0E0  38 E7 00 01 */	addi r7, r7, 1
/* 800C0BC4 000BC0E4  42 00 FF BC */	bdnz lbl_800C0B80
/* 800C0BC8 000BC0E8  4E 80 00 20 */	blr 

glabel IPCiProfAck
/* 800C0BCC 000BC0EC  80 6D 91 F4 */	lwz r3, lbl_80247674@sda21(r13)
/* 800C0BD0 000BC0F0  38 03 FF FF */	addi r0, r3, -1
/* 800C0BD4 000BC0F4  90 0D 91 F4 */	stw r0, lbl_80247674@sda21(r13)
/* 800C0BD8 000BC0F8  4E 80 00 20 */	blr 

glabel IPCiProfReply
/* 800C0BDC 000BC0FC  80 AD 91 F0 */	lwz r5, lbl_80247670@sda21(r13)
/* 800C0BE0 000BC100  3C C0 80 1F */	lis r6, lbl_801ED190@ha
/* 800C0BE4 000BC104  3C E0 80 1F */	lis r7, lbl_801ED110@ha
/* 800C0BE8 000BC108  38 00 00 20 */	li r0, 0x20
/* 800C0BEC 000BC10C  38 A5 FF FF */	addi r5, r5, -1
/* 800C0BF0 000BC110  38 C6 D1 90 */	addi r6, r6, lbl_801ED190@l
/* 800C0BF4 000BC114  90 AD 91 F0 */	stw r5, lbl_80247670@sda21(r13)
/* 800C0BF8 000BC118  38 E7 D1 10 */	addi r7, r7, lbl_801ED110@l
/* 800C0BFC 000BC11C  38 A0 00 00 */	li r5, 0
/* 800C0C00 000BC120  7C 09 03 A6 */	mtctr r0
lbl_800C0C04:
/* 800C0C04 000BC124  80 06 00 00 */	lwz r0, 0(r6)
/* 800C0C08 000BC128  7C 03 00 40 */	cmplw r3, r0
/* 800C0C0C 000BC12C  40 82 00 38 */	bne lbl_800C0C44
/* 800C0C10 000BC130  80 07 00 00 */	lwz r0, 0(r7)
/* 800C0C14 000BC134  7C 04 00 00 */	cmpw r4, r0
/* 800C0C18 000BC138  40 82 00 2C */	bne lbl_800C0C44
/* 800C0C1C 000BC13C  3C 80 80 1F */	lis r4, lbl_801ED190@ha
/* 800C0C20 000BC140  3C 60 80 1F */	lis r3, lbl_801ED110@ha
/* 800C0C24 000BC144  54 A6 10 3A */	slwi r6, r5, 2
/* 800C0C28 000BC148  38 A0 00 00 */	li r5, 0
/* 800C0C2C 000BC14C  38 84 D1 90 */	addi r4, r4, lbl_801ED190@l
/* 800C0C30 000BC150  38 63 D1 10 */	addi r3, r3, lbl_801ED110@l
/* 800C0C34 000BC154  38 00 FF FF */	li r0, -1
/* 800C0C38 000BC158  7C A4 31 2E */	stwx r5, r4, r6
/* 800C0C3C 000BC15C  7C 03 31 2E */	stwx r0, r3, r6
/* 800C0C40 000BC160  4E 80 00 20 */	blr 
lbl_800C0C44:
/* 800C0C44 000BC164  38 C6 00 04 */	addi r6, r6, 4
/* 800C0C48 000BC168  38 E7 00 04 */	addi r7, r7, 4
/* 800C0C4C 000BC16C  38 A5 00 01 */	addi r5, r5, 1
/* 800C0C50 000BC170  42 00 FF B4 */	bdnz lbl_800C0C04
/* 800C0C54 000BC174  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247670
	.skip 0x4

glabel lbl_80247674
	.skip 0x4