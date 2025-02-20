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
    Sleep, 50
    SendInput, {Esc Up}
    Sleep 10
Return

;---------------------------------------
;Rebinds N to Y for the simple inventory
;---------------------------------------

$*n::
    SendInput, {y Down}
    Sleep, 50
    SendInput, {y Up}
    Sleep, 50
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
    Sleep, 100
    SendInput, {LButton Up}
    Sleep, 20
    SendInput, {e Up}
Return

;Experimental RR1 & RR2 script

;$*XButton1::
;if (GetKeyState("LShift", "P")) {  
;    SendInput, {RButton Down}
;    Sleep, 50
;   SendInput, {Blind}{LShift Up} 
;    Sleep, 5  
;    SendInput, {LButton Down}
;    Sleep, 50 
;    SendInput, {LButton Up}
;    Sleep, 10  
;    SendInput, {RButton Up}
;    Sleep 10
;}
;Return

;---------
;Debugging
;---------

F1::
MsgBox, Menu State: %menuOpen%
Return

#IfWinActive
