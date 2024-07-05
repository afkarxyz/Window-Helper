#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Shortcut: Win + 1 (Resize to 854x480 - 480p 16:9)
#1::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(854/2), (A_ScreenHeight/2)-(480/2), 854, 480
return

; Shortcut: Win + 2 (Resize to 1280x720 - 720p 16:9)
#2::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(1280/2), (A_ScreenHeight/2)-(720/2), 1280, 720
return

; Shortcut: Win + 3 (Resize to 1920x1080 - 1080p 16:9)
#3::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(1920/2), (A_ScreenHeight/2)-(1080/2), 1920, 1080
return

; Shortcut: Win + 4 (Maximize or Minimize)
#4::
WinGet, window, ID, A
WinGet, MinMax, MinMax, ahk_id %window%
if (MinMax = 1)
    WinRestore, ahk_id %window%
else
    WinMaximize, ahk_id %window%
return

; Shortcut: Win + C (Center window)
#c::
WinGetActiveStats, Title, Width, Height, X, Y
NewX := (A_ScreenWidth/2)-(Width/2)
NewY := (A_ScreenHeight/2)-(Height/2)
WinMove, %Title%,, %NewX%, %NewY%
return