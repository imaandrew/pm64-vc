.include "macros.inc"

.section .text, "ax"

glabel __AXAuxInit
/* 800B28F8 000ADE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B28FC 000ADE1C  7C 08 02 A6 */	mflr r0
/* 800B2900 000ADE20  3C C0 80 1D */	lis r6, lbl_801CB2A0@ha
/* 800B2904 000ADE24  38 A0 00 00 */	li r5, 0
/* 800B2908 000ADE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B290C 000ADE2C  38 C6 B2 A0 */	addi r6, r6, lbl_801CB2A0@l
/* 800B2910 000ADE30  38 80 00 01 */	li r4, 1
/* 800B2914 000ADE34  38 60 00 02 */	li r3, 2
/* 800B2918 000ADE38  38 00 00 20 */	li r0, 0x20
/* 800B291C 000ADE3C  90 AD 90 70 */	stw r5, lbl_802474F0@sda21(r13)
/* 800B2920 000ADE40  38 E6 00 00 */	addi r7, r6, 0
/* 800B2924 000ADE44  39 06 12 00 */	addi r8, r6, 0x1200
/* 800B2928 000ADE48  90 AD 90 6C */	stw r5, lbl_802474EC@sda21(r13)
/* 800B292C 000ADE4C  38 C6 24 00 */	addi r6, r6, 0x2400
/* 800B2930 000ADE50  90 AD 90 68 */	stw r5, lbl_802474E8@sda21(r13)
/* 800B2934 000ADE54  90 AD 90 64 */	stw r5, lbl_802474E4@sda21(r13)
/* 800B2938 000ADE58  90 AD 90 60 */	stw r5, lbl_802474E0@sda21(r13)
/* 800B293C 000ADE5C  90 AD 90 5C */	stw r5, lbl_802474DC@sda21(r13)
/* 800B2940 000ADE60  90 AD 90 40 */	stw r5, lbl_802474C0@sda21(r13)
/* 800B2944 000ADE64  90 8D 90 3C */	stw r4, lbl_802474BC@sda21(r13)
/* 800B2948 000ADE68  90 6D 90 38 */	stw r3, lbl_802474B8@sda21(r13)
/* 800B294C 000ADE6C  7C 09 03 A6 */	mtctr r0
.L_800B2950:
/* 800B2950 000ADE70  90 A7 00 00 */	stw r5, 0(r7)
/* 800B2954 000ADE74  90 A8 00 00 */	stw r5, 0(r8)
/* 800B2958 000ADE78  90 A6 00 00 */	stw r5, 0(r6)
/* 800B295C 000ADE7C  90 A7 00 04 */	stw r5, 4(r7)
/* 800B2960 000ADE80  90 A8 00 04 */	stw r5, 4(r8)
/* 800B2964 000ADE84  90 A6 00 04 */	stw r5, 4(r6)
/* 800B2968 000ADE88  90 A7 00 08 */	stw r5, 8(r7)
/* 800B296C 000ADE8C  90 A8 00 08 */	stw r5, 8(r8)
/* 800B2970 000ADE90  90 A6 00 08 */	stw r5, 8(r6)
/* 800B2974 000ADE94  90 A7 00 0C */	stw r5, 0xc(r7)
/* 800B2978 000ADE98  90 A8 00 0C */	stw r5, 0xc(r8)
/* 800B297C 000ADE9C  90 A6 00 0C */	stw r5, 0xc(r6)
/* 800B2980 000ADEA0  90 A7 00 10 */	stw r5, 0x10(r7)
/* 800B2984 000ADEA4  90 A8 00 10 */	stw r5, 0x10(r8)
/* 800B2988 000ADEA8  90 A6 00 10 */	stw r5, 0x10(r6)
/* 800B298C 000ADEAC  90 A7 00 14 */	stw r5, 0x14(r7)
/* 800B2990 000ADEB0  90 A8 00 14 */	stw r5, 0x14(r8)
/* 800B2994 000ADEB4  90 A6 00 14 */	stw r5, 0x14(r6)
/* 800B2998 000ADEB8  90 A7 00 18 */	stw r5, 0x18(r7)
/* 800B299C 000ADEBC  90 A8 00 18 */	stw r5, 0x18(r8)
/* 800B29A0 000ADEC0  90 A6 00 18 */	stw r5, 0x18(r6)
/* 800B29A4 000ADEC4  90 A7 00 1C */	stw r5, 0x1c(r7)
/* 800B29A8 000ADEC8  90 A8 00 1C */	stw r5, 0x1c(r8)
/* 800B29AC 000ADECC  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 800B29B0 000ADED0  90 A7 00 20 */	stw r5, 0x20(r7)
/* 800B29B4 000ADED4  38 E7 00 24 */	addi r7, r7, 0x24
/* 800B29B8 000ADED8  90 A8 00 20 */	stw r5, 0x20(r8)
/* 800B29BC 000ADEDC  39 08 00 24 */	addi r8, r8, 0x24
/* 800B29C0 000ADEE0  90 A6 00 20 */	stw r5, 0x20(r6)
/* 800B29C4 000ADEE4  38 C6 00 24 */	addi r6, r6, 0x24
/* 800B29C8 000ADEE8  42 00 FF 88 */	bdnz .L_800B2950
/* 800B29CC 000ADEEC  38 6D 90 7C */	addi r3, r13, lbl_802474FC@sda21
/* 800B29D0 000ADEF0  38 80 00 00 */	li r4, 0
/* 800B29D4 000ADEF4  38 A0 00 03 */	li r5, 3
/* 800B29D8 000ADEF8  4B F5 1A 65 */	bl memset
/* 800B29DC 000ADEFC  38 6D 90 78 */	addi r3, r13, lbl_802474F8@sda21
/* 800B29E0 000ADF00  38 80 00 00 */	li r4, 0
/* 800B29E4 000ADF04  38 A0 00 03 */	li r5, 3
/* 800B29E8 000ADF08  4B F5 1A 55 */	bl memset
/* 800B29EC 000ADF0C  38 6D 90 74 */	addi r3, r13, lbl_802474F4@sda21
/* 800B29F0 000ADF10  38 80 00 00 */	li r4, 0
/* 800B29F4 000ADF14  38 A0 00 03 */	li r5, 3
/* 800B29F8 000ADF18  4B F5 1A 45 */	bl memset
/* 800B29FC 000ADF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B2A00 000ADF20  7C 08 03 A6 */	mtlr r0
/* 800B2A04 000ADF24  38 21 00 10 */	addi r1, r1, 0x10
/* 800B2A08 000ADF28  4E 80 00 20 */	blr

