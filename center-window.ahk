; Win + C, resizes the active window and centers it on the screen.
; 
; Assumes either a 3840x2160 Windows monitor with 150% scaling or 
; a standard 1920x1080 Windows monitor with 100% scaling.

#NoEnv
#Warn
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

; Send toast to let me know the script started/restarted
TrayTip center-window.exe is now active, good stuff :)

#c::
WinGetActiveTitle, Title

if (A_ScreenWidth = 1920) {
	; Primary monitor is Full HD
	newWidth := 1600
	newHeight := 900
	newX := A_ScreenWidth / 2 - newWidth / 2
	newY := newX / 2
} else {
	; Primary monitor is 4K
	newWidth := 2560 * 1.1
	newHeight := 1440 * 1.1
	newX := A_ScreenWidth / 2 - newWidth / 2
	newY := newX / 2
}

; Move any window that's not the desktop
WinMove, %Title%, , newX, newY, newWidth, newHeight, "Program Manager"

return
