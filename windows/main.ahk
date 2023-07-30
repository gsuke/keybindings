﻿; F14(無変換): IME無効化, 汎用ホットキー
; 右シフト(変換): IME有効化

; IME
F14 Up::Send,{vk1D} ; F14 Up: IME無効化
~RShift Up:: ; 右シフト: 単独でリリースしたとき、IME有効化
    If (A_PriorKey == "RShift") {
        Send,{vk1C}
    }
Return

; カーソル
F14 & h::Send,{Blind}{Left} ; F14 + h: 左カーソル
F14 & j::Send,{Blind}{Down} ; F14 + j: 下カーソル
F14 & k::Send,{Blind}{Up} ; F14 + k: 上カーソル
F14 & l::Send,{Blind}{Right} ; F14 + l: 右カーソル

; その他
F14 & a::Send,{Blind}{Home} ; F14 + a: Home
F14 & e::Send,{Blind}{End} ; F14 + e: End
F14 & Space::Send,{Blind}{Enter} ; F14 + Space: Enter
F14 & vkBB::Send,{Blind}{BackSpace} ; F14 + セミコロン: BackSpace
F14 & vkBA::Send,{Blind}{Del} ; F14 + コロン: Delete