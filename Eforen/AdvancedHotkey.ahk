#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if (%2% = "safe"){
	MsgBox, |%2%| is safe
} else{
	MsgBox, |%2%| not safe
}

;Move mouse out of the way
if (%2% = "safe"){
	MouseGetPos, MouseX, MouseY
	MouseMove, 0, 0
}

Send, %1%

;Put mouse back
if (%2% = "safe"){
	MsgBox, MouseMove %MouseX% %MouseY%
	MouseMove, %MouseX%, %MouseY%
}