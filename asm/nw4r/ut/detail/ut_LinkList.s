.include "macros.inc"

.section .text, "ax"

glabel __dt__Q46nw4hbm2ut6detail12LinkListImplFv
/* 8014BF0C 0014742C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014BF10 00147430  7C 08 02 A6 */	mflr r0
/* 8014BF14 00147434  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014BF18 00147438  39 61 00 30 */	addi r11, r1, 0x30
/* 8014BF1C 0014743C  48 01 0A 19 */	bl _savegpr_23
/* 8014BF20 00147440  2C 03 00 00 */	cmpwi r3, 0
/* 8014BF24 00147444  3F A0 80 1B */	lis r29, lbl_801ABCE8@ha
/* 8014BF28 00147448  7C 77 1B 78 */	mr r23, r3
/* 8014BF2C 0014744C  7C 98 23 78 */	mr r24, r4
/* 8014BF30 00147450  3B BD BC E8 */	addi r29, r29, lbl_801ABCE8@l
/* 8014BF34 00147454  41 82 00 E8 */	beq .L_8014C01C
/* 8014BF38 00147458  83 83 00 04 */	lwz r28, 4(r3)
/* 8014BF3C 0014745C  3B C3 00 04 */	addi r30, r3, 4
/* 8014BF40 00147460  3B E0 00 00 */	li r31, 0
/* 8014BF44 00147464  48 00 00 C0 */	b .L_8014C004
.L_8014BF48:
/* 8014BF48 00147468  80 17 00 00 */	lwz r0, 0(r23)
/* 8014BF4C 0014746C  83 7C 00 00 */	lwz r27, 0(r28)
/* 8014BF50 00147470  2C 00 00 00 */	cmpwi r0, 0
/* 8014BF54 00147474  40 82 00 18 */	bne .L_8014BF6C
/* 8014BF58 00147478  38 7D 00 00 */	addi r3, r29, 0
/* 8014BF5C 0014747C  38 BD 00 10 */	addi r5, r29, 0x10
/* 8014BF60 00147480  38 80 00 60 */	li r4, 0x60
/* 8014BF64 00147484  4C C6 31 82 */	crclr 6
/* 8014BF68 00147488  4B FC 9E 59 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BF6C:
/* 8014BF6C 0014748C  2C 1C 00 00 */	cmpwi r28, 0
/* 8014BF70 00147490  40 82 00 18 */	bne .L_8014BF88
/* 8014BF74 00147494  38 7D 00 00 */	addi r3, r29, 0
/* 8014BF78 00147498  38 BD 00 34 */	addi r5, r29, 0x34
/* 8014BF7C 0014749C  38 80 00 61 */	li r4, 0x61
/* 8014BF80 001474A0  4C C6 31 82 */	crclr 6
/* 8014BF84 001474A4  4B FC 9E 3D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BF88:
/* 8014BF88 001474A8  7C 1C F0 40 */	cmplw r28, r30
/* 8014BF8C 001474AC  40 82 00 18 */	bne .L_8014BFA4
/* 8014BF90 001474B0  38 7D 00 00 */	addi r3, r29, 0
/* 8014BF94 001474B4  38 BD 00 58 */	addi r5, r29, 0x58
/* 8014BF98 001474B8  38 80 00 62 */	li r4, 0x62
/* 8014BF9C 001474BC  4C C6 31 82 */	crclr 6
/* 8014BFA0 001474C0  4B FC 9E 21 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BFA4:
/* 8014BFA4 001474C4  83 3C 00 00 */	lwz r25, 0(r28)
/* 8014BFA8 001474C8  83 5C 00 04 */	lwz r26, 4(r28)
/* 8014BFAC 001474CC  2C 19 00 00 */	cmpwi r25, 0
/* 8014BFB0 001474D0  40 82 00 18 */	bne .L_8014BFC8
/* 8014BFB4 001474D4  38 7D 00 00 */	addi r3, r29, 0
/* 8014BFB8 001474D8  38 BD 00 80 */	addi r5, r29, 0x80
/* 8014BFBC 001474DC  38 80 00 65 */	li r4, 0x65
/* 8014BFC0 001474E0  4C C6 31 82 */	crclr 6
/* 8014BFC4 001474E4  4B FC 9D FD */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BFC8:
/* 8014BFC8 001474E8  2C 1A 00 00 */	cmpwi r26, 0
/* 8014BFCC 001474EC  93 59 00 04 */	stw r26, 4(r25)
/* 8014BFD0 001474F0  40 82 00 18 */	bne .L_8014BFE8
/* 8014BFD4 001474F4  38 7D 00 00 */	addi r3, r29, 0
/* 8014BFD8 001474F8  38 BD 00 A8 */	addi r5, r29, 0xa8
/* 8014BFDC 001474FC  38 80 00 67 */	li r4, 0x67
/* 8014BFE0 00147500  4C C6 31 82 */	crclr 6
/* 8014BFE4 00147504  4B FC 9D DD */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014BFE8:
/* 8014BFE8 00147508  93 3A 00 00 */	stw r25, 0(r26)
/* 8014BFEC 0014750C  80 77 00 00 */	lwz r3, 0(r23)
/* 8014BFF0 00147510  38 03 FF FF */	addi r0, r3, -1
/* 8014BFF4 00147514  90 17 00 00 */	stw r0, 0(r23)
/* 8014BFF8 00147518  93 FC 00 00 */	stw r31, 0(r28)
/* 8014BFFC 0014751C  93 FC 00 04 */	stw r31, 4(r28)
/* 8014C000 00147520  7F 7C DB 78 */	mr r28, r27
.L_8014C004:
/* 8014C004 00147524  7C 1C F0 40 */	cmplw r28, r30
/* 8014C008 00147528  40 82 FF 40 */	bne .L_8014BF48
/* 8014C00C 0014752C  2C 18 00 00 */	cmpwi r24, 0
/* 8014C010 00147530  40 81 00 0C */	ble .L_8014C01C
/* 8014C014 00147534  7E E3 BB 78 */	mr r3, r23
/* 8014C018 00147538  48 01 01 F9 */	bl operator_delete
.L_8014C01C:
/* 8014C01C 0014753C  39 61 00 30 */	addi r11, r1, 0x30
/* 8014C020 00147540  7E E3 BB 78 */	mr r3, r23
/* 8014C024 00147544  48 01 09 5D */	bl _restgpr_23
/* 8014C028 00147548  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014C02C 0014754C  7C 08 03 A6 */	mtlr r0
/* 8014C030 00147550  38 21 00 30 */	addi r1, r1, 0x30
/* 8014C034 00147554  4E 80 00 20 */	blr

