.include "macros.inc"

.section .rodata, "wa"  # 0x80174280 - 0x80179740

.balign 0x20

glabel lbl_80174280
	# ROM: 0x170380
	.4byte 0x141E3212
	.4byte 0x1B2F1018
	.4byte 0x280E1523
	.4byte 0x0C121E0A
	.4byte 0x0F19080C
	.4byte 0x1406090F
	.4byte 0x04060A02
	.4byte 0x03050000
	.4byte 0xC4200000
	.4byte 0xC3F00000
	.4byte 0x44200000
	.4byte 0x43F00000
	.4byte 0xC4200000
	.4byte 0xC4040000
	.4byte 0x44200000
	.4byte 0x44040000

glabel lbl_801742C0
	# ROM: 0x1703C0
	.asciz "HomeButton3/"
	.balign 32

glabel lbl_801742E0
	# ROM: 0x1703E0
	.asciz "arc/timg/defcursor_final"
	.balign 16
	.4byte 0
	.4byte 0

glabel lbl_80174308
	# ROM: 0x170408
	.asciz "64_a.tpl"
	.asciz "_p1.tpl"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001C8

glabel lbl_80174330
	# ROM: 0x170430
	.asciz "!!WWW OUT OF MEMORY!!\n"
	.asciz "GOGI Previous Page"
	.asciz "GOGI Next Page"
	.asciz "arc"
	.asciz "text/html"
	.asciz "NO MEMORY\n"
	.balign 8

glabel lbl_80174388
	.asciz "vcJavaScriptExt"

glabel lbl_80174398
	# ROM: 0x170498
	.asciz "vcJavaScriptExt.dll"
	.asciz "vcJavaScriptExt"
	.byte 0
	.asciz "FadeIn"
	.asciz "FocusSound"
	.asciz "LeftScroll"
	.asciz "RightScroll"
	.asciz "SelectSound"
	.asciz "WriteFlag"
	.asciz "bNIMSGUI"
	.asciz "bSMSGUI"
	.balign 4

glabel lbl_80174410
	# ROM: 0x170510
	.asciz "AllocIfNecessary size=%p failed\n "
	.asciz "vcmv_main.cpp"
	.asciz "Failed to initialize WWW"
	.asciz "Failed to init flush callback for WWW"
	.asciz "Wii NTLG PGothic"
	.asciz "/flash/tmp/opera.arc/opera"
	.asciz "Failed to init Opera: %d, %s\n"
	.asciz "OOM"
	.asciz "Failure"
	.asciz "arc"
	.balign 8

glabel lbl_801744E0
	.asciz "WWWSurfaceInit"
	.balign 4

glabel lbl_801744F0
	.asciz "WWWSurfaceNewScreen"

glabel lbl_80174504
	.asciz "WWWSurfaceDeleteScreen"
	.balign 4

glabel lbl_8017451C
	.asciz "WWWSurfaceResize"
	.balign 4

glabel lbl_80174530
	.asciz "WWWSurfaceShutdown"
	.balign 4

glabel lbl_80174544
	.asciz "WWWSurfaceSetFlushCallback"
	.balign 4

glabel lbl_80174560
	.asciz "WWWSurfaceInvalidate"
	.balign 4

glabel lbl_80174578
	.asciz "WWWSurfaceUpdateScreen"
	.balign 4

glabel lbl_80174590
	.asciz "WWWSurfaceLockArea"
	.balign 4

glabel lbl_801745A4
	.asciz "WWWSurfaceUnlockArea"
	.balign 4

glabel lbl_801745BC
	.asciz "WWWSurfaceMouseEvt"
	.balign 4

glabel lbl_801745D0
	.asciz "WWWSurfaceWheelEvt"
	.balign 4

glabel lbl_801745E4
	.asciz "WWWSurfaceKeyboardEvt"
	.balign 4

glabel lbl_801745FC
	.asciz "WWWSurfaceAddFont"
	.balign 4

glabel lbl_80174610
	.asciz "WWWCreateBrowser"
	.balign 4

glabel lbl_80174624
	.asciz "WWWTerminateBrowser"

glabel lbl_80174638
	.asciz "WWWRunSlice"

glabel lbl_80174644
	.asciz "WWWCreateBrowserWindow"
	.balign 4

glabel lbl_8017465C
	.asciz "WWWCloseBrowserWindow"
	.balign 4

glabel lbl_80174674
	.asciz "WWWSetBrowserWindowTransparent"
	.balign 8

glabel lbl_80174698
	.asciz "WWWGetBrowserWindowRect"

glabel lbl_801746B0
	.asciz "WWWSetBrowserWindowRect"

glabel lbl_801746C8
	.asciz "WWWRaiseBrowserWindow"
	.balign 4

glabel lbl_801746E0
	.asciz "WWWLowerBrowserWindow"
	.balign 4

glabel lbl_801746F8
	.asciz "WWWShowBrowserWindow"
	.balign 4

glabel lbl_80174710
	.asciz "WWWHideBrowserWindow"
	.balign 4

glabel lbl_80174728
	.asciz "WWWCommitIme"
	.balign 4

glabel lbl_80174738
	.asciz "WWWUpdateIme"
	.balign 4

glabel lbl_80174748
	.asciz "WWWPostUrl"
	.balign 4

glabel lbl_80174754
	.asciz "WWWOpenUrl"
	.balign 4

glabel lbl_80174760
	.asciz "WWWGetHistoryCount"
	.balign 4

glabel lbl_80174774
	.asciz "WWWNextPage"

glabel lbl_80174780
	.asciz "WWWPrevPage"

glabel lbl_8017478C
	.asciz "WWWMoveInHistory"
	.balign 4

glabel lbl_801747A0
	.asciz "WWWReload"
	.balign 4

glabel lbl_801747AC
	.asciz "WWWReflow"
	.balign 4

glabel lbl_801747B8
	.asciz "WWWSearch"
	.balign 4

glabel lbl_801747C4
	.asciz "WWWResetSearch"
	.balign 4

glabel lbl_801747D4
	.asciz "WWWSetFocus"

glabel lbl_801747E0
	.asciz "WWWLoseFocus"
	.balign 4

glabel lbl_801747F0
	.asciz "WWWHistory"
	.balign 8

glabel lbl_80174800
	.asciz "WWWClearHistory"

glabel lbl_80174810
	.asciz "WWWGetTrueZoom"
	.balign 4

glabel lbl_80174820
	.asciz "WWWSetTrueZoom"
	.balign 4

glabel lbl_80174830
	.asciz "WWWGetZoom"
	.balign 4

glabel lbl_8017483C
	.asciz "WWWSetZoom"
	.balign 4

glabel lbl_80174848
	.asciz "WWWGetSecurityMode"
	.balign 4

glabel lbl_8017485C
	.asciz "WWWGetScroll"
	.balign 4

glabel lbl_8017486C
	.asciz "WWWSetScroll"
	.balign 4

glabel lbl_8017487C
	.asciz "WWWSetRenderingMode"

glabel lbl_80174890
	.asciz "WWWGetRenderingMode"
	.balign 8

glabel lbl_801748A8
	.asciz "WWWSetImageMode"

glabel lbl_801748B8
	.asciz "WWWCreateCertificateManager"

glabel lbl_801748D4
	.asciz "WWWCloseCertificateManager"
	.balign 4

glabel lbl_801748F0
	.asciz "WWWGetNumberOfCertificates"
	.balign 4

glabel lbl_8017490C
	.asciz "WWWSetLanguageEncoding"
	.balign 4

glabel lbl_80174924
	.asciz "WWWGetDocumentIcon"
	.balign 4

glabel lbl_80174938
	.asciz "WWWGetDocumentIconUrl"
	.balign 4

glabel lbl_80174950
	.asciz "WWWClearCookies"

glabel lbl_80174960
	.asciz "WWWGetDocumentSize"
	.balign 4

glabel lbl_80174974
	.asciz "WWWSetIntPref"
	.balign 4

glabel lbl_80174984
	.asciz "WWWGetIntPref"
	.balign 4

glabel lbl_80174994
	.asciz "WWWSetStringPref"
	.balign 4

glabel lbl_801749A8
	.asciz "WWWGetStringPref"
	.balign 4

glabel lbl_801749BC
	.asciz "WWWCommitPrefs"
	.balign 4

glabel lbl_801749CC
	.asciz "WWWSetFocusColors"
	.balign 4

glabel lbl_801749E0
	.asciz "WWWSetScrollbarColors"
	.balign 4

glabel lbl_801749F8
	.asciz "WWWSetScrollbarSize"

glabel lbl_80174A0C
	.asciz "WWWSetWidgetColors"
	.balign 4

glabel lbl_80174A20
	.asciz "WWWSetDisabledWidgetColors"
	.balign 4

glabel lbl_80174A3C
	.asciz "WWWSetButtonWidgetColors"
	.balign 4

glabel lbl_80174A58
	.asciz "WWWSetUastringExtension"

glabel lbl_80174A70
	.asciz "WWWMarkNextItemInDirection"
	.balign 4

glabel lbl_80174A8C
	.asciz "WWWResetNavigation"
	.balign 4

glabel lbl_80174AA0
	.asciz "WWWClearHighlight"
	.balign 8

glabel lbl_80174AB8
	.asciz "WWWSetHighlight"

glabel lbl_80174AC8
	.asciz "WWWGetActiveLinkType"
	.balign 4

glabel lbl_80174AE0
	.asciz "WWWGetBrowserAllocationFunctions"
	.balign 4

glabel lbl_80174B04
	.asciz "WWWShutdownBrowserAllocationFunctions"
	.balign 4

glabel lbl_80174B2C
	.asciz "WWWSetAllocationFunctions"
	.balign 4

glabel lbl_80174B48
	.asciz "WWWHTTPCreateHttpLib"
	.balign 4

glabel lbl_80174B60
	.asciz "WWWHTTPTerminateHttpLib"

glabel lbl_80174B78
	.asciz "WWWHTTPSessionRunSlice"
	.balign 4

glabel lbl_80174B90
	.asciz "WWWHTTPInitSession"
	.balign 4

glabel lbl_80174BA4
	.asciz "WWWHTTPDeleteSession"
	.balign 8

glabel lbl_80174BC0
	.asciz "WWWHTTPSetSessionHeader"

glabel lbl_80174BD8
	.asciz "WWWHTTPRemoveSessionHeader"
	.balign 4

glabel lbl_80174BF4
	.asciz "WWWHTTPRemoveAllSessionHeaders"
	.balign 4

glabel lbl_80174C14
	.asciz "WWWHTTPCreateRequest"
	.balign 4

glabel lbl_80174C2C
	.asciz "WWWHTTPDeleteRequest"
	.balign 8

glabel lbl_80174C48
	.asciz "WWWHTTPSetRequestHeader"

glabel lbl_80174C60
	.asciz "WWWHTTPGetRequestHeader"

glabel lbl_80174C78
	.asciz "WWWHTTPRemoveRequestHeader"
	.balign 4

glabel lbl_80174C94
	.asciz "WWWHTTPRemoveAllRequestHeaders"
	.balign 4

glabel lbl_80174CB4
	.asciz "WWWHTTPGetResponseHeader"
	.balign 4

glabel lbl_80174CD0
	.asciz "WWWHTTPGetResponseHeaders"
	.balign 4

glabel lbl_80174CEC
	.asciz "WWWHTTPIssue"
	.balign 8

glabel lbl_80174D00
	.asciz "WWWHTTPNbActiveRequests"

glabel lbl_80174D18
	.asciz "WWWHTTPPostBodyData"

glabel lbl_80174D2C
	.asciz "WWWHTTPSetAuthCredentials"
	.balign 4

glabel lbl_80174D48
	.asciz "WWWHTTPRemoveAuthCredentials"
	.balign 4

glabel lbl_80174D68
	.asciz "WWWHTTPSetProxy"

glabel lbl_80174D78
	.asciz "WWWHTTPRemoveProxy"
	.balign 4

glabel lbl_80174D8C
	.asciz "WWWHTTPEndLoading"
	.balign 4

glabel lbl_80174DA0
	.asciz "WWWAddJSPlugin"
	.balign 4

glabel lbl_80174DB0
	.asciz "WWWAddNSPlugin"
	.balign 4

glabel lbl_80174DC0
	.asciz "WWWProtocolWrite"
	.balign 4

glabel lbl_80174DD4
	.asciz "WWWProtocolSetMimeType"
	.balign 4

glabel lbl_80174DEC
	.asciz "WWWProtocolFinished"

glabel lbl_80174E00
	.asciz "WWWProtocolFailed"
	.balign 4

glabel lbl_80174E14
	.asciz "WWWAddProtocol"
	.balign 4

glabel lbl_80174E24
	.asciz "WiiNTLG-Regular.ttc"

glabel lbl_80174E38
	.asciz "/shared2/menu/vc/settings.sav"
	.balign 4

glabel lbl_80174E58
	# ROM: 0x170F58
	.asciz "\nError: call www unlinked function.\n"
	.asciz "AllocIfNecessary(%d)\n"
	.asciz "wwwlib-rvl.lz7"
	.balign 8

glabel lbl_80174EA8
	.asciz "ARCClose"
	.balign 4

glabel lbl_80174EB4
	.asciz "ARCConvertPathToEntrynum"
	.balign 4

glabel lbl_80174ED0
	.asciz "ARCEntrynumIsDir"
	.balign 4

glabel lbl_80174EE4
	.asciz "ARCFastOpen"

glabel lbl_80174EF0
	.asciz "ARCGetLength"
	.balign 4

glabel lbl_80174F00
	.asciz "ARCGetStartAddrInMem"
	.balign 4

glabel lbl_80174F18
	.asciz "ARCGetStartOffset"
	.balign 4

glabel lbl_80174F2C
	.asciz "ARCInitHandle"
	.balign 4

glabel lbl_80174F3C
	.asciz "ARCReadDir"
	.balign 4

glabel lbl_80174F48
	.asciz "DVDClose"
	.balign 4

glabel lbl_80174F54
	.asciz "DVDCloseDir"

glabel lbl_80174F60
	.asciz "DVDConvertPathToEntrynum"
	.balign 4

glabel lbl_80174F7C
	.asciz "DVDEntrynumIsDir"
	.balign 4

glabel lbl_80174F90
	.asciz "DVDFastOpen"

glabel lbl_80174F9C
	.asciz "DVDOpenDir"
	.balign 4

glabel lbl_80174FA8
	.asciz "DVDReadDir"
	.balign 4

glabel lbl_80174FB4
	.asciz "DVDReadPrio"

glabel lbl_80174FC0
	.asciz "NANDClose"
	.balign 4

glabel lbl_80174FCC
	.asciz "NANDCreate"
	.balign 4

glabel lbl_80174FD8
	.asciz "NANDCreateDir"
	.balign 4

glabel lbl_80174FE8
	.asciz "NANDDelete"
	.balign 4

glabel lbl_80174FF4
	.asciz "NANDGetCurrentDir"
	.balign 4

glabel lbl_80175008
	.asciz "NANDGetLength"
	.balign 4

glabel lbl_80175018
	.asciz "NANDGetStatus"
	.balign 4

glabel lbl_80175028
	.asciz "NANDGetType"

glabel lbl_80175034
	.asciz "NANDOpen"
	.balign 4

glabel lbl_80175040
	.asciz "NANDRead"
	.balign 4

glabel lbl_8017504C
	.asciz "NANDReadDir"

glabel lbl_80175058
	.asciz "NANDSafeClose"
	.balign 4

glabel lbl_80175068
	.asciz "NANDSafeOpen"
	.balign 4

glabel lbl_80175078
	.asciz "NANDSeek"
	.balign 4

glabel lbl_80175084
	.asciz "NANDWrite"
	.balign 4

glabel lbl_80175090
	.asciz "NETGetUniversalCalendar"

glabel lbl_801750A8
	.asciz "OSCalendarTimeToTicks"
	.balign 4

glabel lbl_801750C0
	.asciz "OSGetTime"
	.balign 4

glabel lbl_801750CC
	.asciz "OSRegisterVersion"
	.balign 4

glabel lbl_801750E0
	.asciz "OSReport"
	.balign 4

glabel lbl_801750EC
	.asciz "OSYieldThread"
	.balign 4

glabel lbl_801750FC
	.asciz "SCGetLanguage"
	.balign 4

glabel lbl_8017510C
	.asciz "WWW_FONT_FILE_DATA_TABLE__"
	.balign 4

glabel lbl_80175128
	.asciz "contentCloseNAND"
	.balign 4

glabel lbl_8017513C
	.asciz "contentConvertPathToEntrynumNAND"
	.balign 4

glabel lbl_80175160
	.asciz "contentFastOpenNAND"

glabel lbl_80175174
	.asciz "contentGetLengthNAND"
	.balign 4

glabel lbl_8017518C
	.asciz "contentInitHandleNAND"
	.balign 4

glabel lbl_801751A4
	.asciz "contentOpenDirNAND"
	.balign 4

glabel lbl_801751B8
	.asciz "contentReadNAND"

glabel lbl_801751C8
	.asciz "contentReleaseHandleNAND"
	.balign 8

glabel lbl_801751E8
	.asciz "contentSeekNAND"

glabel lbl_801751F8
	.asciz "__OSGetSystemTime"
	.balign 4

glabel lbl_8017520C
	.asciz "_SDA2_BASE_"

glabel lbl_80175218
	.asciz "_SDA_BASE_"
	.balign 4

glabel lbl_80175224
	.asciz "__construct_array"
	.balign 4

glabel lbl_80175238
	.asciz "__construct_new_array"
	.balign 4

glabel lbl_80175250
	.asciz "__cvt_fp2unsigned"
	.balign 4

glabel lbl_80175264
	.asciz "__cvt_sll_dbl"
	.balign 4

glabel lbl_80175274
	.asciz "__destroy_arr"
	.balign 4

glabel lbl_80175284
	.asciz "__double_huge"
	.balign 4

glabel lbl_80175294
	.asciz "__ptmf_scall"
	.balign 4

glabel lbl_801752A4
	.asciz "__setjmp"
	.balign 4

glabel lbl_801752B0
	.asciz "__va_arg"
	.balign 8

glabel lbl_801752C0
	.asciz "_current_locale"

glabel lbl_801752D0
	.asciz "localtime"
	.balign 4