glabel __AXAuxQuit
/* 800B2A0C 000ADF2C  38 00 00 00 */	li r0, 0
/* 800B2A10 000ADF30  90 0D 90 70 */	stw r0, lbl_802474F0@sda21(r13)
/* 800B2A14 000ADF34  90 0D 90 6C */	stw r0, lbl_802474EC@sda21(r13)
/* 800B2A18 000ADF38  90 0D 90 68 */	stw r0, lbl_802474E8@sda21(r13)
/* 800B2A1C 000ADF3C  4E 80 00 20 */	blr

glabel __AXGetAuxAInput
/* 800B2A20 000ADF40  80 0D 90 70 */	lwz r0, lbl_802474F0@sda21(r13)
/* 800B2A24 000ADF44  2C 00 00 00 */	cmpwi r0, 0
/* 800B2A28 000ADF48  41 82 00 20 */	beq .L_800B2A48
/* 800B2A2C 000ADF4C  80 0D 90 40 */	lwz r0, lbl_802474C0@sda21(r13)
/* 800B2A30 000ADF50  3C 80 80 1D */	lis r4, lbl_801CB2A0@ha
/* 800B2A34 000ADF54  38 84 B2 A0 */	addi r4, r4, lbl_801CB2A0@l
/* 800B2A38 000ADF58  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2A3C 000ADF5C  7C 04 02 14 */	add r0, r4, r0
/* 800B2A40 000ADF60  90 03 00 00 */	stw r0, 0(r3)
/* 800B2A44 000ADF64  4E 80 00 20 */	blr
.L_800B2A48:
/* 800B2A48 000ADF68  38 00 00 00 */	li r0, 0
/* 800B2A4C 000ADF6C  90 03 00 00 */	stw r0, 0(r3)
/* 800B2A50 000ADF70  4E 80 00 20 */	blr

glabel __AXGetAuxAOutput
/* 800B2A54 000ADF74  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2A58 000ADF78  3C 80 80 1D */	lis r4, lbl_801CB2A0@ha
/* 800B2A5C 000ADF7C  38 84 B2 A0 */	addi r4, r4, lbl_801CB2A0@l
/* 800B2A60 000ADF80  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2A64 000ADF84  7C 04 02 14 */	add r0, r4, r0
/* 800B2A68 000ADF88  90 03 00 00 */	stw r0, 0(r3)
/* 800B2A6C 000ADF8C  4E 80 00 20 */	blr

glabel __AXGetAuxAInputDpl2
/* 800B2A70 000ADF90  80 0D 90 40 */	lwz r0, lbl_802474C0@sda21(r13)
/* 800B2A74 000ADF94  3C 80 80 1D */	lis r4, lbl_801CB2A0@ha
/* 800B2A78 000ADF98  38 84 B2 A0 */	addi r4, r4, lbl_801CB2A0@l
/* 800B2A7C 000ADF9C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2A80 000ADFA0  7C 84 02 14 */	add r4, r4, r0
/* 800B2A84 000ADFA4  38 04 04 80 */	addi r0, r4, 0x480
/* 800B2A88 000ADFA8  90 03 00 00 */	stw r0, 0(r3)
/* 800B2A8C 000ADFAC  4E 80 00 20 */	blr

glabel __AXGetAuxAOutputDpl2R
/* 800B2A90 000ADFB0  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2A94 000ADFB4  3C 80 80 1D */	lis r4, lbl_801CB2A0@ha
/* 800B2A98 000ADFB8  38 84 B2 A0 */	addi r4, r4, lbl_801CB2A0@l
/* 800B2A9C 000ADFBC  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2AA0 000ADFC0  7C 84 02 14 */	add r4, r4, r0
/* 800B2AA4 000ADFC4  38 04 01 80 */	addi r0, r4, 0x180
/* 800B2AA8 000ADFC8  90 03 00 00 */	stw r0, 0(r3)
/* 800B2AAC 000ADFCC  4E 80 00 20 */	blr

glabel __AXGetAuxAOutputDpl2Ls
/* 800B2AB0 000ADFD0  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2AB4 000ADFD4  3C 80 80 1D */	lis r4, lbl_801CB2A0@ha
/* 800B2AB8 000ADFD8  38 84 B2 A0 */	addi r4, r4, lbl_801CB2A0@l
/* 800B2ABC 000ADFDC  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2AC0 000ADFE0  7C 84 02 14 */	add r4, r4, r0
/* 800B2AC4 000ADFE4  38 04 03 00 */	addi r0, r4, 0x300
/* 800B2AC8 000ADFE8  90 03 00 00 */	stw r0, 0(r3)
/* 800B2ACC 000ADFEC  4E 80 00 20 */	blr

glabel __AXGetAuxAOutputDpl2Rs
/* 800B2AD0 000ADFF0  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2AD4 000ADFF4  3C 80 80 1D */	lis r4, lbl_801CB2A0@ha
/* 800B2AD8 000ADFF8  38 84 B2 A0 */	addi r4, r4, lbl_801CB2A0@l
/* 800B2ADC 000ADFFC  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2AE0 000AE000  7C 84 02 14 */	add r4, r4, r0
/* 800B2AE4 000AE004  38 04 04 80 */	addi r0, r4, 0x480
/* 800B2AE8 000AE008  90 03 00 00 */	stw r0, 0(r3)
/* 800B2AEC 000AE00C  4E 80 00 20 */	blr

