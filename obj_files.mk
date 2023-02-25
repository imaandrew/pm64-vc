ALL:=\
	$(BUILD_DIR)/src/init/init0.o\
	$(BUILD_DIR)/asm/init/__init_registers.o\
	$(BUILD_DIR)/asm/init/__init_data.o\
	$(BUILD_DIR)/asm/init/__init_hardware.o\
	$(BUILD_DIR)/asm/init/__flush_cache.o\
	$(BUILD_DIR)/src/init/memcpy.o\
	$(BUILD_DIR)/src/init/__fill_mem.o\
	$(BUILD_DIR)/src/init/memset.o\
	$(BUILD_DIR)/src/MetroTRK/TRK_mem.o\
	$(BUILD_DIR)/asm/MetroTRK/__exception.o\
	$(BUILD_DIR)/src/MetroTRK/init1.o\
	$(BUILD_DIR)/asm/extab_.o\
	$(BUILD_DIR)/asm/extabindex_.o\
	$(BUILD_DIR)/asm/virtual_console/code_800070C0.o\
	$(BUILD_DIR)/asm/virtual_console/cpu.o\
	$(BUILD_DIR)/asm/virtual_console/tree.o\
	$(BUILD_DIR)/asm/virtual_console/code_80040474.o\
	$(BUILD_DIR)/asm/virtual_console/ram.o\
	$(BUILD_DIR)/asm/virtual_console/code_80041A3C.o\
	$(BUILD_DIR)/asm/virtual_console/rom.o\
	$(BUILD_DIR)/asm/virtual_console/code_800438B0.o\
	$(BUILD_DIR)/asm/virtual_console/xlFile.o\
	$(BUILD_DIR)/asm/virtual_console/xlText.o\
	$(BUILD_DIR)/asm/virtual_console/xlList.o\
	$(BUILD_DIR)/asm/virtual_console/xlHeap.o\
	$(BUILD_DIR)/asm/virtual_console/code_80086EBC.o\
	$(BUILD_DIR)/asm/virtual_console/xlObject.o\
	$(BUILD_DIR)/asm/NdevExi2A/DebuggerDriver.o\
	$(BUILD_DIR)/asm/NdevExi2A/exi2.o\
	$(BUILD_DIR)/asm/RevoSDK/code_80087EB8.o\
	$(BUILD_DIR)/asm/RevoSDK/base/PPCArch.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OS.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSAlarm.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSAlloc.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSArena.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSAudioSystem.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSCache.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSContext.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSError.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSExec.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSFatal.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSFont.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSInterrupt.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSLink.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSMessage.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSMemory.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSMutex.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSReboot.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSReset.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSRtc.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSSync.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSThread.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSTime.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSUtf.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSIpc.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSStateTM.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSSystemTime.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/__start.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSPlayRecord.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSStateFlags.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSNet.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/OSNandbootInfo.o\
	$(BUILD_DIR)/asm/RevoSDK/OS/__ppc_eabi_init.o\
	$(BUILD_DIR)/asm/RevoSDK/EXI/EXIBios.o\
	$(BUILD_DIR)/asm/RevoSDK/EXI/EXIUart.o\
	$(BUILD_DIR)/asm/RevoSDK/EXI/EXICommon.o\
	$(BUILD_DIR)/asm/RevoSDK/SI/SIBios.o\
	$(BUILD_DIR)/asm/RevoSDK/SI/SISamplingRate.o\
	$(BUILD_DIR)/asm/RevoSDK/DB/db.o\
	$(BUILD_DIR)/asm/RevoSDK/VI/vi.o\
	$(BUILD_DIR)/asm/RevoSDK/VI/i2c.o\
	$(BUILD_DIR)/asm/RevoSDK/VI/vi3in1.o\
	$(BUILD_DIR)/asm/RevoSDK/MTX/mtx.o\
	$(BUILD_DIR)/asm/RevoSDK/MTX/mtxvex.o\
	$(BUILD_DIR)/asm/RevoSDK/MTX/mtx44.o\
	$(BUILD_DIR)/asm/RevoSDK/MTX/quat.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXInit.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXFifo.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXAttr.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXMisc.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXGeometry.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXFrameBuf.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXLight.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXTexture.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXBump.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXTev.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXPixel.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXTransform.o\
	$(BUILD_DIR)/asm/RevoSDK/GX/GXPerf.o\
	$(BUILD_DIR)/asm/RevoSDK/DVD/dvdfs.o\
	$(BUILD_DIR)/asm/RevoSDK/DVD/dvd.o\
	$(BUILD_DIR)/asm/RevoSDK/DVD/dvdqueue.o\
	$(BUILD_DIR)/asm/RevoSDK/DVD/dvderror.o\
	$(BUILD_DIR)/asm/RevoSDK/DVD/dvdidutils.o\
	$(BUILD_DIR)/asm/RevoSDK/DVD/dvdFatal.o\
	$(BUILD_DIR)/asm/RevoSDK/DVD/dvd_broadway.o\
	$(BUILD_DIR)/asm/RevoSDK/AI/ai.o\
	$(BUILD_DIR)/asm/RevoSDK/AX/AX.o\
	$(BUILD_DIR)/asm/RevoSDK/AX/AXAlloc.o\
	$(BUILD_DIR)/asm/RevoSDK/AX/AXAux.o\
	$(BUILD_DIR)/asm/RevoSDK/AX/AXCL.o\
	$(BUILD_DIR)/asm/RevoSDK/AX/AXOut.o\
	$(BUILD_DIR)/asm/RevoSDK/AX/AXSPB.o\
	$(BUILD_DIR)/asm/RevoSDK/AX/AXVPB.o\
	$(BUILD_DIR)/asm/RevoSDK/AX/AXProf.o\
	$(BUILD_DIR)/asm/RevoSDK/AXFX/AXFXReverbHi.o\
	$(BUILD_DIR)/asm/RevoSDK/AXFX/AXFXReverbHiExp.o\
	$(BUILD_DIR)/asm/RevoSDK/AXFX/AXFXHooks.o\
	$(BUILD_DIR)/asm/RevoSDK/MEM/mem_heapCommon.o\
	$(BUILD_DIR)/asm/RevoSDK/MEM/mem_expHeap.o\
	$(BUILD_DIR)/asm/RevoSDK/MEM/mem_frameHeap.o\
	$(BUILD_DIR)/asm/RevoSDK/MEM/mem_unitHeap.o\
	$(BUILD_DIR)/asm/RevoSDK/MEM/mem_allocator.o\
	$(BUILD_DIR)/asm/RevoSDK/MEM/mem_list.o\
	$(BUILD_DIR)/asm/RevoSDK/MIX/mix.o\
	$(BUILD_DIR)/asm/RevoSDK/MIX/remote.o\
	$(BUILD_DIR)/asm/RevoSDK/DSP/dsp.o\
	$(BUILD_DIR)/asm/RevoSDK/DSP/dsp_debug.o\
	$(BUILD_DIR)/asm/RevoSDK/DSP/dsp_task.o\
	$(BUILD_DIR)/asm/RevoSDK/NAND/nand.o\
	$(BUILD_DIR)/asm/RevoSDK/NAND/NANDOpenClose.o\
	$(BUILD_DIR)/asm/RevoSDK/NAND/NANDCore.o\
	$(BUILD_DIR)/asm/RevoSDK/NAND/NANDCheck.o\
	$(BUILD_DIR)/asm/RevoSDK/SC/scsystem.o\
	$(BUILD_DIR)/asm/RevoSDK/SC/scapi.o\
	$(BUILD_DIR)/asm/RevoSDK/SC/scapi_prdinfo.o\
	$(BUILD_DIR)/asm/RevoSDK/WENC/wenc.o\
	$(BUILD_DIR)/asm/RevoSDK/ARC/arc.o\
	$(BUILD_DIR)/asm/RevoSDK/IPC/ipcMain.o\
	$(BUILD_DIR)/asm/RevoSDK/IPC/ipcclt.o\
	$(BUILD_DIR)/asm/RevoSDK/IPC/memory.o\
	$(BUILD_DIR)/asm/RevoSDK/IPC/ipcProfile.o\
	$(BUILD_DIR)/asm/RevoSDK/FS/fs.o\
	$(BUILD_DIR)/asm/RevoSDK/PAD/Padclamp.o\
	$(BUILD_DIR)/asm/RevoSDK/PAD/Pad.o\
	$(BUILD_DIR)/asm/RevoSDK/WPAD/WPAD.o\
	$(BUILD_DIR)/asm/RevoSDK/WPAD/WPADHIDParser.o\
	$(BUILD_DIR)/asm/RevoSDK/WPAD/WPADEncrypt.o\
	$(BUILD_DIR)/asm/RevoSDK/WPAD/debug_msg.o\
	$(BUILD_DIR)/asm/RevoSDK/code_800D0BFC.o\
	$(BUILD_DIR)/asm/RevoSDK/EUART/euart.o\
	$(BUILD_DIR)/asm/RevoSDK/USB/usb.o\
	$(BUILD_DIR)/asm/RevoSDK/WUD/WUD.o\
	$(BUILD_DIR)/asm/RevoSDK/WUD/WUDHidHost.o\
	$(BUILD_DIR)/asm/RevoSDK/WUD/WUD_debug_msg.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/gki_buffer.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/gki_time.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/gki_ppc.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/hcisu_h2.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/uusb_ppc.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bte_hcisu.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bte_init.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bte_logmsg.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bte_main.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btu_task1.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bd.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_sys_conn.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_sys_main.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/ptim.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/utl.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_dm_act.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_dm_api.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_dm_main.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_dm_pm.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_hh_act.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_hh_api.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_hh_main.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/bta_hh_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_acl.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_dev.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_devctl.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_discovery.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_inq.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_main.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_pm.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_sco.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btm_sec.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btu_hcif.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/btu_init.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/wbt_ext.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/gap_api.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/gap_conn.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/gap_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/hcicmds.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/hidd_api.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/hidd_conn.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/hidd_mgmt.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/hidd_pm.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/hidh_api.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/hidh_conn.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/l2c_api.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/l2c_csm.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/l2c_link.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/l2c_main.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/l2c_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/port_api.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/port_rfc.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/port_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/rfc_l2cap_if.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/rfc_mx_fsm.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/rfc_port_fsm.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/rfc_port_if.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/rfc_ts_frames.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/rfc_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/sdp_api.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/sdp_db.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/sdp_discovery.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/sdp_main.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/sdp_server.o\
	$(BUILD_DIR)/asm/RevoSDK/BTE/sdp_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/ES/es.o\
	$(BUILD_DIR)/asm/RevoSDK/RSO/RSOLink.o\
	$(BUILD_DIR)/asm/RevoSDK/TPL/TPL.o\
	$(BUILD_DIR)/asm/RevoSDK/HBM/HBMBase.o\
	$(BUILD_DIR)/asm/RevoSDK/HBM/HBMAnmController.o\
	$(BUILD_DIR)/asm/RevoSDK/HBM/HBMFrameController.o\
	$(BUILD_DIR)/asm/RevoSDK/HBM/HBMGUIManager.o\
	$(BUILD_DIR)/asm/RevoSDK/HBM/HBMController.o\
	$(BUILD_DIR)/asm/RevoSDK/HBM/HBMRemoteSpk.o\
	$(BUILD_DIR)/asm/nw4r/db/db_assert.o\
	$(BUILD_DIR)/asm/nw4r/db/db_console.o\
	$(BUILD_DIR)/asm/RevoSDK/code_80116960.o\
	$(BUILD_DIR)/asm/nw4r/db/db_directPrint.o\
	$(BUILD_DIR)/asm/nw4r/db/db_mapFile.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_animation.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_arcResourceAccessor.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_bounding.o\
	$(BUILD_DIR)/asm/nw4r/lyt/detail/lyt_common.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_drawInfo.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_group.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_layout.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_material.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_pane.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_picture.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_resourceAccessor.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_textBox.o\
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_window.o\
	$(BUILD_DIR)/asm/nw4r/math/math_triangular.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxManager.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_AxVoice.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Bank.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BankFile.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_BasicSound.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Channel.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_DisposeCallbackManager.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_DvdSoundArchive.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_EnvGenerator.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_ExternalSoundPlayer.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_FrameHeap.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_InstancePool.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Lfo.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_MemorySoundArchive.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MidiSeqPlayer.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlParser.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlSeqTrack.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_MmlSeqTrackAllocator.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_NandSoundArchive.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_RemoteSpeaker.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_RemoteSpeakerManager.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqFile.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqPlayer.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqSound.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqSoundHandle.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SeqTrack.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchive.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchiveFile.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundArchiveLoader.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchivePlayer.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHandle.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHeap.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundPlayer.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundStartable.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundSystem.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_SoundThread.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmChannel.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmFile.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmPlayer.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_StrmSound.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_StrmSoundHandle.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_TaskManager.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_TaskThread.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_Util.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WaveFile.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_WavePlayer.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WaveSound.o\
	$(BUILD_DIR)/asm/nw4r/snd/snd_WaveSoundHandle.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdFile.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdPlayer.o\
	$(BUILD_DIR)/asm/nw4r/snd/detail/snd_WsdTrack.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_binaryFileFormat.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharStrmReader.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharWriter.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_DvdFileStream.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_FileStream.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_Font.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_IOStream.o\
	$(BUILD_DIR)/asm/nw4r/ut/detail/ut_LinkList.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_list.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_NandFileStream.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_ResFont.o\
	$(BUILD_DIR)/asm/nw4r/ut/detail/ut_ResFontBase.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_TagProcessorBase.o\
	$(BUILD_DIR)/asm/nw4r/ut/ut_TextWriterBase.o\
	$(BUILD_DIR)/asm/Runtime/__mem.o\
	$(BUILD_DIR)/asm/Runtime/__va_arg.o\
	$(BUILD_DIR)/asm/Runtime/global_destructor_chain.o\
	$(BUILD_DIR)/asm/Runtime/New.o\
	$(BUILD_DIR)/asm/Runtime/NMWException.o\
	$(BUILD_DIR)/asm/Runtime/ptmf.o\
	$(BUILD_DIR)/asm/Runtime/runtime.o\
	$(BUILD_DIR)/asm/Runtime/__init_cpp_exceptions.o\
	$(BUILD_DIR)/asm/Runtime/idkwhatthisislol.o\
	$(BUILD_DIR)/asm/Runtime/Gecko_ExceptionPPC.o\
	$(BUILD_DIR)/asm/Runtime/GCN_mem_alloc.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/alloc.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/ansi_files.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/ansi_fp.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/arith.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/bsearch.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/buffer_io.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/direct_io.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/file_io.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/FILE_POS.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mbstring.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mem.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/mem_funcs.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/math_api.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/misc_io.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/printf.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/qsort.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/rand.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/scanf.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/signal.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/string.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/strtoul.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/time.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/wstring.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/wchar_io.o\
	$(BUILD_DIR)/asm/MSL_C/PPC_EABI/uart_console_io_gcn.o\
	$(BUILD_DIR)/asm/MSL_C/PPC_EABI/abort_exit_ppc_eabi.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/math_sun.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common/extras.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_acos.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_asin.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_atan2.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_exp.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_fmod.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_log.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_log10.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_pow.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_rem_pio2.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_cos.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_rem_pio2.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_sin.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/k_tan.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_atan.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_ceil.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_copysign.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_cos.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_floor.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_frexp.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_ldexp.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_sin.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/s_tan.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_acos.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_asin.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_atan2.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_exp.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_fmod.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_log.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_log10.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_pow.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/e_sqrt.o\
	$(BUILD_DIR)/asm/MSL_C/PPC_EABI/math_ppc.o\
	$(BUILD_DIR)/asm/MSL_C/MSL_Common_Embedded/Math/w_sqrt.o\
	$(BUILD_DIR)/asm/MetroTRK/mainloop.o\
	$(BUILD_DIR)/asm/MetroTRK/nubevent.o\
	$(BUILD_DIR)/asm/MetroTRK/nubinit.o\
	$(BUILD_DIR)/asm/MetroTRK/msg.o\
	$(BUILD_DIR)/asm/MetroTRK/msgbuf.o\
	$(BUILD_DIR)/asm/MetroTRK/serpoll.o\
	$(BUILD_DIR)/asm/MetroTRK/usr_put.o\
	$(BUILD_DIR)/asm/MetroTRK/dispatch.o\
	$(BUILD_DIR)/asm/MetroTRK/msghndlr.o\
	$(BUILD_DIR)/asm/MetroTRK/support.o\
	$(BUILD_DIR)/asm/MetroTRK/mutex_TRK.o\
	$(BUILD_DIR)/asm/MetroTRK/notify.o\
	$(BUILD_DIR)/asm/MetroTRK/flush_cache.o\
	$(BUILD_DIR)/asm/MetroTRK/mem_TRK.o\
	$(BUILD_DIR)/asm/MetroTRK/string_TRK.o\
	$(BUILD_DIR)/asm/MetroTRK/targimpl.o\
	$(BUILD_DIR)/asm/MetroTRK/fill.o\
	$(BUILD_DIR)/asm/MetroTRK/mpc_7xx_603e.o\
	$(BUILD_DIR)/asm/MetroTRK/mslsupp.o\
	$(BUILD_DIR)/asm/MetroTRK/dolphin_trk.o\
	$(BUILD_DIR)/asm/MetroTRK/main_TRK.o\
	$(BUILD_DIR)/asm/MetroTRK/dolphin_trk_glue.o\
	$(BUILD_DIR)/asm/MetroTRK/targcont.o\
	$(BUILD_DIR)/asm/MetroTRK/target_options.o\
	$(BUILD_DIR)/asm/MetroTRK/UDP_Stubs.o\
	$(BUILD_DIR)/asm/MetroTRK/main.o\
	$(BUILD_DIR)/asm/MetroTRK/CircleBuffer.o\
	$(BUILD_DIR)/asm/MetroTRK/MWCriticalSection_gc.o\
	$(BUILD_DIR)/asm/ctors.o\
	$(BUILD_DIR)/asm/dtors.o\
	$(BUILD_DIR)/asm/rodata.o\
	$(BUILD_DIR)/asm/data.o\
	$(BUILD_DIR)/asm/sdata.o\
	$(BUILD_DIR)/asm/sdata2.o