glabel lbl_801752DC
	.asciz "snprintf"
	.balign 4

glabel lbl_801752E8
	.asciz "strftime"
	.balign 4

glabel lbl_801752F4
	.asciz "strnicmp"
	.balign 4

glabel lbl_80175300
	.asciz "vsnprintf"
	.balign 4

glabel lbl_8017530C
	.asciz "vsprintf"
	.balign 4

glabel lbl_80175318
	# ROM: 0x171418
	.4byte lbl_80174EA8
	.4byte ARCConvertPathToEntrynum
	.4byte lbl_80174EB4
	.4byte ARCGetFileIdx
	.4byte lbl_80174ED0
	.4byte lbl_800BEA44
	.4byte lbl_80174EE4
	.4byte ARCFastOpen
	.4byte lbl_80174EF0
	.4byte ARCGetLength
	.4byte lbl_80174F00
	.4byte ARCGetStartAddrInMenu
	.4byte lbl_80174F18
	.4byte lbl_800BEC40
	.4byte lbl_80174F2C
	.4byte ARCInitHandle
	.4byte lbl_80247BF0
	.4byte ARCOpen
	.4byte lbl_80174F3C
	.4byte ARCReadDir
	.4byte lbl_80174F48
	.4byte DVDClose
	.4byte lbl_80174F54
	.4byte lbl_800AAED0
	.4byte lbl_80174F60
	.4byte DVDConvertPathToEntrynum
	.4byte lbl_80174F7C
	.4byte lbl_800AA728
	.4byte lbl_80174F90
	.4byte DVDFastOpen
	.4byte lbl_80174F9C
	.4byte lbl_800AABAC
	.4byte lbl_80174FA8
	.4byte lbl_800AAE44
	.4byte lbl_80174FB4
	.4byte DVDReadPrio
	.4byte lbl_80174FC0
	.4byte NANDClose
	.4byte lbl_80174FCC
	.4byte NANDCreate
	.4byte lbl_80174FD8
	.4byte nandGetFileStatusAsyncCallback
	.4byte lbl_80174FE8
	.4byte NANDDelete
	.4byte lbl_80174FF4
	.4byte NANDGetCurrentDir
	.4byte lbl_80175008
	.4byte NANDGetLength
	.4byte lbl_80175018
	.4byte NANDGetStatus
	.4byte lbl_80175028
	.4byte lbl_800BBBAC
	.4byte lbl_80175034
	.4byte NANDOpen
	.4byte lbl_80175040
	.4byte NANDRead
	.4byte lbl_8017504C
	.4byte NANDReadDir
	.4byte lbl_80175058
	.4byte NANDSafeClose
	.4byte lbl_80175068
	.4byte NANDSafeOpen
	.4byte lbl_80175078
	.4byte NANDSeek
	.4byte lbl_80175084
	.4byte NANDWrite
	.4byte lbl_80175090
	.4byte lbl_8008DA7C
	.4byte lbl_801750A8
	.4byte OSCalendarTimeToTicks
	.4byte lbl_801750C0
	.4byte OSGetTime
	.4byte lbl_80247BF8
	.4byte OSPanic
	.4byte lbl_801750CC
	.4byte OSRegisterVersion
	.4byte lbl_801750E0
	.4byte OSReport
	.4byte lbl_801750EC
	.4byte OSYieldThread
	.4byte lbl_801750FC
	.4byte SCGetLanguage
	.4byte lbl_8017510C
	.4byte lbl_801B3CE0
	.4byte lbl_80175128
	.4byte contentCloseNAND
	.4byte lbl_8017513C
	.4byte contentConvertPathToEntrynumNAND
	.4byte lbl_80175160
	.4byte contentFastOpenNAND
	.4byte lbl_80175174
	.4byte contentGetLengthNAND
	.4byte lbl_8017518C
	.4byte contentInitHandleNAND
	.4byte lbl_801751A4
	.4byte contentOpenDirNAND
	.4byte lbl_801751B8
	.4byte contentReadNAND
	.4byte lbl_801751C8
	.4byte contentReleaseHandleNAND
	.4byte lbl_801751E8
	.4byte lbl_80107B44
	.4byte lbl_801751F8
	.4byte __OSGetSystemTime
	.4byte lbl_8017520C
	.4byte 0x8024F800
	.4byte lbl_80175218
	.4byte 0x8024E480
	.4byte lbl_80175224
	.4byte __construct_array
	.4byte lbl_80175238
	.4byte __construct_new_array
	.4byte lbl_80175250
	.4byte __cvt_fp2unsigned
	.4byte lbl_80175264
	.4byte __cvt_sll_dbl
	.4byte lbl_80175274
	.4byte __destroy_arr
	.4byte lbl_80247C00
	.4byte __div2i
	.4byte lbl_80175284
	.4byte lbl_80246B50
	.4byte lbl_80247C08
	.4byte lbl_801AD478
	.4byte lbl_80247C10
	.4byte __mod2i
	.4byte lbl_80175294
	.4byte __ptmf_scall
	.4byte lbl_801752A4
	.4byte lbl_8015D174
	.4byte lbl_80247C18
	.4byte __shl2i
	.4byte lbl_801752B0
	.4byte __va_arg
	.4byte lbl_801752C0
	.4byte lbl_801AD8D0
	.4byte lbl_80247C20
	.4byte abort
	.4byte lbl_80247C28
	.4byte lbl_8008E8E4
	.4byte lbl_80247C2C
	.4byte acos
	.4byte lbl_80247C34
	.4byte asin
	.4byte lbl_80247C3C
	.4byte atan
	.4byte lbl_80247C44
	.4byte atan2
	.4byte lbl_80247C4C
	.4byte atoi
	.4byte lbl_80247C54
	.4byte lbl_80168A20
	.4byte lbl_80247C60
	.4byte lbl_80161724
	.4byte lbl_80247C68
	.4byte ceil
	.4byte lbl_80247C70
	.4byte lbl_80168FE0
	.4byte lbl_80247C78
	.4byte cos
	.4byte lbl_80247C7C
	.4byte exit
	.4byte lbl_80247C84
	.4byte lbl_8016E850
	.4byte lbl_80247C88
	.4byte floor
	.4byte lbl_80247C90
	.4byte fmod
	.4byte lbl_80247C98
	.4byte fprintf
	.4byte lbl_80247CA0
	.4byte lbl_8016A52C
	.4byte lbl_80247CA8
	.4byte lbl_8016A72C
	.4byte lbl_80247CB0
	.4byte labs
	.4byte lbl_801752D0
	.4byte lbl_801690BC
	.4byte lbl_80247CB8
	.4byte lbl_8016E858
	.4byte lbl_80247CC0
	.4byte lbl_8015D278
	.4byte lbl_80247CC8
	.4byte memchr
	.4byte lbl_80247CD0
	.4byte memcmp
	.4byte lbl_80247CD8
	.4byte memcpy
	.4byte lbl_80247CE0
	.4byte memmove
	.4byte lbl_80247CE8
	.4byte memset
	.4byte lbl_80247CF0
	.4byte lbl_80168FE4
	.4byte lbl_80247CF8
	.4byte pow
	.4byte lbl_80247CFC
	.4byte printf
	.4byte lbl_80247D04
	.4byte qsort
	.4byte lbl_80247D0C
	.4byte rand
	.4byte lbl_80247D14
	.4byte sin
	.4byte lbl_801752DC
	.4byte snprintf
	.4byte lbl_80247D18
	.4byte sprintf
	.4byte lbl_80247D20
	.4byte sqrt
	.4byte lbl_80247D28
	.4byte srand
	.4byte lbl_80247D30
	.4byte sscanf
	.4byte lbl_80247D38
	.4byte strcat
	.4byte lbl_80247D40
	.4byte strchr
	.4byte lbl_80247D48
	.4byte strcmp
	.4byte lbl_80247D50
	.4byte strcpy
	.4byte lbl_80247D58
	.4byte func_801669D0
	.4byte lbl_801752E8
	.4byte strftime
	.4byte lbl_80247D60
	.4byte stricmp
	.4byte lbl_80247D68
	.4byte strlen
	.4byte lbl_80247D70
	.4byte strncat
	.4byte lbl_80247D78
	.4byte strncmp
	.4byte lbl_80247D80
	.4byte strncpy
	.4byte lbl_801752F4
	.4byte strncasecmp
	.4byte lbl_80247D88
	.4byte strcspn
	.4byte lbl_80247D90
	.4byte lbl_8016683C
	.4byte lbl_80247D98
	.4byte strtok
	.4byte lbl_80247DA0
	.4byte strstr
	.4byte lbl_80247DA8
	.4byte strtol
	.4byte lbl_80247DB0
	.4byte strtoul
	.4byte lbl_80247DB8
	.4byte tan
	.4byte lbl_80247DC0
	.4byte __vprintf
	.4byte lbl_80175300
	.4byte vsnprintf
	.4byte lbl_8017530C
	.4byte vsprintf
	.4byte lbl_80247DC8
	.4byte 0

glabel lbl_80175728
	# ROM: 0x171828
	.asciz "!!!!!Prolog!!!!!\n"
	.asciz "RSO Module : call constructor (%08x)\n"
	.asciz "!!!!!Epilog!!!!!\n"
	.asciz "RSO Module : call destructor (%08x)\n"
	.asciz "\n[Error]: Unlinked function was called.\n"
	.asciz "RSOLinkInit ERROR!\n"
	.balign 8

glabel lbl_801757D8
	# ROM: 0x1718D8
	.4byte lbl_80191A40
	.4byte lbl_80191AD0
	.4byte lbl_80191B6C
	.4byte lbl_80191C38
	.4byte lbl_80191CFC
	.4byte lbl_80191DA8
	.4byte lbl_80191E60
	.4byte 0

glabel lbl_801757F8
	# ROM: 0x1718F8
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFF9A
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF99
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFF8E
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFF97
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFF8C
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFF9B
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFF94
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFF93
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFF95
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFF96
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFF98
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFF91
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFF8B
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFF8A
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFF89
	.4byte 0xFFFFFF80
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFED
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFC0

glabel lbl_80175938
	# ROM: 0x171A38
	.asciz "/shared2/sys"
	.balign 4

glabel lbl_80175948
	# ROM: 0x171A48
	.asciz "/shared2/sys/SYSCONF"
	.balign 4

glabel lbl_80175960
	# ROM: 0x171A60
	.asciz "/title/00000001/00000002/data/setting.txt"
	.balign 4
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FF33000
	.4byte 0
	.4byte 0x3FF99000
	.4byte 0
	.4byte 0x40000000
	.4byte 0
	.4byte 0x40033000
	.4byte 0

glabel lbl_801759D0
	# ROM: 0x171AD0
	.4byte 0x02000071
	.4byte 0x01006400
	.4byte 0xFE020000
	.4byte 0x71010096
	.4byte 0x00B40200
	.4byte 0x00710100
	.4byte 0xAA006402
	.4byte 0x00007101
	.4byte 0x00C80036
	.4byte 0x07000071
	.4byte 0x01007200
	.4byte 0x20000000

glabel lbl_80175A00
	# ROM: 0x171B00
	.4byte 0xFD05B304
	.4byte 0x63033503
	.4byte 0x1F030000
	.4byte 0

glabel lbl_80175A10
	# ROM: 0x171B10
	.4byte lbl_800DB93C
	.4byte hcisu_h2_open
	.4byte hcisu_h2_close
	.4byte hcisu_h2_send
	.4byte hcisu_h2_handle_event
	.4byte 0

glabel lbl_80175A28
	# ROM: 0x171B28
	.4byte 0x40020400
	.4byte 0x000F2000
	.4byte 0x13880000

glabel lbl_80175A34
	.4byte 0x0002010E
	.4byte 0x01020E02
	.4byte 0x0212FF01

glabel lbl_80175A40
	.4byte 0x0005000A
	.4byte 0xFF0108FF
	.4byte 0x0106FF01
	.4byte 0x07FF0112
	.4byte 0xFF020000

glabel lbl_80175A54
	.4byte 0x03000200
	.4byte 0x13880000
	.4byte 0x00001000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000200
	.4byte 0x13880000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000800
	.4byte 0x13880000
	.4byte 0

glabel lbl_80175AA0
	.4byte 0x019000C8
	.4byte 0x00040004
	.4byte 0x02000320
	.4byte 0x01900000
	.4byte 0x00000300
	.4byte 0

glabel lbl_80175AB8
	.4byte 0x04000000
	.4byte lbl_80246A80
	.4byte 0x04000000
	.4byte 0

glabel lbl_80175AC8
	# ROM: 0x171BC8
	.4byte 0x12001101
	.4byte 0x11031111
	.4byte 0x11021108
	.4byte 0x111E1105
	.4byte 0x11061109
	.4byte 0x11101104
	.4byte 0x1118111B
	.4byte 0x11151116
	.4byte 0x1117112D
	.4byte 0x110B110E
	.4byte 0x11241304
	.4byte 0x112F0000

glabel lbl_80175AF8
	# ROM: 0x171BF8
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x0000000C
	.4byte 0x0000001D
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000016
	.4byte 0x00000023
	.4byte 0x00000019
	.4byte 0x0000001B
	.4byte 0x0000001A
	.4byte 0x00000028
	.4byte 0x00000025
	.4byte 0x00000027
	.4byte 0x00000020
	.4byte 0x00000025
	.4byte 0x0000002C
	.4byte 0

glabel lbl_80175B58
	# ROM: 0x171C58
	.4byte bta_dm_authorize_cback
	.4byte bta_dm_pin_cback
	.4byte bta_dm_new_link_key_cback
	.4byte lbl_800DF68C
	.4byte bta_dm_authentication_complete_cback
	.4byte 0

glabel lbl_80175B70
	# ROM: 0x171C70
	.4byte bta_dm_enable
	.4byte bta_dm_disable
	.4byte bta_dm_set_dev_name
	.4byte bta_dm_set_visibility
	.4byte bta_dm_bond
	.4byte bta_dm_pin_reply
	.4byte bta_dm_auth_reply
	.4byte lbl_800DF7DC
	.4byte bta_dm_acl_change
	.4byte bta_dm_pm_btm_status
	.4byte bta_dm_pm_timer
	.4byte bta_dm_keep_acl
	.4byte bta_dm_send_hci_reset

glabel lbl_80175BA4
	# ROM: 0x171CA4
	.4byte 0x000D0001
	.4byte 0x0D00020D
	.4byte 0x00030D00
	.4byte 0x070D0008
	.4byte 0x0D00040D
	.4byte 0x00050D00
	.4byte 0x060D0009
	.4byte 0x0D000A0D
	.4byte 0x000B0D00
	.4byte 0x0C0D0000
	.4byte 0

glabel lbl_80175BD0
	# ROM: 0x171CD0
	.4byte bta_dm_search_start
	.4byte bta_dm_search_cancel
	.4byte bta_dm_discover
	.4byte bta_dm_inq_cmpl
	.4byte bta_dm_rmt_name
	.4byte bta_dm_sdp_result
	.4byte bta_dm_search_cmpl
	.4byte bta_dm_free_sdp_db
	.4byte bta_dm_disc_result
	.4byte bta_dm_search_result
	.4byte bta_dm_queue_search
	.4byte bta_dm_queue_disc
	.4byte bta_dm_search_clear_queue
	.4byte bta_dm_search_cancel_cmpl
	.4byte lbl_800DEEC0
	.4byte bta_dm_search_cancel_transac_cmpl
	.4byte bta_dm_disc_rmt_name
	.4byte bta_dm_cancel_rmt_name
lbl_80175C18:
	.4byte 0x0012010E
	.4byte 0x12000212
	.4byte 0x03121200
	.4byte 0x12120012
	.4byte 0x12000712
	.4byte 0x00121200
	.4byte 0x12120000
lbl_80175C34:
	.4byte 0x12120101
	.4byte 0x12021212
	.4byte 0x01031201
	.4byte 0x04120111
	.4byte 0x12010512
	.4byte 0x01061200
	.4byte 0x09120100
lbl_80175C50:
	.4byte 0x0A12020C
	.4byte 0x0E020B12
	.4byte 0x020D1200
	.4byte 0x0F0D0012
	.4byte 0x12020F0D
	.4byte 0x000D1200
	.4byte 0x0D120000
lbl_80175C6C:
	.4byte 0x1212030E
	.4byte 0x12031212
	.4byte 0x03121203
	.4byte 0x10120311
	.4byte 0x12030512
	.4byte 0x03121200
	.4byte 0x08120300

glabel lbl_80175C88
	# ROM: 0x171D88
	.4byte lbl_80175C18
	.4byte lbl_80175C34
	.4byte lbl_80175C50
	.4byte lbl_80175C6C

glabel lbl_80175C98
	# ROM: 0x171D98
	.4byte bta_hh_api_disc_act
	.4byte bta_hh_open_act
	.4byte bta_hh_close_act
	.4byte bta_hh_data_act
	.4byte bta_hh_ctrl_dat_act
	.4byte bta_hh_handsk_act
	.4byte bta_hh_start_sdp
	.4byte bta_hh_sdp_cmpl
	.4byte bta_hh_write_dev_act
	.4byte bta_hh_get_dscp_act
	.4byte bta_hh_maint_dev_act
	.4byte bta_hh_open_cmpl_act
lbl_80175CC8:
	.4byte 0x06020C01
	.4byte 0x01020201
	.4byte 0x0C010C01
	.4byte 0x0C010C01
	.4byte 0x0C010C01
	.4byte 0x0A010C01
lbl_80175CE0:
	.4byte 0x0C020C01
	.4byte 0x01020201
	.4byte 0x0C020C02
	.4byte 0x0C020702
	.4byte 0x0C020C02
	.4byte 0x0A010B03
lbl_80175CF8:
	.4byte 0x0C030003
	.4byte 0x01030201
	.4byte 0x03030403
	.4byte 0x05030C03
	.4byte 0x08030903
	.4byte 0x0A030C03

glabel lbl_80175D10
	# ROM: 0x171E10
	.4byte lbl_80175CC8
	.4byte lbl_80175CE0
	.4byte lbl_80175CF8
	.4byte 0

glabel lbl_80175D20
	# ROM: 0x171E20
	.4byte 0x03020201
	.4byte 0x03010102
	.4byte 0x03000000
	.4byte 0
	.4byte 0x00001F40
	.4byte 0x00001F40
	.4byte 0x000A0060
	.4byte 0x003F0100