glabel __AXGetAuxBInput
/* 800B2AF0 000AE010  80 0D 90 6C */	lwz r0, lbl_802474EC@sda21(r13)
/* 800B2AF4 000AE014  2C 00 00 00 */	cmpwi r0, 0
/* 800B2AF8 000AE018  41 82 00 20 */	beq .L_800B2B18
/* 800B2AFC 000AE01C  80 0D 90 40 */	lwz r0, lbl_802474C0@sda21(r13)
/* 800B2B00 000AE020  3C 80 80 1D */	lis r4, lbl_801CC4A0@ha
/* 800B2B04 000AE024  38 84 C4 A0 */	addi r4, r4, lbl_801CC4A0@l
/* 800B2B08 000AE028  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2B0C 000AE02C  7C 04 02 14 */	add r0, r4, r0
/* 800B2B10 000AE030  90 03 00 00 */	stw r0, 0(r3)
/* 800B2B14 000AE034  4E 80 00 20 */	blr
.L_800B2B18:
/* 800B2B18 000AE038  38 00 00 00 */	li r0, 0
/* 800B2B1C 000AE03C  90 03 00 00 */	stw r0, 0(r3)
/* 800B2B20 000AE040  4E 80 00 20 */	blr

glabel __AXGetAuxBOutput
/* 800B2B24 000AE044  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2B28 000AE048  3C 80 80 1D */	lis r4, lbl_801CC4A0@ha
/* 800B2B2C 000AE04C  38 84 C4 A0 */	addi r4, r4, lbl_801CC4A0@l
/* 800B2B30 000AE050  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2B34 000AE054  7C 04 02 14 */	add r0, r4, r0
/* 800B2B38 000AE058  90 03 00 00 */	stw r0, 0(r3)
/* 800B2B3C 000AE05C  4E 80 00 20 */	blr

glabel __AXGetAuxBInputDpl2
/* 800B2B40 000AE060  80 0D 90 40 */	lwz r0, lbl_802474C0@sda21(r13)
/* 800B2B44 000AE064  3C 80 80 1D */	lis r4, lbl_801CC4A0@ha
/* 800B2B48 000AE068  38 84 C4 A0 */	addi r4, r4, lbl_801CC4A0@l
/* 800B2B4C 000AE06C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2B50 000AE070  7C 84 02 14 */	add r4, r4, r0
/* 800B2B54 000AE074  38 04 04 80 */	addi r0, r4, 0x480
/* 800B2B58 000AE078  90 03 00 00 */	stw r0, 0(r3)
/* 800B2B5C 000AE07C  4E 80 00 20 */	blr

glabel __AXGetAuxBOutputDpl2R
/* 800B2B60 000AE080  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2B64 000AE084  3C 80 80 1D */	lis r4, lbl_801CC4A0@ha
/* 800B2B68 000AE088  38 84 C4 A0 */	addi r4, r4, lbl_801CC4A0@l
/* 800B2B6C 000AE08C  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2B70 000AE090  7C 84 02 14 */	add r4, r4, r0
/* 800B2B74 000AE094  38 04 01 80 */	addi r0, r4, 0x180
/* 800B2B78 000AE098  90 03 00 00 */	stw r0, 0(r3)
/* 800B2B7C 000AE09C  4E 80 00 20 */	blr

glabel __AXGetAuxBOutputDpl2Ls
/* 800B2B80 000AE0A0  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2B84 000AE0A4  3C 80 80 1D */	lis r4, lbl_801CC4A0@ha
/* 800B2B88 000AE0A8  38 84 C4 A0 */	addi r4, r4, lbl_801CC4A0@l
/* 800B2B8C 000AE0AC  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2B90 000AE0B0  7C 84 02 14 */	add r4, r4, r0
/* 800B2B94 000AE0B4  38 04 03 00 */	addi r0, r4, 0x300
/* 800B2B98 000AE0B8  90 03 00 00 */	stw r0, 0(r3)
/* 800B2B9C 000AE0BC  4E 80 00 20 */	blr

glabel __AXGetAuxBOutputDpl2Rs
/* 800B2BA0 000AE0C0  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2BA4 000AE0C4  3C 80 80 1D */	lis r4, lbl_801CC4A0@ha
/* 800B2BA8 000AE0C8  38 84 C4 A0 */	addi r4, r4, lbl_801CC4A0@l
/* 800B2BAC 000AE0CC  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2BB0 000AE0D0  7C 84 02 14 */	add r4, r4, r0
/* 800B2BB4 000AE0D4  38 04 04 80 */	addi r0, r4, 0x480
/* 800B2BB8 000AE0D8  90 03 00 00 */	stw r0, 0(r3)
/* 800B2BBC 000AE0DC  4E 80 00 20 */	blr

glabel __AXGetAuxCInput
/* 800B2BC0 000AE0E0  80 0D 90 68 */	lwz r0, lbl_802474E8@sda21(r13)
/* 800B2BC4 000AE0E4  2C 00 00 00 */	cmpwi r0, 0
/* 800B2BC8 000AE0E8  41 82 00 20 */	beq .L_800B2BE8
/* 800B2BCC 000AE0EC  80 0D 90 40 */	lwz r0, lbl_802474C0@sda21(r13)
/* 800B2BD0 000AE0F0  3C 80 80 1D */	lis r4, lbl_801CD6A0@ha
/* 800B2BD4 000AE0F4  38 84 D6 A0 */	addi r4, r4, lbl_801CD6A0@l
/* 800B2BD8 000AE0F8  1C 00 04 80 */	mulli r0, r0, 0x480
/* 800B2BDC 000AE0FC  7C 04 02 14 */	add r0, r4, r0
/* 800B2BE0 000AE100  90 03 00 00 */	stw r0, 0(r3)
/* 800B2BE4 000AE104  4E 80 00 20 */	blr
.L_800B2BE8:
/* 800B2BE8 000AE108  38 00 00 00 */	li r0, 0
/* 800B2BEC 000AE10C  90 03 00 00 */	stw r0, 0(r3)
/* 800B2BF0 000AE110  4E 80 00 20 */	blr

glabel __AXGetAuxCOutput
/* 800B2BF4 000AE114  80 0D 90 3C */	lwz r0, lbl_802474BC@sda21(r13)
/* 800B2BF8 000AE118  3C 80 80 1D */	lis r4, lbl_801CD6A0@ha
/* 800B2BFC 000AE11C  38 84 D6 A0 */	addi r4, r4, lbl_801CD6A0@l
/* 800B2C00 000AE120  1C 00 04 80 */	mulli r0, r0, 0x480
/* 800B2C04 000AE124  7C 04 02 14 */	add r0, r4, r0
/* 800B2C08 000AE128  90 03 00 00 */	stw r0, 0(r3)
/* 800B2C0C 000AE12C  4E 80 00 20 */	blr