glabel Erase__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8Iterator
/* 8014C038 00147558  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014C03C 0014755C  7C 08 02 A6 */	mflr r0
/* 8014C040 00147560  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014C044 00147564  39 61 00 30 */	addi r11, r1, 0x30
/* 8014C048 00147568  48 01 08 ED */	bl _savegpr_23
/* 8014C04C 0014756C  80 A4 00 00 */	lwz r5, 0(r4)
/* 8014C050 00147570  38 03 00 04 */	addi r0, r3, 4
/* 8014C054 00147574  3F 80 80 1B */	lis r28, lbl_801ABCE8@ha
/* 8014C058 00147578  7C 77 1B 78 */	mr r23, r3
/* 8014C05C 0014757C  7C 05 00 40 */	cmplw r5, r0
/* 8014C060 00147580  7C 98 23 78 */	mr r24, r4
/* 8014C064 00147584  3B 9C BC E8 */	addi r28, r28, lbl_801ABCE8@l
/* 8014C068 00147588  40 82 00 18 */	bne .L_8014C080
/* 8014C06C 0014758C  38 7C 00 00 */	addi r3, r28, 0
/* 8014C070 00147590  38 BC 00 D0 */	addi r5, r28, 0xd0
/* 8014C074 00147594  38 80 00 1F */	li r4, 0x1f
/* 8014C078 00147598  4C C6 31 82 */	crclr 6
/* 8014C07C 0014759C  4B FC 9D 45 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C080:
/* 8014C080 001475A0  83 18 00 00 */	lwz r24, 0(r24)
/* 8014C084 001475A4  3B D7 00 04 */	addi r30, r23, 4
/* 8014C088 001475A8  3B E0 00 00 */	li r31, 0
/* 8014C08C 001475AC  83 B8 00 00 */	lwz r29, 0(r24)
/* 8014C090 001475B0  48 00 00 C0 */	b .L_8014C150
.L_8014C094:
/* 8014C094 001475B4  80 17 00 00 */	lwz r0, 0(r23)
/* 8014C098 001475B8  83 38 00 00 */	lwz r25, 0(r24)
/* 8014C09C 001475BC  2C 00 00 00 */	cmpwi r0, 0
/* 8014C0A0 001475C0  40 82 00 18 */	bne .L_8014C0B8
/* 8014C0A4 001475C4  38 7C 00 00 */	addi r3, r28, 0
/* 8014C0A8 001475C8  38 BC 00 10 */	addi r5, r28, 0x10
/* 8014C0AC 001475CC  38 80 00 60 */	li r4, 0x60
/* 8014C0B0 001475D0  4C C6 31 82 */	crclr 6
/* 8014C0B4 001475D4  4B FC 9D 0D */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C0B8:
/* 8014C0B8 001475D8  2C 18 00 00 */	cmpwi r24, 0
/* 8014C0BC 001475DC  40 82 00 18 */	bne .L_8014C0D4
/* 8014C0C0 001475E0  38 7C 00 00 */	addi r3, r28, 0
/* 8014C0C4 001475E4  38 BC 00 34 */	addi r5, r28, 0x34
/* 8014C0C8 001475E8  38 80 00 61 */	li r4, 0x61
/* 8014C0CC 001475EC  4C C6 31 82 */	crclr 6
/* 8014C0D0 001475F0  4B FC 9C F1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C0D4:
/* 8014C0D4 001475F4  7C 18 F0 40 */	cmplw r24, r30
/* 8014C0D8 001475F8  40 82 00 18 */	bne .L_8014C0F0
/* 8014C0DC 001475FC  38 7C 00 00 */	addi r3, r28, 0
/* 8014C0E0 00147600  38 BC 00 58 */	addi r5, r28, 0x58
/* 8014C0E4 00147604  38 80 00 62 */	li r4, 0x62
/* 8014C0E8 00147608  4C C6 31 82 */	crclr 6
/* 8014C0EC 0014760C  4B FC 9C D5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C0F0:
/* 8014C0F0 00147610  83 78 00 00 */	lwz r27, 0(r24)
/* 8014C0F4 00147614  83 58 00 04 */	lwz r26, 4(r24)
/* 8014C0F8 00147618  2C 1B 00 00 */	cmpwi r27, 0
/* 8014C0FC 0014761C  40 82 00 18 */	bne .L_8014C114
/* 8014C100 00147620  38 7C 00 00 */	addi r3, r28, 0
/* 8014C104 00147624  38 BC 00 80 */	addi r5, r28, 0x80
/* 8014C108 00147628  38 80 00 65 */	li r4, 0x65
/* 8014C10C 0014762C  4C C6 31 82 */	crclr 6
/* 8014C110 00147630  4B FC 9C B1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C114:
/* 8014C114 00147634  2C 1A 00 00 */	cmpwi r26, 0
/* 8014C118 00147638  93 5B 00 04 */	stw r26, 4(r27)
/* 8014C11C 0014763C  40 82 00 18 */	bne .L_8014C134
/* 8014C120 00147640  38 7C 00 00 */	addi r3, r28, 0
/* 8014C124 00147644  38 BC 00 A8 */	addi r5, r28, 0xa8
/* 8014C128 00147648  38 80 00 67 */	li r4, 0x67
/* 8014C12C 0014764C  4C C6 31 82 */	crclr 6
/* 8014C130 00147650  4B FC 9C 91 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C134:
/* 8014C134 00147654  93 7A 00 00 */	stw r27, 0(r26)
/* 8014C138 00147658  80 77 00 00 */	lwz r3, 0(r23)
/* 8014C13C 0014765C  38 03 FF FF */	addi r0, r3, -1
/* 8014C140 00147660  90 17 00 00 */	stw r0, 0(r23)
/* 8014C144 00147664  93 F8 00 00 */	stw r31, 0(r24)
/* 8014C148 00147668  93 F8 00 04 */	stw r31, 4(r24)
/* 8014C14C 0014766C  7F 38 CB 78 */	mr r24, r25
.L_8014C150:
/* 8014C150 00147670  7C 18 E8 40 */	cmplw r24, r29
/* 8014C154 00147674  40 82 FF 40 */	bne .L_8014C094
/* 8014C158 00147678  39 61 00 30 */	addi r11, r1, 0x30
/* 8014C15C 0014767C  7F A3 EB 78 */	mr r3, r29
/* 8014C160 00147680  48 01 08 21 */	bl _restgpr_23
/* 8014C164 00147684  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014C168 00147688  7C 08 03 A6 */	mtlr r0
/* 8014C16C 0014768C  38 21 00 30 */	addi r1, r1, 0x30
/* 8014C170 00147690  4E 80 00 20 */	blr

