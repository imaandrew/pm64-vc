.include "macros.inc"

.section .text, "ax"

glabel hcisu_h2_recieve_msg
/* 800DB3F8 000D6918  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800DB3FC 000D691C  7C 08 02 A6 */	mflr r0
/* 800DB400 000D6920  90 01 00 64 */	stw r0, 0x64(r1)
/* 800DB404 000D6924  39 61 00 60 */	addi r11, r1, 0x60
/* 800DB408 000D6928  48 08 15 09 */	bl _savegpr_14
/* 800DB40C 000D692C  88 04 00 1E */	lbz r0, 0x1e(r4)
/* 800DB410 000D6930  7C 8F 23 78 */	mr r15, r4
/* 800DB414 000D6934  3A 60 00 00 */	li r19, 0
/* 800DB418 000D6938  28 00 00 02 */	cmplwi r0, 2
/* 800DB41C 000D693C  41 82 00 0C */	beq .L_800DB428
/* 800DB420 000D6940  38 60 00 00 */	li r3, 0
/* 800DB424 000D6944  48 00 03 54 */	b .L_800DB778
.L_800DB428:
/* 800DB428 000D6948  3A 83 00 01 */	addi r20, r3, 1
/* 800DB42C 000D694C  54 60 0B FC */	rlwinm r0, r3, 1, 0xf, 0x1e
/* 800DB430 000D6950  3F E0 80 22 */	lis r31, lbl_8021C780@ha
/* 800DB434 000D6954  7E C4 1A 14 */	add r22, r4, r3
/* 800DB438 000D6958  56 90 04 3E */	clrlwi r16, r20, 0x10
/* 800DB43C 000D695C  54 77 13 BA */	rlwinm r23, r3, 2, 0xe, 0x1d
/* 800DB440 000D6960  7E A4 02 14 */	add r21, r4, r0
/* 800DB444 000D6964  3B FF C7 80 */	addi r31, r31, lbl_8021C780@l
/* 800DB448 000D6968  3B A0 00 00 */	li r29, 0
/* 800DB44C 000D696C  3B C0 00 04 */	li r30, 4
/* 800DB450 000D6970  3B 82 88 38 */	addi r28, r2, lbl_80248038@sda21
/* 800DB454 000D6974  3B 20 00 03 */	li r25, 3
/* 800DB458 000D6978  3B 00 00 02 */	li r24, 2
/* 800DB45C 000D697C  3D C0 80 1A */	lis r14, lbl_8019A370@ha
/* 800DB460 000D6980  3B 42 88 40 */	addi r26, r2, lbl_80248040@sda21
/* 800DB464 000D6984  3B 60 00 01 */	li r27, 1
.L_800DB468:
/* 800DB468 000D6988  56 03 06 3E */	clrlwi r3, r16, 0x18
/* 800DB46C 000D698C  38 81 00 08 */	addi r4, r1, 8
/* 800DB470 000D6990  38 A0 00 01 */	li r5, 1
/* 800DB474 000D6994  48 00 14 59 */	bl UUSB_Read
/* 800DB478 000D6998  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800DB47C 000D699C  41 82 02 F8 */	beq .L_800DB774
/* 800DB480 000D69A0  88 16 00 1A */	lbz r0, 0x1a(r22)
/* 800DB484 000D69A4  3A 20 00 00 */	li r17, 0
/* 800DB488 000D69A8  3A 73 00 01 */	addi r19, r19, 1
/* 800DB48C 000D69AC  2C 00 00 02 */	cmpwi r0, 2
/* 800DB490 000D69B0  41 82 01 C8 */	beq .L_800DB658
/* 800DB494 000D69B4  40 80 00 14 */	bge .L_800DB4A8
/* 800DB498 000D69B8  2C 00 00 00 */	cmpwi r0, 0
/* 800DB49C 000D69BC  41 82 00 1C */	beq .L_800DB4B8
/* 800DB4A0 000D69C0  40 80 00 C0 */	bge .L_800DB560
/* 800DB4A4 000D69C4  48 00 02 B0 */	b .L_800DB754
.L_800DB4A8:
/* 800DB4A8 000D69C8  2C 00 00 04 */	cmpwi r0, 4
/* 800DB4AC 000D69CC  41 82 02 90 */	beq .L_800DB73C
/* 800DB4B0 000D69D0  40 80 02 A4 */	bge .L_800DB754
/* 800DB4B4 000D69D4  48 00 01 F0 */	b .L_800DB6A4
.L_800DB4B8:
/* 800DB4B8 000D69D8  28 10 00 01 */	cmplwi r16, 1
/* 800DB4BC 000D69DC  40 82 00 18 */	bne .L_800DB4D4
/* 800DB4C0 000D69E0  38 60 00 02 */	li r3, 2
/* 800DB4C4 000D69E4  4B FF E9 65 */	bl GKI_getpoolbuf
/* 800DB4C8 000D69E8  7C 6F B9 2E */	stwx r3, r15, r23
/* 800DB4CC 000D69EC  9B D6 00 14 */	stb r30, 0x14(r22)
/* 800DB4D0 000D69F0  48 00 00 38 */	b .L_800DB508
.L_800DB4D4:
/* 800DB4D4 000D69F4  28 10 00 02 */	cmplwi r16, 2
/* 800DB4D8 000D69F8  40 82 00 18 */	bne .L_800DB4F0
/* 800DB4DC 000D69FC  38 60 00 03 */	li r3, 3
/* 800DB4E0 000D6A00  4B FF E9 49 */	bl GKI_getpoolbuf
/* 800DB4E4 000D6A04  7C 6F B9 2E */	stwx r3, r15, r23
/* 800DB4E8 000D6A08  9B 16 00 14 */	stb r24, 0x14(r22)
/* 800DB4EC 000D6A0C  48 00 00 1C */	b .L_800DB508
.L_800DB4F0:
/* 800DB4F0 000D6A10  28 10 00 03 */	cmplwi r16, 3
/* 800DB4F4 000D6A14  40 82 02 60 */	bne .L_800DB754
/* 800DB4F8 000D6A18  38 60 00 01 */	li r3, 1
/* 800DB4FC 000D6A1C  4B FF E9 2D */	bl GKI_getpoolbuf
/* 800DB500 000D6A20  7C 6F B9 2E */	stwx r3, r15, r23
/* 800DB504 000D6A24  9B 36 00 14 */	stb r25, 0x14(r22)
.L_800DB508:
/* 800DB508 000D6A28  7C 6F B8 2E */	lwzx r3, r15, r23
/* 800DB50C 000D6A2C  2C 03 00 00 */	cmpwi r3, 0
/* 800DB510 000D6A30  41 82 00 30 */	beq .L_800DB540
/* 800DB514 000D6A34  B3 A3 00 02 */	sth r29, 2(r3)
/* 800DB518 000D6A38  88 16 00 14 */	lbz r0, 0x14(r22)
/* 800DB51C 000D6A3C  7C 6F B8 2E */	lwzx r3, r15, r23
/* 800DB520 000D6A40  54 00 08 3C */	slwi r0, r0, 1
/* 800DB524 000D6A44  7C 9A 02 14 */	add r4, r26, r0
/* 800DB528 000D6A48  A0 04 FF FE */	lhz r0, -2(r4)
/* 800DB52C 000D6A4C  B0 03 00 00 */	sth r0, 0(r3)
/* 800DB530 000D6A50  7C 6F B8 2E */	lwzx r3, r15, r23
/* 800DB534 000D6A54  B3 A3 00 04 */	sth r29, 4(r3)
/* 800DB538 000D6A58  9B 76 00 1A */	stb r27, 0x1a(r22)
/* 800DB53C 000D6A5C  48 00 00 14 */	b .L_800DB550
.L_800DB540:
/* 800DB540 000D6A60  38 8E A3 70 */	addi r4, r14, lbl_8019A370@l
/* 800DB544 000D6A64  3C 60 00 07 */	lis r3, 7
/* 800DB548 000D6A68  48 00 1B A5 */	bl LogMsg_0
/* 800DB54C 000D6A6C  9B 16 00 1A */	stb r24, 0x1a(r22)
.L_800DB550:
/* 800DB550 000D6A70  88 16 00 14 */	lbz r0, 0x14(r22)
/* 800DB554 000D6A74  7C 7C 02 14 */	add r3, r28, r0
/* 800DB558 000D6A78  88 03 FF FF */	lbz r0, -1(r3)
/* 800DB55C 000D6A7C  B0 15 00 0C */	sth r0, 0xc(r21)
.L_800DB560:
/* 800DB560 000D6A80  7C CF B8 2E */	lwzx r6, r15, r23
/* 800DB564 000D6A84  88 A1 00 08 */	lbz r5, 8(r1)
/* 800DB568 000D6A88  A0 86 00 02 */	lhz r4, 2(r6)
/* 800DB56C 000D6A8C  7C 66 22 14 */	add r3, r6, r4
/* 800DB570 000D6A90  38 04 00 01 */	addi r0, r4, 1
/* 800DB574 000D6A94  98 A3 00 08 */	stb r5, 8(r3)
/* 800DB578 000D6A98  B0 06 00 02 */	sth r0, 2(r6)
/* 800DB57C 000D6A9C  A0 75 00 0C */	lhz r3, 0xc(r21)
/* 800DB580 000D6AA0  38 63 FF FF */	addi r3, r3, -1
/* 800DB584 000D6AA4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800DB588 000D6AA8  B0 75 00 0C */	sth r3, 0xc(r21)
/* 800DB58C 000D6AAC  40 82 00 C0 */	bne .L_800DB64C
/* 800DB590 000D6AB0  88 16 00 14 */	lbz r0, 0x14(r22)
/* 800DB594 000D6AB4  8A 41 00 08 */	lbz r18, 8(r1)
/* 800DB598 000D6AB8  28 00 00 02 */	cmplwi r0, 2
/* 800DB59C 000D6ABC  40 82 00 44 */	bne .L_800DB5E0
/* 800DB5A0 000D6AC0  88 16 00 17 */	lbz r0, 0x17(r22)
/* 800DB5A4 000D6AC4  56 44 42 2E */	rlwinm r4, r18, 8, 8, 0x17
/* 800DB5A8 000D6AC8  7C 6F B8 2E */	lwzx r3, r15, r23
/* 800DB5AC 000D6ACC  7C 04 02 14 */	add r0, r4, r0
/* 800DB5B0 000D6AD0  54 12 04 3E */	clrlwi r18, r0, 0x10
/* 800DB5B4 000D6AD4  48 01 D2 45 */	bl l2cap_link_chk_pkt_start
/* 800DB5B8 000D6AD8  2C 03 00 00 */	cmpwi r3, 0
/* 800DB5BC 000D6ADC  7C 6F B9 2E */	stwx r3, r15, r23
/* 800DB5C0 000D6AE0  40 82 00 20 */	bne .L_800DB5E0
/* 800DB5C4 000D6AE4  2C 12 00 00 */	cmpwi r18, 0
/* 800DB5C8 000D6AE8  B2 55 00 0C */	sth r18, 0xc(r21)
/* 800DB5CC 000D6AEC  40 82 00 0C */	bne .L_800DB5D8
/* 800DB5D0 000D6AF0  9B B6 00 1A */	stb r29, 0x1a(r22)
/* 800DB5D4 000D6AF4  48 00 01 80 */	b .L_800DB754
.L_800DB5D8:
/* 800DB5D8 000D6AF8  9B D6 00 1A */	stb r30, 0x1a(r22)
/* 800DB5DC 000D6AFC  48 00 01 78 */	b .L_800DB754
.L_800DB5E0:
/* 800DB5E0 000D6B00  B2 55 00 0C */	sth r18, 0xc(r21)
/* 800DB5E4 000D6B04  7C 6F B8 2E */	lwzx r3, r15, r23
/* 800DB5E8 000D6B08  4B FF EA 99 */	bl GKI_get_buf_size
/* 800DB5EC 000D6B0C  88 16 00 14 */	lbz r0, 0x14(r22)
/* 800DB5F0 000D6B10  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 800DB5F4 000D6B14  7C 7C 02 14 */	add r3, r28, r0
/* 800DB5F8 000D6B18  88 03 FF FF */	lbz r0, -1(r3)
/* 800DB5FC 000D6B1C  7C 72 02 14 */	add r3, r18, r0
/* 800DB600 000D6B20  38 03 00 08 */	addi r0, r3, 8
/* 800DB604 000D6B24  7C 00 20 40 */	cmplw r0, r4
/* 800DB608 000D6B28  40 81 00 28 */	ble .L_800DB630
/* 800DB60C 000D6B2C  7C 6F B8 2E */	lwzx r3, r15, r23
/* 800DB610 000D6B30  4B FF E9 01 */	bl GKI_freebuf
/* 800DB614 000D6B34  7F AF B9 2E */	stwx r29, r15, r23
/* 800DB618 000D6B38  3C 60 80 1A */	lis r3, lbl_8019A3AC@ha
/* 800DB61C 000D6B3C  38 83 A3 AC */	addi r4, r3, lbl_8019A3AC@l
/* 800DB620 000D6B40  9B D6 00 1A */	stb r30, 0x1a(r22)
/* 800DB624 000D6B44  3C 60 00 07 */	lis r3, 7
/* 800DB628 000D6B48  48 00 1A C5 */	bl LogMsg_0
/* 800DB62C 000D6B4C  48 00 01 28 */	b .L_800DB754
.L_800DB630:
/* 800DB630 000D6B50  2C 12 00 00 */	cmpwi r18, 0
/* 800DB634 000D6B54  41 82 00 0C */	beq .L_800DB640
/* 800DB638 000D6B58  9B 36 00 1A */	stb r25, 0x1a(r22)
/* 800DB63C 000D6B5C  48 00 01 18 */	b .L_800DB754
.L_800DB640:
/* 800DB640 000D6B60  9B B6 00 1A */	stb r29, 0x1a(r22)
/* 800DB644 000D6B64  3A 20 00 01 */	li r17, 1
/* 800DB648 000D6B68  48 00 01 0C */	b .L_800DB754
.L_800DB64C:
/* 800DB64C 000D6B6C  88 01 00 08 */	lbz r0, 8(r1)
/* 800DB650 000D6B70  98 16 00 17 */	stb r0, 0x17(r22)
/* 800DB654 000D6B74  48 00 01 00 */	b .L_800DB754
.L_800DB658:
/* 800DB658 000D6B78  A0 75 00 0C */	lhz r3, 0xc(r21)
/* 800DB65C 000D6B7C  38 63 FF FF */	addi r3, r3, -1
/* 800DB660 000D6B80  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800DB664 000D6B84  B0 75 00 0C */	sth r3, 0xc(r21)
/* 800DB668 000D6B88  40 82 00 30 */	bne .L_800DB698
/* 800DB66C 000D6B8C  88 16 00 14 */	lbz r0, 0x14(r22)
/* 800DB670 000D6B90  88 61 00 08 */	lbz r3, 8(r1)
/* 800DB674 000D6B94  28 00 00 02 */	cmplwi r0, 2
/* 800DB678 000D6B98  40 82 00 14 */	bne .L_800DB68C
/* 800DB67C 000D6B9C  88 16 00 17 */	lbz r0, 0x17(r22)
/* 800DB680 000D6BA0  54 63 42 2E */	rlwinm r3, r3, 8, 8, 0x17
/* 800DB684 000D6BA4  7C 03 02 14 */	add r0, r3, r0
/* 800DB688 000D6BA8  54 03 04 3E */	clrlwi r3, r0, 0x10
.L_800DB68C:
/* 800DB68C 000D6BAC  B0 75 00 0C */	sth r3, 0xc(r21)
/* 800DB690 000D6BB0  9B D6 00 1A */	stb r30, 0x1a(r22)
/* 800DB694 000D6BB4  48 00 00 C0 */	b .L_800DB754
.L_800DB698:
/* 800DB698 000D6BB8  88 01 00 08 */	lbz r0, 8(r1)
/* 800DB69C 000D6BBC  98 16 00 17 */	stb r0, 0x17(r22)
/* 800DB6A0 000D6BC0  48 00 00 B4 */	b .L_800DB754
.L_800DB6A4:
/* 800DB6A4 000D6BC4  7C EF B8 2E */	lwzx r7, r15, r23
/* 800DB6A8 000D6BC8  56 83 06 3E */	clrlwi r3, r20, 0x18
/* 800DB6AC 000D6BCC  88 C1 00 08 */	lbz r6, 8(r1)
/* 800DB6B0 000D6BD0  A0 A7 00 02 */	lhz r5, 2(r7)
/* 800DB6B4 000D6BD4  7C 87 2A 14 */	add r4, r7, r5
/* 800DB6B8 000D6BD8  38 05 00 01 */	addi r0, r5, 1
/* 800DB6BC 000D6BDC  98 C4 00 08 */	stb r6, 8(r4)
/* 800DB6C0 000D6BE0  B0 07 00 02 */	sth r0, 2(r7)
/* 800DB6C4 000D6BE4  A0 95 00 0C */	lhz r4, 0xc(r21)
/* 800DB6C8 000D6BE8  38 04 FF FF */	addi r0, r4, -1
/* 800DB6CC 000D6BEC  B0 15 00 0C */	sth r0, 0xc(r21)
/* 800DB6D0 000D6BF0  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 800DB6D4 000D6BF4  7C 8F B8 2E */	lwzx r4, r15, r23
/* 800DB6D8 000D6BF8  A0 04 00 02 */	lhz r0, 2(r4)
/* 800DB6DC 000D6BFC  7C 84 02 14 */	add r4, r4, r0
/* 800DB6E0 000D6C00  38 84 00 08 */	addi r4, r4, 8
/* 800DB6E4 000D6C04  48 00 11 E9 */	bl UUSB_Read
/* 800DB6E8 000D6C08  7C 8F B8 2E */	lwzx r4, r15, r23
/* 800DB6EC 000D6C0C  7E 73 1A 14 */	add r19, r19, r3
/* 800DB6F0 000D6C10  A0 04 00 02 */	lhz r0, 2(r4)
/* 800DB6F4 000D6C14  7C 00 1A 14 */	add r0, r0, r3
/* 800DB6F8 000D6C18  B0 04 00 02 */	sth r0, 2(r4)
/* 800DB6FC 000D6C1C  A0 15 00 0C */	lhz r0, 0xc(r21)
/* 800DB700 000D6C20  7C 63 00 50 */	subf r3, r3, r0
/* 800DB704 000D6C24  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800DB708 000D6C28  B0 75 00 0C */	sth r3, 0xc(r21)
/* 800DB70C 000D6C2C  40 82 00 48 */	bne .L_800DB754
/* 800DB710 000D6C30  88 16 00 14 */	lbz r0, 0x14(r22)
/* 800DB714 000D6C34  28 00 00 02 */	cmplwi r0, 2
/* 800DB718 000D6C38  40 82 00 18 */	bne .L_800DB730
/* 800DB71C 000D6C3C  48 01 D2 AD */	bl l2cap_link_chk_pkt_end
/* 800DB720 000D6C40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DB724 000D6C44  40 82 00 0C */	bne .L_800DB730
/* 800DB728 000D6C48  9B B6 00 1A */	stb r29, 0x1a(r22)
/* 800DB72C 000D6C4C  48 00 00 28 */	b .L_800DB754
.L_800DB730:
/* 800DB730 000D6C50  9B B6 00 1A */	stb r29, 0x1a(r22)
/* 800DB734 000D6C54  3A 20 00 01 */	li r17, 1
/* 800DB738 000D6C58  48 00 00 1C */	b .L_800DB754
.L_800DB73C:
/* 800DB73C 000D6C5C  A0 75 00 0C */	lhz r3, 0xc(r21)
/* 800DB740 000D6C60  38 63 FF FF */	addi r3, r3, -1
/* 800DB744 000D6C64  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800DB748 000D6C68  B0 75 00 0C */	sth r3, 0xc(r21)
/* 800DB74C 000D6C6C  40 82 00 08 */	bne .L_800DB754
/* 800DB750 000D6C70  9B B6 00 1A */	stb r29, 0x1a(r22)
.L_800DB754:
/* 800DB754 000D6C74  2C 11 00 00 */	cmpwi r17, 0
/* 800DB758 000D6C78  41 82 FD 10 */	beq .L_800DB468
/* 800DB75C 000D6C7C  88 7F 00 1F */	lbz r3, 0x1f(r31)
/* 800DB760 000D6C80  38 80 00 00 */	li r4, 0
/* 800DB764 000D6C84  7C AF B8 2E */	lwzx r5, r15, r23
/* 800DB768 000D6C88  4B FF E9 5D */	bl GKI_send_msg
/* 800DB76C 000D6C8C  7F AF B9 2E */	stwx r29, r15, r23
/* 800DB770 000D6C90  4B FF FC F8 */	b .L_800DB468
.L_800DB774:
/* 800DB774 000D6C94  7E 63 9B 78 */	mr r3, r19
.L_800DB778:
/* 800DB778 000D6C98  39 61 00 60 */	addi r11, r1, 0x60
/* 800DB77C 000D6C9C  48 08 11 E1 */	bl _restgpr_14
/* 800DB780 000D6CA0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800DB784 000D6CA4  7C 08 03 A6 */	mtlr r0
/* 800DB788 000D6CA8  38 21 00 60 */	addi r1, r1, 0x60
/* 800DB78C 000D6CAC  4E 80 00 20 */	blr 