glabel __AXProcessAux
/* 800B2C10 000AE130  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800B2C14 000AE134  7C 08 02 A6 */	mflr r0
/* 800B2C18 000AE138  90 01 00 64 */	stw r0, 0x64(r1)
/* 800B2C1C 000AE13C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800B2C20 000AE140  3F E0 80 1D */	lis r31, lbl_801CB2A0@ha
/* 800B2C24 000AE144  3B FF B2 A0 */	addi r31, r31, lbl_801CB2A0@l
/* 800B2C28 000AE148  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800B2C2C 000AE14C  39 5F 00 00 */	addi r10, r31, 0
/* 800B2C30 000AE150  38 DF 12 00 */	addi r6, r31, 0x1200
/* 800B2C34 000AE154  38 BF 24 00 */	addi r5, r31, 0x2400
/* 800B2C38 000AE158  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800B2C3C 000AE15C  80 ED 90 40 */	lwz r7, lbl_802474C0@sda21(r13)
/* 800B2C40 000AE160  81 2D 90 3C */	lwz r9, lbl_802474BC@sda21(r13)
/* 800B2C44 000AE164  1C 67 06 00 */	mulli r3, r7, 0x600
/* 800B2C48 000AE168  80 0D 90 70 */	lwz r0, lbl_802474F0@sda21(r13)
/* 800B2C4C 000AE16C  2C 00 00 00 */	cmpwi r0, 0
/* 800B2C50 000AE170  7C 8A 1A 14 */	add r4, r10, r3
/* 800B2C54 000AE174  7C 66 1A 14 */	add r3, r6, r3
/* 800B2C58 000AE178  90 8D 90 58 */	stw r4, lbl_802474D8@sda21(r13)
/* 800B2C5C 000AE17C  1D 09 06 00 */	mulli r8, r9, 0x600
/* 800B2C60 000AE180  90 6D 90 50 */	stw r3, lbl_802474D0@sda21(r13)
/* 800B2C64 000AE184  1C 87 04 80 */	mulli r4, r7, 0x480
/* 800B2C68 000AE188  7C EA 42 14 */	add r7, r10, r8
/* 800B2C6C 000AE18C  7C C6 42 14 */	add r6, r6, r8
/* 800B2C70 000AE190  90 ED 90 54 */	stw r7, lbl_802474D4@sda21(r13)
/* 800B2C74 000AE194  1C 69 04 80 */	mulli r3, r9, 0x480
/* 800B2C78 000AE198  7C 85 22 14 */	add r4, r5, r4
/* 800B2C7C 000AE19C  90 CD 90 4C */	stw r6, lbl_802474CC@sda21(r13)
/* 800B2C80 000AE1A0  7C 05 1A 14 */	add r0, r5, r3
/* 800B2C84 000AE1A4  90 8D 90 48 */	stw r4, lbl_802474C8@sda21(r13)
/* 800B2C88 000AE1A8  90 0D 90 44 */	stw r0, lbl_802474C4@sda21(r13)
/* 800B2C8C 000AE1AC  41 82 00 B0 */	beq .L_800B2D3C
/* 800B2C90 000AE1B0  80 0D 90 90 */	lwz r0, lbl_80247510@sda21(r13)
/* 800B2C94 000AE1B4  28 00 00 02 */	cmplwi r0, 2
/* 800B2C98 000AE1B8  40 82 00 58 */	bne .L_800B2CF0
/* 800B2C9C 000AE1BC  80 0D 90 38 */	lwz r0, lbl_802474B8@sda21(r13)
/* 800B2CA0 000AE1C0  38 80 06 00 */	li r4, 0x600
/* 800B2CA4 000AE1C4  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2CA8 000AE1C8  7C 6A 02 14 */	add r3, r10, r0
/* 800B2CAC 000AE1CC  38 C3 01 80 */	addi r6, r3, 0x180
/* 800B2CB0 000AE1D0  90 61 00 40 */	stw r3, 0x40(r1)
/* 800B2CB4 000AE1D4  38 A3 03 00 */	addi r5, r3, 0x300
/* 800B2CB8 000AE1D8  38 03 04 80 */	addi r0, r3, 0x480
/* 800B2CBC 000AE1DC  90 C1 00 44 */	stw r6, 0x44(r1)
/* 800B2CC0 000AE1E0  90 A1 00 48 */	stw r5, 0x48(r1)
/* 800B2CC4 000AE1E4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800B2CC8 000AE1E8  4B FD DF 79 */	bl DCInvalidateRange
/* 800B2CCC 000AE1EC  81 8D 90 70 */	lwz r12, lbl_802474F0@sda21(r13)
/* 800B2CD0 000AE1F0  38 61 00 40 */	addi r3, r1, 0x40
/* 800B2CD4 000AE1F4  80 8D 90 64 */	lwz r4, lbl_802474E4@sda21(r13)
/* 800B2CD8 000AE1F8  7D 89 03 A6 */	mtctr r12
/* 800B2CDC 000AE1FC  4E 80 04 21 */	bctrl
/* 800B2CE0 000AE200  80 61 00 40 */	lwz r3, 0x40(r1)
/* 800B2CE4 000AE204  38 80 06 00 */	li r4, 0x600
/* 800B2CE8 000AE208  4B FD DF E5 */	bl DCFlushRangeNoSync
/* 800B2CEC 000AE20C  48 00 00 94 */	b .L_800B2D80
.L_800B2CF0:
/* 800B2CF0 000AE210  80 0D 90 38 */	lwz r0, lbl_802474B8@sda21(r13)
/* 800B2CF4 000AE214  38 80 04 80 */	li r4, 0x480
/* 800B2CF8 000AE218  1C 00 06 00 */	mulli r0, r0, 0x600
/* 800B2CFC 000AE21C  7C 6A 02 14 */	add r3, r10, r0
/* 800B2D00 000AE220  38 A3 01 80 */	addi r5, r3, 0x180
/* 800B2D04 000AE224  90 61 00 30 */	stw r3, 0x30(r1)
/* 800B2D08 000AE228  38 03 03 00 */	addi r0, r3, 0x300
/* 800B2D0C 000AE22C  90 A1 00 34 */	stw r5, 0x34(r1)
/* 800B2D10 000AE230  90 01 00 38 */	stw r0, 0x38(r1)
/* 800B2D14 000AE234  4B FD DF 2D */	bl DCInvalidateRange
/* 800B2D18 000AE238  81 8D 90 70 */	lwz r12, lbl_802474F0@sda21(r13)
/* 800B2D1C 000AE23C  38 61 00 30 */	addi r3, r1, 0x30
/* 800B2D20 000AE240  80 8D 90 64 */	lwz r4, lbl_802474E4@sda21(r13)
/* 800B2D24 000AE244  7D 89 03 A6 */	mtctr r12
/* 800B2D28 000AE248  4E 80 04 21 */	bctrl
/* 800B2D2C 000AE24C  80 61 00 30 */	lwz r3, 0x30(r1)
/* 800B2D30 000AE250  38 80 04 80 */	li r4, 0x480
/* 800B2D34 000AE254  4B FD DF 99 */	bl DCFlushRangeNoSync
/* 800B2D38 000AE258  48 00 00 48 */	b .L_800B2D80
.L_800B2D3C:
/* 800B2D3C 000AE25C  80 6D 90 38 */	lwz r3, lbl_802474B8@sda21(r13)
/* 800B2D40 000AE260  3B CD 90 7C */	addi r30, r13, lbl_802474FC@sda21
/* 800B2D44 000AE264  7C 1E 18 AE */	lbzx r0, r30, r3
/* 800B2D48 000AE268  2C 00 00 00 */	cmpwi r0, 0
/* 800B2D4C 000AE26C  41 82 00 34 */	beq .L_800B2D80
/* 800B2D50 000AE270  1C 03 06 00 */	mulli r0, r3, 0x600
/* 800B2D54 000AE274  38 80 00 00 */	li r4, 0
/* 800B2D58 000AE278  38 A0 06 00 */	li r5, 0x600
/* 800B2D5C 000AE27C  7F AA 02 14 */	add r29, r10, r0
/* 800B2D60 000AE280  7F A3 EB 78 */	mr r3, r29
/* 800B2D64 000AE284  4B F5 16 D9 */	bl memset
/* 800B2D68 000AE288  7F A3 EB 78 */	mr r3, r29
/* 800B2D6C 000AE28C  38 80 06 00 */	li r4, 0x600
/* 800B2D70 000AE290  4B FD DE FD */	bl DCFlushRange
/* 800B2D74 000AE294  80 0D 90 38 */	lwz r0, lbl_802474B8@sda21(r13)
/* 800B2D78 000AE298  38 60 00 00 */	li r3, 0
/* 800B2D7C 000AE29C  7C 7E 01 AE */	stbx r3, r30, r0
.L_800B2D80:
/* 800B2D80 000AE2A0  80 0D 90 6C */	lwz r0, lbl_802474EC@sda21(r13)
/* 800B2D84 000AE2A4  2C 00 00 00 */	cmpwi r0, 0
/* 800B2D88 000AE2A8  41 82 00 B8 */	beq .L_800B2E40
/* 800B2D8C 000AE2AC  80 0D 90 90 */	lwz r0, lbl_80247510@sda21(r13)
/* 800B2D90 000AE2B0  28 00 00 02 */	cmplwi r0, 2
/* 800B2D94 000AE2B4  40 82 00 5C */	bne .L_800B2DF0
/* 800B2D98 000AE2B8  80 6D 90 38 */	lwz r3, lbl_802474B8@sda21(r13)
/* 800B2D9C 000AE2BC  38 1F 12 00 */	addi r0, r31, 0x1200
/* 800B2DA0 000AE2C0  38 80 06 00 */	li r4, 0x600
/* 800B2DA4 000AE2C4  1C 63 06 00 */	mulli r3, r3, 0x600
/* 800B2DA8 000AE2C8  7C 60 1A 14 */	add r3, r0, r3
/* 800B2DAC 000AE2CC  38 C3 01 80 */	addi r6, r3, 0x180
/* 800B2DB0 000AE2D0  90 61 00 20 */	stw r3, 0x20(r1)
/* 800B2DB4 000AE2D4  38 A3 03 00 */	addi r5, r3, 0x300
/* 800B2DB8 000AE2D8  38 03 04 80 */	addi r0, r3, 0x480
/* 800B2DBC 000AE2DC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 800B2DC0 000AE2E0  90 A1 00 28 */	stw r5, 0x28(r1)
/* 800B2DC4 000AE2E4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800B2DC8 000AE2E8  4B FD DE 79 */	bl DCInvalidateRange

