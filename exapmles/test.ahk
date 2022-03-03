; #SingleInstance, Force
; SendMode Input
; SetWorkingDir, %A_ScriptDir%

MsgBox % Format("You are using AutoHotkey v{1} {2}-bit.", A_AhkVersion, A_PtrSize*8)