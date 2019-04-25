#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Keys from here https://stackoverflow.com/questions/49333299/how-to-start-night-light-via-command-in-windows-10
; and https://superuser.com/questions/1200222/configure-windows-creators-update-night-light-via-registry

!n::
Toggle := !Toggle
If Toggle
    RegWrite, REG_BINARY, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$$windows.data.bluelightreduction.bluelightreductionstate\Current, Data, 02000000d3f1d47c4584d40100000000434201001000d00a02c61487dad3e6d788a1ea0100
Else
    RegWrite, REG_BINARY, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$$windows.data.bluelightreduction.bluelightreductionstate\Current, Data, 0200000088313cdb4584d4010000000043420100d00a02c614dabef0d9dd88a1ea0100
return
