#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Mouse, Screen  ; Place Mouse at absolute screen coordinates:

checkType = %1%
checkTarget = %2%

if (checkType = "class") {
	IfWinNotExist, ahk_class %checkTarget%
	{
		MsgBox, AdvancedHotKeyAppSafe: Could not find %2% are you sure its started?
		return
	}
	WinActivate, ahk_class %checkTarget%
}
else if (checkType = "exe") {
	IfWinNotExist, ahk_exe %checkTarget%
	{
		MsgBox, AdvancedHotKeyAppSafe: Could not find %2% are you sure its started?
		return
	}
	WinActivate, ahk_exe %checkTarget%
}
else {
	MsgBox, AdvancedHotKeyAppSafe: Target Type Not Recognised check your command.
	return
}

isSafe = %4%
;Move mouse out of the way
if (isSafe = "safe"){
	BlockInput MouseMove
	MouseGetPos, MouseX, MouseY
	MouseMove, 0, 0
}

Send, %3%

;Put mouse back
if (isSafe = "safe"){
	MouseMove, MouseX, MouseY
	
	BlockInput MouseMoveOff
}