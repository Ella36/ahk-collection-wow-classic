; Utils
global start_date:=A_Now
MyMul(x,y){
    ret:=x * y
    return ret
}

global screen_ratio:=A_ScreenWidth/3840 ; Assume we are using 4K 16:9 display

^F8:: 
    ExitApp
return

^F10::AutoLoginAndAFK()

AutoLoginAndAFK(){
    global screen_ratio
    Loop{
        battlenet_id:=WinExist("ahk_exe Battle.net.exe")
        if !battlenet_id{
            MsgBox, Battlenet not open;
            return
        }
        
        if (IsWowOpened()=0){
            ; MyLog("Wow not running, re-openning")
            WinRestore, ahk_id %battlenet_id%
            WinActivate, ahk_id %battlenet_id%
            WinMaximize , ahk_id %battlenet_id%
            Sleep, 5000
            
            MouseClick, left, MyMul(772,screen_ratio), MyMul(1948,screen_ratio),1,100 ; //Click Battle net start
            Sleep 20000
            
            if (IsWowOpened() = 0){
                continue
            }
            
            ActiveWowWindow()
            
            MouseClick, left, MyMul(1917,screen_ratio), MyMul(1977,screen_ratio),1,100 ; //Click Login        
            Sleep 20000    
        }
        StartAFKLoop()
        }
}

StartAFKLoop(){
    counter:=0
    ActiveWowWindow()
    Loop{
        ActiveWowWindow()
        
        if (AreWeConnected()=0){
            Process, Close, WowClassic.exe
            Sleep 10000
            return 
        }		
		Sleep 1000
		
		MouseClick, left, MyMul(1700,screen_ratio), MyMul(530,screen_ratio),1,8 ; "Accept this trade" button
		
        Sleep 3000
		
        counter:=counter+5
    }
}

AreWeConnected(){
    global screen_ratio
    if (IsWowOpened() = 1){
        ActiveWowWindow()
        return 1        
    }
    return 0
}

ActiveWowWindow(){
    wow_id:=WinExist("ahk_exe WowClassic.exe")
    WinRestore, ahk_id %wow_id%
    WinActivate, ahk_id %wow_id%
}

IsWowOpened(){
    if WinExist("ahk_exe WowClassic.exe"){
        return 1
    }
    return 0
}