glabel lbl_800B2DCC
/* 800B2DCC 000AE2EC  81 8D 90 6C */	lwz r12, lbl_802474EC@sda21(r13)
/* 800B2DD0 000AE2F0  38 61 00 20 */	addi r3, r1, 0x20
/* 800B2DD4 000AE2F4  80 8D 90 60 */	lwz r4, lbl_802474E0@sda21(r13)
/* 800B2DD8 000AE2F8  7D 89 03 A6 */	mtctr r12
/* 800B2DDC 000AE2FC  4E 80 04 21 */	bctrl
/* 800B2DE0 000AE300  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800B2DE4 000AE304  38 80 06 00 */	li r4, 0x600
/* 800B2DE8 000AE308  4B FD DE E5 */	bl DCFlushRangeNoSync
/* 800B2DEC 000AE30C  48 00 00 9C */	b .L_800B2E88
.L_800B2DF0:
/* 800B2DF0 000AE310  80 6D 90 38 */	lwz r3, lbl_802474B8@sda21(r13)
/* 800B2DF4 000AE314  38 1F 12 00 */	addi r0, r31, 0x1200
/* 800B2DF8 000AE318  38 80 04 80 */	li r4, 0x480
/* 800B2DFC 000AE31C  1C 63 06 00 */	mulli r3, r3, 0x600
/* 800B2E00 000AE320  7C 60 1A 14 */	add r3, r0, r3
/* 800B2E04 000AE324  38 A3 01 80 */	addi r5, r3, 0x180
/* 800B2E08 000AE328  90 61 00 14 */	stw r3, 0x14(r1)
/* 800B2E0C 000AE32C  38 03 03 00 */	addi r0, r3, 0x300
/* 800B2E10 000AE330  90 A1 00 18 */	stw r5, 0x18(r1)
/* 800B2E14 000AE334  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800B2E18 000AE338  4B FD DE 29 */	bl DCInvalidateRange
/* 800B2E1C 000AE33C  81 8D 90 6C */	lwz r12, lbl_802474EC@sda21(r13)
/* 800B2E20 000AE340  38 61 00 14 */	addi r3, r1, 0x14
/* 800B2E24 000AE344  80 8D 90 60 */	lwz r4, lbl_802474E0@sda21(r13)
/* 800B2E28 000AE348  7D 89 03 A6 */	mtctr r12
/* 800B2E2C 000AE34C  4E 80 04 21 */	bctrl
/* 800B2E30 000AE350  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800B2E34 000AE354  38 80 04 80 */	li r4, 0x480
/* 800B2E38 000AE358  4B FD DE 95 */	bl DCFlushRangeNoSync
/* 800B2E3C 000AE35C  48 00 00 4C */	b .L_800B2E88
.L_800B2E40:
/* 800B2E40 000AE360  80 6D 90 38 */	lwz r3, lbl_802474B8@sda21(r13)
/* 800B2E44 000AE364  3B CD 90 78 */	addi r30, r13, lbl_802474F8@sda21
/* 800B2E48 000AE368  7C 1E 18 AE */	lbzx r0, r30, r3
/* 800B2E4C 000AE36C  2C 00 00 00 */	cmpwi r0, 0
/* 800B2E50 000AE370  41 82 00 38 */	beq .L_800B2E88
/* 800B2E54 000AE374  1C 63 06 00 */	mulli r3, r3, 0x600
/* 800B2E58 000AE378  38 1F 12 00 */	addi r0, r31, 0x1200
/* 800B2E5C 000AE37C  38 80 00 00 */	li r4, 0
/* 800B2E60 000AE380  38 A0 06 00 */	li r5, 0x600
/* 800B2E64 000AE384  7F A0 1A 14 */	add r29, r0, r3
/* 800B2E68 000AE388  7F A3 EB 78 */	mr r3, r29
/* 800B2E6C 000AE38C  4B F5 15 D1 */	bl memset
/* 800B2E70 000AE390  7F A3 EB 78 */	mr r3, r29
/* 800B2E74 000AE394  38 80 06 00 */	li r4, 0x600
/* 800B2E78 000AE398  4B FD DD F5 */	bl DCFlushRange
/* 800B2E7C 000AE39C  80 0D 90 38 */	lwz r0, lbl_802474B8@sda21(r13)
/* 800B2E80 000AE3A0  38 60 00 00 */	li r3, 0
/* 800B2E84 000AE3A4  7C 7E 01 AE */	stbx r3, r30, r0
.L_800B2E88:
/* 800B2E88 000AE3A8  80 0D 90 68 */	lwz r0, lbl_802474E8@sda21(r13)
/* 800B2E8C 000AE3AC  2C 00 00 00 */	cmpwi r0, 0
/* 800B2E90 000AE3B0  41 82 00 60 */	beq .L_800B2EF0
/* 800B2E94 000AE3B4  80 0D 90 90 */	lwz r0, lbl_80247510@sda21(r13)
/* 800B2E98 000AE3B8  28 00 00 02 */	cmplwi r0, 2
/* 800B2E9C 000AE3BC  41 82 00 54 */	beq .L_800B2EF0
/* 800B2EA0 000AE3C0  80 6D 90 38 */	lwz r3, lbl_802474B8@sda21(r13)
/* 800B2EA4 000AE3C4  38 1F 24 00 */	addi r0, r31, 0x2400
/* 800B2EA8 000AE3C8  38 80 04 80 */	li r4, 0x480
/* 800B2EAC 000AE3CC  1C 63 04 80 */	mulli r3, r3, 0x480
/* 800B2EB0 000AE3D0  7C 60 1A 14 */	add r3, r0, r3
/* 800B2EB4 000AE3D4  38 A3 01 80 */	addi r5, r3, 0x180
/* 800B2EB8 000AE3D8  90 61 00 08 */	stw r3, 8(r1)
/* 800B2EBC 000AE3DC  38 03 03 00 */	addi r0, r3, 0x300
/* 800B2EC0 000AE3E0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 800B2EC4 000AE3E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 800B2EC8 000AE3E8  4B FD DD 79 */	bl DCInvalidateRange
/* 800B2ECC 000AE3EC  81 8D 90 68 */	lwz r12, lbl_802474E8@sda21(r13)
/* 800B2ED0 000AE3F0  38 61 00 08 */	addi r3, r1, 8
/* 800B2ED4 000AE3F4  80 8D 90 5C */	lwz r4, lbl_802474DC@sda21(r13)
/* 800B2ED8 000AE3F8  7D 89 03 A6 */	mtctr r12
/* 800B2EDC 000AE3FC  4E 80 04 21 */	bctrl
/* 800B2EE0 000AE400  80 61 00 08 */	lwz r3, 8(r1)
/* 800B2EE4 000AE404  38 80 04 80 */	li r4, 0x480
/* 800B2EE8 000AE408  4B FD DD E5 */	bl DCFlushRangeNoSync
/* 800B2EEC 000AE40C  48 00 00 58 */	b .L_800B2F44
.L_800B2EF0:
/* 800B2EF0 000AE410  80 0D 90 68 */	lwz r0, lbl_802474E8@sda21(r13)
/* 800B2EF4 000AE414  2C 00 00 00 */	cmpwi r0, 0
/* 800B2EF8 000AE418  40 82 00 4C */	bne .L_800B2F44
/* 800B2EFC 000AE41C  80 6D 90 38 */	lwz r3, lbl_802474B8@sda21(r13)
/* 800B2F00 000AE420  3B CD 90 74 */	addi r30, r13, lbl_802474F4@sda21
/* 800B2F04 000AE424  7C 1E 18 AE */	lbzx r0, r30, r3
/* 800B2F08 000AE428  2C 00 00 00 */	cmpwi r0, 0
/* 800B2F0C 000AE42C  41 82 00 38 */	beq .L_800B2F44
/* 800B2F10 000AE430  1C 63 04 80 */	mulli r3, r3, 0x480
/* 800B2F14 000AE434  38 1F 24 00 */	addi r0, r31, 0x2400
/* 800B2F18 000AE438  38 80 00 00 */	li r4, 0
/* 800B2F1C 000AE43C  38 A0 04 80 */	li r5, 0x480
/* 800B2F20 000AE440  7F A0 1A 14 */	add r29, r0, r3
/* 800B2F24 000AE444  7F A3 EB 78 */	mr r3, r29
/* 800B2F28 000AE448  4B F5 15 15 */	bl memset
/* 800B2F2C 000AE44C  7F A3 EB 78 */	mr r3, r29
/* 800B2F30 000AE450  38 80 04 80 */	li r4, 0x480
/* 800B2F34 000AE454  4B FD DD 39 */	bl DCFlushRange
/* 800B2F38 000AE458  80 0D 90 38 */	lwz r0, lbl_802474B8@sda21(r13)
/* 800B2F3C 000AE45C  38 60 00 00 */	li r3, 0
/* 800B2F40 000AE460  7C 7E 01 AE */	stbx r3, r30, r0
.L_800B2F44:
/* 800B2F44 000AE464  3C 60 AA AB */	lis r3, 0xAAAAAAAB@ha
/* 800B2F48 000AE468  80 AD 90 40 */	lwz r5, lbl_802474C0@sda21(r13)
/* 800B2F4C 000AE46C  38 03 AA AB */	addi r0, r3, 0xAAAAAAAB@l
/* 800B2F50 000AE470  80 6D 90 38 */	lwz r3, lbl_802474B8@sda21(r13)
/* 800B2F54 000AE474  80 8D 90 3C */	lwz r4, lbl_802474BC@sda21(r13)
/* 800B2F58 000AE478  38 E5 00 01 */	addi r7, r5, 1
/* 800B2F5C 000AE47C  38 63 00 01 */	addi r3, r3, 1
/* 800B2F60 000AE480  38 A4 00 01 */	addi r5, r4, 1
/* 800B2F64 000AE484  7C C0 38 16 */	mulhwu r6, r0, r7
/* 800B2F68 000AE488  7C 80 28 16 */	mulhwu r4, r0, r5
/* 800B2F6C 000AE48C  54 C6 F8 7E */	srwi r6, r6, 1
/* 800B2F70 000AE490  7C 00 18 16 */	mulhwu r0, r0, r3
/* 800B2F74 000AE494  54 84 F8 7E */	srwi r4, r4, 1
/* 800B2F78 000AE498  1C C6 00 03 */	mulli r6, r6, 3
/* 800B2F7C 000AE49C  54 00 F8 7E */	srwi r0, r0, 1
/* 800B2F80 000AE4A0  1C 84 00 03 */	mulli r4, r4, 3
/* 800B2F84 000AE4A4  7C C6 38 50 */	subf r6, r6, r7
/* 800B2F88 000AE4A8  90 CD 90 40 */	stw r6, lbl_802474C0@sda21(r13)
/* 800B2F8C 000AE4AC  1C 00 00 03 */	mulli r0, r0, 3
/* 800B2F90 000AE4B0  7C 84 28 50 */	subf r4, r4, r5
/* 800B2F94 000AE4B4  90 8D 90 3C */	stw r4, lbl_802474BC@sda21(r13)
/* 800B2F98 000AE4B8  7C 00 18 50 */	subf r0, r0, r3
/* 800B2F9C 000AE4BC  90 0D 90 38 */	stw r0, lbl_802474B8@sda21(r13)
/* 800B2FA0 000AE4C0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800B2FA4 000AE4C4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800B2FA8 000AE4C8  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800B2FAC 000AE4CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800B2FB0 000AE4D0  7C 08 03 A6 */	mtlr r0
/* 800B2FB4 000AE4D4  38 21 00 60 */	addi r1, r1, 0x60
/* 800B2FB8 000AE4D8  4E 80 00 20 */	blr

