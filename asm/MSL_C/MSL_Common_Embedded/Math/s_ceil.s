.include "macros.inc"

.section .text, "ax"

glabel ceil
/* 8016E17C 0016969C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016E180 001696A0  D8 21 00 08 */	stfd f1, 8(r1)
/* 8016E184 001696A4  80 A1 00 08 */	lwz r5, 8(r1)
/* 8016E188 001696A8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8016E18C 001696AC  54 A3 65 7E */	rlwinm r3, r5, 0xc, 0x15, 0x1f
/* 8016E190 001696B0  38 E3 FC 01 */	addi r7, r3, -1023
/* 8016E194 001696B4  2C 87 00 14 */	cmpwi cr1, r7, 0x14
/* 8016E198 001696B8  40 84 00 94 */	bge cr1, .L_8016E22C
/* 8016E19C 001696BC  2C 07 00 00 */	cmpwi r7, 0
/* 8016E1A0 001696C0  40 80 00 40 */	bge .L_8016E1E0
/* 8016E1A4 001696C4  C8 42 8E 48 */	lfd f2, lbl_80248648@sda21(r2)
/* 8016E1A8 001696C8  C8 02 8E 50 */	lfd f0, lbl_80248650@sda21(r2)
/* 8016E1AC 001696CC  FC 22 08 2A */	fadd f1, f2, f1
/* 8016E1B0 001696D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016E1B4 001696D4  40 81 00 F4 */	ble .L_8016E2A8
/* 8016E1B8 001696D8  2C 05 00 00 */	cmpwi r5, 0
/* 8016E1BC 001696DC  40 80 00 10 */	bge .L_8016E1CC
/* 8016E1C0 001696E0  3C A0 80 00 */	lis r5, 0x8000
/* 8016E1C4 001696E4  38 C0 00 00 */	li r6, 0
/* 8016E1C8 001696E8  48 00 00 E0 */	b .L_8016E2A8
.L_8016E1CC:
/* 8016E1CC 001696EC  7C A0 33 79 */	or. r0, r5, r6
/* 8016E1D0 001696F0  41 82 00 D8 */	beq .L_8016E2A8
/* 8016E1D4 001696F4  3C A0 3F F0 */	lis r5, 0x3ff0
/* 8016E1D8 001696F8  38 C0 00 00 */	li r6, 0
/* 8016E1DC 001696FC  48 00 00 CC */	b .L_8016E2A8
.L_8016E1E0:
/* 8016E1E0 00169700  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 8016E1E4 00169704  38 03 FF FF */	addi r0, r3, 0x000FFFFF@l
/* 8016E1E8 00169708  7C 04 3E 30 */	sraw r4, r0, r7
/* 8016E1EC 0016970C  7C A0 20 38 */	and r0, r5, r4
/* 8016E1F0 00169710  7C C0 03 79 */	or. r0, r6, r0
/* 8016E1F4 00169714  40 82 00 08 */	bne .L_8016E1FC
/* 8016E1F8 00169718  48 00 00 BC */	b .L_8016E2B4
.L_8016E1FC:
/* 8016E1FC 0016971C  C8 42 8E 48 */	lfd f2, lbl_80248648@sda21(r2)
/* 8016E200 00169720  C8 02 8E 50 */	lfd f0, lbl_80248650@sda21(r2)
/* 8016E204 00169724  FC 22 08 2A */	fadd f1, f2, f1
/* 8016E208 00169728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016E20C 0016972C  40 81 00 9C */	ble .L_8016E2A8
/* 8016E210 00169730  2C 05 00 00 */	cmpwi r5, 0
/* 8016E214 00169734  40 81 00 0C */	ble .L_8016E220
/* 8016E218 00169738  7C 60 3E 30 */	sraw r0, r3, r7
/* 8016E21C 0016973C  7C A5 02 14 */	add r5, r5, r0
.L_8016E220:
/* 8016E220 00169740  7C A5 20 78 */	andc r5, r5, r4
/* 8016E224 00169744  38 C0 00 00 */	li r6, 0
/* 8016E228 00169748  48 00 00 80 */	b .L_8016E2A8
.L_8016E22C:
/* 8016E22C 0016974C  2C 07 00 33 */	cmpwi r7, 0x33
/* 8016E230 00169750  40 81 00 14 */	ble .L_8016E244
/* 8016E234 00169754  2C 07 04 00 */	cmpwi r7, 0x400
/* 8016E238 00169758  40 82 00 7C */	bne .L_8016E2B4
/* 8016E23C 0016975C  FC 21 08 2A */	fadd f1, f1, f1
/* 8016E240 00169760  48 00 00 74 */	b .L_8016E2B4
.L_8016E244:
/* 8016E244 00169764  38 07 FF EC */	addi r0, r7, -20
/* 8016E248 00169768  38 60 FF FF */	li r3, -1
/* 8016E24C 0016976C  7C 64 04 30 */	srw r4, r3, r0
/* 8016E250 00169770  7C C0 20 39 */	and. r0, r6, r4
/* 8016E254 00169774  40 82 00 08 */	bne .L_8016E25C
/* 8016E258 00169778  48 00 00 5C */	b .L_8016E2B4
.L_8016E25C:
/* 8016E25C 0016977C  C8 42 8E 48 */	lfd f2, lbl_80248648@sda21(r2)
/* 8016E260 00169780  C8 02 8E 50 */	lfd f0, lbl_80248650@sda21(r2)
/* 8016E264 00169784  FC 22 08 2A */	fadd f1, f2, f1
/* 8016E268 00169788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016E26C 0016978C  40 81 00 3C */	ble .L_8016E2A8
/* 8016E270 00169790  2C 05 00 00 */	cmpwi r5, 0
/* 8016E274 00169794  40 81 00 30 */	ble .L_8016E2A4
/* 8016E278 00169798  40 86 00 0C */	bne cr1, .L_8016E284
/* 8016E27C 0016979C  38 A5 00 01 */	addi r5, r5, 1
/* 8016E280 001697A0  48 00 00 24 */	b .L_8016E2A4
.L_8016E284:
/* 8016E284 001697A4  20 07 00 34 */	subfic r0, r7, 0x34
/* 8016E288 001697A8  38 60 00 01 */	li r3, 1
/* 8016E28C 001697AC  7C 60 00 30 */	slw r0, r3, r0
/* 8016E290 001697B0  7C 06 02 14 */	add r0, r6, r0
/* 8016E294 001697B4  7C 00 30 40 */	cmplw r0, r6
/* 8016E298 001697B8  40 80 00 08 */	bge .L_8016E2A0
/* 8016E29C 001697BC  38 A5 00 01 */	addi r5, r5, 1
.L_8016E2A0:
/* 8016E2A0 001697C0  7C 06 03 78 */	mr r6, r0
.L_8016E2A4:
/* 8016E2A4 001697C4  7C C6 20 78 */	andc r6, r6, r4
.L_8016E2A8:
/* 8016E2A8 001697C8  90 A1 00 08 */	stw r5, 8(r1)
/* 8016E2AC 001697CC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8016E2B0 001697D0  C8 21 00 08 */	lfd f1, 8(r1)
.L_8016E2B4:
/* 8016E2B4 001697D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8016E2B8 001697D8  4E 80 00 20 */	blr 