glabel lbl_80175D40
	# ROM: 0x171E40
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF7F0000
	.4byte 0

glabel lbl_80175D50
	# ROM: 0x171E50
	.4byte hidh_l2cif_connect_ind
	.4byte hidh_l2cif_connect_cfm
	.4byte 0
	.4byte hidh_l2cif_config_ind
	.4byte hidh_l2cif_config_cfm
	.4byte hidh_l2cif_disconnect_ind
	.4byte hidh_l2cif_disconnect_cfm
	.4byte 0
	.4byte hidh_l2cif_data_ind
	.4byte hidh_l2cif_cong_ind

glabel lbl_80175D78
	# ROM: 0x171E78
	.4byte 0x0091E372
	.4byte 0x0796E475
	.4byte 0x0E9FED7C
	.4byte 0x0998EA7B
	.4byte 0x1C8DFF6E
	.4byte 0x1B8AF869
	.4byte 0x1283F160
	.4byte 0x1584F667
	.4byte 0x38A9DB4A
	.4byte 0x3FAEDC4D
	.4byte 0x36A7D544
	.4byte 0x31A0D243
	.4byte 0x24B5C756
	.4byte 0x23B2C051
	.4byte 0x2ABBC958
	.4byte 0x2DBCCE5F
	.4byte 0x70E19302
	.4byte 0x77E69405
	.4byte 0x7EEF9D0C
	.4byte 0x79E89A0B
	.4byte 0x6CFD8F1E
	.4byte 0x6BFA8819
	.4byte 0x62F38110
	.4byte 0x65F48617
	.4byte 0x48D9AB3A
	.4byte 0x4FDEAC3D
	.4byte 0x46D7A534
	.4byte 0x41D0A233
	.4byte 0x54C5B726
	.4byte 0x53C2B021
	.4byte 0x5ACBB928
	.4byte 0x5DCCBE2F
	.4byte 0xE0710392
	.4byte 0xE7760495
	.4byte 0xEE7F0D9C
	.4byte 0xE9780A9B
	.4byte 0xFC6D1F8E
	.4byte 0xFB6A1889
	.4byte 0xF2631180
	.4byte 0xF5641687
	.4byte 0xD8493BAA
	.4byte 0xDF4E3CAD
	.4byte 0xD64735A4
	.4byte 0xD14032A3
	.4byte 0xC45527B6
	.4byte 0xC35220B1
	.4byte 0xCA5B29B8
	.4byte 0xCD5C2EBF
	.4byte 0x900173E2
	.4byte 0x970674E5
	.4byte 0x9E0F7DEC
	.4byte 0x99087AEB
	.4byte 0x8C1D6FFE
	.4byte 0x8B1A68F9
	.4byte 0x821361F0
	.4byte 0x851466F7
	.4byte 0xA8394BDA
	.4byte 0xAF3E4CDD
	.4byte 0xA63745D4
	.4byte 0xA13042D3
	.4byte 0xB42557C6
	.4byte 0xB32250C1
	.4byte 0xBA2B59C8
	.4byte 0xBD2C5ECF

glabel lbl_80175E78
	# ROM: 0x171F78
	.4byte 0
	.4byte 0x00001000
	.4byte 0x80000080
	.4byte 0x5F9B34FB

glabel lbl_80175E88
	# ROM: 0x171F88
	.4byte 0x000000FF

glabel lbl_80175E8C
	# ROM: 0x171F8C
	.4byte 0xC47A0000

glabel lbl_80175E90
	# ROM: 0x171F90
	.4byte 0x447A0000

glabel lbl_80175E94
	# ROM: 0x171F94
	.4byte 0x47000000

glabel lbl_80175E98
	# ROM: 0x171F98
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000001

glabel lbl_80175EF8
	# ROM: 0x171FF8
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000013
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x00000004
	.4byte 0x00000009
	.4byte 0x00000007
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x00000007
	.4byte 0x0000000B
	.4byte 0x00000005
	.4byte 0x0000000C
	.4byte 0x00000005
	.4byte 0x0000000D
	.4byte 0x00000006
	.4byte 0x0000000D
	.4byte 0x00000008
	.4byte 0x0000000E
	.4byte 0x0000000E
	.4byte 0x0000000E
	.4byte 0x00000006
	.4byte 0x0000000E
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0x00000010
	.4byte 0x00000006
	.4byte 0x00000010
	.4byte 0x0000000E
	.4byte 0x00000011
	.4byte 0x0000000B
	.4byte 0x00000011
	.4byte 0x0000000C
	.4byte 0x00000012
	.4byte 0x0000000B
	.4byte 0x00000012
	.4byte 0x0000000C
	.4byte 0x00000013
	.4byte 0x0000000D
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x00000015
	.4byte 0x00000009
	.4byte 0x00000015
	.4byte 0x0000000A
	.4byte 0x00000016
	.4byte 0x00000009
	.4byte 0x00000016
	.4byte 0x0000000A
	.4byte 0x00000017
	.4byte 0x00000009
	.4byte 0x00000017
	.4byte 0x0000000A
	.4byte 0x00000018
	.4byte 0x00000009
	.4byte 0x00000018
	.4byte 0x0000000A
	.4byte 0x00000019
	.4byte 0x00000009
	.4byte 0x00000019
	.4byte 0x0000000A
	.4byte 0x0000001A
	.4byte 0x00000009
	.4byte 0x0000001A
	.4byte 0x0000000A
	.4byte 0x0000001B
	.4byte 0x00000009
	.4byte 0x0000001B
	.4byte 0x0000000A
	.4byte 0x0000001C
	.4byte 0x00000009
	.4byte 0x0000001C
	.4byte 0x0000000A
	.4byte 0x0000001D
	.4byte 0x00000009
	.4byte 0x0000001D
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00000009
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x0000001F
	.4byte 0x0000000F
	.4byte 0x0000001F
	.4byte 0x00000010
	.4byte 0x0000001F
	.4byte 0x00000011
	.4byte 0x0000001F
	.4byte 0x00000012
	.4byte 0x0000001F
	.4byte 0x00000015
	.4byte 0x00000020
	.4byte 0x0000000F
	.4byte 0x00000020
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000011
	.4byte 0x00000020
	.4byte 0x00000012
	.4byte 0x00000020
	.4byte 0x00000015
	.4byte 0x00000021
	.4byte 0x0000000F
	.4byte 0x00000021
	.4byte 0x00000010
	.4byte 0x00000021
	.4byte 0x00000011
	.4byte 0x00000021
	.4byte 0x00000012
	.4byte 0x00000021
	.4byte 0x00000015
	.4byte 0x00000022
	.4byte 0x0000000F
	.4byte 0x00000022
	.4byte 0x00000010
	.4byte 0x00000022
	.4byte 0x00000011
	.4byte 0x00000022
	.4byte 0x00000012
	.4byte 0x00000022
	.4byte 0x00000015
	.4byte 0x00000E10
	.4byte 0x00000DF2
	.4byte 0x00000005
	.4byte 0x00000064
	.4byte 0x00000002
	.4byte 0x40400000
	.4byte 0x41100000
	.4byte 0x0000001E
	.4byte 0x000000B4
	.4byte 0x3F99999A
	.4byte 0

glabel lbl_80176174
	# ROM: 0x172274
	.4byte 0x3F800000
	.4byte 0x43300000
	.4byte 0
	.4byte 0x45610000
	.4byte 0x455F2000
	.4byte 0xC61C4000
	.4byte 0x41F00000
	.4byte 0x3F666666
	.4byte 0x3DA14285
	.4byte 0x41200000
	.4byte 0

glabel lbl_801761A0
	# ROM: 0x1722A0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x40200000
	.4byte 0x3F000000
	.4byte 0x41100000
	.4byte 0x43340000
	.4byte 0x414B3333
	.4byte 0x40A00000
	.4byte 0x41700000
	.4byte 0x3FB40000
	.4byte 0x44180000
	.4byte 0x43E40000
	.4byte 0xC3340000
	.4byte 0x40400000
	.4byte 0x00060000
	.4byte 0x0006F800
	.4byte 0x00000004
	.4byte 0x00000003

glabel lbl_801761E8
	# ROM: 0x1722E8
	.4byte 0x3F800000
	.4byte 0

glabel lbl_801761F0
	# ROM: 0x1722F0
	.4byte 0
	.4byte 0xFF0000FF
	.4byte 0x3F000000
	.4byte 0x3F800000

glabel lbl_80176200
	# ROM: 0x172300
	.4byte 0x3F800000

glabel lbl_80176204
	# ROM: 0x172304
	.4byte 0xC61C4000

glabel lbl_80176208
	# ROM: 0x172308
	.4byte 0x41200000
	.4byte 0

glabel lbl_80176210
	# ROM: 0x172310
	.4byte 0x7A7A7A7A
	.4byte 0x7A7A7A7A
	.4byte 0x7AFDFE7A
	.4byte 0x7A7A7A7A
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF296465
	.4byte 0x662B6768
	.4byte 0x2526692A
	.4byte 0x6A272C6B
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x0809246C
	.4byte 0x6D6E6F28
	.4byte 0x700A0B0C
	.4byte 0x0D0E0F10
	.4byte 0x11121314
	.4byte 0x15161718
	.4byte 0x191A1B1C
	.4byte 0x1D1E1F20
	.4byte 0x21222371
	.4byte 0x72737475
	.4byte 0xFF7D7E7F
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959676
	.4byte 0x7778797A

glabel lbl_80176290
	# ROM: 0x172390
	.4byte 0x70871C30
	.4byte 0x8988A250
	.4byte 0x88808290
	.4byte 0x88830C90
	.4byte 0x888402F8
	.4byte 0x88882210
	.4byte 0x71CF9C10
	.4byte 0xF9CF9C70
	.4byte 0x8208A288
	.4byte 0xF200A288
	.4byte 0x0BC11C78
	.4byte 0x0A222208
	.4byte 0x8A222208
	.4byte 0x71C21C70
	.4byte 0x23C738F8
	.4byte 0x5228A480
	.4byte 0x8A282280
	.4byte 0x8BC822F0
	.4byte 0xFA282280
	.4byte 0x8A28A480
	.4byte 0x8BC738F8
	.4byte 0xF9C89C08
	.4byte 0x82288808
	.4byte 0x82088808
	.4byte 0xF2EF8808
	.4byte 0x82288888
	.4byte 0x82288888
	.4byte 0x81C89C70
	.4byte 0x8A08A270
	.4byte 0x920DA288
	.4byte 0xA20AB288
	.4byte 0xC20AAA88
	.4byte 0xA208A688
	.4byte 0x9208A288
	.4byte 0x8BE8A270
	.4byte 0xF1CF1CF8
	.4byte 0x8A28A220
	.4byte 0x8A28A020
	.4byte 0xF22F1C20
	.4byte 0x82AA0220
	.4byte 0x82492220
	.4byte 0x81A89C20
	.4byte 0x8A28A288
	.4byte 0x8A28A288
	.4byte 0x8A289488
	.4byte 0x8A2A8850
	.4byte 0x894A9420
	.4byte 0x894AA220
	.4byte 0x70852220
	.4byte 0xF8011000
	.4byte 0x08020800
	.4byte 0x10840400
	.4byte 0x20040470
	.4byte 0x40840400
	.4byte lbl_80020800
	.4byte 0xF8011000
	.4byte 0x70800000
	.4byte 0x88822200
	.4byte 0x08820400
	.4byte 0x108F8800
	.4byte 0x20821000
	.4byte 0x00022200
	.4byte 0x20800020
	.4byte 0

glabel lbl_80176390
	# ROM: 0x172490
	.4byte 0x51421820
	.4byte 0x53E7A420
	.4byte 0x014A2C40
	.4byte 0x01471000
	.4byte 0x0142AA00
	.4byte 0x03EAA400
	.4byte 0x01471A78
	.4byte 0
	.4byte 0x50008010
	.4byte 0x20010820
	.4byte 0xF8020040
	.4byte 0x20420820
	.4byte 0x50441010
	.4byte 0x00880000
	.4byte 0x00070E00
	.4byte 0x01088840
	.4byte 0x78898820
	.4byte 0x004A8810
	.4byte 0x788A8810
	.4byte 0x01098808
	.4byte 0x00040E04
	.4byte 0x70800620
	.4byte 0x11400820
	.4byte 0x12200820
	.4byte 0x10001020
	.4byte 0x10000820
	.4byte 0x100F8820
	.4byte 0x70000620
	.4byte 0x60070000
	.4byte 0x110F82A0
	.4byte 0x12AA8AE0
	.4byte 0x084F92A0
	.4byte 0x100FBE1C
	.4byte 0x10089008
	.4byte 0x60070808
	.4byte 0
	.4byte 0x02000200
	.4byte 0x7A078270
	.4byte 0x8BC81E88
	.4byte 0x8A2822F8
	.4byte 0x9A282280
	.4byte 0x6BC79E78
	.4byte 0x30000000
	.4byte 0x48080810
	.4byte 0x41E80000
	.4byte 0x422F1830
	.4byte 0xFBE88810
	.4byte 0x40288890
	.4byte 0x43C89C60
	.4byte 0x81000000
	.4byte 0x81000000
	.4byte 0x990F3C70
	.4byte 0xA10AA288
	.4byte 0xE10AA288
	.4byte 0xA10AA288
	.4byte 0x98CAA270
	.4byte 0
	.4byte 0x00000020
	.4byte 0xF1EF1E20
	.4byte 0x8A28A0F8
	.4byte 0x8A281C20
	.4byte 0xF1E80220
	.4byte 0x80283C38
	.4byte 0
	.4byte 0
	.4byte 0x8A28B688
	.4byte 0x8A2A8888
	.4byte 0x8A2A8878
	.4byte 0x894A8808
	.4byte 0x788536F0
	.4byte 0
	.4byte 0
	.4byte 0xF8000000
	.4byte 0x10000000
	.4byte 0x20000000
	.4byte 0x40000000
	.4byte 0xF8000000
	.4byte 0

glabel lbl_801764C8
	# ROM: 0x1725C8
	.4byte 0xBA83126F

glabel lbl_801764CC
	# ROM: 0x1725CC
	.4byte 0x3A83126F
	.4byte 0x3F800000
	.4byte 0x40000000
	.4byte 0x40400000
	.4byte 0xC0000000

glabel lbl_801764E0
	# ROM: 0x1725E0
	.4byte 0

glabel lbl_801764E4
	# ROM: 0x1725E4
	.4byte 0x3F000000

glabel lbl_801764E8
	# ROM: 0x1725E8
	.4byte 0

glabel lbl_801764EC
	# ROM: 0x1725EC
	.4byte 0x3F800000

glabel lbl_801764F0
	# ROM: 0x1725F0
	.4byte 0x43300000
	.4byte 0

glabel lbl_801764F8
	# ROM: 0x1725F8
	.4byte 0

glabel lbl_801764FC
	# ROM: 0x1725FC
	.4byte 0x3F800000

glabel lbl_80176500
	# ROM: 0x172600
	.4byte 0

glabel lbl_80176504
	# ROM: 0x172604
	.4byte 0x3F000000

glabel lbl_80176508
	# ROM: 0x172608
	.4byte 0
	.4byte 0
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x3F000000

glabel lbl_8017651C
	# ROM: 0x17261C
	.4byte 0x3F360B61

glabel lbl_80176520
	# ROM: 0x172620
	.4byte 0

glabel lbl_80176524
	# ROM: 0x172624
	.4byte 0x3F800000
	.4byte 0x40000000
	.4byte 0

glabel lbl_80176530
	# ROM: 0x172630
	.4byte 0x43300000
	.4byte 0

glabel lbl_80176538
	# ROM: 0x172638
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3C8EFA35
	.4byte 0x3B808081
	.4byte 0x43300000
	.4byte 0

glabel lbl_80176550
	# ROM: 0x172650
	.4byte 0x3F000000
	.4byte 0x3B808081

glabel lbl_80176558
	# ROM: 0x172658
	.4byte 0
	.4byte 0

glabel lbl_80176560
	# ROM: 0x172660
	.4byte 0
	.4byte 0

glabel lbl_80176568
	# ROM: 0x172668
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x3F000000
	.4byte 0x3F800000

glabel lbl_80176578
	# ROM: 0x172678
	.4byte 0
	.4byte 0

glabel lbl_80176580
	# ROM: 0x172680
	.4byte 0x43300000
	.4byte 0

glabel lbl_80176588
	# ROM: 0x172688
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_80176590
	# ROM: 0x172690
	.4byte 0x47800000

glabel lbl_80176594
	# ROM: 0x172694
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x42000000
	.4byte 0x42800000
	.4byte 0xBF800000
	.4byte 0xC2800000
	.4byte 0x43000000
	.4byte 0xC3000000
	.4byte 0

glabel lbl_801765B8
	# ROM: 0x1726B8
	.4byte 0

glabel lbl_801765BC
	# ROM: 0x1726BC
	.4byte 0x3F800000

glabel lbl_801765C0
	# ROM: 0x1726C0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x47000000
	.4byte 0x46FA0000

glabel lbl_801765D0
	# ROM: 0x1726D0
	.4byte 0xC0400000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000

glabel lbl_80176604
	# ROM: 0x172704
	.4byte 0x3F800000

glabel lbl_80176608
	# ROM: 0x172708
	.4byte 0
	.4byte 0x46FA0000
	.4byte 0x3FAAAAAB
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_80176620
	# ROM: 0x172720
	.4byte 0xBF800000

glabel lbl_80176624
	# ROM: 0x172724
	.4byte 0x40000000
	.4byte 0x47800000
	.4byte 0x46FFFE00
	.4byte 0xBDF5C28F
	.4byte 0x3F6147AE
	.4byte 0x3F000000
	.4byte 0x3F8F5C29
	.4byte 0x3F59999A
	.4byte 0x3E199998
	.4byte 0x3EB33334
	.4byte 0xC0400000
	.4byte 0x47000000
	.4byte 0xBDF5C28F
	.4byte 0x3F59999A
	.4byte 0x3E199998
	.4byte 0x3EB33334
	.4byte 0

glabel lbl_80176668
	# ROM: 0x172768
	.4byte 0x42FE0000
	.4byte 0x427C0000
	.4byte 0
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x43300000
	.4byte 0