glabel AXRegisterAuxACallback
/* 800B2FBC 000AE4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B2FC0 000AE4E0  7C 08 02 A6 */	mflr r0
/* 800B2FC4 000AE4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2FC8 000AE4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B2FCC 000AE4EC  7C 7F 1B 78 */	mr r31, r3
/* 800B2FD0 000AE4F0  93 C1 00 08 */	stw r30, 8(r1)
/* 800B2FD4 000AE4F4  7C 9E 23 78 */	mr r30, r4
/* 800B2FD8 000AE4F8  4B FE 22 DD */	bl OSDisableInterrupts
/* 800B2FDC 000AE4FC  2C 1F 00 00 */	cmpwi r31, 0
/* 800B2FE0 000AE500  93 ED 90 70 */	stw r31, lbl_802474F0@sda21(r13)
/* 800B2FE4 000AE504  7C 7F 1B 78 */	mr r31, r3
/* 800B2FE8 000AE508  93 CD 90 64 */	stw r30, lbl_802474E4@sda21(r13)
/* 800B2FEC 000AE50C  40 82 00 14 */	bne .L_800B3000
/* 800B2FF0 000AE510  38 6D 90 7C */	addi r3, r13, lbl_802474FC@sda21
/* 800B2FF4 000AE514  38 80 00 01 */	li r4, 1
/* 800B2FF8 000AE518  38 A0 00 03 */	li r5, 3
/* 800B2FFC 000AE51C  4B F5 14 41 */	bl memset
.L_800B3000:
/* 800B3000 000AE520  7F E3 FB 78 */	mr r3, r31
/* 800B3004 000AE524  4B FE 22 D9 */	bl OSRestoreInterrupts
/* 800B3008 000AE528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B300C 000AE52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B3010 000AE530  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B3014 000AE534  7C 08 03 A6 */	mtlr r0
/* 800B3018 000AE538  38 21 00 10 */	addi r1, r1, 0x10
/* 800B301C 000AE53C  4E 80 00 20 */	blr

