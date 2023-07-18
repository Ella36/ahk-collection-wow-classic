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
	; Fish with Priest
	PriestFish()
	
	; Load slayer number and decide to pause or continue
	if (use_libcopypaste = 1){
		ProcessIPCCmd()
	}
	else {
		ProcessSquare()
	}	
	
	; Wait before going outside
	Sleep, 2000
	
	; Move outside and reset	
	ControlSend,, {s down}, ahk_id %wowid%
	if (use_libcopypaste = 1){
		Sleep, %wait_loading_screen_exit_aq%
	}
	else {
		Sleep, 5000
		isInsideInstance:="nil"
		While (isInsideInstance != "false"){
			isInsideInstance:=ReadSquare("isInsideInstance")
			Sleep, 200
		}
	}
    ControlSend,, {s up}, ahk_id %wowid%
	
	; Reset
	Reset()	
	Sleep, 300
	
	; back inside
	ControlSend,, {s down}, ahk_id %wowid%
    Sleep, 1000
	ControlSend,, {Space}, ahk_id %wowid%
	Sleep, 1000
	ControlSend,, {Space}, ahk_id %wowid%
	Sleep, 1000
	ControlSend,, {Space}, ahk_id %wowid%
	Sleep, 1000
    ControlSend,, {s up}, ahk_id %wowid%
	
	; Wait loading screen	
	if (use_libcopypaste = 1){
		Sleep, %wait_loading_screen_enter_aq%
	}
	else {
		Sleep, 5000
		isInsideInstance:="nil"
		While (isInsideInstance != "true"){
			isInsideInstance:=ReadSquare("isInsideInstance")
			Sleep, 200
		}
	}
	
	
  }
}
return