.include "macros.inc"

.section .text, "ax"

glabel MWExitCriticalSection
/* 80174198 0016F6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8017419C 0016F6BC  7C 08 02 A6 */	mflr r0
/* 801741A0 0016F6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801741A4 0016F6C4  80 63 00 00 */	lwz r3, 0(r3)
/* 801741A8 0016F6C8  4B F2 11 35 */	bl OSRestoreInterrupts
/* 801741AC 0016F6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801741B0 0016F6D0  7C 08 03 A6 */	mtlr r0
/* 801741B4 0016F6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801741B8 0016F6D8  4E 80 00 20 */	blr 

glabel MWEnterCriticalSection
/* 801741BC 0016F6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801741C0 0016F6E0  7C 08 02 A6 */	mflr r0
/* 801741C4 0016F6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801741C8 0016F6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801741CC 0016F6EC  7C 7F 1B 78 */	mr r31, r3
/* 801741D0 0016F6F0  4B F2 10 E5 */	bl OSDisableInterrupts
/* 801741D4 0016F6F4  90 7F 00 00 */	stw r3, 0(r31)
/* 801741D8 0016F6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801741DC 0016F6FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801741E0 0016F700  7C 08 03 A6 */	mtlr r0
/* 801741E4 0016F704  38 21 00 10 */	addi r1, r1, 0x10
/* 801741E8 0016F708  4E 80 00 20 */	blr 

glabel MWInitializeCriticalSection
/* 801741EC 0016F70C  4E 80 00 20 */	blr 

