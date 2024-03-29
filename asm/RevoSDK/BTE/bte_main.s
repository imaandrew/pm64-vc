.include "macros.inc"

.section .text, "ax"

glabel BTUInterruptHandler
/* 800DD194 000D86B4  3C 80 80 22 */	lis r4, lbl_8021F000@ha
/* 800DD198 000D86B8  3C 60 80 0E */	lis r3, btu_task_msg_handler@ha
/* 800DD19C 000D86BC  38 84 F0 00 */	addi r4, r4, lbl_8021F000@l
/* 800DD1A0 000D86C0  38 63 D3 2C */	addi r3, r3, btu_task_msg_handler@l
/* 800DD1A4 000D86C4  38 84 10 00 */	addi r4, r4, 0x1000
/* 800DD1A8 000D86C8  4B FB 42 98 */	b OSSwitchFiber

glabel BTA_Init
/* 800DD1AC 000D86CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DD1B0 000D86D0  7C 08 02 A6 */	mflr r0
/* 800DD1B4 000D86D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DD1B8 000D86D8  38 00 00 00 */	li r0, 0
/* 800DD1BC 000D86DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DD1C0 000D86E0  90 0D 93 14 */	stw r0, lbl_80247794@sda21(r13)
/* 800DD1C4 000D86E4  4B FF DF 81 */	bl GKI_init
/* 800DD1C8 000D86E8  4B FF E1 71 */	bl GKI_enable
/* 800DD1CC 000D86EC  48 01 1B 15 */	bl BTE_Init
/* 800DD1D0 000D86F0  3C 80 80 17 */	lis r4, lbl_80175A10@ha
/* 800DD1D4 000D86F4  38 0D 86 20 */	addi r0, r13, lbl_80246AA0@sda21
/* 800DD1D8 000D86F8  38 84 5A 10 */	addi r4, r4, lbl_80175A10@l
/* 800DD1DC 000D86FC  90 0D 93 0C */	stw r0, lbl_8024778C@sda21(r13)
/* 800DD1E0 000D8700  38 60 00 00 */	li r3, 0
/* 800DD1E4 000D8704  90 8D 93 08 */	stw r4, lbl_80247788@sda21(r13)
/* 800DD1E8 000D8708  4B FF FD 85 */	bl bte_hcisu_task
/* 800DD1EC 000D870C  48 00 00 0C */	b .L_800DD1F8
.L_800DD1F0:
/* 800DD1F0 000D8710  38 60 00 64 */	li r3, 0x64
/* 800DD1F4 000D8714  4B FF E0 95 */	bl GKI_delay
.L_800DD1F8:
/* 800DD1F8 000D8718  80 0D 85 C8 */	lwz r0, lbl_80246A48@sda21(r13)
/* 800DD1FC 000D871C  2C 00 00 00 */	cmpwi r0, 0
/* 800DD200 000D8720  40 82 FF F0 */	bne .L_800DD1F0
/* 800DD204 000D8724  48 00 00 E9 */	bl btu_task_init
/* 800DD208 000D8728  3F E0 80 22 */	lis r31, lbl_80220000@ha
/* 800DD20C 000D872C  38 7F 00 00 */	addi r3, r31, lbl_80220000@l
/* 800DD210 000D8730  4B FB 2C 65 */	bl OSCreateAlarm
/* 800DD214 000D8734  4B FB BB B5 */	bl OSGetTime
/* 800DD218 000D8738  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 800DD21C 000D873C  3D 20 80 0E */	lis r9, BTUInterruptHandler@ha
/* 800DD220 000D8740  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 800DD224 000D8744  3C C0 10 62 */	lis r6, 0x10624DD3@ha
/* 800DD228 000D8748  7C 65 1B 78 */	mr r5, r3
/* 800DD22C 000D874C  39 29 D1 94 */	addi r9, r9, BTUInterruptHandler@l
/* 800DD230 000D8750  38 66 4D D3 */	addi r3, r6, 0x10624DD3@l
/* 800DD234 000D8754  54 00 F0 BE */	srwi r0, r0, 2
/* 800DD238 000D8758  7C 03 00 16 */	mulhwu r0, r3, r0
/* 800DD23C 000D875C  7C 86 23 78 */	mr r6, r4
/* 800DD240 000D8760  38 7F 00 00 */	addi r3, r31, 0
/* 800DD244 000D8764  38 E0 00 00 */	li r7, 0
/* 800DD248 000D8768  54 08 D9 7C */	rlwinm r8, r0, 0x1b, 5, 0x1e
/* 800DD24C 000D876C  4B FB 2E F9 */	bl OSSetPeriodicAlarm
/* 800DD250 000D8770  38 60 00 00 */	li r3, 0
/* 800DD254 000D8774  4B FF E0 29 */	bl GKI_run
/* 800DD258 000D8778  48 00 00 0C */	b .L_800DD264
.L_800DD25C:
/* 800DD25C 000D877C  38 60 07 D0 */	li r3, 0x7d0
/* 800DD260 000D8780  4B FF E0 29 */	bl GKI_delay
.L_800DD264:
/* 800DD264 000D8784  48 00 30 65 */	bl BTA_DmIsDeviceUp
/* 800DD268 000D8788  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DD26C 000D878C  41 82 FF F0 */	beq .L_800DD25C
/* 800DD270 000D8790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DD274 000D8794  38 60 00 00 */	li r3, 0
/* 800DD278 000D8798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DD27C 000D879C  7C 08 03 A6 */	mtlr r0
/* 800DD280 000D87A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800DD284 000D87A4  4E 80 00 20 */	blr

