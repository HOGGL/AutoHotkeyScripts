#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
+!e::
ClipSaved := ClipboardAll
Clipboard =

SendInput ^c
ClipWait

clipboard := RegExReplace(clipboard, "\r\n", """  """)

IfInString, clipboard, Session.vim
    Run, nvim-qt.exe "%clipboard%" -- -S
else
    Run, nvim-qt.exe "%clipboard%" -- -p

Clipboard := ClipSaved
ClipSaved =

return
