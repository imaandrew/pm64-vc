.include "macros.inc"

.section .text, "ax"

glabel GKI_init
/* 800DB144 000D6664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB148 000D6668  7C 08 02 A6 */	mflr r0
/* 800DB14C 000D666C  3C A0 00 03 */	lis r5, 0x00028AE0@ha
/* 800DB150 000D6670  38 80 00 00 */	li r4, 0
/* 800DB154 000D6674  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB158 000D6678  38 A5 8A E0 */	addi r5, r5, 0x00028AE0@l
/* 800DB15C 000D667C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DB160 000D6680  93 C1 00 08 */	stw r30, 8(r1)
/* 800DB164 000D6684  3F C0 80 1F */	lis r30, lbl_801F3CA0@ha
/* 800DB168 000D6688  38 7E 3C A0 */	addi r3, r30, lbl_801F3CA0@l
/* 800DB16C 000D668C  4B F2 92 D1 */	bl memset
/* 800DB170 000D6690  4B FF E8 59 */	bl gki_buffer_init
/* 800DB174 000D6694  4B FF FA 79 */	bl gki_timers_init
/* 800DB178 000D6698  3B FE 3C A0 */	addi r31, r30, lbl_801F3CA0@l
/* 800DB17C 000D669C  38 80 00 01 */	li r4, 1
/* 800DB180 000D66A0  3C 7F 00 03 */	addis r3, r31, 3
/* 800DB184 000D66A4  38 00 00 00 */	li r0, 0
/* 800DB188 000D66A8  98 83 88 02 */	stb r4, -0x77fe(r3)
/* 800DB18C 000D66AC  90 03 87 E8 */	stw r0, -0x7818(r3)
/* 800DB190 000D66B0  90 03 88 48 */	stw r0, -0x77b8(r3)
/* 800DB194 000D66B4  B0 03 88 0C */	sth r0, -0x77f4(r3)
/* 800DB198 000D66B8  98 1E 3C A0 */	stb r0, lbl_801F3CA0@l(r30)
/* 800DB19C 000D66BC  4B FB A1 2D */	bl OSEnableInterrupts
/* 800DB1A0 000D66C0  88 1E 3C A0 */	lbz r0, lbl_801F3CA0@l(r30)
/* 800DB1A4 000D66C4  54 00 10 3A */	slwi r0, r0, 2
/* 800DB1A8 000D66C8  7C 9F 02 14 */	add r4, r31, r0
/* 800DB1AC 000D66CC  90 64 00 04 */	stw r3, 4(r4)
/* 800DB1B0 000D66D0  88 7E 3C A0 */	lbz r3, lbl_801F3CA0@l(r30)
/* 800DB1B4 000D66D4  38 03 00 01 */	addi r0, r3, 1
/* 800DB1B8 000D66D8  98 1E 3C A0 */	stb r0, lbl_801F3CA0@l(r30)
/* 800DB1BC 000D66DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB1C0 000D66E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DB1C4 000D66E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB1C8 000D66E8  7C 08 03 A6 */	mtlr r0
/* 800DB1CC 000D66EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB1D0 000D66F0  4E 80 00 20 */	blr

glabel GKI_shutdown
/* 800DB1D4 000D66F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB1D8 000D66F8  7C 08 02 A6 */	mflr r0
/* 800DB1DC 000D66FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB1E0 000D6700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DB1E4 000D6704  93 C1 00 08 */	stw r30, 8(r1)
/* 800DB1E8 000D6708  4B FB A0 CD */	bl OSDisableInterrupts
/* 800DB1EC 000D670C  3F C0 80 1F */	lis r30, lbl_801F3CA0@ha
/* 800DB1F0 000D6710  38 00 00 00 */	li r0, 0
/* 800DB1F4 000D6714  88 BE 3C A0 */	lbz r5, lbl_801F3CA0@l(r30)
/* 800DB1F8 000D6718  3B FE 3C A0 */	addi r31, r30, lbl_801F3CA0@l
/* 800DB1FC 000D671C  3C 9F 00 03 */	addis r4, r31, 3
/* 800DB200 000D6720  54 A5 10 3A */	slwi r5, r5, 2
/* 800DB204 000D6724  7C BF 2A 14 */	add r5, r31, r5
/* 800DB208 000D6728  90 65 00 04 */	stw r3, 4(r5)
/* 800DB20C 000D672C  88 7E 3C A0 */	lbz r3, lbl_801F3CA0@l(r30)
/* 800DB210 000D6730  38 63 00 01 */	addi r3, r3, 1
/* 800DB214 000D6734  98 7E 3C A0 */	stb r3, lbl_801F3CA0@l(r30)
/* 800DB218 000D6738  98 04 88 02 */	stb r0, -0x77fe(r4)
/* 800DB21C 000D673C  88 7E 3C A0 */	lbz r3, lbl_801F3CA0@l(r30)
/* 800DB220 000D6740  38 63 FF FF */	addi r3, r3, -1
/* 800DB224 000D6744  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 800DB228 000D6748  98 7E 3C A0 */	stb r3, lbl_801F3CA0@l(r30)
/* 800DB22C 000D674C  7C 7F 02 14 */	add r3, r31, r0
/* 800DB230 000D6750  80 63 00 04 */	lwz r3, 4(r3)
/* 800DB234 000D6754  4B FB A0 A9 */	bl OSRestoreInterrupts
/* 800DB238 000D6758  48 00 00 20 */	b .L_800DB258
.L_800DB23C:
/* 800DB23C 000D675C  88 7E 3C A0 */	lbz r3, lbl_801F3CA0@l(r30)
/* 800DB240 000D6760  38 63 FF FF */	addi r3, r3, -1
/* 800DB244 000D6764  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 800DB248 000D6768  98 7E 3C A0 */	stb r3, lbl_801F3CA0@l(r30)
/* 800DB24C 000D676C  7C 7F 02 14 */	add r3, r31, r0
/* 800DB250 000D6770  80 63 00 04 */	lwz r3, 4(r3)
/* 800DB254 000D6774  4B FB A0 89 */	bl OSRestoreInterrupts
.L_800DB258:
/* 800DB258 000D6778  88 1E 3C A0 */	lbz r0, lbl_801F3CA0@l(r30)
/* 800DB25C 000D677C  2C 00 00 00 */	cmpwi r0, 0
/* 800DB260 000D6780  40 82 FF DC */	bne .L_800DB23C
/* 800DB264 000D6784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB268 000D6788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB26C 000D678C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DB270 000D6790  7C 08 03 A6 */	mtlr r0
/* 800DB274 000D6794  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB278 000D6798  4E 80 00 20 */	blr