glabel lbl_80176688
	# ROM: 0x172788
	.4byte 0x3F800000
	.4byte 0

glabel lbl_80176690
	# ROM: 0x172790
	.4byte 0

glabel lbl_80176694
	# ROM: 0x172794
	.4byte 0x3F800000

glabel lbl_80176698
	# ROM: 0x172798
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_801766A0
	# ROM: 0x1727A0
	.4byte 0

glabel lbl_801766A4
	# ROM: 0x1727A4
	.4byte 0x3F800000
	.4byte 0x437F0000
	.4byte 0x40C00000
	.4byte 0x43800000
	.4byte 0
	.4byte 0x43300000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_801766C8
	# ROM: 0x1727C8
	.4byte 0xFD2DFD2E
	.4byte 0xFD2FFD75
	.4byte 0xFDA7FDCE
	.4byte 0xFDEEFE09
	.4byte 0xFE20FE34
	.4byte 0xFE46FE57
	.4byte 0xFE66FE74
	.4byte 0xFE81FE8D
	.4byte 0xFE98FEA3
	.4byte 0xFEADFEB6
	.4byte 0xFEBFFEC7
	.4byte 0xFECFFED7
	.4byte 0xFEDFFEE6
	.4byte 0xFEECFEF3
	.4byte 0xFEF9FEFF
	.4byte 0xFF05FF0B
	.4byte 0xFF11FF16
	.4byte 0xFF1BFF20
	.4byte 0xFF25FF2A
	.4byte 0xFF2EFF33
	.4byte 0xFF37FF3C
	.4byte 0xFF40FF44
	.4byte 0xFF48FF4C
	.4byte 0xFF50FF53
	.4byte 0xFF57FF5B
	.4byte 0xFF5EFF62
	.4byte 0xFF65FF68
	.4byte 0xFF6BFF6F
	.4byte 0xFF72FF75
	.4byte 0xFF78FF7B
	.4byte 0xFF7EFF81
	.4byte 0xFF83FF86
	.4byte 0xFF89FF8C
	.4byte 0xFF8EFF91
	.4byte 0xFF93FF96
	.4byte 0xFF99FF9B
	.4byte 0xFF9DFFA0
	.4byte 0xFFA2FFA5
	.4byte 0xFFA7FFA9
	.4byte 0xFFABFFAE
	.4byte 0xFFB0FFB2
	.4byte 0xFFB4FFB6
	.4byte 0xFFB8FFBA
	.4byte 0xFFBCFFBE
	.4byte 0xFFC0FFC2
	.4byte 0xFFC4FFC6
	.4byte 0xFFC8FFCA
	.4byte 0xFFCCFFCE
	.4byte 0xFFCFFFD1
	.4byte 0xFFD3FFD5
	.4byte 0xFFD6FFD8
	.4byte 0xFFDAFFDC
	.4byte 0xFFDDFFDF
	.4byte 0xFFE1FFE2
	.4byte 0xFFE4FFE5
	.4byte 0xFFE7FFE9
	.4byte 0xFFEAFFEC
	.4byte 0xFFEDFFEF
	.4byte 0xFFF0FFF2
	.4byte 0xFFF3FFF5
	.4byte 0xFFF6FFF8
	.4byte 0xFFF9FFFA
	.4byte 0xFFFCFFFD
	.4byte 0xFFFF0000

glabel lbl_801767C8
	# ROM: 0x1728C8
	.4byte 0x477FFF00

glabel lbl_801767CC
	# ROM: 0x1728CC
	.4byte 0xC4620000

glabel lbl_801767D0
	# ROM: 0x1728D0
	.4byte 0

glabel lbl_801767D4
	# ROM: 0x1728D4
	.4byte 0x41200000
	.4byte 0xBD000000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_801767E8
	# ROM: 0x1728E8
	.4byte 0x3F7FCCB8
	.4byte 0x3F7F9947
	.4byte 0x3F7F65AD
	.4byte 0x3F7F31E9
	.4byte 0x3F7EFDFA
	.4byte 0x3F7EC9E1
	.4byte 0x3F7E959D
	.4byte 0x3F7E612F
	.4byte 0x3F7E2C94
	.4byte 0x3F7DF7CF
	.4byte 0x3F7DC2DD
	.4byte 0x3F7D8DBF
	.4byte 0x3F7D5873
	.4byte 0x3F7D22FD
	.4byte 0x3F7CED57
	.4byte 0x3F7CB784
	.4byte 0x3F7C8183
	.4byte 0x3F7C4B54
	.4byte 0x3F7C14F7
	.4byte 0x3F7BDE6A
	.4byte 0x3F7BA7AD
	.4byte 0x3F7B70C2
	.4byte 0x3F7B39A4
	.4byte 0x3F7B0258
	.4byte 0x3F7ACADB
	.4byte 0x3F7A932B
	.4byte 0x3F7A5B4B
	.4byte 0x3F7A2338
	.4byte 0x3F79EAF3
	.4byte 0x3F79B27C
	.4byte 0x3F7979D1
	.4byte 0x3F7940F1
	.4byte 0x3F7907DE
	.4byte 0x3F78CE97
	.4byte 0x3F78951A
	.4byte 0x3F785B69
	.4byte 0x3F782181
	.4byte 0x3F77E762
	.4byte 0x3F77AD0F
	.4byte 0x3F777282
	.4byte 0x3F7737C0
	.4byte 0x3F76FCC4
	.4byte 0x3F76C190
	.4byte 0x3F768622
	.4byte 0x3F764A7B
	.4byte 0x3F760E9C
	.4byte 0x3F75D281
	.4byte 0x3F75962A
	.4byte 0x3F755999
	.4byte 0x3F751CCB
	.4byte 0x3F74DFC1
	.4byte 0x3F74A27A
	.4byte 0x3F7464F5
	.4byte 0x3F742732
	.4byte 0x3F73E930
	.4byte 0x3F73AAEF
	.4byte 0x3F736C6D
	.4byte 0x3F732DAD
	.4byte 0x3F72EEAA
	.4byte 0x3F72AF65
	.4byte 0x3F726FDF
	.4byte 0x3F723015
	.4byte 0x3F71F009
	.4byte 0x3F71AFB8
	.4byte 0x3F716F22
	.4byte 0x3F712E47
	.4byte 0x3F70ED26
	.4byte 0x3F70ABBE
	.4byte 0x3F706A10
	.4byte 0x3F702818
	.4byte 0x3F6FE5D8
	.4byte 0x3F6FA34E
	.4byte 0x3F6F607B
	.4byte 0x3F6F1D5B
	.4byte 0x3F6ED9F2
	.4byte 0x3F6E963A
	.4byte 0x3F6E5237
	.4byte 0x3F6E0DE5
	.4byte 0x3F6DC944
	.4byte 0x3F6D8454
	.4byte 0x3F6D3F12
	.4byte 0x3F6CF981
	.4byte 0x3F6CB39C
	.4byte 0x3F6C6D65
	.4byte 0x3F6C26DA
	.4byte 0x3F6BDFFB
	.4byte 0x3F6B98C5
	.4byte 0x3F6B5139
	.4byte 0x3F6B0956
	.4byte 0x3F6AC11C
	.4byte 0x3F6A7887
	.4byte 0x3F6A2F98
	.4byte 0x3F69E64C
	.4byte 0x3F699CA6
	.4byte 0x3F6952A2
	.4byte 0x3F69083F
	.4byte 0x3F68BD7E
	.4byte 0x3F68725B
	.4byte 0x3F6826D8
	.4byte 0x3F67DAF0
	.4byte 0x3F678EA6
	.4byte 0x3F6741F5
	.4byte 0x3F66F4E0
	.4byte 0x3F66A763
	.4byte 0x3F66597C
	.4byte 0x3F660B2D
	.4byte 0x3F65BC70
	.4byte 0x3F656D49
	.4byte 0x3F651DB3
	.4byte 0x3F63DAF7
	.4byte 0x3F61E90B
	.4byte 0x3F603C9A
	.4byte 0x3F5E82FB
	.4byte 0x3F5D178D
	.4byte 0x3F5A8424
	.4byte 0x3F57D016
	.4byte 0x3F542004
	.4byte 0x3F509DEF
	.4byte 0x3F4CDB09
	.4byte 0x3F472F5A
	.4byte 0x3F4166CF
	.4byte 0x3F3965FE
	.4byte 0x3F2ECD8C
	.4byte 0x3F2206D8
	.4byte 0x3F0F289E
	.4byte 0x3EE90841
	.4byte 0x3EA8E5A3
	.4byte 0
	.4byte 0x41C00000
	.4byte 0x3C000000
	.4byte 0x40A00000
	.4byte 0x42700000

glabel lbl_801769F8
	# ROM: 0x172AF8
	.4byte 0

glabel lbl_801769FC
	# ROM: 0x172AFC
	.4byte 0x40C80000

glabel lbl_80176A00
	# ROM: 0x172B00
	.4byte 0x447A0000
	.4byte 0

glabel lbl_80176A08
	# ROM: 0x172B08
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x40800000
	.4byte 0x42000000
	.4byte 0x42FE0000
	.4byte 0
	.4byte 0x43300000
	.4byte 0

glabel lbl_80176A28
	# ROM: 0x172B28
	.4byte 0x00060C13
	.4byte 0x191F252B
	.4byte 0x31363C41
	.4byte 0x474C5155
	.4byte 0x5A5E6266
	.4byte 0x6A6D7073
	.4byte 0x75787A7B
	.4byte 0x7D7E7E7F
	.4byte 0x7F000000
	.4byte 0

glabel lbl_80176A50
	# ROM: 0x172B50
	.4byte 0x3C000000
	.4byte 0x3EC80000
	.4byte 0x3D000000
	.4byte 0
	.4byte 0x43300000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_80176A70
	# ROM: 0x172B70
	.4byte 0x3F800000

glabel lbl_80176A74
	# ROM: 0x172B74
	.4byte 0

glabel lbl_80176A78
	# ROM: 0x172B78
	.4byte 0x43300000
	.4byte 0

glabel lbl_80176A80
	# ROM: 0x172B80
	.4byte 0x3F800000

glabel lbl_80176A84
	# ROM: 0x172B84
	.4byte 0
	.4byte 0x42FE0000
	.4byte 0x3C000000
	.4byte 0x427C0000
	.4byte 0xBF800000
	.4byte 0x40000000
	.4byte 0x3C800000
	.4byte 0x43300000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte ChannelCallbackFunc__Q46nw4hbm3snd6detail8SeqTrackFPQ46nw4hbm3snd6detail7ChannelQ56nw4hbm3snd6detail7Channel21ChannelCallbackStatusUl
	.4byte 0
	.4byte 0

glabel lbl_80176AD8
	# ROM: 0x172BD8
	.4byte 0x42FE0000
	.4byte 0

glabel lbl_80176AE0
	# ROM: 0x172BE0
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_80176AE8
	# ROM: 0x172BE8
	.4byte 0x3F800000

glabel lbl_80176AEC
	# ROM: 0x172BEC
	.4byte 0

glabel lbl_80176AF0
	# ROM: 0x172BF0
	.4byte 0x3F800000

glabel lbl_80176AF4
	# ROM: 0x172BF4
	.4byte 0