glabel hcisu_h2_send_msg_now
/* 800DB790 000D6CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DB794 000D6CB4  7C 08 02 A6 */	mflr r0
/* 800DB798 000D6CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DB79C 000D6CBC  39 61 00 20 */	addi r11, r1, 0x20
/* 800DB7A0 000D6CC0  48 08 11 A5 */	bl _savegpr_27
/* 800DB7A4 000D6CC4  A0 A4 00 00 */	lhz r5, 0(r4)
/* 800DB7A8 000D6CC8  7C 9B 23 78 */	mr r27, r4
/* 800DB7AC 000D6CCC  A0 04 00 04 */	lhz r0, 4(r4)
/* 800DB7B0 000D6CD0  28 05 21 00 */	cmplwi r5, 0x2100
/* 800DB7B4 000D6CD4  7C 64 02 14 */	add r3, r4, r0
/* 800DB7B8 000D6CD8  38 C3 00 08 */	addi r6, r3, 8
/* 800DB7BC 000D6CDC  40 82 00 0C */	bne .L_800DB7C8
/* 800DB7C0 000D6CE0  3B 80 00 02 */	li r28, 2
/* 800DB7C4 000D6CE4  48 00 00 20 */	b .L_800DB7E4
.L_800DB7C8:
/* 800DB7C8 000D6CE8  28 05 22 00 */	cmplwi r5, 0x2200
/* 800DB7CC 000D6CEC  40 82 00 0C */	bne .L_800DB7D8
/* 800DB7D0 000D6CF0  3B 80 00 03 */	li r28, 3
/* 800DB7D4 000D6CF4  48 00 00 10 */	b .L_800DB7E4
.L_800DB7D8:
/* 800DB7D8 000D6CF8  28 05 20 00 */	cmplwi r5, 0x2000
/* 800DB7DC 000D6CFC  40 82 00 08 */	bne .L_800DB7E4
/* 800DB7E0 000D6D00  3B 80 00 00 */	li r28, 0
.L_800DB7E4:
/* 800DB7E4 000D6D04  28 05 21 00 */	cmplwi r5, 0x2100
/* 800DB7E8 000D6D08  40 82 01 20 */	bne .L_800DB908
/* 800DB7EC 000D6D0C  3C 60 80 22 */	lis r3, lbl_80220030@ha
/* 800DB7F0 000D6D10  A0 84 00 02 */	lhz r4, 2(r4)
/* 800DB7F4 000D6D14  3B C3 00 30 */	addi r30, r3, lbl_80220030@l
/* 800DB7F8 000D6D18  A0 1E 00 7E */	lhz r0, 0x7e(r30)
/* 800DB7FC 000D6D1C  7C 04 00 40 */	cmplw r4, r0
/* 800DB800 000D6D20  40 81 01 08 */	ble .L_800DB908
/* 800DB804 000D6D24  88 06 00 01 */	lbz r0, 1(r6)
/* 800DB808 000D6D28  88 66 00 00 */	lbz r3, 0(r6)
/* 800DB80C 000D6D2C  38 C6 00 02 */	addi r6, r6, 2
/* 800DB810 000D6D30  54 00 44 2E */	rlwinm r0, r0, 8, 0x10, 0x17
/* 800DB814 000D6D34  7C 03 02 14 */	add r0, r3, r0
/* 800DB818 000D6D38  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800DB81C 000D6D3C  70 00 CF FF */	andi. r0, r0, 0xcfff
/* 800DB820 000D6D40  60 1F 10 00 */	ori r31, r0, 0x1000
/* 800DB824 000D6D44  7F FD 46 70 */	srawi r29, r31, 8
/* 800DB828 000D6D48  48 00 00 D0 */	b .L_800DB8F8
.L_800DB82C:
/* 800DB82C 000D6D4C  7C C4 33 78 */	mr r4, r6
/* 800DB830 000D6D50  7F 83 E3 78 */	mr r3, r28
/* 800DB834 000D6D54  7F 66 DB 78 */	mr r6, r27
/* 800DB838 000D6D58  48 00 10 9D */	bl UUSB_Write
/* 800DB83C 000D6D5C  A0 7B 00 04 */	lhz r3, 4(r27)
/* 800DB840 000D6D60  A0 1E 00 7C */	lhz r0, 0x7c(r30)
/* 800DB844 000D6D64  A0 9B 00 02 */	lhz r4, 2(r27)
/* 800DB848 000D6D68  7C 03 02 14 */	add r0, r3, r0
/* 800DB84C 000D6D6C  B0 1B 00 04 */	sth r0, 4(r27)
/* 800DB850 000D6D70  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800DB854 000D6D74  7C 7B 02 14 */	add r3, r27, r0
/* 800DB858 000D6D78  A0 1E 00 7C */	lhz r0, 0x7c(r30)
/* 800DB85C 000D6D7C  38 C3 00 0A */	addi r6, r3, 0xa
/* 800DB860 000D6D80  7C 00 20 50 */	subf r0, r0, r4
/* 800DB864 000D6D84  B0 1B 00 02 */	sth r0, 2(r27)
/* 800DB868 000D6D88  9B E3 00 08 */	stb r31, 8(r3)
/* 800DB86C 000D6D8C  9B A3 00 09 */	stb r29, 9(r3)
/* 800DB870 000D6D90  A0 7B 00 02 */	lhz r3, 2(r27)
/* 800DB874 000D6D94  A0 1E 00 7E */	lhz r0, 0x7e(r30)
/* 800DB878 000D6D98  7C 03 00 40 */	cmplw r3, r0
/* 800DB87C 000D6D9C  40 81 00 20 */	ble .L_800DB89C
/* 800DB880 000D6DA0  A0 1E 00 7C */	lhz r0, 0x7c(r30)
/* 800DB884 000D6DA4  98 06 00 00 */	stb r0, 0(r6)
/* 800DB888 000D6DA8  A0 1E 00 7C */	lhz r0, 0x7c(r30)
/* 800DB88C 000D6DAC  7C 00 46 70 */	srawi r0, r0, 8
/* 800DB890 000D6DB0  98 06 00 01 */	stb r0, 1(r6)
/* 800DB894 000D6DB4  38 C6 00 02 */	addi r6, r6, 2
/* 800DB898 000D6DB8  48 00 00 20 */	b .L_800DB8B8
.L_800DB89C:
/* 800DB89C 000D6DBC  38 03 FF FC */	addi r0, r3, -4
/* 800DB8A0 000D6DC0  98 06 00 00 */	stb r0, 0(r6)
/* 800DB8A4 000D6DC4  A0 7B 00 02 */	lhz r3, 2(r27)
/* 800DB8A8 000D6DC8  38 03 FF FC */	addi r0, r3, -4
/* 800DB8AC 000D6DCC  7C 00 46 70 */	srawi r0, r0, 8
/* 800DB8B0 000D6DD0  98 06 00 01 */	stb r0, 1(r6)
/* 800DB8B4 000D6DD4  38 C6 00 02 */	addi r6, r6, 2
.L_800DB8B8:
/* 800DB8B8 000D6DD8  A0 7B 00 06 */	lhz r3, 6(r27)
/* 800DB8BC 000D6DDC  2C 03 00 00 */	cmpwi r3, 0
/* 800DB8C0 000D6DE0  41 82 00 38 */	beq .L_800DB8F8
/* 800DB8C4 000D6DE4  38 63 FF FF */	addi r3, r3, -1
/* 800DB8C8 000D6DE8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 800DB8CC 000D6DEC  B0 7B 00 06 */	sth r3, 6(r27)
/* 800DB8D0 000D6DF0  40 82 00 28 */	bne .L_800DB8F8
/* 800DB8D4 000D6DF4  38 00 19 00 */	li r0, 0x1900
/* 800DB8D8 000D6DF8  3C 60 80 22 */	lis r3, lbl_8021C780@ha
/* 800DB8DC 000D6DFC  B0 1B 00 00 */	sth r0, 0(r27)
/* 800DB8E0 000D6E00  38 63 C7 80 */	addi r3, r3, lbl_8021C780@l
/* 800DB8E4 000D6E04  7F 65 DB 78 */	mr r5, r27
/* 800DB8E8 000D6E08  38 80 00 00 */	li r4, 0
/* 800DB8EC 000D6E0C  88 63 00 1F */	lbz r3, 0x1f(r3)
/* 800DB8F0 000D6E10  4B FF E7 D5 */	bl GKI_send_msg
/* 800DB8F4 000D6E14  48 00 00 30 */	b .L_800DB924
.L_800DB8F8:
/* 800DB8F8 000D6E18  A0 BE 00 7E */	lhz r5, 0x7e(r30)
/* 800DB8FC 000D6E1C  A0 1B 00 02 */	lhz r0, 2(r27)
/* 800DB900 000D6E20  7C 00 28 40 */	cmplw r0, r5
/* 800DB904 000D6E24  41 81 FF 28 */	bgt .L_800DB82C
.L_800DB908:
/* 800DB908 000D6E28  A0 BB 00 02 */	lhz r5, 2(r27)
/* 800DB90C 000D6E2C  7C C4 33 78 */	mr r4, r6
/* 800DB910 000D6E30  7F 83 E3 78 */	mr r3, r28
/* 800DB914 000D6E34  7F 66 DB 78 */	mr r6, r27
/* 800DB918 000D6E38  48 00 0F BD */	bl UUSB_Write
/* 800DB91C 000D6E3C  7F 63 DB 78 */	mr r3, r27
/* 800DB920 000D6E40  4B FF E5 F1 */	bl GKI_freebuf
.L_800DB924:
/* 800DB924 000D6E44  39 61 00 20 */	addi r11, r1, 0x20
/* 800DB928 000D6E48  48 08 10 69 */	bl _restgpr_27
/* 800DB92C 000D6E4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DB930 000D6E50  7C 08 03 A6 */	mtlr r0
/* 800DB934 000D6E54  38 21 00 20 */	addi r1, r1, 0x20
/* 800DB938 000D6E58  4E 80 00 20 */	blr 

