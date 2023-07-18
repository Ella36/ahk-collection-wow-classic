WinGet, wowid, ID, World of Warcraft
SetKeyDelay, 0

$F11::
if (enable := !enable)
  setTimer, Tag, -1
return

Tag:
while enable
{
  ifWinExist, ahk_id %wowid%
  {  
    ControlSend,, 1, ahk_id %wowid%
    Random, r, 20, 50
    Sleep r    
  }
}
return