glabel lbl_80176AF8
	# ROM: 0x172BF8
	.4byte 0x3F800000
	.4byte 0x3F879C7D
	.4byte 0x3F8FACD6
	.4byte 0x3F9837F0
	.4byte 0x3FA14518
	.4byte 0x3FAADC08
	.4byte 0x3FB504F3
	.4byte 0x3FBFC887
	.4byte 0x3FCB2FF5
	.4byte 0x3FD744FD
	.4byte 0x3FE411F0
	.4byte 0x3FF1A1BF
	.4byte 0x3F800000
	.4byte 0x3F800765
	.4byte 0x3F800ECA
	.4byte 0x3F801630
	.4byte 0x3F801D96
	.4byte 0x3F8024FD
	.4byte 0x3F802C64
	.4byte 0x3F8033CC
	.4byte 0x3F803B34
	.4byte 0x3F80429C
	.4byte 0x3F804A05
	.4byte 0x3F80516E
	.4byte 0x3F8058D8
	.4byte 0x3F806042
	.4byte 0x3F8067AC
	.4byte 0x3F806F17
	.4byte 0x3F807683
	.4byte 0x3F807DEF
	.4byte 0x3F80855B
	.4byte 0x3F808CC8
	.4byte 0x3F809435
	.4byte 0x3F809BA2
	.4byte 0x3F80A310
	.4byte 0x3F80AA7E
	.4byte 0x3F80B1ED
	.4byte 0x3F80B95D
	.4byte 0x3F80C0CC
	.4byte 0x3F80C83C
	.4byte 0x3F80CFAD
	.4byte 0x3F80D71E
	.4byte 0x3F80DE8F
	.4byte 0x3F80E601
	.4byte 0x3F80ED73
	.4byte 0x3F80F4E6
	.4byte 0x3F80FC59
	.4byte 0x3F8103CD
	.4byte 0x3F810B41
	.4byte 0x3F8112B5
	.4byte 0x3F811A2A
	.4byte 0x3F81219F
	.4byte 0x3F812915
	.4byte 0x3F81308B
	.4byte 0x3F813802
	.4byte 0x3F813F79
	.4byte 0x3F8146F0
	.4byte 0x3F814E68
	.4byte 0x3F8155E0
	.4byte 0x3F815D59
	.4byte 0x3F8164D2
	.4byte 0x3F816C4C
	.4byte 0x3F8173C6
	.4byte 0x3F817B40
	.4byte 0x3F8182BB
	.4byte 0x3F818A36
	.4byte 0x3F8191B2
	.4byte 0x3F81992E
	.4byte 0x3F81A0AB
	.4byte 0x3F81A828
	.4byte 0x3F81AFA5
	.4byte 0x3F81B723
	.4byte 0x3F81BEA1
	.4byte 0x3F81C620
	.4byte 0x3F81CD9F
	.4byte 0x3F81D51F
	.4byte 0x3F81DC9F
	.4byte 0x3F81E420
	.4byte 0x3F81EBA1
	.4byte 0x3F81F322
	.4byte 0x3F81FAA4
	.4byte 0x3F820226
	.4byte 0x3F8209A9
	.4byte 0x3F82112C
	.4byte 0x3F8218AF
	.4byte 0x3F822033
	.4byte 0x3F8227B8
	.4byte 0x3F822F3C
	.4byte 0x3F8236C2
	.4byte 0x3F823E47
	.4byte 0x3F8245CE
	.4byte 0x3F824D54
	.4byte 0x3F8254DB
	.4byte 0x3F825C63
	.4byte 0x3F8263EB
	.4byte 0x3F826B73
	.4byte 0x3F8272FC
	.4byte 0x3F827A85
	.4byte 0x3F82820E
	.4byte 0x3F828998
	.4byte 0x3F829123
	.4byte 0x3F8298AE
	.4byte 0x3F82A039
	.4byte 0x3F82A7C5
	.4byte 0x3F82AF51
	.4byte 0x3F82B6DE
	.4byte 0x3F82BE6B
	.4byte 0x3F82C5F9
	.4byte 0x3F82CD87
	.4byte 0x3F82D515
	.4byte 0x3F82DCA4
	.4byte 0x3F82E433
	.4byte 0x3F82EBC3
	.4byte 0x3F82F353
	.4byte 0x3F82FAE4
	.4byte 0x3F830275
	.4byte 0x3F830A06
	.4byte 0x3F831198
	.4byte 0x3F83192A
	.4byte 0x3F8320BD
	.4byte 0x3F832850
	.4byte 0x3F832FE4
	.4byte 0x3F833778
	.4byte 0x3F833F0D
	.4byte 0x3F8346A2
	.4byte 0x3F834E37
	.4byte 0x3F8355CD
	.4byte 0x3F835D63
	.4byte 0x3F8364FA
	.4byte 0x3F836C91
	.4byte 0x3F837429
	.4byte 0x3F837BC1
	.4byte 0x3F838359
	.4byte 0x3F838AF2
	.4byte 0x3F83928C
	.4byte 0x3F839A25
	.4byte 0x3F83A1C0
	.4byte 0x3F83A95A
	.4byte 0x3F83B0F5
	.4byte 0x3F83B891
	.4byte 0x3F83C02D
	.4byte 0x3F83C7C9
	.4byte 0x3F83CF66
	.4byte 0x3F83D704
	.4byte 0x3F83DEA1
	.4byte 0x3F83E640
	.4byte 0x3F83EDDE
	.4byte 0x3F83F57D
	.4byte 0x3F83FD1D
	.4byte 0x3F8404BD
	.4byte 0x3F840C5D
	.4byte 0x3F8413FE
	.4byte 0x3F841B9F
	.4byte 0x3F842341
	.4byte 0x3F842AE3
	.4byte 0x3F843286
	.4byte 0x3F843A29
	.4byte 0x3F8441CC
	.4byte 0x3F844970
	.4byte 0x3F845115
	.4byte 0x3F8458B9
	.4byte 0x3F84605F
	.4byte 0x3F846804
	.4byte 0x3F846FAA
	.4byte 0x3F847751
	.4byte 0x3F847EF8
	.4byte 0x3F84869F
	.4byte 0x3F848E47
	.4byte 0x3F8495F0
	.4byte 0x3F849D98
	.4byte 0x3F84A542
	.4byte 0x3F84ACEB
	.4byte 0x3F84B495
	.4byte 0x3F84BC40
	.4byte 0x3F84C3EB
	.4byte 0x3F84CB96
	.4byte 0x3F84D342
	.4byte 0x3F84DAEF
	.4byte 0x3F84E29B
	.4byte 0x3F84EA49
	.4byte 0x3F84F1F6
	.4byte 0x3F84F9A4
	.4byte 0x3F850153
	.4byte 0x3F850902
	.4byte 0x3F8510B1
	.4byte 0x3F851861
	.4byte 0x3F852012
	.4byte 0x3F8527C2
	.4byte 0x3F852F74
	.4byte 0x3F853725
	.4byte 0x3F853ED7
	.4byte 0x3F85468A
	.4byte 0x3F854E3D
	.4byte 0x3F8555F0
	.4byte 0x3F855DA4
	.4byte 0x3F856558
	.4byte 0x3F856D0D
	.4byte 0x3F8574C2
	.4byte 0x3F857C78
	.4byte 0x3F85842E
	.4byte 0x3F858BE5
	.4byte 0x3F85939C
	.4byte 0x3F859B53
	.4byte 0x3F85A30B
	.4byte 0x3F85AAC3
	.4byte 0x3F85B27C
	.4byte 0x3F85BA35
	.4byte 0x3F85C1EF
	.4byte 0x3F85C9A9
	.4byte 0x3F85D164
	.4byte 0x3F85D91F
	.4byte 0x3F85E0DA
	.4byte 0x3F85E896
	.4byte 0x3F85F052
	.4byte 0x3F85F80F
	.4byte 0x3F85FFCC
	.4byte 0x3F86078A
	.4byte 0x3F860F48
	.4byte 0x3F861707
	.4byte 0x3F861EC6
	.4byte 0x3F862685
	.4byte 0x3F862E45
	.4byte 0x3F863606
	.4byte 0x3F863DC7
	.4byte 0x3F864588
	.4byte 0x3F864D4A
	.4byte 0x3F86550C
	.4byte 0x3F865CCE
	.4byte 0x3F866491
	.4byte 0x3F866C55
	.4byte 0x3F867419
	.4byte 0x3F867BDD
	.4byte 0x3F8683A2
	.4byte 0x3F868B67
	.4byte 0x3F86932D
	.4byte 0x3F869AF3
	.4byte 0x3F86A2BA
	.4byte 0x3F86AA81
	.4byte 0x3F86B249
	.4byte 0x3F86BA11
	.4byte 0x3F86C1D9
	.4byte 0x3F86C9A2
	.4byte 0x3F86D16B
	.4byte 0x3F86D935
	.4byte 0x3F86E0FF
	.4byte 0x3F86E8CA
	.4byte 0x3F86F095
	.4byte 0x3F86F861
	.4byte 0x3F87002D
	.4byte 0x3F8707F9
	.4byte 0x3F870FC6
	.4byte 0x3F871794
	.4byte 0x3F871F62
	.4byte 0x3F872730
	.4byte 0x3F872EFF
	.4byte 0x3F8736CE
	.4byte 0x3F873E9E
	.4byte 0x3F87466E
	.4byte 0x3F874E3E
	.4byte 0x3F87560F
	.4byte 0x3F875DE1
	.4byte 0x3F8765B3
	.4byte 0x3F876D85
	.4byte 0x3F877558
	.4byte 0x3F877D2B
	.4byte 0x3F8784FF
	.4byte 0x3F878CD3
	.4byte 0x3F8794A8
	.4byte 0
	.4byte 0x380021F4
	.4byte 0x38019DD8
	.4byte 0x38031E07
	.4byte 0x3804A2B9
	.4byte 0x38062BED
	.4byte 0x3807B9A4
	.4byte 0x38094BF9
	.4byte 0x380AE2EC
	.4byte 0x380C7E98
	.4byte 0x380E1F19
	.4byte 0x380FC46F
	.4byte 0x38116E9A
	.4byte 0x38131DB6
	.4byte 0x3814D1C1
	.4byte 0x38168AF5
	.4byte 0x38184934
	.4byte 0x381A0C9B
	.4byte 0x381BD544
	.4byte 0x381DA331
	.4byte 0x381F767C
	.4byte 0x38214F40
	.4byte 0x38232D64
	.4byte 0x3825111C
	.4byte 0x3826FA6A
	.4byte 0x3828E969
	.4byte 0x382ADE18
	.4byte 0x382CD8B0
	.4byte 0x382ED8F8
	.4byte 0x3830DF5F
	.4byte 0x3832EBAE
	.4byte 0x3834FE00
	.4byte 0x3837168C
	.4byte 0x38393538
	.4byte 0x383B5A54
	.4byte 0x383D85AB
	.4byte 0x383FB773
	.4byte 0x3841EFC8
	.4byte 0x38442EAA
	.4byte 0x38467434
	.4byte 0x3848C081
	.4byte 0x384B1393
	.4byte 0x384D6D9F
	.4byte 0x384FCE8A
	.4byte 0x3852368B
	.4byte 0x3854A5BE
	.4byte 0x38571C08
	.4byte 0x385999BA
	.4byte 0x385C1EB9
	.4byte 0x385EAB3C
	.4byte 0x38613F5F
	.4byte 0x3863DB06
	.4byte 0x38667E84
	.4byte 0x386929BD
	.4byte 0x386BDCE8
	.4byte 0x386E9820
	.4byte 0x38715B66
	.4byte 0x387426D5
	.4byte 0x3876FAA5
	.4byte 0x3879D6B8
	.4byte 0x387CBB63
	.4byte 0x387FA889
	.4byte 0x38814F31
	.4byte 0x3882CE85
	.4byte 0x3884523F
	.4byte 0x3885DA7C
	.4byte 0x38876749
	.4byte 0x3888F8B4
	.4byte 0x388A8EAF
	.4byte 0x388C2972
	.4byte 0x388DC8EE
	.4byte 0x388F6D3F
	.4byte 0x38911665
	.4byte 0x3892C47B
	.4byte 0x38947790
	.4byte 0x38962FA2
	.4byte 0x3897ECDD
	.4byte 0x3899AF3E
	.4byte 0x389B76C7
	.4byte 0x389D43A1
	.4byte 0x389F15D9
	.4byte 0x38A0ED61
	.4byte 0x38A2CA72
	.4byte 0x38A4AD09
	.4byte 0x38A69529
	.4byte 0x38A882F9
	.4byte 0x38AA7688
	.4byte 0x38AC6FD6
	.4byte 0x38AE6EFD
	.4byte 0x38B0740D
	.4byte 0x38B27F20
	.4byte 0x38B49043
	.4byte 0x38B6A786
	.4byte 0x38B8C4F5
	.4byte 0x38BAE8AC
	.4byte 0x38BD12B9
	.4byte 0x38BF4338
	.4byte 0x38C17A27
	.4byte 0x38C3B7B1
	.4byte 0x38C5FBE4
	.4byte 0x38C846CC
	.4byte 0x38CA9878
	.4byte 0x38CCF103
	.4byte 0x38CF5089
	.4byte 0x38D1B717
	.4byte 0x38D424CA
	.4byte 0x38D69977
	.4byte 0x38D915A8
	.4byte 0x38DB995D
	.4byte 0x38DE240D
	.4byte 0x38E0B6CB
	.4byte 0x38E3510C
	.4byte 0x38E5F2D2
	.4byte 0x38E89C1C
	.4byte 0x38EB4DFD
	.4byte 0x38EE0763
	.4byte 0x38F0C8D5
	.4byte 0x38F392DF
	.4byte 0x38F664F7
	.4byte 0x38F93F1C
	.4byte 0x38FC21D8
	.4byte 0x38FF0DB4
	.4byte 0x390100CF
	.4byte 0x39027F10
	.4byte 0x39040225
	.4byte 0x39058941
	.4byte 0x39071533
	.4byte 0x3908A5B4
	.4byte 0x390A3AC6
	.4byte 0x390BD468
	.4byte 0x390D72DF
	.4byte 0x390F162A
	.4byte 0x3910BE4B
	.4byte 0x39126B86
	.4byte 0x39141D95
	.4byte 0x3915D479
	.4byte 0x391790BC
	.4byte 0x39195218
	.4byte 0x391B188F
	.4byte 0x391CE463
	.4byte 0x391EB551
	.4byte 0x39208BE2
	.4byte 0x392267D2
	.4byte 0x39244920
	.4byte 0x39263011
	.4byte 0x39281CEA
	.4byte 0x392A0F21
	.4byte 0x392C0741
	.4byte 0x392E0548
	.4byte 0x393008F2
	.4byte 0x393212C8
	.4byte 0x393422CC
	.4byte 0x393638B7
	.4byte 0x393854CE
	.4byte 0x393A7757
	.4byte 0x393CA00D
	.4byte 0x393ECF33
	.4byte 0x394104CB
	.4byte 0x39434119
	.4byte 0x394583D8
	.4byte 0x3947CD4D
	.4byte 0x394A1D79
	.4byte 0x394C749E
	.4byte 0x394ED2BF
	.4byte 0x395137DA
	.4byte 0x3953A435
	.4byte 0x3956178A
	.4byte 0x3958921F
	.4byte 0x395B1438
	.4byte 0x395D9D91
	.4byte 0x39602E6D
	.4byte 0x3962C713
	.4byte 0x3965673C
	.4byte 0x39680F2F
	.4byte 0x396ABF2F
	.4byte 0x396D76F8
	.4byte 0x39703713
	.4byte 0x3972FEF7
	.4byte 0x3975CF72
	.4byte 0x3978A7FB
	.4byte 0x397B891A
	.4byte 0x397E72D1
	.4byte 0x3980B28F
	.4byte 0x39823002
	.4byte 0x3983B204
	.4byte 0x39853852
	.4byte 0x3986C353
	.4byte 0x398852C2
	.4byte 0x3989E6E3
	.4byte 0x398B7FB7
	.4byte 0x398D1D1B
	.4byte 0x398EBF76
	.4byte 0x399066A6
	.4byte 0x399212AB
	.4byte 0x3993C3A8
	.4byte 0x399579BE
	.4byte 0x399734CC
	.4byte 0x3998F515
	.4byte 0x399ABA78
	.4byte 0x399C8518
	.4byte 0x399E5515
	.4byte 0x39A02A71
	.4byte 0x39A2054E
	.4byte 0x39A3E589
	.4byte 0x39A5CB67
	.4byte 0x39A7B6E9
	.4byte 0x39A9A80D
	.4byte 0x39AB9EF7
	.4byte 0x39AD9BA7
	.4byte 0x39AF9E3E
	.4byte 0x39B1A6DF
	.4byte 0x39B3B58B
	.4byte 0x39B5CA41
	.4byte 0x39B7E523
	.4byte 0x39BA0632
	.4byte 0x39BC2DB2
	.4byte 0x39BE5B81
	.4byte 0x39C08FC1
	.4byte 0x39C2CA95
	.4byte 0x39C50BFD
	.4byte 0x39C7541B
	.4byte 0x39C9A310
	.4byte 0x39CBF8BC
	.4byte 0x39CE5563
	.4byte 0x39D0B904
	.4byte 0x39D323C3
	.4byte 0x39D5959E
	.4byte 0x39D80EDB
	.4byte 0x39DA8F36
	.4byte 0x39DD1737
	.4byte 0x39DFA699
	.4byte 0x39E23D80
	.4byte 0x39E4DC30
	.4byte 0x39E78286
	.4byte 0x39EA30E9
	.4byte 0x39ECE716
	.4byte 0x39EFA550
	.4byte 0x39F26BBA
	.4byte 0x39F53A54
	.4byte 0x39F81141
	.4byte 0x39FAF0A2
	.4byte 0x39FDD877
	.4byte 0x3A006483
	.4byte 0x3A01E116
	.4byte 0x3A036217
	.4byte 0x3A04E797
	.4byte 0x3A067185
	.4byte 0x3A080014
	.4byte 0x3A099334
	.4byte 0x3A0B2B06
	.4byte 0x3A0CC79C
	.4byte 0x3A0E68E4
	.4byte 0x3A100F12
	.4byte 0x3A11BA16
	.4byte 0x3A136A11
	.4byte 0x3A151F14
	.4byte 0x3A16D920
	.4byte 0x3A189845
	.4byte 0x3A1A5CA7
	.4byte 0x3A1C2633
	.4byte 0x3A1DF51E
	.4byte 0x3A1FC956
	.4byte 0x3A21A2FD
	.4byte 0x3A238226
	.4byte 0x3A2566CF
	.4byte 0x3A27511B
	.4byte 0x3A29411B
	.4byte 0x3A2B36E1
	.4byte 0x3A2D325B
	.4byte 0x3A2F33CE
	.4byte 0x3A313B29
	.4byte 0x3A33488F
	.4byte 0x3A355BFE
	.4byte 0x3A37759A
	.4byte 0x3A399574
	.4byte 0x3A3BBB8B
	.4byte 0x3A3DE814
	.4byte 0x3A401B0E
	.4byte 0x3A425479
	.4byte 0x3A449489
	.4byte 0x3A46DB4F
	.4byte 0x3A4928BA
	.4byte 0x3A4B7D0E
	.4byte 0x3A4DD84C
	.4byte 0x3A503A73
	.4byte 0x3A52A3B8
	.4byte 0x3A55142A
	.4byte 0x3A578BCB
	.4byte 0x3A5A0ABD
	.4byte 0x3A5C9110
	.4byte 0x3A5F1EE7
	.4byte 0x3A61B454
	.4byte 0x3A645168
	.4byte 0x3A66F633
	.4byte 0x3A69A2D8
	.4byte 0x3A6C5768
	.4byte 0x3A6F1406
	.4byte 0x3A71D8B1
	.4byte 0x3A74A59E
	.4byte 0x3A777ADC
	.4byte 0x3A7A587F
	.4byte 0x3A7D3E96
	.4byte 0x3A8016A2
	.4byte 0x3A819256
	.4byte 0x3A83126F
	.4byte 0x3A8496F5
	.4byte 0x3A862004
	.4byte 0x3A87AD9A
	.4byte 0x3A893FD2
	.4byte 0x3A8AD6AB
	.4byte 0x3A8C7236
	.4byte 0x3A8E128E
	.4byte 0x3A8FB7B2
	.4byte 0x3A9161BD
	.4byte 0x3A9310AD
	.4byte 0x3A94C4A6
	.4byte 0x3A967DA8
	.4byte 0x3A983BC3
	.4byte 0x3A99FF09
	.4byte 0x3A9BC782
	.4byte 0x3A9D9549
	.4byte 0x3A9F686E
	.4byte 0x3AA140FA
	.4byte 0x3AA31EFE
	.4byte 0x3AA50283
	.4byte 0x3AA6EBAB
	.4byte 0x3AA8DA7F
	.4byte 0x3AAACF07
	.4byte 0x3AACC95D
	.4byte 0x3AAEC98A
	.4byte 0x3AB0CFB0
	.4byte 0x3AB2DBCF
	.4byte 0x3AB4EE00
	.4byte 0x3AB70656
	.4byte 0x3AB924E9
	.4byte 0x3ABB49BA
	.4byte 0x3ABD74EB
	.4byte 0x3ABFA685
	.4byte 0x3AC1DEA1
	.4byte 0x3AC41D59
	.4byte 0x3AC662AE
	.4byte 0x3AC8AEC1
	.4byte 0x3ACB01AD
	.4byte 0x3ACD5B71
	.4byte 0x3ACFBC2F
	.4byte 0x3AD223FA
	.4byte 0x3AD492EA
	.4byte 0x3AD70911
	.4byte 0x3AD98680
	.4byte 0x3ADC0B51
	.4byte 0x3ADE979D
	.4byte 0x3AE12B6D
	.4byte 0x3AE3C6ED
	.4byte 0x3AE66A24
	.4byte 0x3AE91524
	.4byte 0x3AEBC818
	.4byte 0x3AEE8309
	.4byte 0x3AF1460F
	.4byte 0x3AF41146
	.4byte 0x3AF6E4C6
	.4byte 0x3AF9C0A9
	.4byte 0x3AFCA502
	.4byte 0x3AFF91F1
	.4byte 0x3B0143C4
	.4byte 0x3B02C2F1
	.4byte 0x3B044690
	.4byte 0x3B05CEAE
	.4byte 0x3B075B54
	.4byte 0x3B08EC92
	.4byte 0x3B0A8276
	.4byte 0x3B0C1D0D
	.4byte 0x3B0DBC67
	.4byte 0x3B0F608E
	.4byte 0x3B110993
	.4byte 0x3B12B781
	.4byte 0x3B146A6C
	.4byte 0x3B162263
	.4byte 0x3B17DF70
	.4byte 0x3B19A1A3
	.4byte 0x3B1B690E
	.4byte 0x3B1D35BD
	.4byte 0x3B1F07C3
	.4byte 0x3B20DF2F
	.4byte 0x3B22BC0F
	.4byte 0x3B249E74
	.4byte 0x3B268674
	.4byte 0x3B287417
	.4byte 0x3B2A6772
	.4byte 0x3B2C6093
	.4byte 0x3B2E5F8F
	.4byte 0x3B306477
	.4byte 0x3B326F58
	.4byte 0x3B34804B
	.4byte 0x3B36975B
	.4byte 0x3B38B49F
	.4byte 0x3B3AD825
	.4byte 0x3B3D0207
	.4byte 0x3B3F324E
	.4byte 0x3B416912
	.4byte 0x3B43A66A
	.4byte 0x3B45EA63
	.4byte 0x3B483512
	.4byte 0x3B4A868C
	.4byte 0x3B4CDEE7
	.4byte 0x3B4F3E39
	.4byte 0x3B51A48D
	.4byte 0x3B541204
	.4byte 0x3B5686A8
	.4byte 0x3B590294
	.4byte 0x3B5B85DE
	.4byte 0x3B5E10A0
	.4byte 0x3B60A2E5
	.4byte 0x3B633CCC
	.4byte 0x3B65DE67
	.4byte 0x3B6887CF
	.4byte 0x3B6B391A
	.4byte 0x3B6DF266
	.4byte 0x3B70B3BF
	.4byte 0x3B737D43
	.4byte 0x3B764F0D
	.4byte 0x3B792932
	.4byte 0x3B7C0BCC
	.4byte 0x3B7EF6F0
	.4byte 0x3B80F560
	.4byte 0x3B8273A7
	.4byte 0x3B83F65A
	.4byte 0x3B857D89
	.4byte 0x3B87093E
	.4byte 0x3B88998A
	.4byte 0x3B8A2E77
	.4byte 0x3B8BC815
	.4byte 0x3B8D6672
	.4byte 0x3B8F0999
	.4byte 0x3B90B19C
	.4byte 0x3B925E89
	.4byte 0x3B94106C
	.4byte 0x3B95C756
	.4byte 0x3B978354
	.4byte 0x3B994477
	.4byte 0x3B9B0ACF
	.4byte 0x3B9CD667
	.4byte 0x3B9EA753
	.4byte 0x3BA07DA0
	.4byte 0x3BA25960
	.4byte 0x3BA43AA1
	.4byte 0x3BA62176
	.4byte 0x3BA80DEF
	.4byte 0x3BAA0019
	.4byte 0x3BABF80B
	.4byte 0x3BADF5D0
	.4byte 0x3BAFF97E
	.4byte 0x3BB20323
	.4byte 0x3BB412D5
	.4byte 0x3BB628A2
	.4byte 0x3BB8449B
	.4byte 0x3BBA66D7
	.4byte 0x3BBC8F66
	.4byte 0x3BBEBE5B
	.4byte 0x3BC0F3CA
	.4byte 0x3BC32FC2
	.4byte 0x3BC5725D
	.4byte 0x3BC7BBA9
	.4byte 0x3BCA0BBD
	.4byte 0x3BCC62AB
	.4byte 0x3BCEC089
	.4byte 0x3BD1256C
	.4byte 0x3BD39166
	.4byte 0x3BD60491
	.4byte 0x3BD87EFB
	.4byte 0x3BDB00C0
	.4byte 0x3BDD89F4
	.4byte 0x3BE01AAA
	.4byte 0x3BE2B2FE
	.4byte 0x3BE55301
	.4byte 0x3BE7FACC
	.4byte 0x3BEAAA76
	.4byte 0x3BED6219
	.4byte 0x3BF021C6
	.4byte 0x3BF2E99B
	.4byte 0x3BF5B9AF
	.4byte 0x3BF8921A
	.4byte 0x3BFB72F3
	.4byte 0x3BFE5C54
	.4byte 0x3C00A72B
	.4byte 0x3C02248A
	.4byte 0x3C03A654
	.4byte 0x3C052C95
	.4byte 0x3C06B75B
	.4byte 0x3C0846B4
	.4byte 0x3C09DAAB
	.4byte 0x3C0B7351
	.4byte 0x3C0D10B3
	.4byte 0x3C0EB2DC
	.4byte 0x3C1059DF
	.4byte 0x3C1205C6
	.4byte 0x3C13B6A2
	.4byte 0x3C156C81
	.4byte 0x3C172773
	.4byte 0x3C18E786
	.4byte 0x3C1AACC9
	.4byte 0x3C1C774B
	.4byte 0x3C1E471D
	.4byte 0x3C201C4D
	.4byte 0x3C21F6EC
	.4byte 0x3C23D70A
	.4byte 0x3C25BCB8
	.4byte 0x3C27A805
	.4byte 0x3C299903
	.4byte 0x3C2B8FC1
	.4byte 0x3C2D8C52
	.4byte 0x3C2F8EC7
	.4byte 0x3C319730
	.4byte 0x3C33A5A1
	.4byte 0x3C35BA2A
	.4byte 0x3C37D4DE
	.4byte 0x3C39F5CE
	.4byte 0x3C3C1D0D
	.4byte 0x3C3E4AAF
	.4byte 0x3C407EC7
	.4byte 0x3C42B965
	.4byte 0x3C44FAA0
	.4byte 0x3C47428A
	.4byte 0x3C499137
	.4byte 0x3C4BE6BA
	.4byte 0x3C4E4329
	.4byte 0x3C50A697
	.4byte 0x3C53111B
	.4byte 0x3C5582C7
	.4byte 0x3C57FBB2
	.4byte 0x3C5A7BF1
	.4byte 0x3C5D039B
	.4byte 0x3C5F92C3
	.4byte 0x3C622984
	.4byte 0x3C64C7F0
	.4byte 0x3C676E1E
	.4byte 0x3C6A1C28
	.4byte 0x3C6CD224
	.4byte 0x3C6F9028
	.4byte 0x3C72564E
	.4byte 0x3C7524AC
	.4byte 0x3C77FB5C
	.4byte 0x3C7ADA77
	.4byte 0x3C7DC214
	.4byte 0x3C805927
	.4byte 0x3C81D59F
	.4byte 0x3C83567E
	.4byte 0x3C84DBD3
	.4byte 0x3C8665A9
	.4byte 0x3C87F40F
	.4byte 0x3C898712
	.4byte 0x3C8B1EC0
	.4byte 0x3C8CBB26
	.4byte 0x3C8E5C53
	.4byte 0x3C900254
	.4byte 0x3C91AD39
	.4byte 0x3C935D0F
	.4byte 0x3C9511E5
	.4byte 0x3C96CBC9
	.4byte 0x3C988ACC
	.4byte 0x3C9A4EFC
	.4byte 0x3C9C1868
	.4byte 0x3C9DE721
	.4byte 0x3C9FBB34
	.4byte 0x3CA194B4
	.4byte 0x3CA373AF
	.4byte 0x3CA55836
	.4byte 0x3CA74259
	.4byte 0x3CA9322A
	.4byte 0x3CAB27B7
	.4byte 0x3CAD2314
	.4byte 0x3CAF2451
	.4byte 0x3CB12B7F
	.4byte 0x3CB338B0
	.4byte 0x3CB54BF6
	.4byte 0x3CB76562
	.4byte 0x3CB98509
	.4byte 0x3CBBAAFA
	.4byte 0x3CBDD74A
	.4byte 0x3CC00A0B
	.4byte 0x3CC24350
	.4byte 0x3CC4832C
	.4byte 0x3CC6C9B4
	.4byte 0x3CC916FA
	.4byte 0x3CCB6B13
	.4byte 0x3CCDC613
	.4byte 0x3CD0280F
	.4byte 0x3CD2911B
	.4byte 0x3CD5014D
	.4byte 0x3CD778B8
	.4byte 0x3CD9F773
	.4byte 0x3CDC7D93
	.4byte 0x3CDF0B2F
	.4byte 0x3CE1A05D
	.4byte 0x3CE43D32
	.4byte 0x3CE6E1C6
	.4byte 0x3CE98E30
	.4byte 0x3CEC4286
	.4byte 0x3CEEFEE1
	.4byte 0x3CF1C358
	.4byte 0x3CF49003
	.4byte 0x3CF764FA
	.4byte 0x3CFA4257
	.4byte 0x3CFD2831
	.4byte 0x3D000B51
	.4byte 0x3D0186E3
	.4byte 0x3D0306D9
	.4byte 0x3D048B41
	.4byte 0x3D061429
	.4byte 0x3D07A19D
	.4byte 0x3D0933AC
	.4byte 0x3D0ACA63
	.4byte 0x3D0C65CF
	.4byte 0x3D0E05FE
	.4byte 0x3D0FAB00
	.4byte 0x3D1154E1
	.4byte 0x3D1303B1
	.4byte 0x3D14B77E
	.4byte 0x3D167057
	.4byte 0x3D182E4B
	.4byte 0x3D19F168
	.4byte 0x3D1BB9BF
	.4byte 0x3D1D875F
	.4byte 0x3D1F5A57
	.4byte 0x3D2132B8
	.4byte 0x3D231090
	.4byte 0x3D24F3F1
	.4byte 0x3D26DCEB
	.4byte 0x3D28CB8F
	.4byte 0x3D2ABFEC
	.4byte 0x3D2CBA15
	.4byte 0x3D2EBA1B
	.4byte 0x3D30C00E
	.4byte 0x3D32CC01
	.4byte 0x3D34DE05
	.4byte 0x3D36F62B
	.4byte 0x3D391488
	.4byte 0x3D3B392C
	.4byte 0x3D3D642A
	.4byte 0x3D3F9596
	.4byte 0x3D41CD81
	.4byte 0x3D440C01
	.4byte 0x3D465127
	.4byte 0x3D489D08
	.4byte 0x3D4AEFB8
	.4byte 0x3D4D494A
	.4byte 0x3D4FA9D4
	.4byte 0x3D52116A
	.4byte 0x3D548021
	.4byte 0x3D56F60D
	.4byte 0x3D597345
	.4byte 0x3D5BF7DE
	.4byte 0x3D5E83ED
	.4byte 0x3D611789
	.4byte 0x3D63B2C9
	.4byte 0x3D6655C3
	.4byte 0x3D69008E
	.4byte 0x3D6BB340
	.4byte 0x3D6E6DF2
	.4byte 0x3D7130BC
	.4byte 0x3D73FBB4
	.4byte 0x3D76CEF4
	.4byte 0x3D79AA94
	.4byte 0x3D7C8EAC
	.4byte 0x3D7F7B57
	.4byte 0x3D813856
	.4byte 0x3D82B764
	.4byte 0x3D843AE0
	.4byte 0x3D85C2DA
	.4byte 0x3D874F5D
	.4byte 0x3D88E078
	.4byte 0x3D8A7638
	.4byte 0x3D8C10AB
	.4byte 0x3D8DAFDE
	.4byte 0x3D8F53E0
	.4byte 0x3D90FCBF
	.4byte 0x3D92AA8A
	.4byte 0x3D945D4F
	.4byte 0x3D96151C
	.4byte 0x3D97D202
	.4byte 0x3D99940E
	.4byte 0x3D9B5B50
	.4byte 0x3D9D27D8
	.4byte 0x3D9EF9B4
	.4byte 0x3DA0D0F6
	.4byte 0x3DA2ADAD
	.4byte 0x3DA48FE9
	.4byte 0x3DA677BB
	.4byte 0x3DA86532
	.4byte 0x3DAA5860
	.4byte 0x3DAC5156
	.4byte 0x3DAE5025
	.4byte 0x3DB054DE
	.4byte 0x3DB25F93
	.4byte 0x3DB47056
	.4byte 0x3DB68738
	.4byte 0x3DB8A44B
	.4byte 0x3DBAC7A2
	.4byte 0x3DBCF150
	.4byte 0x3DBF2167
	.4byte 0x3DC157FB
	.4byte 0x3DC3951E
	.4byte 0x3DC5D8E3
	.4byte 0x3DC82360
	.4byte 0x3DCA74A7
	.4byte 0x3DCCCCCD
	.4byte 0x3DCF2BE6
	.4byte 0x3DD19206
	.4byte 0x3DD3FF43
	.4byte 0x3DD673B1
	.4byte 0x3DD8EF67
	.4byte 0x3DDB7279
	.4byte 0x3DDDFCFD
	.4byte 0x3DE08F09
	.4byte 0x3DE328B4
	.4byte 0x3DE5CA15
	.4byte 0x3DE87341
	.4byte 0x3DEB2451
	.4byte 0x3DEDDD5B
	.4byte 0x3DF09E78
	.4byte 0x3DF367BF
	.4byte 0x3DF63948
	.4byte 0x3DF9132C
	.4byte 0x3DFBF584
	.4byte 0x3DFEE068
	.4byte 0x3E00E9F9
	.4byte 0x3E02681E
	.4byte 0x3E03EAB0
	.4byte 0x3E0571BC
	.4byte 0x3E06FD4F
	.4byte 0x3E088D77
	.4byte 0x3E0A2241
	.4byte 0x3E0BBBBA
	.4byte 0x3E0D59F2
	.4byte 0x3E0EFCF5
	.4byte 0x3E10A4D3
	.4byte 0x3E125199
	.4byte 0x3E140356
	.4byte 0x3E15BA19
	.4byte 0x3E1775F0
	.4byte 0x3E1936EC
	.4byte 0x3E1AFD1A
	.4byte 0x3E1CC88A
	.4byte 0x3E1E994C
	.4byte 0x3E206F70
	.4byte 0x3E224B06
	.4byte 0x3E242C1E
	.4byte 0x3E2612C7
	.4byte 0x3E27FF14
	.4byte 0x3E29F113
	.4byte 0x3E2BE8D7
	.4byte 0x3E2DE670
	.4byte 0x3E2FE9F0
	.4byte 0x3E31F368
	.4byte 0x3E3402EA
	.4byte 0x3E361887
	.4byte 0x3E383452
	.4byte 0x3E3A565E
	.4byte 0x3E3C7EBC
	.4byte 0x3E3EAD7F
	.4byte 0x3E40E2BB
	.4byte 0x3E431E82
	.4byte 0x3E4560E9
	.4byte 0x3E47AA02
	.4byte 0x3E49F9E1
	.4byte 0x3E4C509B
	.4byte 0x3E4EAE43
	.4byte 0x3E5112EF
	.4byte 0x3E537EB4
	.4byte 0x3E55F1A5
	.4byte 0x3E586BD9
	.4byte 0x3E5AED65
	.4byte 0x3E5D765E
	.4byte 0x3E6006DC
	.4byte 0x3E629EF3
	.4byte 0x3E653EBB
	.4byte 0x3E67E64B
	.4byte 0x3E6A95B9
	.4byte 0x3E6D4D1C
	.4byte 0x3E700C8D
	.4byte 0x3E72D424
	.4byte 0x3E75A3F7
	.4byte 0x3E787C21
	.4byte 0x3E7B5CB9
	.4byte 0x3E7E45D8
	.4byte 0x3E809BCC
	.4byte 0x3E82190A
	.4byte 0x3E839AB1
	.4byte 0x3E8520D0
	.4byte 0x3E86AB73
	.4byte 0x3E883AA8
	.4byte 0x3E89CE7C
	.4byte 0x3E8B66FE
	.4byte 0x3E8D043A
	.4byte 0x3E8EA63F
	.4byte 0x3E904D1C
	.4byte 0x3E91F8DE
	.4byte 0x3E93A994
	.4byte 0x3E955F4D
	.4byte 0x3E971A17
	.4byte 0x3E98DA02
	.4byte 0x3E9A9F1C
	.4byte 0x3E9C6976
	.4byte 0x3E9E391F
	.4byte 0x3EA00E26
	.4byte 0x3EA1E89B
	.4byte 0x3EA3C88F
	.4byte 0x3EA5AE11
	.4byte 0x3EA79933
	.4byte 0x3EA98A05
	.4byte 0x3EAB8097
	.4byte 0x3EAD7CFB
	.4byte 0x3EAF7F42
	.4byte 0x3EB1877E
	.4byte 0x3EB395C0
	.4byte 0x3EB5AA1A
	.4byte 0x3EB7C49E
	.4byte 0x3EB9E55E
	.4byte 0x3EBC0C6D
	.4byte 0x3EBE39DE
	.4byte 0x3EC06DC3
	.4byte 0x3EC2A82F
	.4byte 0x3EC4E937
	.4byte 0x3EC730ED
	.4byte 0x3EC97F65
	.4byte 0x3ECBD4B4
	.4byte 0x3ECE30ED
	.4byte 0x3ED09426
	.4byte 0x3ED2FE72
	.4byte 0x3ED56FE7
	.4byte 0x3ED7E89B
	.4byte 0x3EDA68A1
	.4byte 0x3EDCF012
	.4byte 0x3EDF7F01
	.4byte 0x3EE21586
	.4byte 0x3EE4B3B6
	.4byte 0x3EE759AA
	.4byte 0x3EEA0777
	.4byte 0x3EECBD35
	.4byte 0x3EEF7AFB
	.4byte 0x3EF240E2
	.4byte 0x3EF50F01
	.4byte 0x3EF7E571
	.4byte 0x3EFAC44A
	.4byte 0x3EFDABA6
	.4byte 0x3F004DCE
	.4byte 0x3F01CA25
	.4byte 0x3F034AE2
	.4byte 0x3F04D014
	.4byte 0x3F0659C8
	.4byte 0x3F07E80B
	.4byte 0x3F097AEA
	.4byte 0x3F0B1274
	.4byte 0x3F0CAEB6
	.4byte 0x3F0E4FBE
	.4byte 0x3F0FF59A
	.4byte 0x3F11A058
	.4byte 0x3F135008
	.4byte 0x3F1504B7
	.4byte 0x3F16BE75
	.4byte 0x3F187D50
	.4byte 0x3F1A4158
	.4byte 0x3F1C0A9C
	.4byte 0x3F1DD92C
	.4byte 0x3F1FAD16
	.4byte 0x3F21866C
	.4byte 0x3F23653C
	.4byte 0x3F254998
	.4byte 0x3F273390
	.4byte 0x3F292335
	.4byte 0x3F2B1896
	.4byte 0x3F2D13C6
	.4byte 0x3F2F14D5
	.4byte 0x3F311BD6
	.4byte 0x3F3328D8
	.4byte 0x3F353BEF
	.4byte 0x3F37552D
	.4byte 0x3F3974A3
	.4byte 0x3F3B9A63
	.4byte 0x3F3DC682
	.4byte 0x3F3FF911
	.4byte 0x3F423224
	.4byte 0x3F4471CD
	.4byte 0x3F46B822

