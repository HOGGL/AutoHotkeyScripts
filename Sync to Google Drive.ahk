#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
+!s::
clipboard =
Send, ^c
ClipWait

SyncDir := "C:\Users\" . A_UserName . "\Google Drive\Sync"

Loop, parse, clipboard, `n, `r
{
    FileCopy,%A_LoopField%,%SyncDir%
}
return
