.include "macros.inc"

.section .text, "ax"

glabel OSGetMEM1ArenaHi
/* 800906E4 0008BC04  80 6D 8C A8 */	lwz r3, lbl_80247128@sda21(r13)
/* 800906E8 0008BC08  4E 80 00 20 */	blr 

glabel OSGetMEM2ArenaHi
/* 800906EC 0008BC0C  80 6D 8C AC */	lwz r3, lbl_8024712C@sda21(r13)
/* 800906F0 0008BC10  4E 80 00 20 */	blr 

glabel OSGetArenaHi
/* 800906F4 0008BC14  80 6D 8C A8 */	lwz r3, lbl_80247128@sda21(r13)
/* 800906F8 0008BC18  4E 80 00 20 */	blr 

glabel OSGetMEM1ArenaLo
/* 800906FC 0008BC1C  80 6D 82 40 */	lwz r3, lbl_802466C0@sda21(r13)
/* 80090700 0008BC20  4E 80 00 20 */	blr 

glabel OSGetMEM2ArenaLo
/* 80090704 0008BC24  80 6D 82 44 */	lwz r3, lbl_802466C4@sda21(r13)
/* 80090708 0008BC28  4E 80 00 20 */	blr 

glabel OSGetArenaLo
/* 8009070C 0008BC2C  80 6D 82 40 */	lwz r3, lbl_802466C0@sda21(r13)
/* 80090710 0008BC30  4E 80 00 20 */	blr 

glabel OSSetMEM1ArenaHi
/* 80090714 0008BC34  90 6D 8C A8 */	stw r3, lbl_80247128@sda21(r13)
/* 80090718 0008BC38  4E 80 00 20 */	blr 

glabel OSSetMEM2ArenaHi
/* 8009071C 0008BC3C  90 6D 8C AC */	stw r3, lbl_8024712C@sda21(r13)
/* 80090720 0008BC40  4E 80 00 20 */	blr 

glabel OSSetArenaHi
/* 80090724 0008BC44  90 6D 8C A8 */	stw r3, lbl_80247128@sda21(r13)
/* 80090728 0008BC48  4E 80 00 20 */	blr 

glabel OSSetMEM1ArenaLo
/* 8009072C 0008BC4C  90 6D 82 40 */	stw r3, lbl_802466C0@sda21(r13)
/* 80090730 0008BC50  4E 80 00 20 */	blr 

glabel OSSetMEM2ArenaLo
/* 80090734 0008BC54  90 6D 82 44 */	stw r3, lbl_802466C4@sda21(r13)
/* 80090738 0008BC58  4E 80 00 20 */	blr 

glabel OSSetArenaLo
/* 8009073C 0008BC5C  90 6D 82 40 */	stw r3, lbl_802466C0@sda21(r13)
/* 80090740 0008BC60  4E 80 00 20 */	blr 

glabel OSAllocFromMEM1ArenaLo
/* 80090744 0008BC64  80 0D 82 40 */	lwz r0, lbl_802466C0@sda21(r13)
/* 80090748 0008BC68  38 A4 FF FF */	addi r5, r4, -1
/* 8009074C 0008BC6C  7C A6 28 F8 */	nor r6, r5, r5
/* 80090750 0008BC70  7C A4 02 14 */	add r5, r4, r0
/* 80090754 0008BC74  38 05 FF FF */	addi r0, r5, -1
/* 80090758 0008BC78  7C C0 00 38 */	and r0, r6, r0
/* 8009075C 0008BC7C  7C 60 1A 14 */	add r3, r0, r3
/* 80090760 0008BC80  7C 83 22 14 */	add r4, r3, r4
/* 80090764 0008BC84  7C 03 03 78 */	mr r3, r0
/* 80090768 0008BC88  38 04 FF FF */	addi r0, r4, -1
/* 8009076C 0008BC8C  7C C0 00 38 */	and r0, r6, r0
/* 80090770 0008BC90  90 0D 82 40 */	stw r0, lbl_802466C0@sda21(r13)
/* 80090774 0008BC94  4E 80 00 20 */	blr 

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel lbl_80247128
	.skip 0x4

glabel lbl_8024712C
	.skip 0x4
