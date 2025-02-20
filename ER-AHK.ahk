;-----------------------------------------------------------------------;
;-----                                                             -----;
;-----                             Script                          -----;
;-----                                                             -----;
;-----------------------------------------------------------------------;

;Rebinds Esc to the forward mouse button like in Ds3: BROKEN

#IfWinActive ahk_exe eldenring.exe
$*Xbutton2::
    SendInput, {Esc}
    menuOpen := !menuOpen
Return

;Rebinds N to Y for the simple inventory: FUNCTIONAL
$*n::
    SendInput, {y Down}
    Sleep, 50
    SendInput, {y Up}
    Sleep, 50
Return

;Cancel interactions A/Q: BROKEN

$*q::
If (menuOpen)
{
    SendInput, {a} 
}
Return

; Should block game's conflicting actions but keep movement, should also work whilst running and crouching: UNKNOWN

$*w::SendInput, {w Down}
$*w Up::SendInput, {w Up}

$*a::SendInput, {a Down}
$*a Up::SendInput, {a Up}

$*s::SendInput, {s Down}
$*s Up::SendInput, {s Up}

$*d::SendInput, {d Down}
$*d Up::SendInput, {d Up}

; Two Handing like in Ds3: FUNCTIONAL

$*Alt::
    SendInput, {e Down}      ; Hold E
    Sleep, 50                ; Small delay
    SendInput, {LButton Down} ; Hold Left Click
    Sleep, 100               ; Keep Left Click held (adjust as needed)
    SendInput, {LButton Up}  ; Release Left Click
    Sleep, 20               ; Keep E held a bit longer
    SendInput, {e Up}        ; Release E
Return

#IfWinActive