glabel AXRegisterAuxBCallback
/* 800B3020 000AE540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B3024 000AE544  7C 08 02 A6 */	mflr r0
/* 800B3028 000AE548  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B302C 000AE54C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B3030 000AE550  7C 7F 1B 78 */	mr r31, r3
/* 800B3034 000AE554  93 C1 00 08 */	stw r30, 8(r1)
/* 800B3038 000AE558  7C 9E 23 78 */	mr r30, r4
/* 800B303C 000AE55C  4B FE 22 79 */	bl OSDisableInterrupts
/* 800B3040 000AE560  2C 1F 00 00 */	cmpwi r31, 0
/* 800B3044 000AE564  93 ED 90 6C */	stw r31, lbl_802474EC@sda21(r13)
/* 800B3048 000AE568  7C 7F 1B 78 */	mr r31, r3
/* 800B304C 000AE56C  93 CD 90 60 */	stw r30, lbl_802474E0@sda21(r13)
/* 800B3050 000AE570  40 82 00 14 */	bne .L_800B3064
/* 800B3054 000AE574  38 6D 90 78 */	addi r3, r13, lbl_802474F8@sda21
/* 800B3058 000AE578  38 80 00 01 */	li r4, 1
/* 800B305C 000AE57C  38 A0 00 03 */	li r5, 3
/* 800B3060 000AE580  4B F5 13 DD */	bl memset
.L_800B3064:
/* 800B3064 000AE584  7F E3 FB 78 */	mr r3, r31
/* 800B3068 000AE588  4B FE 22 75 */	bl OSRestoreInterrupts
/* 800B306C 000AE58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B3070 000AE590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B3074 000AE594  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B3078 000AE598  7C 08 03 A6 */	mtlr r0
/* 800B307C 000AE59C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B3080 000AE5A0  4E 80 00 20 */	blr

