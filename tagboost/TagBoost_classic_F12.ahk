; #include TagBoost_classic_config.ahk
; Square coordinates
; Screenshot -> open paint -> CTRL+V easy way to get coordinates
global square_x:=3475
global square_y:=511
;===================================================================
#SingleInstance force
MsgBox, ,, Script loaded. Activate WoW and press F12 to start tagboosting!, 3
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
WinGet, wowid, ID, World of Warcraft
SetKeyDelay, 0
CoordMode,Pixel,Screen ; Use screen coordinates
CoordMode,Mouse,Screen ; 

$F12::
if (enable := !enable)
  setTimer, Tag, -1
return

^F12:: 
    ExitApp
return

F10::
MouseGetPos, square_x, square_y 
MsgBox, ,, Square coords set!, 1
return

Tag:
while enable
{
  ifWinExist, ahk_id %wowid%
  {  
	; Cleartarget, assist macro
    ControlSend,, 1, ahk_id %wowid%
	
	; Read WA info	
	; Set RGB to match Weakauras 
	PixelGetColor, color, square_x, square_y, RGB
	; Seperate RGB into range (0-255)
	blue := (color & 0xFF)
	green := ((color & 0xFF00) >> 8)
	red := ((color & 0xFF0000) >> 16)
	
	; Green = Valid target send macro 2
	; Attack with pet
	if (green > 200) { 
		ControlSend,, 2, ahk_id %wowid%
	}	
    Sleep 200 
  }
}
return