glabel BTA_Cleanup
/* 800DD288 000D87A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DD28C 000D87AC  7C 08 02 A6 */	mflr r0
/* 800DD290 000D87B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DD294 000D87B4  90 6D 93 14 */	stw r3, lbl_80247794@sda21(r13)
/* 800DD298 000D87B8  3C 60 80 22 */	lis r3, lbl_80220000@ha
/* 800DD29C 000D87BC  38 63 00 00 */	addi r3, r3, lbl_80220000@l
/* 800DD2A0 000D87C0  4B FB 2F 29 */	bl OSCancelAlarm
/* 800DD2A4 000D87C4  4B FF FD 2D */	bl bte_hcisu_close
/* 800DD2A8 000D87C8  4B FF DF 2D */	bl GKI_shutdown
/* 800DD2AC 000D87CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DD2B0 000D87D0  7C 08 03 A6 */	mtlr r0
/* 800DD2B4 000D87D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800DD2B8 000D87D8  4E 80 00 20 */	blr

glabel bta_usb_close_evt
/* 800DD2BC 000D87DC  81 8D 93 14 */	lwz r12, lbl_80247794@sda21(r13)
/* 800DD2C0 000D87E0  2C 0C 00 00 */	cmpwi r12, 0
/* 800DD2C4 000D87E4  4D 82 00 20 */	beqlr
/* 800DD2C8 000D87E8  7C 60 07 75 */	extsb. r0, r3
/* 800DD2CC 000D87EC  41 80 00 10 */	blt .L_800DD2DC
/* 800DD2D0 000D87F0  38 60 00 00 */	li r3, 0
/* 800DD2D4 000D87F4  7D 89 03 A6 */	mtctr r12
/* 800DD2D8 000D87F8  4E 80 04 20 */	bctr
.L_800DD2DC:
/* 800DD2DC 000D87FC  38 60 00 01 */	li r3, 1
/* 800DD2E0 000D8800  7D 89 03 A6 */	mtctr r12
/* 800DD2E4 000D8804  4E 80 04 20 */	bctr
/* 800DD2E8 000D8808  4E 80 00 20 */	blr

.section .bss, "wa"  # 0x801ADFC0 - 0x80246480

glabel lbl_8021F000
	.skip 0x1000

glabel lbl_80220000
	.skip 0x30

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247794
	.skip 0x4
