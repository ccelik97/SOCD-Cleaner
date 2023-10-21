I_Icon = SOCD_Cleaner.ico
IfExist, %I_Icon%
    Menu, Tray, Icon, %I_Icon%
;return

;; ? FROM: https://www.autohotkey.com/boards/viewtopic.php?p=391598&sid=b225a17ae64d8e7fa5ae600b77b5b6f4#p391598

#InstallKeybdhook
#UseHook On
#MaxHotkeysPerInterval 200 ; ? FROM: https://www.autohotkey.com/board/topic/62512-permanently-turn-off-that-annoying-hotkey-limit/

;; * Pressing both Left & Right buttons cancels each other.
;; ?  Left: e
;; ? Right: f

~e::
    if(GetKeyState("f", "p"))
        SendInput {e up}{f up}
Return

~f::
    if(GetKeyState("e", "p"))
        SendInput {e up}{f up}
Return

~e up::
    if(GetKeyState("f", "p"))
        SendInput {f down}
Return

~f up::
    if(GetKeyState("e", "p"))
        SendInput {e down}
Return

;; * Pressing both Jump & Crouch buttons cancels each other.
;; ?   Jump: space
;; ? Crouch: r

~r::
    if(GetKeyState("space", "p"))
        SendInput {r up}{space up}
Return

~space::
    if(GetKeyState("r", "p"))
        SendInput {r up}{space up}
Return

~r up::
    if(GetKeyState("space", "p"))
        SendInput {space down}
Return

~space up::
    if(GetKeyState("r", "p"))
        SendInput {r down}
Return

;; ! BSDK