glabel AXRegisterAuxCCallback
/* 800B3084 000AE5A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B3088 000AE5A8  7C 08 02 A6 */	mflr r0
/* 800B308C 000AE5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B3090 000AE5B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B3094 000AE5B4  7C 7F 1B 78 */	mr r31, r3
/* 800B3098 000AE5B8  93 C1 00 08 */	stw r30, 8(r1)
/* 800B309C 000AE5BC  7C 9E 23 78 */	mr r30, r4
/* 800B30A0 000AE5C0  4B FE 22 15 */	bl OSDisableInterrupts
/* 800B30A4 000AE5C4  2C 1F 00 00 */	cmpwi r31, 0
/* 800B30A8 000AE5C8  93 ED 90 68 */	stw r31, lbl_802474E8@sda21(r13)
/* 800B30AC 000AE5CC  7C 7F 1B 78 */	mr r31, r3
/* 800B30B0 000AE5D0  93 CD 90 5C */	stw r30, lbl_802474DC@sda21(r13)
/* 800B30B4 000AE5D4  40 82 00 14 */	bne .L_800B30C8
/* 800B30B8 000AE5D8  38 6D 90 74 */	addi r3, r13, lbl_802474F4@sda21
/* 800B30BC 000AE5DC  38 80 00 01 */	li r4, 1
/* 800B30C0 000AE5E0  38 A0 00 03 */	li r5, 3
/* 800B30C4 000AE5E4  4B F5 13 79 */	bl memset
.L_800B30C8:
/* 800B30C8 000AE5E8  7F E3 FB 78 */	mr r3, r31
/* 800B30CC 000AE5EC  4B FE 22 11 */	bl OSRestoreInterrupts
/* 800B30D0 000AE5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B30D4 000AE5F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B30D8 000AE5F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B30DC 000AE5FC  7C 08 03 A6 */	mtlr r0
/* 800B30E0 000AE600  38 21 00 10 */	addi r1, r1, 0x10
/* 800B30E4 000AE604  4E 80 00 20 */	blr

glabel AXGetAuxACallback
/* 800B30E8 000AE608  80 0D 90 70 */	lwz r0, lbl_802474F0@sda21(r13)
/* 800B30EC 000AE60C  90 03 00 00 */	stw r0, 0(r3)
/* 800B30F0 000AE610  80 0D 90 64 */	lwz r0, lbl_802474E4@sda21(r13)
/* 800B30F4 000AE614  90 04 00 00 */	stw r0, 0(r4)
/* 800B30F8 000AE618  4E 80 00 20 */	blr

glabel AXGetAuxBCallback
/* 800B30FC 000AE61C  80 0D 90 6C */	lwz r0, lbl_802474EC@sda21(r13)
/* 800B3100 000AE620  90 03 00 00 */	stw r0, 0(r3)
/* 800B3104 000AE624  80 0D 90 60 */	lwz r0, lbl_802474E0@sda21(r13)
/* 800B3108 000AE628  90 04 00 00 */	stw r0, 0(r4)
/* 800B310C 000AE62C  4E 80 00 20 */	blr

glabel AXGetAuxCCallback
/* 800B3110 000AE630  80 0D 90 68 */	lwz r0, lbl_802474E8@sda21(r13)
/* 800B3114 000AE634  90 03 00 00 */	stw r0, 0(r3)
/* 800B3118 000AE638  80 0D 90 5C */	lwz r0, lbl_802474DC@sda21(r13)
/* 800B311C 000AE63C  90 04 00 00 */	stw r0, 0(r4)
/* 800B3120 000AE640  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_801CB2A0
	.skip 0x1200

glabel lbl_801CC4A0
	.skip 0x1200

glabel lbl_801CD6A0
	.skip 0xD80

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_802474B8
	.skip 0x4

glabel lbl_802474BC
	.skip 0x4

glabel lbl_802474C0
	.skip 0x4

glabel lbl_802474C4
	.skip 0x4

glabel lbl_802474C8
	.skip 0x4

glabel lbl_802474CC
	.skip 0x4

glabel lbl_802474D0
	.skip 0x4

glabel lbl_802474D4
	.skip 0x4

glabel lbl_802474D8
	.skip 0x4

glabel lbl_802474DC
	.skip 0x4

glabel lbl_802474E0
	.skip 0x4

glabel lbl_802474E4
	.skip 0x4

glabel lbl_802474E8
	.skip 0x4

glabel lbl_802474EC
	.skip 0x4

glabel lbl_802474F0
	.skip 0x4

glabel lbl_802474F4
	.skip 0x4

glabel lbl_802474F8
	.skip 0x4

glabel lbl_802474FC
	.skip 0x4