glabel hcisu_h2_init
/* 800DB93C 000D6E5C  3C C0 80 22 */	lis r6, lbl_8021C780@ha
/* 800DB940 000D6E60  38 00 00 00 */	li r0, 0
/* 800DB944 000D6E64  38 C6 C7 80 */	addi r6, r6, lbl_8021C780@l
/* 800DB948 000D6E68  98 06 00 1E */	stb r0, 0x1e(r6)
/* 800DB94C 000D6E6C  98 06 00 1A */	stb r0, 0x1a(r6)
/* 800DB950 000D6E70  98 06 00 1B */	stb r0, 0x1b(r6)
/* 800DB954 000D6E74  98 06 00 1C */	stb r0, 0x1c(r6)
/* 800DB958 000D6E78  98 66 00 1F */	stb r3, 0x1f(r6)
/* 800DB95C 000D6E7C  98 86 00 20 */	stb r4, 0x20(r6)
/* 800DB960 000D6E80  B0 A6 00 12 */	sth r5, 0x12(r6)
/* 800DB964 000D6E84  4E 80 00 20 */	blr 

glabel hcisu_h2_open
/* 800DB968 000D6E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DB96C 000D6E8C  7C 08 02 A6 */	mflr r0
/* 800DB970 000D6E90  3C A0 80 22 */	lis r5, lbl_8021C780@ha
/* 800DB974 000D6E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DB978 000D6E98  38 00 00 00 */	li r0, 0
/* 800DB97C 000D6E9C  38 A5 C7 80 */	addi r5, r5, lbl_8021C780@l
/* 800DB980 000D6EA0  98 01 00 13 */	stb r0, 0x13(r1)
/* 800DB984 000D6EA4  38 00 00 02 */	li r0, 2
/* 800DB988 000D6EA8  88 85 00 1F */	lbz r4, 0x1f(r5)
/* 800DB98C 000D6EAC  A0 C3 00 00 */	lhz r6, 0(r3)
/* 800DB990 000D6EB0  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 800DB994 000D6EB4  A0 C3 00 02 */	lhz r6, 2(r3)
/* 800DB998 000D6EB8  38 61 00 08 */	addi r3, r1, 8
/* 800DB99C 000D6EBC  B0 C1 00 0E */	sth r6, 0xe(r1)
/* 800DB9A0 000D6EC0  B0 81 00 10 */	sth r4, 0x10(r1)
/* 800DB9A4 000D6EC4  98 05 00 1E */	stb r0, 0x1e(r5)
/* 800DB9A8 000D6EC8  48 00 0B A1 */	bl UUSB_Register
/* 800DB9AC 000D6ECC  3C 80 80 0E */	lis r4, lbl_800DB3D4@ha
/* 800DB9B0 000D6ED0  38 61 00 08 */	addi r3, r1, 8
/* 800DB9B4 000D6ED4  38 84 B3 D4 */	addi r4, r4, lbl_800DB3D4@l
/* 800DB9B8 000D6ED8  48 00 0D FD */	bl UUSB_Open
/* 800DB9BC 000D6EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DB9C0 000D6EE0  38 60 00 01 */	li r3, 1
/* 800DB9C4 000D6EE4  7C 08 03 A6 */	mtlr r0
/* 800DB9C8 000D6EE8  38 21 00 20 */	addi r1, r1, 0x20
/* 800DB9CC 000D6EEC  4E 80 00 20 */	blr 

