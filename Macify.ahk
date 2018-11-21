#SingleInstance force

EmptyRecycleBin()
{
	MsgBox, 4,, Clear Recycle Bin?
	IfMsgBox Yes
		FileRecycleEmpty
}

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$^+z::Send ^y ; Re-do functionality - CMD + Shift + Z

^BS::Send {Delete}
LControl & Tab::AltTab ; CMD + Tab to switch between applications

#If GetKeyState("LControl", "P")
LShift & BS:: EmptyRecycleBin() ; CMD + Shift + Backspace to Empty the Recycle Bin
LControl & Q::Send !{F4} ; Emulate CMD + Q to close the current window. This does not close the application, just the window that you are currently on.
