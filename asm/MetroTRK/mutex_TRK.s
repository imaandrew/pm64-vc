.include "macros.inc"

.section .text, "ax"

glabel TRKReleaseMutex
/* 801712D0 0016C7F0  38 60 00 00 */	li r3, 0
/* 801712D4 0016C7F4  4E 80 00 20 */	blr

glabel TRKAcquireMutex
/* 801712D8 0016C7F8  38 60 00 00 */	li r3, 0
/* 801712DC 0016C7FC  4E 80 00 20 */	blr

glabel TRKInitializeMutex
/* 801712E0 0016C800  38 60 00 00 */	li r3, 0
/* 801712E4 0016C804  4E 80 00 20 */	blr
