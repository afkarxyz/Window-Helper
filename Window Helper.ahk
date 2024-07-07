#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Shortcut: Win + 1 (Resize to 480x480 - 480p 1:1)
#1::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(480/2), (A_ScreenHeight/2)-(480/2), 480, 480
return

; Shortcut: Win + 2 (Resize to 854x480 - 480p 16:9)
#2::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(854/2), (A_ScreenHeight/2)-(480/2), 854, 480
return

; Shortcut: Win + 3 (Resize to 1120x480 - 480p 21:9)
#3::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(1120/2), (A_ScreenHeight/2)-(480/2), 1120, 480
return

; Shortcut: Win + 4 (Resize to 720x720 - 720p 1:1)
#4::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(720/2), (A_ScreenHeight/2)-(720/2), 720, 720
return

; Shortcut: Win + 5 (Resize to 1280x720 - 720p 16:9)
#5::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(1280/2), (A_ScreenHeight/2)-(720/2), 1280, 720
return

; Shortcut: Win + 6 (Resize to 1680x720 - 720p 21:9)
#6::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(1680/2), (A_ScreenHeight/2)-(720/2), 1680, 720
return

; Shortcut: Win + 7 (Resize to 1080x1080 - 1080p 1:1)
#7::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(1080/2), (A_ScreenHeight/2)-(1080/2), 1080, 1080
return

; Shortcut: Win + 8 (Resize to 1920x1080 - 1080p 16:9)
#8::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(1920/2), (A_ScreenHeight/2)-(1080/2), 1920, 1080
return

; Shortcut: Win + 9 (Resize to 2520x1080 - 1080p 21:9)
#9::
WinGet, window, ID, A
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(2520/2), (A_ScreenHeight/2)-(1080/2), 2520, 1080
return

; Shortcut: Win + 0 (Maximize or Minimize)
#0::
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

; Fungsi Tombol Panah (dipertahankan dari versi sebelumnya)
#Up::
WinGet, window, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %window%
if (Y = 0) ; Jika sudah di atas, maksimalkan vertikal
    WinMove, ahk_id %window%,, X, 0, Width, A_ScreenHeight
else ; Jika belum di atas, pindahkan ke atas
    WinMove, ahk_id %window%,, X, 0, Width, Height
return

#Down::
WinGet, window, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %window%
if (Y + Height = A_ScreenHeight) ; Jika sudah di bawah, kembalikan ke ukuran normal
    WinRestore, ahk_id %window%
else ; Jika belum di bawah, pindahkan ke bawah
    WinMove, ahk_id %window%,, X, A_ScreenHeight - Height, Width, Height
return

#Left::
WinGet, window, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %window%
if (X = 0) ; Jika sudah di kiri, ubah lebar menjadi setengah layar
    WinMove, ahk_id %window%,, 0, Y, A_ScreenWidth/2, Height
else ; Jika belum di kiri, pindahkan ke kiri
    WinMove, ahk_id %window%,, 0, Y, Width, Height
return

#Right::
WinGet, window, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %window%
if (X + Width = A_ScreenWidth) ; Jika sudah di kanan, ubah lebar menjadi setengah layar
    WinMove, ahk_id %window%,, A_ScreenWidth/2, Y, A_ScreenWidth/2, Height
else ; Jika belum di kanan, pindahkan ke kanan
    WinMove, ahk_id %window%,, A_ScreenWidth - Width, Y, Width, Height
return

; Fungsi Numpad
#Numpad7::  ; Kiri Atas
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, 0, 0
return

#Numpad8::  ; Tengah Atas
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(Width/2), 0
return

#Numpad9::  ; Kanan Atas
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, A_ScreenWidth-Width, 0
return

#Numpad4::  ; Tengah Kiri
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, 0, (A_ScreenHeight/2)-(Height/2)
return

#Numpad5::  ; Tengah
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
return

#Numpad6::  ; Tengah Kanan
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, A_ScreenWidth-Width, (A_ScreenHeight/2)-(Height/2)
return

#Numpad1::  ; Kiri Bawah
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, 0, A_ScreenHeight-Height
return

#Numpad2::  ; Tengah Bawah
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, (A_ScreenWidth/2)-(Width/2), A_ScreenHeight-Height
return

#Numpad3::  ; Kanan Bawah
WinGet, window, ID, A
WinGetPos, , , Width, Height, ahk_id %window%
WinMove, ahk_id %window%,, A_ScreenWidth-Width, A_ScreenHeight-Height
return