glabel lbl_80177CF4
	# ROM: 0x173DF4
	.4byte 0x3F490534
	.4byte 0x3F4B5918
	.4byte 0x3F4DB3E3
	.4byte 0x3F5015A9
	.4byte 0x3F527E7F
	.4byte 0x3F54EE78
	.4byte 0x3F5765AC
	.4byte 0x3F59E42F
	.4byte 0x3F5C6A16
	.4byte 0x3F5EF778
	.4byte 0x3F618C6B
	.4byte 0x3F642905
	.4byte 0x3F66CD5E
	.4byte 0x3F69798B
	.4byte 0x3F6C2DA4
	.4byte 0x3F6EE9C1

glabel lbl_80177D34
	# ROM: 0x173E34
	.4byte 0x3F71ADF9
	.4byte 0x3F747A65
	.4byte 0x3F774F1C
	.4byte 0x3F7A2C38
	.4byte 0x3F7D11D1
	.4byte 0x3F800000
	.4byte 0x3F817B70
	.4byte 0x3F82FB44
	.4byte 0x3F847F8A
	.4byte 0x3F86084F
	.4byte 0x3F8795A0
	.4byte 0x3F89278B
	.4byte 0x3F8ABE1E
	.4byte 0x3F8C5966
	.4byte 0x3F8DF971
	.4byte 0x3F8F9E4D
	.4byte 0x3F914809
	.4byte 0x3F92F6B3
	.4byte 0x3F94AA59
	.4byte 0x3F96630B
	.4byte 0x3F9820D7
	.4byte 0x3F99E3CD
	.4byte 0x3F9BABFC
	.4byte 0x3F9D7972
	.4byte 0x3F9F4C41
	.4byte 0x3FA12478
	.4byte 0x3FA30226
	.4byte 0x3FA4E55C
	.4byte 0x3FA6CE2B
	.4byte 0x3FA8BCA3
	.4byte 0x3FAAB0D5
	.4byte 0x3FACAAD1
	.4byte 0x3FAEAAA9
	.4byte 0x3FB0B06E
	.4byte 0x3FB2BC33
	.4byte 0x3FB4CE08
	.4byte 0x3FB6E5FF
	.4byte 0x3FB9042C
	.4byte 0x3FBB289F
	.4byte 0x3FBD536C
	.4byte 0x3FBF84A6
	.4byte 0x3FC1BC60
	.4byte 0x3FC3FAAD
	.4byte 0x3FC63F9F
	.4byte 0x3FC88B4D
	.4byte 0x3FCADDC8
	.4byte 0x3FCD3725
	.4byte 0x3FCF9779
	.4byte 0x3FD1FED8
	.4byte 0x3FD46D58
	.4byte 0x3FD6E30D
	.4byte 0x3FD9600C
	.4byte 0x3FDBE46C
	.4byte 0x3FDE7042
	.4byte 0x3FE103A4
	.4byte 0x3FE39EA9
	.4byte 0x3FE64167
	.4byte 0x3FE8EBF5
	.4byte 0x3FEB9E6B
	.4byte 0x3FEE58DF
	.4byte 0x3FF11B6A
	.4byte 0x3FF3E623
	.4byte 0x3FF6B923
	.4byte 0x3FF99482
	.4byte 0x3FFC7859
	.4byte 0x3FFF64C1
	.4byte 0x3F800000
	.4byte 0x3F7F7FE0
	.4byte 0x3F7EFF80
	.4byte 0x3F7E7EDE
	.4byte 0x3F7DFDFC
	.4byte 0x3F7D7CD8
	.4byte 0x3F7CFB72
	.4byte 0x3F7C79CA
	.4byte 0x3F7BF7DF
	.4byte 0x3F7B75B1
	.4byte 0x3F7AF340
	.4byte 0x3F7A708B
	.4byte 0x3F79ED91
	.4byte 0x3F796A52
	.4byte 0x3F78E6CE
	.4byte 0x3F786305
	.4byte 0x3F77DEF6
	.4byte 0x3F775AA0
	.4byte 0x3F76D603
	.4byte 0x3F76511E
	.4byte 0x3F75CBF2
	.4byte 0x3F75467E
	.4byte 0x3F74C0C0
	.4byte 0x3F743ABA
	.4byte 0x3F73B46A
	.4byte 0x3F732DCF
	.4byte 0x3F72A6EA
	.4byte 0x3F721FBA
	.4byte 0x3F71983E
	.4byte 0x3F711076
	.4byte 0x3F708862
	.4byte 0x3F700000
	.4byte 0x3F6F7751
	.4byte 0x3F6EEE53
	.4byte 0x3F6E6507
	.4byte 0x3F6DDB6B
	.4byte 0x3F6D517F
	.4byte 0x3F6CC744
	.4byte 0x3F6C3CB7
	.4byte 0x3F6BB1D9
	.4byte 0x3F6B26A9
	.4byte 0x3F6A9B26
	.4byte 0x3F6A0F50
	.4byte 0x3F698327
	.4byte 0x3F68F6A9
	.4byte 0x3F6869D6
	.4byte 0x3F67DCAE
	.4byte 0x3F674F2F
	.4byte 0x3F66C15A
	.4byte 0x3F66332E
	.4byte 0x3F65A4A9
	.4byte 0x3F6515CC
	.4byte 0x3F648695
	.4byte 0x3F63F704
	.4byte 0x3F636719
	.4byte 0x3F62D6D3
	.4byte 0x3F624630
	.4byte 0x3F61B531
	.4byte 0x3F6123D4
	.4byte 0x3F609219
	.4byte 0x3F600000
	.4byte 0x3F5F6D87
	.4byte 0x3F5EDAAE
	.4byte 0x3F5E4773
	.4byte 0x3F5DB3D7
	.4byte 0x3F5D1FD9
	.4byte 0x3F5C8B77
	.4byte 0x3F5BF6B1
	.4byte 0x3F5B6186
	.4byte 0x3F5ACBF5
	.4byte 0x3F5A35FE
	.4byte 0x3F599FA0
	.4byte 0x3F5908D9
	.4byte 0x3F5871A9
	.4byte 0x3F57DA10
	.4byte 0x3F57420B
	.4byte 0x3F56A99B
	.4byte 0x3F5610BF
	.4byte 0x3F557775
	.4byte 0x3F54DDBC
	.4byte 0x3F544395
	.4byte 0x3F53A8FD
	.4byte 0x3F530DF3
	.4byte 0x3F527278
	.4byte 0x3F51D689
	.4byte 0x3F513A26
	.4byte 0x3F509D4E
	.4byte 0x3F500000
	.4byte 0x3F4F623A
	.4byte 0x3F4EC3FC
	.4byte 0x3F4E2545
	.4byte 0x3F4D8613
	.4byte 0x3F4CE665
	.4byte 0x3F4C463A
	.4byte 0x3F4BA592
	.4byte 0x3F4B046A
	.4byte 0x3F4A62C2
	.4byte 0x3F49C098
	.4byte 0x3F491DEC
	.4byte 0x3F487ABC
	.4byte 0x3F47D706
	.4byte 0x3F4732CA
	.4byte 0x3F468E06
	.4byte 0x3F45E8B9
	.4byte 0x3F4542E1
	.4byte 0x3F449C7E
	.4byte 0x3F43F58D
	.4byte 0x3F434E0D
	.4byte 0x3F42A5FE
	.4byte 0x3F41FD5C
	.4byte 0x3F415428
	.4byte 0x3F40AA5F
	.4byte 0x3F400000
	.4byte 0x3F3F5509
	.4byte 0x3F3EA979
	.4byte 0x3F3DFD4E
	.4byte 0x3F3D5087
	.4byte 0x3F3CA321
	.4byte 0x3F3BF51B
	.4byte 0x3F3B4673
	.4byte 0x3F3A9728
	.4byte 0x3F39E738
	.4byte 0x3F3936A1
	.4byte 0x3F388560
	.4byte 0x3F37D375
	.4byte 0x3F3720DD
	.4byte 0x3F366D96
	.4byte 0x3F35B99E
	.4byte 0x3F3504F3
	.4byte 0x3F344F93
	.4byte 0x3F33997C
	.4byte 0x3F32E2AC
	.4byte 0x3F322B20
	.4byte 0x3F3172D6
	.4byte 0x3F30B9CC
	.4byte 0x3F300000
	.4byte 0x3F2F456F
	.4byte 0x3F2E8A16
	.4byte 0x3F2DCDF3
	.4byte 0x3F2D1104
	.4byte 0x3F2C5345
	.4byte 0x3F2B94B5
	.4byte 0x3F2AD550
	.4byte 0x3F2A1514
	.4byte 0x3F2953FD
	.4byte 0x3F28920A
	.4byte 0x3F27CF36
	.4byte 0x3F270B7F
	.4byte 0x3F2646E1
	.4byte 0x3F25815A
	.4byte 0x3F24BAE7
	.4byte 0x3F23F383
	.4byte 0x3F232B2B
	.4byte 0x3F2261DC
	.4byte 0x3F219792
	.4byte 0x3F20CC4A
	.4byte 0x3F200000
	.4byte 0x3F1F32AF
	.4byte 0x3F1E6455
	.4byte 0x3F1D94EC
	.4byte 0x3F1CC471
	.4byte 0x3F1BF2DF
	.4byte 0x3F1B2032
	.4byte 0x3F1A4C65
	.4byte 0x3F197774
	.4byte 0x3F18A15A
	.4byte 0x3F17CA11
	.4byte 0x3F16F196
	.4byte 0x3F1617E3
	.4byte 0x3F153CF2
	.4byte 0x3F1460BE
	.4byte 0x3F138341
	.4byte 0x3F12A476
	.4byte 0x3F11C456
	.4byte 0x3F10E2DC
	.4byte 0x3F100000
	.4byte 0x3F0F1BBD
	.4byte 0x3F0E360B
	.4byte 0x3F0D4EE4
	.4byte 0x3F0C6641
	.4byte 0x3F0B7C1A
	.4byte 0x3F0A9067
	.4byte 0x3F09A320
	.4byte 0x3F08B43D
	.4byte 0x3F07C3B6
	.4byte 0x3F06D182
	.4byte 0x3F05DD98
	.4byte 0x3F04E7EE
	.4byte 0x3F03F07B
	.4byte 0x3F02F734
	.4byte 0x3F01FC10
	.4byte 0x3F00FF02
	.4byte 0x3F000000
	.4byte 0x3EFDFDFC
	.4byte 0x3EFBF7DF
	.4byte 0x3EF9ED91
	.4byte 0x3EF7DEF6
	.4byte 0x3EF5CBF2
	.4byte 0x3EF3B46A
	.4byte 0x3EF1983E
	.4byte 0x3EEF7751
	.4byte 0x3EED517F
	.4byte 0x3EEB26A9
	.4byte 0x3EE8F6A9
	.4byte 0x3EE6C15A
	.4byte 0x3EE48695
	.4byte 0x3EE24630
	.4byte 0x3EE00000
	.4byte 0x3EDDB3D7
	.4byte 0x3EDB6186
	.4byte 0x3ED908D9
	.4byte 0x3ED6A99B
	.4byte 0x3ED44395
	.4byte 0x3ED1D689
	.4byte 0x3ECF623A
	.4byte 0x3ECCE665
	.4byte 0x3ECA62C2
	.4byte 0x3EC7D706
	.4byte 0x3EC542E1
	.4byte 0x3EC2A5FE
	.4byte 0x3EC00000
	.4byte 0x3EBD5087
	.4byte 0x3EBA9728
	.4byte 0x3EB7D375
	.4byte 0x3EB504F3
	.4byte 0x3EB22B20
	.4byte 0x3EAF456F
	.4byte 0x3EAC5345
	.4byte 0x3EA953FD
	.4byte 0x3EA646E1
	.4byte 0x3EA32B2B
	.4byte 0x3EA00000
	.4byte 0x3E9CC471
	.4byte 0x3E997774
	.4byte 0x3E9617E3
	.4byte 0x3E92A476
	.4byte 0x3E8F1BBD
	.4byte 0x3E8B7C1A
	.4byte 0x3E87C3B6
	.4byte 0x3E83F07B
	.4byte 0x3E800000
	.4byte 0x3E77DEF6
	.4byte 0x3E6F7751
	.4byte 0x3E66C15A
	.4byte 0x3E5DB3D7
	.4byte 0x3E544395
	.4byte 0x3E4A62C2
	.4byte 0x3E400000
	.4byte 0x3E3504F3
	.4byte 0x3E2953FD
	.4byte 0x3E1CC471
	.4byte 0x3E0F1BBD
	.4byte 0x3E000000
	.4byte 0x3DDDB3D7
	.4byte 0x3DB504F3
	.4byte 0x3D800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x40000000
	.4byte 0x3F000000
	.4byte 0x40C00000
	.4byte 0xC2B4CCCD
	.4byte 0x41200000
	.4byte 0xBF800000
	.4byte 0x43800000
	.4byte 0
	.4byte 0
	.4byte 0x40DF4000
	.4byte 0
	.4byte 0x40000000
	.4byte 0
	.4byte 0x40240000
	.4byte 0
	.4byte 0x3FF00000
	.4byte 0

