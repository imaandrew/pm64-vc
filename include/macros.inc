/*
Code sections:
	.text0:	0x00000100	0x80004000	0x800064E0  # init
	.text1:	0x000025E0	0x800070C0	0x80174200  # text
Data sections:                                
	.data0:	0x0016F720	0x800064E0	0x800069E0  # extab_
	.data1:	0x0016FC20	0x800069E0	0x800070C0  # extabindex_
	.data2:	0x00170300	0x80174200	0x80174260  # ctors
	.data3:	0x00170360	0x80174260	0x80174280  # dtors
	.data4:	0x00170380	0x80174280	0x80179740  # rodata
	.data5:	0x00175840	0x80179740	0x801ADFC0  # data
	.data6:	0x001AA0C0	0x80246480	0x80246B60  # sdata
	.data7:	0x001AA7A0	0x80247800	0x802486C0  # sdata2
BSS sections:                                  
	.bss:	0x00000000	0x801ADFC0	0x80246480  # bss
	.bss:	0x00000000	0x80246B60	0x80247800  # sbss
	.bss:	0x00000000	0x802486C0	0x802486D0  # sbss2
Entry Point: 0x8000403C
*/
# glabel
.macro glabel label
    .global \label
    \label:
.endm
# PowerPC Register Constants
.set r0, 0
.set r1, 1
.set r2, 2
.set r3, 3
.set r4, 4
.set r5, 5
.set r6, 6
.set r7, 7
.set r8, 8
.set r9, 9
.set r10, 10
.set r11, 11
.set r12, 12
.set r13, 13
.set r14, 14
.set r15, 15
.set r16, 16
.set r17, 17
.set r18, 18
.set r19, 19
.set r20, 20
.set r21, 21
.set r22, 22
.set r23, 23
.set r24, 24
.set r25, 25
.set r26, 26
.set r27, 27
.set r28, 28
.set r29, 29
.set r30, 30
.set r31, 31
.set f0, 0
.set f1, 1
.set f2, 2
.set f3, 3
.set f4, 4
.set f5, 5
.set f6, 6
.set f7, 7
.set f8, 8
.set f9, 9
.set f10, 10
.set f11, 11
.set f12, 12
.set f13, 13
.set f14, 14
.set f15, 15
.set f16, 16
.set f17, 17
.set f18, 18
.set f19, 19
.set f20, 20
.set f21, 21
.set f22, 22
.set f23, 23
.set f24, 24
.set f25, 25
.set f26, 26
.set f27, 27
.set f28, 28
.set f29, 29
.set f30, 30
.set f31, 31
.set qr0, 0
.set qr1, 1
.set qr2, 2
.set qr3, 3
.set qr4, 4
.set qr5, 5
.set qr6, 6
.set qr7, 7