glabel Clear__Q46nw4hbm2ut6detail12LinkListImplFv
/* 8014C174 00147694  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014C178 00147698  7C 08 02 A6 */	mflr r0
/* 8014C17C 0014769C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014C180 001476A0  39 61 00 30 */	addi r11, r1, 0x30
/* 8014C184 001476A4  48 01 07 B5 */	bl _savegpr_24
/* 8014C188 001476A8  3F A0 80 1B */	lis r29, lbl_801ABCE8@ha
/* 8014C18C 001476AC  83 23 00 04 */	lwz r25, 4(r3)
/* 8014C190 001476B0  7C 78 1B 78 */	mr r24, r3
/* 8014C194 001476B4  3B C3 00 04 */	addi r30, r3, 4
/* 8014C198 001476B8  3B BD BC E8 */	addi r29, r29, lbl_801ABCE8@l
/* 8014C19C 001476BC  3B E0 00 00 */	li r31, 0
/* 8014C1A0 001476C0  48 00 00 C0 */	b .L_8014C260
.L_8014C1A4:
/* 8014C1A4 001476C4  80 18 00 00 */	lwz r0, 0(r24)
/* 8014C1A8 001476C8  83 59 00 00 */	lwz r26, 0(r25)
/* 8014C1AC 001476CC  2C 00 00 00 */	cmpwi r0, 0
/* 8014C1B0 001476D0  40 82 00 18 */	bne .L_8014C1C8
/* 8014C1B4 001476D4  38 7D 00 00 */	addi r3, r29, 0
/* 8014C1B8 001476D8  38 BD 00 10 */	addi r5, r29, 0x10
/* 8014C1BC 001476DC  38 80 00 60 */	li r4, 0x60
/* 8014C1C0 001476E0  4C C6 31 82 */	crclr 6
/* 8014C1C4 001476E4  4B FC 9B FD */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C1C8:
/* 8014C1C8 001476E8  2C 19 00 00 */	cmpwi r25, 0
/* 8014C1CC 001476EC  40 82 00 18 */	bne .L_8014C1E4
/* 8014C1D0 001476F0  38 7D 00 00 */	addi r3, r29, 0
/* 8014C1D4 001476F4  38 BD 00 34 */	addi r5, r29, 0x34
/* 8014C1D8 001476F8  38 80 00 61 */	li r4, 0x61
/* 8014C1DC 001476FC  4C C6 31 82 */	crclr 6
/* 8014C1E0 00147700  4B FC 9B E1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C1E4:
/* 8014C1E4 00147704  7C 19 F0 40 */	cmplw r25, r30
/* 8014C1E8 00147708  40 82 00 18 */	bne .L_8014C200
/* 8014C1EC 0014770C  38 7D 00 00 */	addi r3, r29, 0
/* 8014C1F0 00147710  38 BD 00 58 */	addi r5, r29, 0x58
/* 8014C1F4 00147714  38 80 00 62 */	li r4, 0x62
/* 8014C1F8 00147718  4C C6 31 82 */	crclr 6
/* 8014C1FC 0014771C  4B FC 9B C5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C200:
/* 8014C200 00147720  83 99 00 00 */	lwz r28, 0(r25)
/* 8014C204 00147724  83 79 00 04 */	lwz r27, 4(r25)
/* 8014C208 00147728  2C 1C 00 00 */	cmpwi r28, 0
/* 8014C20C 0014772C  40 82 00 18 */	bne .L_8014C224
/* 8014C210 00147730  38 7D 00 00 */	addi r3, r29, 0
/* 8014C214 00147734  38 BD 00 80 */	addi r5, r29, 0x80
/* 8014C218 00147738  38 80 00 65 */	li r4, 0x65
/* 8014C21C 0014773C  4C C6 31 82 */	crclr 6
/* 8014C220 00147740  4B FC 9B A1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C224:
/* 8014C224 00147744  2C 1B 00 00 */	cmpwi r27, 0
/* 8014C228 00147748  93 7C 00 04 */	stw r27, 4(r28)
/* 8014C22C 0014774C  40 82 00 18 */	bne .L_8014C244
/* 8014C230 00147750  38 7D 00 00 */	addi r3, r29, 0
/* 8014C234 00147754  38 BD 00 A8 */	addi r5, r29, 0xa8
/* 8014C238 00147758  38 80 00 67 */	li r4, 0x67
/* 8014C23C 0014775C  4C C6 31 82 */	crclr 6
/* 8014C240 00147760  4B FC 9B 81 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C244:
/* 8014C244 00147764  93 9B 00 00 */	stw r28, 0(r27)
/* 8014C248 00147768  80 78 00 00 */	lwz r3, 0(r24)
/* 8014C24C 0014776C  38 03 FF FF */	addi r0, r3, -1
/* 8014C250 00147770  90 18 00 00 */	stw r0, 0(r24)
/* 8014C254 00147774  93 F9 00 00 */	stw r31, 0(r25)
/* 8014C258 00147778  93 F9 00 04 */	stw r31, 4(r25)
/* 8014C25C 0014777C  7F 59 D3 78 */	mr r25, r26
.L_8014C260:
/* 8014C260 00147780  7C 19 F0 40 */	cmplw r25, r30
/* 8014C264 00147784  40 82 FF 40 */	bne .L_8014C1A4
/* 8014C268 00147788  39 61 00 30 */	addi r11, r1, 0x30
/* 8014C26C 0014778C  48 01 07 19 */	bl _restgpr_24
/* 8014C270 00147790  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014C274 00147794  7C 08 03 A6 */	mtlr r0
/* 8014C278 00147798  38 21 00 30 */	addi r1, r1, 0x30
/* 8014C27C 0014779C  4E 80 00 20 */	blr