glabel lbl_80178288
	# ROM: 0x174388
	.4byte 0x3F800000
	.4byte 0

glabel lbl_80178290
	# ROM: 0x174390
	.4byte 0x3F800000
	.4byte 0

glabel lbl_80178298
	# ROM: 0x174398
	.4byte 0x3F800000

glabel lbl_8017829C
	# ROM: 0x17439C
	.4byte 0

glabel lbl_801782A0
	# ROM: 0x1743A0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x427C0000
	.4byte 0x3C800000
	.4byte 0x42FE0000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x43300000
	.4byte 0

glabel lbl_801782C8
	# ROM: 0x1743C8
	.4byte 0

glabel lbl_801782CC
	# ROM: 0x1743CC
	.4byte 0x3F800000

glabel lbl_801782D0
	# ROM: 0x1743D0
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_801782D8
	# ROM: 0x1743D8
	.4byte 0x3F000000
	.4byte 0

glabel lbl_801782E0
	# ROM: 0x1743E0
	.4byte 0x43300000
	.4byte 0

glabel lbl_801782E8
	# ROM: 0x1743E8
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_801782F0
	# ROM: 0x1743F0
	.4byte 0
	.4byte 0

glabel lbl_801782F8
	# ROM: 0x1743F8
	.4byte 0x43300000
	.4byte 0x80000000

glabel lbl_80178300
	# ROM: 0x174400
	.4byte 0x3F000000
	.4byte 0

glabel lbl_80178308
	.asciz "!std::bad_alloc!"
	.balign 4

glabel lbl_8017831C
	.asciz "std::bad_alloc"
	.balign 4

glabel lbl_8017832C
	.asciz "std::exception"
	.balign 4

glabel lbl_8017833C
	# ROM: 0x17443C
	.asciz "!std::exception!!std::bad_alloc!!"
	.balign 4

glabel lbl_80178360
	# ROM: 0x174460
	.4byte 0
	.4byte 0
	.4byte 0x41F00000
	.4byte 0
	.4byte 0x41E00000
	.4byte 0

glabel lbl_80178378
	.asciz "std::bad_exception"
	.balign 4

glabel lbl_8017838C
	# ROM: 0x17448C
	.asciz "!bad_exception!!"
	.asciz "!std::exception!!std::bad_exception!!"
	.asciz "!std::bad_exception!!"
	.balign 8

glabel lbl_801783E0
	# ROM: 0x1744E0
	.asciz "GCN_Mem_Alloc.c : InitDefaultHeap. No Heap Available\n"
	.asciz "Metrowerks CW runtime library initializing default heap\n"
	.balign 4

glabel lbl_80178450
	# ROM: 0x174550
	.4byte 0x00000004
	.4byte 0x0000000C
	.4byte 0x00000014
	.4byte 0x00000024
	.4byte 0x00000034
	.4byte 0x00000044

glabel lbl_80178468
	# ROM: 0x174568
	.asciz "542101086242752217003726400434970855712890625"
	.asciz "11102230246251565404236316680908203125"
	.asciz "23283064365386962890625"
	.asciz "152587890625"
	.asciz "390625"
	.asciz "78125"
	.asciz "15625"
	.asciz "3125"
	.asciz "625"
	.asciz "125"
	.asciz "25"
	.asciz "5"
	.asciz "1"
	.asciz "2"
	.asciz "4"
	.asciz "8"
	.asciz "16"
	.asciz "32"
	.asciz "64"
	.asciz "128"
	.asciz "256"
	.asciz "179769313486231580793728714053034151"
	.balign 4

glabel lbl_80178548
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040106
	.4byte 0x01040104
	.4byte 0x01040104
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x014200D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D00651
	.4byte 0x06510651
	.4byte 0x06510651
	.4byte 0x06510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x025100D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D00471
	.4byte 0x04710471
	.4byte 0x04710471
	.4byte 0x04710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x007100D0
	.4byte 0x00D000D0
	.4byte 0x00D00004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_801786B4
	# ROM: 0x1747B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80178748
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x28292A2B
	.4byte 0x2C2D2E2F
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38393A3B
	.4byte 0x3C3D3E3F
	.4byte 0x40616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A5B
	.4byte 0x5C5D5E5F
	.4byte 0x60616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A7B
	.4byte 0x7C7D7E7F
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959697
	.4byte 0x98999A9B
	.4byte 0x9C9D9E9F
	.4byte 0xA0A1A2A3
	.4byte 0xA4A5A6A7
	.4byte 0xA8A9AAAB
	.4byte 0xACADAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4C5C6C7
	.4byte 0xC8C9CACB
	.4byte 0xCCCDCECF
	.4byte 0xD0D1D2D3
	.4byte 0xD4D5D6D7
	.4byte 0xD8D9DADB
	.4byte 0xDCDDDEDF
	.4byte 0xE0E1E2E3
	.4byte 0xE4E5E6E7
	.4byte 0xE8E9EAEB
	.4byte 0xECEDEEEF
	.4byte 0xF0F1F2F3
	.4byte 0xF4F5F6F7
	.4byte 0xF8F9FAFB
	.4byte 0xFCFDFEFF

glabel lbl_80178848
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x28292A2B
	.4byte 0x2C2D2E2F
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38393A3B
	.4byte 0x3C3D3E3F
	.4byte 0x40414243
	.4byte 0x44454647
	.4byte 0x48494A4B
	.4byte 0x4C4D4E4F
	.4byte 0x50515253
	.4byte 0x54555657
	.4byte 0x58595A5B
	.4byte 0x5C5D5E5F
	.4byte 0x60414243
	.4byte 0x44454647
	.4byte 0x48494A4B
	.4byte 0x4C4D4E4F
	.4byte 0x50515253
	.4byte 0x54555657
	.4byte 0x58595A7B
	.4byte 0x7C7D7E7F
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959697
	.4byte 0x98999A9B
	.4byte 0x9C9D9E9F
	.4byte 0xA0A1A2A3
	.4byte 0xA4A5A6A7
	.4byte 0xA8A9AAAB
	.4byte 0xACADAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4C5C6C7
	.4byte 0xC8C9CACB
	.4byte 0xCCCDCECF
	.4byte 0xD0D1D2D3
	.4byte 0xD4D5D6D7
	.4byte 0xD8D9DADB
	.4byte 0xDCDDDEDF
	.4byte 0xE0E1E2E3
	.4byte 0xE4E5E6E7
	.4byte 0xE8E9EAEB
	.4byte 0xECEDEEEF
	.4byte 0xF0F1F2F3
	.4byte 0xF4F5F6F7
	.4byte 0xF8F9FAFB
	.4byte 0xFCFDFEFF

glabel lbl_80178948
	.asciz "%a %b %e %T %Y"
	.balign 4

glabel lbl_80178958
	.asciz "%I:%M:%S %p"

glabel lbl_80178964
	.asciz "%m/%d/%y"
	.balign 4

glabel lbl_80178970
	.asciz "Sun|Sunday|Mon|Monday|Tue|Tuesday|Wed|Wednesday|Thu|Thursday|Fri|Friday|Sat|Saturday"
	.balign 4

glabel lbl_801789C8
	.asciz "Jan|January|Feb|February|Mar|March|Apr|April|May|May|Jun|June|Jul|July|Aug|August|Sep|September|Oct|October|Nov|November|Dec|December"
	.balign 4

