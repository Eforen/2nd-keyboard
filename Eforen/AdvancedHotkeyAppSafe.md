# Description
Sends any complex hotkey via AHK but makes sure that the active application is correct and if the correct app is not open at all throws an error.

# Syntax
AutoHotkey.exe AdvancedHotkey.ahk [exe|class] {ahk_exe|ahk_class} "{Hotkeys}" {mouse pos safty}

# Usage
Simply enter the targeting info from AH3_spy.exe and then autohotkey codes from https://autohotkey.com/docs/commands/Send.htm as the 3rd argument and bamf

# Example
to send Alt+i, p (Crop in photoshop)
we also want to make sure that none of the menus are hovered acidentally so we use the safe param

"C:\Program Files\AutoHotkey\AutoHotkey.exe" C:\Workflow\2nd-keyboard\Eforen\AdvancedHotkeyAppSafe.ahk class Photoshop "{ALT down}{i 1}{ALT up}{p 1}" safe