glabel GKI_run
/* 800DB27C 000D679C  4E 80 00 20 */	blr

glabel GKI_sched_lock
/* 800DB280 000D67A0  4E 80 00 20 */	blr

glabel GKI_sched_unlock
/* 800DB284 000D67A4  4E 80 00 20 */	blr

glabel GKI_delay
/* 800DB288 000D67A8  4E 80 00 20 */	blr

glabel GKI_send_event
/* 800DB28C 000D67AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB290 000D67B0  7C 08 02 A6 */	mflr r0
/* 800DB294 000D67B4  28 03 00 08 */	cmplwi r3, 8
/* 800DB298 000D67B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB29C 000D67BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DB2A0 000D67C0  7C 9F 23 78 */	mr r31, r4
/* 800DB2A4 000D67C4  93 C1 00 08 */	stw r30, 8(r1)
/* 800DB2A8 000D67C8  7C 7E 1B 78 */	mr r30, r3
/* 800DB2AC 000D67CC  41 80 00 0C */	blt .L_800DB2B8
/* 800DB2B0 000D67D0  38 60 00 01 */	li r3, 1
/* 800DB2B4 000D67D4  48 00 00 64 */	b .L_800DB318
.L_800DB2B8:
/* 800DB2B8 000D67D8  4B FB 9F FD */	bl OSDisableInterrupts
/* 800DB2BC 000D67DC  3C E0 80 1F */	lis r7, lbl_801F3CA0@ha
/* 800DB2C0 000D67E0  57 C0 0D FC */	rlwinm r0, r30, 1, 0x17, 0x1e
/* 800DB2C4 000D67E4  88 A7 3C A0 */	lbz r5, lbl_801F3CA0@l(r7)
/* 800DB2C8 000D67E8  38 C7 3C A0 */	addi r6, r7, lbl_801F3CA0@l
/* 800DB2CC 000D67EC  3C 86 00 03 */	addis r4, r6, 3
/* 800DB2D0 000D67F0  54 A5 10 3A */	slwi r5, r5, 2
/* 800DB2D4 000D67F4  7C A6 2A 14 */	add r5, r6, r5
/* 800DB2D8 000D67F8  7C 84 02 14 */	add r4, r4, r0
/* 800DB2DC 000D67FC  90 65 00 04 */	stw r3, 4(r5)
/* 800DB2E0 000D6800  88 67 3C A0 */	lbz r3, lbl_801F3CA0@l(r7)
/* 800DB2E4 000D6804  38 03 00 01 */	addi r0, r3, 1
/* 800DB2E8 000D6808  98 07 3C A0 */	stb r0, lbl_801F3CA0@l(r7)
/* 800DB2EC 000D680C  A0 04 88 08 */	lhz r0, -0x77f8(r4)
/* 800DB2F0 000D6810  7C 00 FB 78 */	or r0, r0, r31
/* 800DB2F4 000D6814  B0 04 88 08 */	sth r0, -0x77f8(r4)
/* 800DB2F8 000D6818  88 67 3C A0 */	lbz r3, lbl_801F3CA0@l(r7)
/* 800DB2FC 000D681C  38 63 FF FF */	addi r3, r3, -1
/* 800DB300 000D6820  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 800DB304 000D6824  98 67 3C A0 */	stb r3, lbl_801F3CA0@l(r7)
/* 800DB308 000D6828  7C 66 02 14 */	add r3, r6, r0
/* 800DB30C 000D682C  80 63 00 04 */	lwz r3, 4(r3)
/* 800DB310 000D6830  4B FB 9F CD */	bl OSRestoreInterrupts
/* 800DB314 000D6834  38 60 00 00 */	li r3, 0
.L_800DB318:
/* 800DB318 000D6838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB31C 000D683C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB320 000D6840  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DB324 000D6844  7C 08 03 A6 */	mtlr r0
/* 800DB328 000D6848  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB32C 000D684C  4E 80 00 20 */	blr