glabel Insert__Q46nw4hbm2ut6detail12LinkListImplFQ56nw4hbm2ut6detail12LinkListImpl8IteratorPQ36nw4hbm2ut12LinkListNode
/* 8014C280 001477A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C284 001477A4  7C 08 02 A6 */	mflr r0
/* 8014C288 001477A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C28C 001477AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C290 001477B0  48 01 06 B5 */	bl _savegpr_27
/* 8014C294 001477B4  2C 05 00 00 */	cmpwi r5, 0
/* 8014C298 001477B8  3F E0 80 1B */	lis r31, lbl_801ABCE8@ha
/* 8014C29C 001477BC  7C 7B 1B 78 */	mr r27, r3
/* 8014C2A0 001477C0  7C 9D 23 78 */	mr r29, r4
/* 8014C2A4 001477C4  7C BC 2B 78 */	mr r28, r5
/* 8014C2A8 001477C8  3B FF BC E8 */	addi r31, r31, lbl_801ABCE8@l
/* 8014C2AC 001477CC  40 82 00 18 */	bne .L_8014C2C4
/* 8014C2B0 001477D0  38 7F 00 00 */	addi r3, r31, 0
/* 8014C2B4 001477D4  38 BF 00 34 */	addi r5, r31, 0x34
/* 8014C2B8 001477D8  38 80 00 4A */	li r4, 0x4a
/* 8014C2BC 001477DC  4C C6 31 82 */	crclr 6
/* 8014C2C0 001477E0  4B FC 9B 01 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C2C4:
/* 8014C2C4 001477E4  83 DD 00 00 */	lwz r30, 0(r29)
/* 8014C2C8 001477E8  2C 1E 00 00 */	cmpwi r30, 0
/* 8014C2CC 001477EC  40 82 00 18 */	bne .L_8014C2E4
/* 8014C2D0 001477F0  38 7F 00 00 */	addi r3, r31, 0
/* 8014C2D4 001477F4  38 BF 00 FC */	addi r5, r31, 0xfc
/* 8014C2D8 001477F8  38 80 00 4C */	li r4, 0x4c
/* 8014C2DC 001477FC  4C C6 31 82 */	crclr 6
/* 8014C2E0 00147800  4B FC 9A E1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C2E4:
/* 8014C2E4 00147804  83 BE 00 04 */	lwz r29, 4(r30)
/* 8014C2E8 00147808  2C 1D 00 00 */	cmpwi r29, 0
/* 8014C2EC 0014780C  40 82 00 18 */	bne .L_8014C304
/* 8014C2F0 00147810  38 7F 00 00 */	addi r3, r31, 0
/* 8014C2F4 00147814  38 BF 01 24 */	addi r5, r31, 0x124
/* 8014C2F8 00147818  38 80 00 4F */	li r4, 0x4f
/* 8014C2FC 0014781C  4C C6 31 82 */	crclr 6
/* 8014C300 00147820  4B FC 9A C1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C304:
/* 8014C304 00147824  80 1C 00 00 */	lwz r0, 0(r28)
/* 8014C308 00147828  2C 00 00 00 */	cmpwi r0, 0
/* 8014C30C 0014782C  41 82 00 18 */	beq .L_8014C324
/* 8014C310 00147830  38 7F 00 00 */	addi r3, r31, 0
/* 8014C314 00147834  38 BF 01 50 */	addi r5, r31, 0x150
/* 8014C318 00147838  38 80 00 51 */	li r4, 0x51
/* 8014C31C 0014783C  4C C6 31 82 */	crclr 6
/* 8014C320 00147840  4B FC 9A A1 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C324:
/* 8014C324 00147844  80 1C 00 04 */	lwz r0, 4(r28)
/* 8014C328 00147848  2C 00 00 00 */	cmpwi r0, 0
/* 8014C32C 0014784C  41 82 00 18 */	beq .L_8014C344
/* 8014C330 00147850  38 7F 00 00 */	addi r3, r31, 0
/* 8014C334 00147854  38 BF 01 7C */	addi r5, r31, 0x17c
/* 8014C338 00147858  38 80 00 52 */	li r4, 0x52
/* 8014C33C 0014785C  4C C6 31 82 */	crclr 6
/* 8014C340 00147860  4B FC 9A 81 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C344:
/* 8014C344 00147864  93 DC 00 00 */	stw r30, 0(r28)
/* 8014C348 00147868  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C34C 0014786C  7F 83 E3 78 */	mr r3, r28
/* 8014C350 00147870  93 BC 00 04 */	stw r29, 4(r28)
/* 8014C354 00147874  93 9E 00 04 */	stw r28, 4(r30)
/* 8014C358 00147878  93 9D 00 00 */	stw r28, 0(r29)
/* 8014C35C 0014787C  80 9B 00 00 */	lwz r4, 0(r27)
/* 8014C360 00147880  38 04 00 01 */	addi r0, r4, 1
/* 8014C364 00147884  90 1B 00 00 */	stw r0, 0(r27)
/* 8014C368 00147888  48 01 06 29 */	bl _restgpr_27
/* 8014C36C 0014788C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C370 00147890  7C 08 03 A6 */	mtlr r0
/* 8014C374 00147894  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C378 00147898  4E 80 00 20 */	blr

