;-----------------------------------------------------------------------;
;-----                                                             -----;
;-----                             Script                          -----;
;-----                                                             -----;
;-----------------------------------------------------------------------;

;---------------------------------------------------
;Rebinds Esc to the forward mouse button like in Ds3
;---------------------------------------------------

#IfWinActive ahk_exe eldenring.exe
$*Xbutton2::
    SendInput, {Esc Down}
    Sleep, 25
    SendInput, {Esc Up}
Return

;---------------------------------------
;Rebinds N to Y for the simple inventory
;---------------------------------------

$*n::
    SendInput, {y Down}
    Sleep, 25
    SendInput, {y Up}
Return

$*y::Return

;------------------------
;Cancel interactions A/Q
;------------------------

$*q::
    SendInput, {a Down}
    Sleep, 25
    SendInput, {a Up}
Return

;-----------------------------------------------------------
;Rebinds WASD into ZQSD whilst keeping WASD as movement keys
;-----------------------------------------------------------

$*w::SendInput, {z Down}
$*w Up::SendInput, {z Up}

$*a::SendInput, {q Down}
$*a Up::SendInput, {q Up}

$*s::SendInput, {s Down}
$*s Up::SendInput, {s Up}

$*d::SendInput, {d Down}
$*d Up::SendInput, {d Up}

$*z::Return

;-----------------------
;Two Handing like in Ds3
;-----------------------

$*Alt::
    SendInput, {e Down}
    Sleep, 50
    SendInput, {LButton Down}
    Sleep, 20
    SendInput, {LButton Up}
    Sleep, 20
    SendInput, {e Up}
Return

;----------
;RR1 script
;----------

$*XButton1::
if (GetKeyState("LShift", "P")) {  
   SendInput, {Blind}{LShift Up}   
    SendInput, {LButton Down}
    Sleep, 10 
    SendInput, {LButton Up}
    if (GetKeyState("LShift", "P")) {
        SendInput, {Blind}{LShift Down}
    }
}
Return

;---------
;Debugging
;---------

F1::
MsgBox, Menu State: %menuOpen%
Return

#IfWinActive

