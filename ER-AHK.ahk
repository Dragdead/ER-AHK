;-----------------------------------------------------------------------;
;-----                                                             -----;
;-----                             Script                          -----;
;-----                                                             -----;
;-----------------------------------------------------------------------;

; Rebinds Esc to the forward mouse button like in Ds3

#IfWinActive ahk_exe eldenring.exe
$*XButton2::
    SendInput, {Esc}
    menuOpen := !menuOpen
Return

;Cancel interactions A/Q

$*Q::
If (menuOpen)
{
    SendInput, {A}  ; If menu is open, Q acts as Cancel (A)
}
Return

; Should block game's conflicting actions but keep movement, should also work whilst running and crouching

$*w::SendInput, {w Down}
$*w Up::SendInput, {w Up}

$*a::SendInput, {a Down}
$*a Up::SendInput, {a Up}

$*s::SendInput, {s Down}
$*s Up::SendInput, {s Up}

$*d::SendInput, {d Down}
$*d Up::SendInput, {d Up}

; TH

$*Alt::
SendInput, {e Down}  
Sleep, 50            ; tweak input delay
SendInput, {LButton} 
Sleep, 50            ; tweak input delay
SendInput, {e Up}    
Return

#IfWinActive