glabel GKI_get_taskid
/* 800DB330 000D6850  38 60 00 02 */	li r3, 2
/* 800DB334 000D6854  4E 80 00 20 */	blr

glabel GKI_enable
/* 800DB338 000D6858  3C A0 80 1F */	lis r5, lbl_801F3CA0@ha
/* 800DB33C 000D685C  88 85 3C A0 */	lbz r4, lbl_801F3CA0@l(r5)
/* 800DB340 000D6860  38 65 3C A0 */	addi r3, r5, lbl_801F3CA0@l
/* 800DB344 000D6864  38 84 FF FF */	addi r4, r4, -1
/* 800DB348 000D6868  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 800DB34C 000D686C  98 85 3C A0 */	stb r4, lbl_801F3CA0@l(r5)
/* 800DB350 000D6870  7C 63 02 14 */	add r3, r3, r0
/* 800DB354 000D6874  80 63 00 04 */	lwz r3, 4(r3)
/* 800DB358 000D6878  4B FB 9F 84 */	b OSRestoreInterrupts

glabel GKI_disable
/* 800DB35C 000D687C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB360 000D6880  7C 08 02 A6 */	mflr r0
/* 800DB364 000D6884  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB368 000D6888  4B FB 9F 4D */	bl OSDisableInterrupts
/* 800DB36C 000D688C  3C A0 80 1F */	lis r5, lbl_801F3CA0@ha
/* 800DB370 000D6890  88 05 3C A0 */	lbz r0, lbl_801F3CA0@l(r5)
/* 800DB374 000D6894  38 85 3C A0 */	addi r4, r5, lbl_801F3CA0@l
/* 800DB378 000D6898  54 00 10 3A */	slwi r0, r0, 2
/* 800DB37C 000D689C  7C 84 02 14 */	add r4, r4, r0
/* 800DB380 000D68A0  90 64 00 04 */	stw r3, 4(r4)
/* 800DB384 000D68A4  88 65 3C A0 */	lbz r3, lbl_801F3CA0@l(r5)
/* 800DB388 000D68A8  38 03 00 01 */	addi r0, r3, 1
/* 800DB38C 000D68AC  98 05 3C A0 */	stb r0, lbl_801F3CA0@l(r5)
/* 800DB390 000D68B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB394 000D68B4  7C 08 03 A6 */	mtlr r0
/* 800DB398 000D68B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB39C 000D68BC  4E 80 00 20 */	blr

glabel GKI_exception
/* 800DB3A0 000D68C0  4E 80 00 20 */	blr

glabel GKI_os_malloc
/* 800DB3A4 000D68C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB3A8 000D68C8  7C 08 02 A6 */	mflr r0
/* 800DB3AC 000D68CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB3B0 000D68D0  4B FF 9A ED */	bl App_MEMalloc
/* 800DB3B4 000D68D4  2C 03 00 00 */	cmpwi r3, 0
/* 800DB3B8 000D68D8  40 82 00 08 */	bne .L_800DB3C0
/* 800DB3BC 000D68DC  38 60 00 00 */	li r3, 0
.L_800DB3C0:
/* 800DB3C0 000D68E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB3C4 000D68E4  7C 08 03 A6 */	mtlr r0
/* 800DB3C8 000D68E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB3CC 000D68EC  4E 80 00 20 */	blr

glabel GKI_os_free
/* 800DB3D0 000D68F0  4B FF 9B 1C */	b App_MEMfree
glabel lbl_800DB3D4
/* 800DB3D4 000D68F4  2C 03 00 04 */	cmpwi r3, 4
/* 800DB3D8 000D68F8  41 82 00 14 */	beq .L_800DB3EC
/* 800DB3DC 000D68FC  4C 80 00 20 */	bgelr
/* 800DB3E0 000D6900  2C 03 00 00 */	cmpwi r3, 0
/* 800DB3E4 000D6904  4D 82 00 20 */	beqlr
/* 800DB3E8 000D6908  4E 80 00 20 */	blr
.L_800DB3EC:
/* 800DB3EC 000D690C  7C 83 07 74 */	extsb r3, r4
/* 800DB3F0 000D6910  48 00 1E CC */	b bta_usb_close_evt
/* 800DB3F4 000D6914  4E 80 00 20 */	blr
