# tagboost
Tag Boosting in WoW

https://youtu.be/R7P-Smd_5t4

TODO:
Issues:
	Boostie cant get tag but has aggro. 
Workaround:
	Use screech pet 

## Classic

Script with WA
TagBoost_classic_F12.ahk

https://wago.io/6ruHVT1t0

WA can decide:
	is target tapped
	is target combatable 
	is target attacking boostie
	is target attacking boostie petattack
	

Edit script to set default coordinates coordinates or
use F10 to set square coords

Do when following boostie, requires leatrix plus
```
/ltp af  
```
set boostie name in weakaura custom options

set boostie name in macro

Bind to 1
```
/cleartarget
/assist Boostiename
```

Bind to 2
```
/petattack
/cast Dash
/script UIErrorsFrame:Clear()
```

Keep Red/green square somewhere visible on screen!

F12 to start/stop script
CTRL+F12 to exit script
F10 to set square coordinates
