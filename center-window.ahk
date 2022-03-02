; Win + C, resizes a window to ~1920x1080 and centers it on the screen
; Assumes a 3840x2160 Windows monitor with 150% scaling

#NoEnv
#Warn
#NoTrayIcon
SendMode Input
SetWorkingDir %A_ScriptDir%

#c::
WinGetActiveTitle, Title

; Don't try moving the desktop around
if (Title = "Program Manager") {
    return
}

newWidth := 2560 * 1.1
newHeight := 1440 * 1.1
newX := A_ScreenWidth / 2 - newWidth / 2
newY := newX / 2

WinMove, %Title%, , newX, newY, newWidth, newHeight

return
