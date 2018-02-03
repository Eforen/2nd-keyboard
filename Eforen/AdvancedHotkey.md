# Description
Sends any complex hotkey via AHK

# Syntax
AutoHotkey.exe AdvancedHotkey.ahk "{Hotkeys}" {mouse pos safty}

# Usage
Simply enter the autohotkey codes from https://autohotkey.com/docs/commands/Send.htm as the first argument and bamf

# Example
to send Alt+i, p (Crop in photoshop)
we also want to make sure that none of the menus are hovered acidentally so we use the safe param

"C:\Program Files\AutoHotkey\AutoHotkey.exe" C:\Workflow\2nd-keyboard\Eforen\AdvancedHotkey.ahk "{ALT down}{i 1}{ALT up}{p 1}" safe