global counter:=0 ; anti-afk

PriestFish1(){
	if (use_macros = 1){
		ControlSend,, 1, ahk_id %wowid%
		Sleep, 200
		ControlSend,, 1, ahk_id %wowid%
	}
	else {
		WinActivate, ahk_id %wowid%
		SendCmd("/target C'thun")
		SendCmd("/cast Mind Vision")
		Sleep, 500
		SendCmd("/target C'thun")   	
		SendCmd("/cast Mind Vision")
	}
}

PriestFish2(){
	if (use_macros = 1){
		ControlSend,, 2, ahk_id %wowid%
	}
	else {
		WinActivate, ahk_id %wowid%
		SendCmd("/tar Anubisath Warder")
		SendCmd("/cast Mind Vision")
	}
}

PriestFish3(){
	if (use_macros = 1){
		ControlSend,, 3, ahk_id %wowid%
	}
	else {			
		WinActivate, ahk_id %wowid%
		SendCmd("/tar Qiraji Slayer")
		SendCmd("/tar Qiraji Mindslayer")
	}
}

PriestFish(){
	; fish1
	PriestFish1()	
	Sleep, 2500
	
	; fish2
	PriestFish2()	
	Sleep, 2500
	
	; fish3
	PriestFish3()	
	Sleep, 500	
}

ColorToSymbol(color){	
	if (color <= 40){
		return 0
	}
	else if (color <= 80){
		return 1
	}	
	else if (color <= 120){
		return 2
	}	
	else if (color <= 160){
		return 3
	}	
	else if (color <= 200){
		return 4
	}	
	else {
		return 5
	}		
}

ReadSquare(mode){
	PixelGetColor, color, square_x, square_y, RGB
	; MsgBox The color at the current cursor position is %color%.
	; Seperate RGB into range (0-255)
	blue := (color & 0xFF)
	green := ((color & 0xFF00) >> 8)
	red := ((color & 0xFF0000) >> 16)

	if (mode = "slayers"){
		return ColorToSymbol(red) * 6 + ColorToSymbol(green)
	}
	else {
		MyLog(Format("isInsideInstance X: {} Y: {} B: {}", square_x, square_y, blue))
		if (blue >= 130 and blue <= 170) {
			return "false"
		} 
		else if (blue >= 190 and blue <= 230){ 
			return "true"
		}
		else {
			return "nil"
		}
	}	
}

ProcessSquare(){
	slayer_count:=ReadSquare("slayers")
	; log slayer_count
	if (log_ids = 1){
		MyLog(slayer_count)
	}
	
	if (slayer_count >= min_amount){
		 ; start AFK loop
		 Sleep, 240000
		 AntiAFKLoop()
	}	
}


ProcessIPCCmd(){
	WinActivate, ahk_id %wowid%
    cmd_str:=GetCmdStr()
    if (cmd_str = "default_none"){
        return
    }
	if (cmd_str = "/run local LibCopyPaste = LibStub('LibCopyPaste-1.0');LibCopyPaste:Copy('Slayers', fish_amount)" ){
		return
	}
	; log slayer_count
	if (log_ids = 1){
		MyLog(cmd_str)
	}
	
	if (cmd_str >= min_amount){
		 SendCmd("/p Found acceptable amount of Slayers: " . cmd_str . " >= " min_amount)
		 ; start AFK loop
		 SendCmd("/p Waiting")
		 Sleep, 240000
		 AntiAFKLoop()
	}
	else
	{
		SendCmd("/p Slayers: " . cmd_str . " < " min_amount)
	}	
	sleep 100
    ResetCmdStr()
}

ResetCmdStr(){
    SendCmd("/run setglobal('fish_amount','default_none')")
}

Reset(){
	if (use_macros = 1){
		ControlSend,, 4, ahk_id %wowid%
	}
	else {
		WinActivate, ahk_id %wowid%
		SendCmd("/run WeakAuras.ScanEvents('MYU_RESET_LIST')")
		SendCmd("/run ResetInstances()")		
	}
}

Logout(){
	if (use_macros = 1){
		ControlSend,, 5, ahk_id %wowid%
	}
	else {
		WinActivate, ahk_id %wowid%
		SendCmd("/logout")
	}
}

GetCmdStr(){
    clipboard:="default_none"
	SendCmd("/run local LibCopyPaste = LibStub('LibCopyPaste-1.0');LibCopyPaste:Copy('Slayers', fish_amount)")
    Sleep 500
    Send, ^c
    Sleep 500
    Send, {Esc}
    cmd_str:=clipboard
    return  %cmd_str%
}

SendCmd(cmd_str){
    clipboard := cmd_str
    Send, {Enter}
    Sleep 200
    Send, ^v
    Sleep 200
    Send, {Enter}
 } 
 
AntiAFKLoop(){
	while 1 {
		ifWinExist, ahk_id %wowid%
		{  
			ControlSend,, {Space}, ahk_id %wowid%
			
			Sleep, 2000
			
			WinActivate, ahk_id %wowid%
			PriestFish1()
			Sleep, 69000 
			
			counter++
			
			if (Mod(counter,9) = 0 ){
				Logout()
				Sleep, 36000
				ControlSend,, {enter}, ahk_id %wowid% 
				Sleep, 36000
			}
		}
	}
}

MyLog(str){
    FileAppend, [%A_DD%-%A_MM%-%A_Hour%:%A_Min%:%A_Sec%]: %str%`n, slayer_ids.log
}