glabel hcisu_h2_close
/* 800DB9D0 000D6EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB9D4 000D6EF4  7C 08 02 A6 */	mflr r0
/* 800DB9D8 000D6EF8  3C 60 80 22 */	lis r3, lbl_8021C780@ha
/* 800DB9DC 000D6EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB9E0 000D6F00  38 00 00 00 */	li r0, 0
/* 800DB9E4 000D6F04  38 63 C7 80 */	addi r3, r3, lbl_8021C780@l
/* 800DB9E8 000D6F08  98 03 00 1E */	stb r0, 0x1e(r3)
/* 800DB9EC 000D6F0C  48 00 14 71 */	bl UUSB_Close
/* 800DB9F0 000D6F10  48 00 15 19 */	bl UUSB_Unregister
/* 800DB9F4 000D6F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB9F8 000D6F18  7C 08 03 A6 */	mtlr r0
/* 800DB9FC 000D6F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DBA00 000D6F20  4E 80 00 20 */	blr 

glabel hcisu_h2_send
/* 800DBA04 000D6F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DBA08 000D6F28  7C 08 02 A6 */	mflr r0
/* 800DBA0C 000D6F2C  3C A0 80 22 */	lis r5, lbl_8021C780@ha
/* 800DBA10 000D6F30  7C 64 1B 78 */	mr r4, r3
/* 800DBA14 000D6F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DBA18 000D6F38  38 65 C7 80 */	addi r3, r5, lbl_8021C780@l
/* 800DBA1C 000D6F3C  4B FF FD 75 */	bl hcisu_h2_send_msg_now
/* 800DBA20 000D6F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DBA24 000D6F44  38 60 00 01 */	li r3, 1
/* 800DBA28 000D6F48  7C 08 03 A6 */	mtlr r0
/* 800DBA2C 000D6F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DBA30 000D6F50  4E 80 00 20 */	blr 

glabel hcisu_h2_handle_event
/* 800DBA34 000D6F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DBA38 000D6F58  7C 08 02 A6 */	mflr r0
/* 800DBA3C 000D6F5C  3C 80 80 22 */	lis r4, lbl_8021C780@ha
/* 800DBA40 000D6F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DBA44 000D6F64  38 84 C7 80 */	addi r4, r4, lbl_8021C780@l
/* 800DBA48 000D6F68  38 03 FF F8 */	addi r0, r3, -8
/* 800DBA4C 000D6F6C  A0 64 00 12 */	lhz r3, 0x12(r4)
/* 800DBA50 000D6F70  7C 03 00 50 */	subf r0, r3, r0
/* 800DBA54 000D6F74  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 800DBA58 000D6F78  4B FF F9 A1 */	bl hcisu_h2_recieve_msg
/* 800DBA5C 000D6F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DBA60 000D6F80  38 60 00 00 */	li r3, 0
/* 800DBA64 000D6F84  7C 08 03 A6 */	mtlr r0
/* 800DBA68 000D6F88  38 21 00 10 */	addi r1, r1, 0x10
/* 800DBA6C 000D6F8C  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_8021C780
	.skip 0x40
