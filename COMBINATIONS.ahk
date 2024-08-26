#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

~CapsLock & a::
    Loop
    {
        if !GetKeyState("CapsLock", "P") or !GetKeyState("a", "P")
            break

        if GetKeyState("j", "P")
        {
            Send, ^{Left}
            KeyWait, j  ; Wait for the key to be released
        }
        else if GetKeyState("l", "P")
        {
            Send, ^{Right}
            KeyWait, l  ; Wait for the key to be released
        }
        else if GetKeyState("i", "P")
        {
            Send, ^{Up}
            KeyWait, i  ; Wait for the key to be released
        }
        else if GetKeyState("k", "P")
        {
            Send, ^{Down}
            KeyWait, k  ; Wait for the key to be released
        }
        Sleep, 10  ; Small delay to prevent high CPU usage
    }
return

; Double key combinations with CapsLock
CapsLock & j::Send, {Left}
CapsLock & k::Send, {Down}
CapsLock & l::Send, {Right}
CapsLock & i::Send, {Up}

; Alt key combinations
!k::Send, !{Down}
!i::Send, !{Up}
