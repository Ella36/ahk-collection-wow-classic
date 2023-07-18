#include config.ahk
;===================================================================
#SingleInstance force
MsgBox, ,, Script loaded. Activate WoW and press F12 to start fishing!, 3
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#include fish.ahk
global wowid
WinGet, wowid, ID, World of Warcraft
SetKeyDelay, 0

CoordMode,Pixel,Screen ; Use screen coordinates
CoordMode,Mouse,Screen ;

^F12:: 
    ExitApp
return

$F12::
if (enable := !enable)
  setTimer, Fish, -1
return

F10::
MouseGetPos, square_x, square_y 
MsgBox, ,, Square 1 set!, 1
return

; Fishing Loop
Fish: 									 
while enable
{
  ifWinExist, ahk_id %wowid% 
  { 
	; Reset on alt
	Reset()	
	Sleep, 300
	
	; Relog to main
	Logout()
	Sleep, %wait_loading_screen_sw_to_char_select% ; instant logout
	ControlSend,, {up}, ahk_id %wowid% 
	Sleep, 500
	ControlSend,, {enter}, ahk_id %wowid% 
	
	; Wait loading screen AQ
	if (use_libcopypaste = 1){
		Sleep, %wait_loading_screen_enter_aq_from_sw%
	}
	else {
		Sleep, 5000
		isInsideInstance:="nil"
		While (isInsideInstance != "true"){
			isInsideInstance:=ReadSquare("isInsideInstance")
			Sleep, 200
		}
	}
  
	; Fish with Priest
	PriestFish()	
	
	; Load slayer number and decide to pause or continue
	if use_libcopypaste {
		ProcessIPCCmd()
	}
	else {
		ProcessSquare()
	}	
	; Wait before resetting
	Sleep, 500
	
	; Relog to alt
	Logout()
	Sleep, 20000
	Sleep, %wait_loading_screen_aq_to_char_select%
	ControlSend,, {down}, ahk_id %wowid% 
	Sleep, 500
	ControlSend,, {enter}, ahk_id %wowid% 
	
	; Wait loading screen stormwind
	if (use_libcopypaste = 1){
		Sleep,	Sleep, %wait_loading_screen_stormwind%
	}
	else {
		Sleep, 5000
		isInsideInstance:="nil"
		While (isInsideInstance != "false"){
			isInsideInstance:=ReadSquare("isInsideInstance")
			Sleep, 200
		}
	}
	
  }
}
return