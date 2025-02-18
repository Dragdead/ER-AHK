;-----------------------------------------------------------------------;
;-----                                                             -----;
;-----                             Script                          -----;
;-----                                                             -----;
;-----------------------------------------------------------------------;

; Rebinds Esc to the forward mouse button like in Ds3
#IfWinActive ahk_exe eldenring.exe
XButton2::Send, {Esc}

; Should block game's conflicting actions but keep movement, should also work whilst running and crouching 
$*w::SendInput, {w Down}
$*w Up::SendInput, {w Up}

$*a::SendInput, {a Down}
$*a Up::SendInput, {a Up}

$*s::SendInput, {s Down}
$*s Up::SendInput, {s Up}

$*d::SendInput, {d Down}
$*d Up::SendInput, {d Up}

#IfWinActive
