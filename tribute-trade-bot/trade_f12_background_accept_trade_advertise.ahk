global time_between_advertisements_LFG:=350			; in seconds
global time_between_advertisements_general:=220		; in seconds
global time_between_advertisements_guild:=360			; in seconds
global is_advertise:=1									; 0 no advertise, 1 advertise in LFG/Local
global is_advertise_guild:=0							; 0 no advertise, 1 advertise in guild

; bind macros or change key below
; 1 accept trade /run AcceptTrade()
; 2 LFG advertisement
; 3 local advertisement
; 4 guild chat
; ==============================================================================

WinGet, wowid, ID, World of Warcraft
SetKeyDelay, 0

global counter:=0

$F12::
if (enable := !enable)
  setTimer, Trade, -1
return

; Sends auto hotkey to "Trade" and advertise
Trade: 									 
while enable
{
  ifWinExist, ahk_id %wowid% 
  {  
    if (is_advertise = 1) and (Mod(counter,time_between_advertisements_LFG) = 0 ){
            ControlSend,, 2, ahk_id %wowid% ; macro with Advertise
        }
   Sleep 3000  
   
   ControlSend,, 1, ahk_id %wowid% ; macro with /run AcceptTrade() to click "Trade"
   Sleep 1000
   
   if (is_advertise = 1) and (Mod(counter,time_between_advertisements_general) = 0 ){ 
            ControlSend,, 3, ahk_id %wowid% ; macro with Advertise
        }
	Sleep 1000
	
	if (is_advertise_guild = 1) and (Mod(counter,time_between_advertisements_guild) = 0 ){ 
            ControlSend,, 4, ahk_id %wowid% ; macro with Advertise
        }   
   counter:=counter+5
  }
}
return