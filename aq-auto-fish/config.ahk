global min_amount:=24								; slayer min amount before pausing
global log_ids:=1								; if 1 writes amount of slayers to a file, 0 to disable

; if use_libcopypaste = 0 then use_macros = 1
; if you want to use WA square YOU HAVE TO SETUP MACROS - see readme.md
global use_libcopypaste:=0						; if 1 reads slayers from copy+paste, if 0 read from weakaura
global use_macros:=1							; if 1 uses macros 1-5 setup instead of typing commands, 0 to disable

;============================================================================================================
; Alt reset
wait_loading_screen_sw_to_char_select:=13000				; time from instant logout to loading screen
wait_loading_screen_aq_to_char_select:=13000				; time from logout (once 20s timer is completed) to loading screen
; Alt reset if using libcopypaste
wait_loading_screen_enter_aq_from_sw:=26000					; time in ms to wait on AQ loading screen
wait_loading_screen_stormwind:=26000						; time in ms to wait on Stormwind loading screen

;============================================================================================================
; Run outside reset if using libcopypaste
wait_loading_screen_enter_aq:=15000		; time in ms to wait on AQ loading screen
wait_loading_screen_exit_aq:=15000		; time in ms to wait on Silithus loading screen

;============================================================================================================
; Square coordinates if using WA
; These are default coords. Use F10 to set new ones after loading the script
; Screenshot -> open paint -> CTRL+V easy way to get coordinates
global square_x:=1558
global square_y:=243

;============================================================================================================