glabel lbl_80178A50
	# ROM: 0x174B50
	.asciz "0x0p0"
	.asciz "-INF"
	.asciz "-inf"
	.asciz "INF"
	.asciz "inf"
	.asciz "-NAN"
	.asciz "-nan"
	.asciz "NAN"
	.asciz "nan"
	.align 4
	.4byte 0
	.4byte 0x7FFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80178AA8
	# ROM: 0x174BA8
	.asciz "INFINITY"
	.balign 8

glabel lbl_80178AB8
	# ROM: 0x174BB8
	.4byte 0x0000001F
	.4byte 0x003B005A
	.4byte 0x00780097
	.4byte 0x00B500D4
	.4byte 0x00F30111
	.4byte 0x0130014E
	.4byte 0x016D0000
	.4byte 0x001F003C
	.4byte 0x005B0079
	.4byte 0x009800B6
	.4byte 0x00D500F4
	.4byte 0x01120131
	.4byte 0x014F016E

glabel lbl_80178AEC
	# ROM: 0x174BEC
	.4byte 0x00020003
	.4byte 0x0004001D
	.4byte 0x001E001F
	.4byte 0x00010000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0xFFFFFFFF

glabel lbl_80178B20
	# ROM: 0x174C20
	.asciz "xxx xxx xx xx:xx:xx xxxx\n"
	.asciz "%s %s%3d %.2d:%.2d:%.2d %d\n"
	.asciz "%.3s %.3s %2d %.2d:%.2d:%.2d %4d\n"
	.asciz "%s"
	.asciz "%.3s"
	.asciz "%.2d"
	.asciz "%m/%d/%y"
	.asciz "%2d"
	.asciz "%.4d-%.2d-%.2d"
	.asciz "%.4d"
	.asciz "%.3d"
	.asciz "\n"
	.asciz "%H:%M"
	.asciz "\t"
	.asciz "%H:%M:%S"
	.asciz "7"
	.asciz "%.1d"
	.asciz "0000"
	.asciz "%+03.0f%02.0f"
	.asciz "%%"
	.asciz "%%%c"

glabel lbl_80178BE0
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040106
	.4byte 0x01040104
	.4byte 0x01040104
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x014200D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D00651
	.4byte 0x06510651
	.4byte 0x06510651
	.4byte 0x06510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x025100D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D00471
	.4byte 0x04710471
	.4byte 0x04710471
	.4byte 0x04710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x007100D0
	.4byte 0x00D000D0
	.4byte 0x00D00004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

glabel lbl_80178DE0
	.4byte 0x00000001
	.4byte 0x00020003
	.4byte 0x00040005
	.4byte 0x00060007
	.4byte 0x00080009
	.4byte 0x000A000B
	.4byte 0x000C000D
	.4byte 0x000E000F
	.4byte 0x00100011
	.4byte 0x00120013
	.4byte 0x00140015
	.4byte 0x00160017
	.4byte 0x00180019
	.4byte 0x001A001B
	.4byte 0x001C001D
	.4byte 0x001E001F
	.4byte 0x00200021
	.4byte 0x00220023
	.4byte 0x00240025
	.4byte 0x00260027
	.4byte 0x00280029
	.4byte 0x002A002B
	.4byte 0x002C002D
	.4byte 0x002E002F
	.4byte 0x00300031
	.4byte 0x00320033
	.4byte 0x00340035
	.4byte 0x00360037
	.4byte 0x00380039
	.4byte 0x003A003B
	.4byte 0x003C003D
	.4byte 0x003E003F
	.4byte 0x00400061
	.4byte 0x00620063
	.4byte 0x00640065
	.4byte 0x00660067
	.4byte 0x00680069
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006E006F
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00740075
	.4byte 0x00760077
	.4byte 0x00780079
	.4byte 0x007A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620063
	.4byte 0x00640065
	.4byte 0x00660067
	.4byte 0x00680069
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006E006F
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00740075
	.4byte 0x00760077
	.4byte 0x00780079
	.4byte 0x007A007B
	.4byte 0x007C007D
	.4byte 0x007E007F
	.4byte 0x00800081
	.4byte 0x00820083
	.4byte 0x00840085
	.4byte 0x00860087
	.4byte 0x00880089
	.4byte 0x008A008B
	.4byte 0x008C008D
	.4byte 0x008E008F
	.4byte 0x00900091
	.4byte 0x00920093
	.4byte 0x00940095
	.4byte 0x00960097
	.4byte 0x00980099
	.4byte 0x009A009B
	.4byte 0x009C009D
	.4byte 0x009E009F
	.4byte 0x00A000A1
	.4byte 0x00A200A3
	.4byte 0x00A400A5
	.4byte 0x00A600A7
	.4byte 0x00A800A9
	.4byte 0x00AA00AB
	.4byte 0x00AC00AD
	.4byte 0x00AE00AF
	.4byte 0x00B000B1
	.4byte 0x00B200B3
	.4byte 0x00B400B5
	.4byte 0x00B600B7
	.4byte 0x00B800B9
	.4byte 0x00BA00BB
	.4byte 0x00BC00BD
	.4byte 0x00BE00BF
	.4byte 0x00C000C1
	.4byte 0x00C200C3
	.4byte 0x00C400C5
	.4byte 0x00C600C7
	.4byte 0x00C800C9
	.4byte 0x00CA00CB
	.4byte 0x00CC00CD
	.4byte 0x00CE00CF
	.4byte 0x00D000D1
	.4byte 0x00D200D3
	.4byte 0x00D400D5
	.4byte 0x00D600D7
	.4byte 0x00D800D9
	.4byte 0x00DA00DB
	.4byte 0x00DC00DD
	.4byte 0x00DE00DF
	.4byte 0x00E000E1
	.4byte 0x00E200E3
	.4byte 0x00E400E5
	.4byte 0x00E600E7
	.4byte 0x00E800E9
	.4byte 0x00EA00EB
	.4byte 0x00EC00ED
	.4byte 0x00EE00EF
	.4byte 0x00F000F1
	.4byte 0x00F200F3
	.4byte 0x00F400F5
	.4byte 0x00F600F7
	.4byte 0x00F800F9
	.4byte 0x00FA00FB
	.4byte 0x00FC00FD
	.4byte 0x00FE00FF

glabel lbl_80178FE0
	.4byte 0x00000001
	.4byte 0x00020003
	.4byte 0x00040005
	.4byte 0x00060007
	.4byte 0x00080009
	.4byte 0x000A000B
	.4byte 0x000C000D
	.4byte 0x000E000F
	.4byte 0x00100011
	.4byte 0x00120013
	.4byte 0x00140015
	.4byte 0x00160017
	.4byte 0x00180019
	.4byte 0x001A001B
	.4byte 0x001C001D
	.4byte 0x001E001F
	.4byte 0x00200021
	.4byte 0x00220023
	.4byte 0x00240025
	.4byte 0x00260027
	.4byte 0x00280029
	.4byte 0x002A002B
	.4byte 0x002C002D
	.4byte 0x002E002F
	.4byte 0x00300031
	.4byte 0x00320033
	.4byte 0x00340035
	.4byte 0x00360037
	.4byte 0x00380039
	.4byte 0x003A003B
	.4byte 0x003C003D
	.4byte 0x003E003F
	.4byte 0x00400041
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460047
	.4byte 0x00480049
	.4byte 0x004A004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600041
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460047
	.4byte 0x00480049
	.4byte 0x004A004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A007B
	.4byte 0x007C007D
	.4byte 0x007E007F
	.4byte 0x00800081
	.4byte 0x00820083
	.4byte 0x00840085
	.4byte 0x00860087
	.4byte 0x00880089
	.4byte 0x008A008B
	.4byte 0x008C008D
	.4byte 0x008E008F
	.4byte 0x00900091
	.4byte 0x00920093
	.4byte 0x00940095
	.4byte 0x00960097
	.4byte 0x00980099
	.4byte 0x009A009B
	.4byte 0x009C009D
	.4byte 0x009E009F
	.4byte 0x00A000A1
	.4byte 0x00A200A3
	.4byte 0x00A400A5
	.4byte 0x00A600A7
	.4byte 0x00A800A9
	.4byte 0x00AA00AB
	.4byte 0x00AC00AD
	.4byte 0x00AE00AF
	.4byte 0x00B000B1
	.4byte 0x00B200B3
	.4byte 0x00B400B5
	.4byte 0x00B600B7
	.4byte 0x00B800B9
	.4byte 0x00BA00BB
	.4byte 0x00BC00BD
	.4byte 0x00BE00BF
	.4byte 0x00C000C1
	.4byte 0x00C200C3
	.4byte 0x00C400C5
	.4byte 0x00C600C7
	.4byte 0x00C800C9
	.4byte 0x00CA00CB
	.4byte 0x00CC00CD
	.4byte 0x00CE00CF
	.4byte 0x00D000D1
	.4byte 0x00D200D3
	.4byte 0x00D400D5
	.4byte 0x00D600D7
	.4byte 0x00D800D9
	.4byte 0x00DA00DB
	.4byte 0x00DC00DD
	.4byte 0x00DE00DF
	.4byte 0x00E000E1
	.4byte 0x00E200E3
	.4byte 0x00E400E5
	.4byte 0x00E600E7
	.4byte 0x00E800E9
	.4byte 0x00EA00EB
	.4byte 0x00EC00ED
	.4byte 0x00EE00EF
	.4byte 0x00F000F1
	.4byte 0x00F200F3
	.4byte 0x00F400F5
	.4byte 0x00F600F7
	.4byte 0x00F800F9
	.4byte 0x00FA00FB
	.4byte 0x00FC00FD
	.4byte 0x00FE00FF

glabel lbl_801791E0
	# ROM: 0x1752E0
	.4byte 0x3FE00000
	.4byte 0
	.4byte 0xBFE00000
	.4byte 0
	.4byte 0x3FE62E42
	.4byte 0xFEE00000
	.4byte 0xBFE62E42
	.4byte 0xFEE00000
	.4byte 0x3DEA39EF
	.4byte 0x35793C76
	.4byte 0xBDEA39EF
	.4byte 0x35793C76

glabel lbl_80179210
	# ROM: 0x175310
	.4byte 0
	.4byte 0
	.4byte 0x80000000
	.4byte 0

glabel lbl_80179220
	# ROM: 0x175320
	.4byte 0x3FF00000
	.4byte 0
	.4byte 0x3FF80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3FE2B803
	.4byte 0x40000000
	.4byte 0
	.4byte 0
	.4byte 0x3E4CFDEB
	.4byte 0x43CFD006

glabel lbl_80179250
	# ROM: 0x175350
	.4byte 0x00A2F983
	.4byte 0x006E4E44
	.4byte 0x001529FC
	.4byte 0x002757D1
	.4byte 0x00F534DD
	.4byte 0x00C0DB62
	.4byte 0x0095993C
	.4byte 0x00439041
	.4byte 0x00FE5163
	.4byte 0x00ABDEBB
	.4byte 0x00C561B7
	.4byte 0x00246E3A
	.4byte 0x00424DD2
	.4byte 0x00E00649
	.4byte 0x002EEA09
	.4byte 0x00D1921C
	.4byte 0x00FE1DEB
	.4byte 0x001CB129
	.4byte 0x00A73EE8
	.4byte 0x008235F5
	.4byte 0x002EBB44
	.4byte 0x0084E99C
	.4byte 0x007026B4
	.4byte 0x005F7E41
	.4byte 0x003991D6
	.4byte 0x00398353
	.4byte 0x0039F49C
	.4byte 0x00845F8B
	.4byte 0x00BDF928
	.4byte 0x003B1FF8
	.4byte 0x0097FFDE
	.4byte 0x0005980F
	.4byte 0x00EF2F11
	.4byte 0x008B5A0A
	.4byte 0x006D1F6D
	.4byte 0x00367ECF
	.4byte 0x0027CB09
	.4byte 0x00B74F46
	.4byte 0x003F669E
	.4byte 0x005FEA2D
	.4byte 0x007527BA
	.4byte 0x00C7EBE5
	.4byte 0x00F17B3D
	.4byte 0x000739F7
	.4byte 0x008A5292
	.4byte 0x00EA6BFB
	.4byte 0x005FB11F
	.4byte 0x008D5D08
	.4byte 0x00560330
	.4byte 0x0046FC7B
	.4byte 0x006BABF0
	.4byte 0x00CFBC20
	.4byte 0x009AF436
	.4byte 0x001DA9E3
	.4byte 0x0091615E
	.4byte 0x00E61B08
	.4byte 0x00659985
	.4byte 0x005F14A0
	.4byte 0x0068408D
	.4byte 0x00FFD880
	.4byte 0x004D7327
	.4byte 0x00310606
	.4byte 0x001556CA
	.4byte 0x0073A8C9
	.4byte 0x0060E27B
	.4byte 0x00C08C6B

glabel lbl_80179358
	# ROM: 0x175458
	.4byte 0x3FF921FB
	.4byte 0x400921FB
	.4byte 0x4012D97C
	.4byte 0x401921FB
	.4byte 0x401F6A7A
	.4byte 0x4022D97C
	.4byte 0x4025FDBB
	.4byte 0x402921FB
	.4byte 0x402C463A
	.4byte 0x402F6A7A
	.4byte 0x4031475C
	.4byte 0x4032D97C
	.4byte 0x40346B9C
	.4byte 0x4035FDBB
	.4byte 0x40378FDB
	.4byte 0x403921FB
	.4byte 0x403AB41B
	.4byte 0x403C463A
	.4byte 0x403DD85A
	.4byte 0x403F6A7A
	.4byte 0x40407E4C
	.4byte 0x4041475C
	.4byte 0x4042106C
	.4byte 0x4042D97C
	.4byte 0x4043A28C
	.4byte 0x40446B9C
	.4byte 0x404534AC
	.4byte 0x4045FDBB
	.4byte 0x4046C6CB
	.4byte 0x40478FDB
	.4byte 0x404858EB
	.4byte 0x404921FB

glabel lbl_801793D8
	# ROM: 0x1754D8
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x3FF921FB
	.4byte 0x40000000
	.4byte 0x3E74442D
	.4byte 0
	.4byte 0x3CF84698
	.4byte 0x80000000
	.4byte 0x3B78CC51
	.4byte 0x60000000
	.4byte 0x39F01B83
	.4byte 0x80000000
	.4byte 0x387A2520
	.4byte 0x40000000
	.4byte 0x36E38222
	.4byte 0x80000000
	.4byte 0x3569F31D
	.4byte 0

glabel lbl_80179428
	# ROM: 0x175528
	.4byte 0x3FD55555
	.4byte 0x55555563
	.4byte 0x3FC11111
	.4byte 0x1110FE7A
	.4byte 0x3FABA1BA
	.4byte 0x1BB341FE
	.4byte 0x3F9664F4
	.4byte 0x8406D637
	.4byte 0x3F8226E3
	.4byte 0xE96E8493
	.4byte 0x3F6D6D22
	.4byte 0xC9560328
	.4byte 0x3F57DBC8
	.4byte 0xFEE08315
	.4byte 0x3F4344D8
	.4byte 0xF2F26501
	.4byte 0x3F3026F7
	.4byte 0x1A8D1068
	.4byte 0x3F147E88
	.4byte 0xA03792A6
	.4byte 0x3F12B80F
	.4byte 0x32F0A7E9
	.4byte 0xBEF375CB
	.4byte 0xDB605373
	.4byte 0x3EFB2A70
	.4byte 0x74BF7AD4

glabel lbl_80179490
	# ROM: 0x175590
	.4byte 0x3FDDAC67
	.4byte 0x0561BB4F
	.4byte 0x3FE921FB
	.4byte 0x54442D18
	.4byte 0x3FEF730B
	.4byte 0xD281F69B
	.4byte 0x3FF921FB
	.4byte 0x54442D18
	.4byte 0x3C7A2B7F
	.4byte 0x222F65E2
	.4byte 0x3C81A626
	.4byte 0x33145C07
	.4byte 0x3C700788
	.4byte 0x7AF0CBBD
	.4byte 0x3C91A626
	.4byte 0x33145C07
	.4byte 0x3FD55555
	.4byte 0x5555550D
	.4byte 0xBFC99999
	.4byte 0x9998EBC4
	.4byte 0x3FC24924
	.4byte 0x920083FF
	.4byte 0xBFBC71C6
	.4byte 0xFE231671
	.4byte 0x3FB745CD
	.4byte 0xC54C206E
	.4byte 0xBFB3B0F2
	.4byte 0xAF749A6D
	.4byte 0x3FB10D66
	.4byte 0xA0D03D51
	.4byte 0xBFADDE2D
	.4byte 0x52DEFD9A
	.4byte 0x3FA97B4B
	.4byte 0x24760DEB
	.4byte 0xBFA2B444
	.4byte 0x2C6A6C2F
	.4byte 0x3F90AD3A
	.4byte 0xE322DA11

glabel lbl_80179528
	# ROM: 0x175628
	.asciz "MetroTRK for Revolution v0.1"
	.balign 4

glabel lbl_80179548
	# ROM: 0x175648
	.asciz "ERROR : No buffer available\n"
	.balign 4

glabel lbl_80179568
	# ROM: 0x175668
	.asciz "\nMetroTRK Option : SerialIO - "
	.balign 4
	.asciz "Enable\n"
	.asciz "Disable\n"
	.balign 8

glabel lbl_801795A0
	# ROM: 0x1756A0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x00000001

glabel lbl_801795B0
	# ROM: 0x1756B0
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000

glabel lbl_80179600
	# ROM: 0x175700
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000

glabel lbl_80179628
	# ROM: 0x175728
	.byte 0
	.ascii "END"

glabel lbl_8017962C
	# ROM: 0x17572C
	.asciz "%s\n"
	.balign 4
	.asciz "Devkit set to : %ld\n"
	.balign 4
	.asciz "MetroTRK : Sizeof Reply - %ld bytes\n"
	.balign 4
	.asciz "MetroTRK : Set to BBA\n"
	.balign 4
	.asciz "MetroTRK : Set to NDEV hardware\n"
	.balign 4
	.asciz "MetroTRK : Set to UNKNOWN hardware. (%ld)\n"
	.balign 4
	.asciz "MetroTRK : Invalid hardware ID passed from OS\n"
	.balign 4
	.asciz "MetroTRK : Defaulting to GDEV Hardware\n"
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

