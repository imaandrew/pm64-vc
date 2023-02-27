.include "macros.inc"

.section .text, "ax"

glabel __start
/* 8000403C 0000013C  48 00 01 6D */	bl __init_registers
/* 80004040 00000140  48 00 02 A1 */	bl __init_hardware
/* 80004044 00000144  38 00 FF FF */	li r0, -1
/* 80004048 00000148  94 21 FF F8 */	stwu r1, -8(r1)
/* 8000404C 0000014C  90 01 00 04 */	stw r0, 4(r1)
/* 80004050 00000150  90 01 00 00 */	stw r0, 0(r1)
/* 80004054 00000154  48 00 01 E5 */	bl __init_data
/* 80004058 00000158  38 00 00 00 */	li r0, 0
/* 8000405C 0000015C  3C C0 80 00 */	lis r6, 0x80000044@ha
/* 80004060 00000160  38 C6 00 44 */	addi r6, r6, 0x80000044@l
/* 80004064 00000164  90 06 00 00 */	stw r0, 0(r6)
/* 80004068 00000168  3C C0 80 00 */	lis r6, 0x800000F4@ha
/* 8000406C 0000016C  38 C6 00 F4 */	addi r6, r6, 0x800000F4@l
/* 80004070 00000170  80 C6 00 00 */	lwz r6, 0(r6)
/* 80004074 00000174  28 06 00 00 */	cmplwi r6, 0
/* 80004078 00000178  41 82 00 0C */	beq .L_80004084
/* 8000407C 0000017C  80 E6 00 0C */	lwz r7, 0xc(r6)
/* 80004080 00000180  48 00 00 24 */	b .L_800040A4
.L_80004084:
/* 80004084 00000184  3C A0 80 00 */	lis r5, 0x80000034@ha
/* 80004088 00000188  38 A5 00 34 */	addi r5, r5, 0x80000034@l
/* 8000408C 0000018C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80004090 00000190  28 05 00 00 */	cmplwi r5, 0
/* 80004094 00000194  41 82 00 4C */	beq .L_800040E0
/* 80004098 00000198  3C E0 80 00 */	lis r7, 0x800030E8@ha
/* 8000409C 0000019C  38 E7 30 E8 */	addi r7, r7, 0x800030E8@l
/* 800040A0 000001A0  80 E7 00 00 */	lwz r7, 0(r7)
.L_800040A4:
/* 800040A4 000001A4  38 A0 00 00 */	li r5, 0
/* 800040A8 000001A8  28 07 00 02 */	cmplwi r7, 2
/* 800040AC 000001AC  41 82 00 24 */	beq .L_800040D0
/* 800040B0 000001B0  28 07 00 03 */	cmplwi r7, 3
/* 800040B4 000001B4  38 A0 00 01 */	li r5, 1
/* 800040B8 000001B8  41 82 00 18 */	beq .L_800040D0
/* 800040BC 000001BC  28 07 00 04 */	cmplwi r7, 4
/* 800040C0 000001C0  40 82 00 20 */	bne .L_800040E0
/* 800040C4 000001C4  38 A0 00 02 */	li r5, 2
/* 800040C8 000001C8  4B FF FF 61 */	bl __set_debug_bba
/* 800040CC 000001CC  48 00 00 14 */	b .L_800040E0
.L_800040D0:
/* 800040D0 000001D0  3C C0 80 17 */	lis r6, InitMetroTRK@ha
/* 800040D4 000001D4  38 C6 33 B8 */	addi r6, r6, InitMetroTRK@l
/* 800040D8 000001D8  7C C8 03 A6 */	mtlr r6
/* 800040DC 000001DC  4E 80 00 21 */	blrl 
.L_800040E0:
/* 800040E0 000001E0  3C C0 80 00 */	lis r6, 0x800000F4@ha
/* 800040E4 000001E4  38 C6 00 F4 */	addi r6, r6, 0x800000F4@l
/* 800040E8 000001E8  80 A6 00 00 */	lwz r5, 0(r6)
/* 800040EC 000001EC  28 05 00 00 */	cmplwi r5, 0
/* 800040F0 000001F0  41 A2 00 60 */	beq+ .L_80004150
/* 800040F4 000001F4  80 C5 00 08 */	lwz r6, 8(r5)
/* 800040F8 000001F8  28 06 00 00 */	cmplwi r6, 0
/* 800040FC 000001FC  41 A2 00 54 */	beq+ .L_80004150
/* 80004100 00000200  7C C5 32 14 */	add r6, r5, r6
/* 80004104 00000204  81 C6 00 00 */	lwz r14, 0(r6)
/* 80004108 00000208  28 0E 00 00 */	cmplwi r14, 0
/* 8000410C 0000020C  41 82 00 44 */	beq .L_80004150
/* 80004110 00000210  39 E6 00 04 */	addi r15, r6, 4
/* 80004114 00000214  7D C9 03 A6 */	mtctr r14
.L_80004118:
/* 80004118 00000218  38 C6 00 04 */	addi r6, r6, 4
/* 8000411C 0000021C  80 E6 00 00 */	lwz r7, 0(r6)
/* 80004120 00000220  7C E7 2A 14 */	add r7, r7, r5
/* 80004124 00000224  90 E6 00 00 */	stw r7, 0(r6)
/* 80004128 00000228  42 00 FF F0 */	bdnz .L_80004118
/* 8000412C 0000022C  3C A0 80 00 */	lis r5, 0x80000034@ha
/* 80004130 00000230  38 A5 00 34 */	addi r5, r5, 0x80000034@l
/* 80004134 00000234  55 E7 00 34 */	rlwinm r7, r15, 0, 0, 0x1a
/* 80004138 00000238  90 E5 00 00 */	stw r7, 0(r5)
/* 8000413C 0000023C  3C A0 80 00 */	lis r5, 0x80003110@ha
/* 80004140 00000240  38 A5 31 10 */	addi r5, r5, 0x80003110@l
/* 80004144 00000244  55 E7 00 34 */	rlwinm r7, r15, 0, 0, 0x1a
/* 80004148 00000248  90 E5 00 00 */	stw r7, 0(r5)
/* 8000414C 0000024C  48 00 00 0C */	b .L_80004158
.L_80004150:
/* 80004150 00000250  39 C0 00 00 */	li r14, 0
/* 80004154 00000254  39 E0 00 00 */	li r15, 0
.L_80004158:
/* 80004158 00000258  48 09 A2 01 */	bl DBInit
/* 8000415C 0000025C  48 08 B4 1D */	bl OSInit
/* 80004160 00000260  3C 80 80 00 */	lis r4, 0x800030E6@ha
/* 80004164 00000264  38 84 30 E6 */	addi r4, r4, 0x800030E6@l
/* 80004168 00000268  A0 64 00 00 */	lhz r3, 0(r4)
/* 8000416C 0000026C  70 65 80 00 */	andi. r5, r3, 0x8000
/* 80004170 00000270  41 82 00 10 */	beq .L_80004180
/* 80004174 00000274  70 63 7F FF */	andi. r3, r3, 0x7fff
/* 80004178 00000278  28 03 00 01 */	cmplwi r3, 1
/* 8000417C 0000027C  40 82 00 08 */	bne .L_80004184
.L_80004180:
/* 80004180 00000280  4B FF FE 81 */	bl __check_pad3
.L_80004184:
/* 80004184 00000284  4B FF FE B1 */	bl __get_debug_bba
/* 80004188 00000288  28 03 00 01 */	cmplwi r3, 1
/* 8000418C 0000028C  40 82 00 08 */	bne .L_80004194
/* 80004190 00000290  48 16 F2 C1 */	bl IntroMetroTRK_BBA
.L_80004194:
/* 80004194 00000294  48 09 6D 6D */	bl __init_user
/* 80004198 00000298  7D C3 73 78 */	mr r3, r14
/* 8000419C 0000029C  7D E4 7B 78 */	mr r4, r15
/* 800041A0 000002A0  48 08 09 6D */	bl main
/* 800041A4 000002A4  48 09 6D C4 */	b exit

.section .sbss, "wa" # 0x80246B60 - 0x80247800

glabel Debug_BBA
	.skip 0x8
