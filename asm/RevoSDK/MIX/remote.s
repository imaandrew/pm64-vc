.include "macros.inc"

.section .text, "ax"

glabel __MIXRmtResetChannel
/* 800B84F0 000B3A10  80 AD 91 78 */	lwz r5, lbl_802475F8@sda21(r13)
/* 800B84F4 000B3A14  1C 83 00 44 */	mulli r4, r3, 0x44
/* 800B84F8 000B3A18  38 60 00 00 */	li r3, 0
/* 800B84FC 000B3A1C  7C 64 29 6E */	stwux r3, r4, r5
/* 800B8500 000B3A20  38 00 FC 40 */	li r0, -960
/* 800B8504 000B3A24  90 64 00 04 */	stw r3, 4(r4)
/* 800B8508 000B3A28  90 64 00 08 */	stw r3, 8(r4)
/* 800B850C 000B3A2C  90 64 00 0C */	stw r3, 0xc(r4)
/* 800B8510 000B3A30  90 64 00 10 */	stw r3, 0x10(r4)
/* 800B8514 000B3A34  90 04 00 14 */	stw r0, 0x14(r4)
/* 800B8518 000B3A38  90 04 00 18 */	stw r0, 0x18(r4)
/* 800B851C 000B3A3C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 800B8520 000B3A40  90 04 00 20 */	stw r0, 0x20(r4)
/* 800B8524 000B3A44  B0 64 00 40 */	sth r3, 0x40(r4)
/* 800B8528 000B3A48  B0 64 00 3C */	sth r3, 0x3c(r4)
/* 800B852C 000B3A4C  B0 64 00 38 */	sth r3, 0x38(r4)
/* 800B8530 000B3A50  B0 64 00 34 */	sth r3, 0x34(r4)
/* 800B8534 000B3A54  B0 64 00 30 */	sth r3, 0x30(r4)
/* 800B8538 000B3A58  B0 64 00 2C */	sth r3, 0x2c(r4)
/* 800B853C 000B3A5C  B0 64 00 28 */	sth r3, 0x28(r4)
/* 800B8540 000B3A60  B0 64 00 24 */	sth r3, 0x24(r4)
/* 800B8544 000B3A64  4E 80 00 20 */	blr
