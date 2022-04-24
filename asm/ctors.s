.include "macros.inc"

.section .ctors, "wa"  # 0x80174200 - 0x80174260

.balign 0x20

glabel lbl_80174200
	# ROM: 0x170300
	.4byte __init_cpp_exceptions_tmp
	.4byte lbl_8008B54C
	.4byte __sinit_lyt_bounding_cpp
	.4byte __sinit_lyt_pane_cpp
	.4byte lbl_80120AEC
	.4byte __sinit_lyt_textBox_cpp
	.4byte __sinit_lyt_window_cpp
	.4byte __sinit_snd_BasicSound_cpp
	.4byte __sinit_snd_Channel_cpp
	.4byte __sinit_snd_SeqPlayer_cpp
	.4byte __sinit_snd_SeqSound_cpp
	.4byte __sinit_snd_StrmPlayer_cpp
	.4byte __sinit_snd_StrmSound_cpp
	.4byte __sinit_snd_WavePlayer_cpp
	.4byte __sinit_snd_WaveSound_cpp
	.4byte __sinit_snd_WsdPlayer_cpp
	.4byte __sinit_ut_DvdFileStream_cpp
	.4byte __sinit_ut_FileStream_cpp
	.4byte __sinit_ut_IOStream_cpp
	.4byte lbl_8014D810
	.4byte __sinit_ut_TextWriterBase_cpp
	.4byte 0

