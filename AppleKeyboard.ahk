; Danish layout Apple keyboard AHK script.
; Author: MathGrelck
;
; Remember to save with encoding UTF-8 with BOM.
; On scandinavian/german keyboards, Ralt will be interpreted as an AltGr (<^>!) which has weird behavior:
; often times it gets stuck, so avoid to map it to anything!
; The solution is to follow this, taken from 
; https://www.autohotkey.com/board/topic/35947-left-ctrl-right-alt-key-stuck-solved/
;    The Microsoft Keyboard Layout Creator (MKLC) helped me to switch AltGr to RAlt on my regional keyboard:
;    - Install MKLC
;    - File -> Load existing keyboard
;    - Project -> Properties: Uncheck "Right Alt treated as Ctrl+Alt". 
;      Note that if this option is disabled, you need to unmap all keys used with AltGr and AltGr+Shift in the MKLC. 
;      Anyway you can map these keys back in your autohotkey script.
;    - Project -> Build DLL and Setup Package
;    - Install
;    - Swith to your custom keyboard & Enjoy :)
; 
; I have made this MKLC layout, found in D:\Dropbox\Backup\Projekter\Keyboard\Danish-Apple\Danish-Apple.klc
;
; Have this script run on startup by making a shortcut to this file and place it in 
; C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
;
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Event

; F3 (Mission Control) (Windows 10 only) Task View
F3::SendEvent #{Tab}
; -------------------------------------------------------------------------------------------
; F7 (Previous Track) previous
F7::Media_Prev
; -------------------------------------------------------------------------------------------
; F8 (Play/Pause) play/pause
F8::Media_Play_Pause
; -------------------------------------------------------------------------------------------
; F9 (Next Track) next track
F9::Media_Next
; -------------------------------------------------------------------------------------------
; F10 (Mute) mute system volume
F10::Volume_Mute
; -------------------------------------------------------------------------------------------
; F11 (Volume Down) decrease system volume
F11::Volume_Down
; -------------------------------------------------------------------------------------------
; F12 (Volume Up) increase system volume
F12::Volume_Up

; swaps left side cmd (super/win) and ctrl key
LWin::LCtrl
LCtrl::LWin

; swaps right side cmd (super/win) with RCtrl key
RWin::RCtrl

; RAlt + Backspace should delete.
>!BackSpace::SendEvent {Delete}

; RAlt with i should be pipe |
>!i::SendEvent {|}

; RAlt with ' should be @
>!'::SendEvent {@}

; Remap all the regular AltGr keys to RAlt.
>!2::SendEvent {@}
>!3::SendEvent {£}
>!4::SendEvent {$}
>!5::SendEvent {€}
>!7::SendEvent {{}
>!8::SendEvent {[}
>!9::SendEvent {]}
>!0::SendEvent {}}
>!´::SendEvent {~}
>!½::SendEvent {\}
>!m::SendEvent {µ}

; Remap these keys too.
<::$
>::§
½::<
§::>
