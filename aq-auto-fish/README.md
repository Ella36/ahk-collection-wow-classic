# aq-auto-fish
This script will priest fish for you and stop once an acceptable ID has been found.

Resetting with alt
[![AQ Fishing 11 14 ](http://img.youtube.com/vi/8-s8dzZuxe4/0.jpg)](http://www.youtube.com/watch?v=8-s8dzZuxe4 "AQ40 Priest Fishing Safe Method with AHK 2020 11 14")


Running outside to reset
[![2020 11 12 AQ Fishing](http://img.youtube.com/vi/NULvDG8M14o/0.jpg)](http://www.youtube.com/watch?v=NULvDG8M14o "AQ40 Priest Speed Fishing with AHK 14 11 2020")


Requires keyboard control and activated wow client. So must be run in the foreground! Best used while actually AFKing. 

## Requirements
https://www.autohotkey.com/

Weakauras: https://www.curseforge.com/wow/addons/weakauras-2

LibCopyPaste-1.0: https://www.curseforge.com/wow/addons/libcopypaste

## Performance
`auto_fish_f12_foreground_alt_reset.ahk`  ~30IDs per hour 

Resetting with an alt takes longer due to waiting for /logout

`auto_fish_f12_foreground_run_outside.ahk` ~50IDs per hour.

Vulnerable to PVP outside the portal

## Setup
A. Edit config file `config.ahk` `global min_amount:=26` to your liking. Fishing will pause once 26 or more slayers have been found in an ID.
So if you're looking for 5 or less mindslayers change it to 27 (32-5). Note that sometimes the WA reports 30/32 and can report 2 slayers fewer than there actually are. So 26 slayers found by the WA might actually be 28! 

Set `log_ids` if u want to write slayer IDs to a log file which may look like this:
```
[22-11-03:24:03]: 13
[22-11-03:26:04]: 13
[22-11-03:31:55]: 19
````

Set `use_macros` if you have setup macros described below in `(optional) Macro Setup`

B. Delete your existing "[Myu's Qiraji Fishing Helper](https://wago.io/TgSTxibQ2)" and import new fishing weakaura "Myu's Qiraji Fishing Helper" mod by sogle.
details at https://wago.io/P1QWCuiuK  or 
Import the WA string directly
```
!TR1EZjoos8Vlu1whuxcbdHmjtDBDfHqYqUeilMS5MDR1gHTa0eJfRTm5XvN)SFTKSn(HmpMDUA3)y2Sdblj3Qv)8x3kgAgJn0xAOBBO7BO3QEJ6T4padsM7s9WdxXiux)ERXUSEEEupFJln0Ns9SXE6K3XgdAAOVg75dRYyGg8AaLU)TG)MF4KFI4H(cjCY1e)fe35Ht(e2zf2lCsvD6ChC4KLu7Ag6VnC2mFmZyaS7T1(q7pCUwZ24JB02q)14PAa7jY6zBp6QUuhQhWGWMX))MIpBj(8uyH1BBWm0rUwlOEx7HwIh)2kSHUE3r96nGpbzjIFKeNBer8BMyjUux4t7apX8MYb9XwuxBq0Gr(rKsUo(Z6mpS7C2c((dBQpd5X(gsVzexqY9TJGajd4QhNr0hV(37EjP6Z833z2duIlm5LdhpE493176XXcWOj62BW4EJG32ZXqFbJTY)JNCYlO506e6jpO9tp1nGe8Vorl2WiwRDA8agtHZa1AJDIwlU61py6i8CU9fCi5hyU(c4zedjTLCzypxKZph)ETohEjlKdwmn)GtyBED5E1ZEoxF)7bipWe76ahNWjpTGWGb9eBMuin3JgScKfuKWA3Yb57lSjcCyeb94AuUfEHbxHTYpiFy8s48zORb(qG5kkGbcWi3N08xA73gc73gc73gc7xn(czEK5ZHZSCvWwf4gnKKqBEGZmoo9TJ2bPjbcSqAYFjcm0kh0BC2cZ9Gn0)eg5a2d624PbZMjffFQ3DpC9J3j0hILPdtrE1q3SBh9XM6J7mA8MjFWdlMu)HE3bVJlOY8tKcjNY(UclGetIlJ8EbRmhY7VJ8SdNmMsbjimeYkwkbQCctEwI9Ms7ii2aqTpJmp(P1WMCAtU1qI0ABrUSX(ig3dcZTj)Eyc1HjEgJx1HBNZgXjcxuLkorC4alq)ztFXv4Xnnv06JB1Qr9tBC2hADEtEW8cohzC8Lkng(vMP4Jzupq2B6h9Lygvmh4vr5kgRNi2CZ4oWZGFnLbk0XWcm0hmCqVyf7)ov6Jis7YKh(Hpo(U(8vkg3FbcoiFUWYjVITL70GZonfnm0V2J8oKHlazZJwb2YXhHVe4ZiZEBJusm6lGtWtEiWw)PKVj35nI1opoEyk5GH(p4hFqkWzsgEFcLiKAPdM3FWGEJmLX6h1)MpfZ4wBnVQ2MWlGYtYFIxBnXNmfciFzgotPKxIxqRzSBS06HB5SatMVGfjKlMN4LnQG9GlJjm3E4kIpc4oB(MOmBY7u6sbxQmHxc0eTZBwhyMloVLw7tBLfXZUZkYTA5CGi7BJ7MD5G7w(4xU)1Cz8Gtkb8sfHPi(8a39Te7rRZ0UOrX8DwGPgDP0SFwGRiiA1AH3gor(JdfsvgoXAbA5k(Bfo5hdN0OW8ljqGbrwIYwrjZc(NHtmdNqCdNScr88RYZ8yIDxxpzpRfoXMMNhs90FpCIw4eSR9Er2uSAeHZZ8zE(WiEwcNMOBJGEyiDcqSnJKC6ok9OPySmJRAS8hcvRrHmbCHd424Qxx(1SpusS7LqHWBb5WgVnWjDLikqs6zaULewp3wL4YDzePjIHCPchLAexb(ytx8Ajosfi1G3YfkOWq)Hr97Ppo(vKReyjpKvgIQF1liVzWmPEv5qITRiCKixnaFaJN85b6QGvxrqo05()AL7)8JMJ6P3BS5D91hx53eMm)NnYxE8pXyvUcSREJgeo5fKlmeJYnFaze81fyUnjanW1c7)pRKs9mnGXOUAsk8zSFX5AkNBan9udD7yzHxj3zvrhI)zeNd6hV1PxbOFtrqgzjMgiPxJuJ)YcId(kmYwmdZlaNAYfeB8q3EaM9vyvZVcatI98W29DTXVkwrly6)B4TrHEMjglXeuIGhE)BjWmUuGDMvxkfecr3uE6jJdeORhgqiia6vTYLIXbH1exId85SAfFRpQJzDCCe5dYiusVaDlpYkw1kdD76qSEMtXejnpXET0oI5)5jm65oW5YVUUfYvat1VAEJPSAJAr(C2uZidYlZaOm2kn9kMwea9wlViHijNeCTIr7MHC8XcUHRlcVnxvjkRUOiHb5v961vqEUvsAQlREbGd9WDD(mGErKEU)GBmFA4O7UcitwXw6QsI22yyWG)BaqhRfyRNtkkkgRmGpvg5qu6eVphWPqFb9LHWu(IF3by91yUil6Df52Zvgw2kVIyaURaiKaVi7cvJjzUyb0wlddq)cmVFAUQJZlO38lRcnwkOcsn0D05el1qgkOaKrdxJJE17PWHyWXAnequ(IGcCXbY9nrKtNvlqjTbAKm2M0DRyfXsBViSD8(2OVg5eGJMshc1jAU0akpfIEh)NLvM8wCILy4OyhOofHE7kSVfpfbx7NS9jrv5MLZqqkGKYCs3pabYlgFh3rfKqmqhIB6sisdgmc424ufYy9HCvY89Qovx1PkzNMje52zPPuLkbbuYcrtN6HxtG48MlrVAm489bA(ge(x0U(PTA068loTbhHVQ9OLPhG9Xo6WnZHcLIib1F(V09PZ8Vy(1d)ffTulDPXnB1S(fTAcfhF(h0ACrzBuSfZGGLt5h59O7z7Obu)57ULRk7J1IhkPArTYeh2ylW1WXeWlyrKsHgPla6Xv28w6ehxDli4kwIIeVga5qvzgfNS0jIj4gWZYYL2k(AXsYJn42YGChxa2TXXU3an6J8Gz(mEi6Px(2nGvz15WhflhKRgHmMVJ9OWV8XEGrJjbq6LO6Kp9o4OAgi(Q7kl5y(RqV4YhuwweZd0veaa0Xvok3MLapl1RiWNLKIjtvuB(2Xhho5gWS0NXJfIJGgVKonCYVhaWMjS3aCVW)c8f3PaIxhhJxzpV4oW7uwBhHXVbIBES)vfRMvWrPfPWgTOUWDUkKPs4XvnHV)i4Nvv7O21GZV2z1o58Ar1bQG5ZD(fInyh4OZ1A3SDZka)Y5qHKPOL4VYfI)wEGSk2M8vUvGc)yCk88Vcx8Q(NvEqeRQv6grQJRuVEoDA6Z2wS6)hfeXLCEk7uKr3KLufiswROcskmatvLQ40ZuRks55VDLX2EJdu4hj4VpHq7ROxv8KVAHFjbNoeXFzc72nulSZj22PO(RxmhjI1piX73mr7HlwJ)bsko3Hof5uTYmaTLjAj)n41zYOq0xiay1muQwTDPI4pSTAiluSOI8XRm5vXyA)gK4Niqau(IsLWgsURQn4PbHl7R8E0J3)Y3dPDbrTuPwmWVOcfvthPeAlnBtrNU5WuJVr(UsZLs66DYvyiVk49(Ugk)MruDkAwcOU0x6sZgnkERWPiMH(9uqlrxZDRehQWBpw1)fE7pyPDY5WIsq9bJ0mCY9PH6XhRv4e9ONbCwJPmoKHFW60tA1KpWncKmLTvCc0olrHrotnj)GGKLjCuuPX37))37))F56)V6auQDTvV28L6Q2Fi)QuFtWL0cHI(shypqRPcJ)by)NTVP)bS3)kj0(tKT1lWSn5vkKUkP3PBleuGNh2LDabqkEYttJKV)hXdFFjySCiAnG3vRMhvOh1Ii5QA7D2MbFaD6vr)YZ2TCoAvCem7hF4QoJ7zE)Wh17n8N7nY8Xb9hhd7(rGf69kXNFbdlJtywPwQz7IC7WyiRNRwrYPvok7kvd1ns9opUJaCsXR5o72OeM98nTeyNiO3DVnoWYbJLArxNaiVVP3yZUFQZGB6DLkPgGoEoMTlrgqXnl8qLyjV5FwIR8cNCxf1olpRyd12JIn3JfV3lSSgWThSXUAi3HuBxJD1XebM96r38lxuRTlnB53rBEL3w2Lw7AxsD52M87xAB3g5E6WLpgA09gUntoO(Rb7WKlQC(edovmMinWZhTEFspxQerUrpVVN7i(kL19bZzfY79nM3(A5R)VWt56lrXHl9(Gl5pg1CxtC246hPmhz2lpgs)gnWgZqfxVCURVTSBBoAzzVC4mxhCuo(K)StuCrRL0mHtZDPIQwt79ynNLBnf)d1JFVz9VceQX3BgmOX)7
```

## Setup auto_fish_f12_foreground_run_outside.ahk
A. Change these values in `config.ahk` if needed. Inrease/decrease these values if you have slow/fast loading times
```
wait_loading_screen_enter_aq:=15000		; time in ms to wait on AQ loading screen
wait_loading_screen_exit_aq:=15000		; time in ms to wait on Silithus loading screen
```

B. "S" must be bound to run backwards

C. Character, raid setup

Create a raid group with your alt and your priest.
Zone into an AQ40 instance on your priest. Priest must be leader.

## Setup auto_fish_f12_foreground_alt_reset.ahk
A. Change these values if needed in `config.ahk`. Inrease/decrease these values if you have slow/fast loading times
```
wait_loading_screen_sw_to_char_select:=13000				; time from instant logout to loading screen
wait_loading_screen_enter_aq_from_sw:=26000					; time in ms to wait on AQ loading screen
wait_loading_screen_aq_to_char_select:=13000				; time from logout (once 20s timer is completed) to loading screen
wait_loading_screen_stormwind:=26000						; time in ms to wait on Stormwind loading screen
```

B. Character, raid setup

Create a raid group with your reset alt and your priest.
Zone into an AQ40 instance on your priest.
On the character select screen your priest must be 1 space above your alt. Like this: '
``` 
1. random alt
2. priest
3. alt
4. random alt
```
Log your alt. Your alt must have raid leader. Alt somewhere with an instant logout (rested area).

## (optional) Macro setup
Set `use_macros:=1` in `config.ahk`!
Bind these macro to buttons 1 through 5 on your priest.
When using alt to reset. Macro 4 Reset and 5 Logout must also be bound.
1. Fish1
	```
		/target C'thun
		/cast Mind Vision
	```

2. Fish2
	```
		/tar Anubisath Warder
		/cast Mind Vision
	```
3. Fish3
	```
		/tar Qiraji Slayer
		/tar Qiraji Mindslayer
		```
4. Reset
	```
		/run WeakAuras.ScanEvents('MYU_RESET_LIST')
		/run ResetInstances()
	```		
5. Logout
	```
		/logout
	```

## Usage
Activate your WoW client with your priest/alt (run outside/alt reset) character and press `F12` to enable the script.

You can press F12 to disable the script but it will finish the fishing loop. 

Press CTRL+F12 to exit the script immediately

When an acceptable ID has been found it will loop an anti-afk script. So you can press CTRL+F12 to exit or manually unload the script to inspect the ID .

You can then reload the script to go again or use an anti-AFK script to hold it. 

## Notes
You don't need to click the click the "confirm reset instances" button. For some reason on my client the instance resets with the reset macro.

use_macros is my preferred method as without macros your wow client must need be activated (have focus) most of the time. With macro it will only need to when to read slayer amount after scanning with mind vision.
