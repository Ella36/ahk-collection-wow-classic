# tribute-trade-bot
Alerts when people enter instance and helps trade them or trades automaticly

## Requirements
WeakAuras2 addon

https://www.autohotkey.com/

## Setup
Hunter clear a Tribute ID with passive eyes. Example: https://www.youtube.com/watch?v=rhPmjgVKsXs

Mark up trash so it matches whisper message. 
```
Mark up first pack with {triangle} {star}
Hostile pack that nobody clears {skull} {cross} 
Static guard {moon}
Patrol guard {square}
Passive eyes {diamond}{circle}
```

Setup weak aura details/instructions in https://wago.io/P_KeHoMDE  
Edit Nearby Whisperer "actions" as needed. This changes the message that will be send to people entering the instance.
Announces people inside raid when "spot" is seen in raid chat 
Replies to wispers containing "spot" 

Change background trade AFK script as needed
change
```
global time_between_advertisements_LFG:=350			; in seconds
global time_between_advertisements_general:=220		; in seconds
global time_between_advertisements_guild:=360			; in seconds
global is_advertise:=1									; 0 no advertise, 1 advertise in LFG/Local
global is_advertise_guild:=0							; 0 no advertise, 1 advertise in guild
```
Setup macros
1. accept trade
```
/run AcceptTrade()
```
2. LFG advertisement
```
/4 wts tirbute boofs
```
3. local advertisement
```
/1 sel boofs
```
4. guild chat
```
/g guild id here
```


## How to use
Go stand near the entrance and enable friendly name plates

Activate wow client and load 2 scripts
F12 to enable the background trade. You will manually have to tab over and click "confirm trade button"
F12 script will also advertise. 


ctrl_f10 to enable foreground trade that clicks the "confirm trade button" for you, but takes mouse control. Best used while AFK
ctrl_f8 to exit the foreground trade script. Requires reload to use again