glabel Erase__Q46nw4hbm2ut6detail12LinkListImplFPQ36nw4hbm2ut12LinkListNode
/* 8014C37C 0014789C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014C380 001478A0  7C 08 02 A6 */	mflr r0
/* 8014C384 001478A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014C388 001478A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C38C 001478AC  48 01 05 B9 */	bl _savegpr_27
/* 8014C390 001478B0  80 03 00 00 */	lwz r0, 0(r3)
/* 8014C394 001478B4  3F E0 80 1B */	lis r31, lbl_801ABCE8@ha
/* 8014C398 001478B8  7C 7B 1B 78 */	mr r27, r3
/* 8014C39C 001478BC  7C 9C 23 78 */	mr r28, r4
/* 8014C3A0 001478C0  2C 00 00 00 */	cmpwi r0, 0
/* 8014C3A4 001478C4  3B FF BC E8 */	addi r31, r31, lbl_801ABCE8@l
/* 8014C3A8 001478C8  40 82 00 18 */	bne .L_8014C3C0
/* 8014C3AC 001478CC  38 7F 00 00 */	addi r3, r31, 0
/* 8014C3B0 001478D0  38 BF 00 10 */	addi r5, r31, 0x10
/* 8014C3B4 001478D4  38 80 00 60 */	li r4, 0x60
/* 8014C3B8 001478D8  4C C6 31 82 */	crclr 6
/* 8014C3BC 001478DC  4B FC 9A 05 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C3C0:
/* 8014C3C0 001478E0  2C 1C 00 00 */	cmpwi r28, 0
/* 8014C3C4 001478E4  40 82 00 18 */	bne .L_8014C3DC
/* 8014C3C8 001478E8  38 7F 00 00 */	addi r3, r31, 0
/* 8014C3CC 001478EC  38 BF 00 34 */	addi r5, r31, 0x34
/* 8014C3D0 001478F0  38 80 00 61 */	li r4, 0x61
/* 8014C3D4 001478F4  4C C6 31 82 */	crclr 6
/* 8014C3D8 001478F8  4B FC 99 E9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C3DC:
/* 8014C3DC 001478FC  38 1B 00 04 */	addi r0, r27, 4
/* 8014C3E0 00147900  7C 1C 00 40 */	cmplw r28, r0
/* 8014C3E4 00147904  40 82 00 18 */	bne .L_8014C3FC
/* 8014C3E8 00147908  38 7F 00 00 */	addi r3, r31, 0
/* 8014C3EC 0014790C  38 BF 00 58 */	addi r5, r31, 0x58
/* 8014C3F0 00147910  38 80 00 62 */	li r4, 0x62
/* 8014C3F4 00147914  4C C6 31 82 */	crclr 6
/* 8014C3F8 00147918  4B FC 99 C9 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C3FC:
/* 8014C3FC 0014791C  83 DC 00 00 */	lwz r30, 0(r28)
/* 8014C400 00147920  83 BC 00 04 */	lwz r29, 4(r28)
/* 8014C404 00147924  2C 1E 00 00 */	cmpwi r30, 0
/* 8014C408 00147928  40 82 00 18 */	bne .L_8014C420
/* 8014C40C 0014792C  38 7F 00 00 */	addi r3, r31, 0
/* 8014C410 00147930  38 BF 00 80 */	addi r5, r31, 0x80
/* 8014C414 00147934  38 80 00 65 */	li r4, 0x65
/* 8014C418 00147938  4C C6 31 82 */	crclr 6
/* 8014C41C 0014793C  4B FC 99 A5 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C420:
/* 8014C420 00147940  2C 1D 00 00 */	cmpwi r29, 0
/* 8014C424 00147944  93 BE 00 04 */	stw r29, 4(r30)
/* 8014C428 00147948  40 82 00 18 */	bne .L_8014C440
/* 8014C42C 0014794C  38 7F 00 00 */	addi r3, r31, 0
/* 8014C430 00147950  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 8014C434 00147954  38 80 00 67 */	li r4, 0x67
/* 8014C438 00147958  4C C6 31 82 */	crclr 6
/* 8014C43C 0014795C  4B FC 99 85 */	bl Panic__Q36nw4hbm2db6detailFPCciPCce
.L_8014C440:
/* 8014C440 00147960  93 DD 00 00 */	stw r30, 0(r29)
/* 8014C444 00147964  38 00 00 00 */	li r0, 0
/* 8014C448 00147968  39 61 00 20 */	addi r11, r1, 0x20
/* 8014C44C 0014796C  7F C3 F3 78 */	mr r3, r30
/* 8014C450 00147970  80 9B 00 00 */	lwz r4, 0(r27)
/* 8014C454 00147974  38 84 FF FF */	addi r4, r4, -1
/* 8014C458 00147978  90 9B 00 00 */	stw r4, 0(r27)
/* 8014C45C 0014797C  90 1C 00 00 */	stw r0, 0(r28)
/* 8014C460 00147980  90 1C 00 04 */	stw r0, 4(r28)
/* 8014C464 00147984  48 01 05 2D */	bl _restgpr_27
/* 8014C468 00147988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014C46C 0014798C  7C 08 03 A6 */	mtlr r0
/* 8014C470 00147990  38 21 00 20 */	addi r1, r1, 0x20
/* 8014C474 00147994  4E 80 00 20 */	blr

