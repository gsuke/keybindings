; F14(無変換): IME無効化, 汎用ホットキー
; F15(変換): IME有効化

; F14が長押しされているか
global IsF14HeldDown := 0

; F14 Down: 短押し or 長押し を判定
~F14::
    If (A_PriorHotkey != "~F14") {
        global IsF14HeldDown
        IsF14HeldDown := 0
        KeyWait, F14, T0.3
        If(ErrorLevel){
            global IsF14HeldDown
            IsF14HeldDown := 1
        }
    }
Return

; F14 Up: 短押しならIME無効化
F14 Up::
    If(A_PriorHotkey == "~F14"){
        global IsF14HeldDown
        if (IsF14HeldDown == 1) {
            Return
        }
        Send, {vk1D}
    }
Return

; F15: IME有効化
F15::vk1C

; F14 + w: ウィンドウ移動用ホットキー
F14 & w::Return

; F14 + h: 左カーソル
; F14 + w + h: ウィンドウをアクティブな左側のディスプレイに移動
; F14 + Shift + w + h: デスクトップの左半分にウィンドウを最大化
F14 & h::
    If(GetKeyState("w", "P")) {
        If(GetKeyState("shift", "P")){
            Send,{LWinDown}{Left}{LWinUp}
            Return
        }
        Send,{LWinDown}{ShiftDown}{Left}{ShiftUp}{LWinUp}
        Return
    }
    Send,{Blind}{Left}
Return

; F14 + j: 下カーソル
; F14 + w + j: ウィンドウの最小化
F14 & j::
    If(GetKeyState("w", "P")) {
        Send,{LWinDown}{Down}{LWinUp}
        Return
    }
    Send,{Blind}{Down}
Return

; F14 + k: 上カーソル
; F14 + w + k: ウィンドウの最大化
F14 & k::
    If(GetKeyState("w", "P")) {
        Send,{LWinDown}{Up}{LWinUp}
        Return
    }
    Send,{Blind}{Up}
Return

; F14 + l: 右カーソル
; F14 + w + l: ウィンドウをアクティブな右側のディスプレイに移動
; F14 + Shift + w + l: デスクトップの右半分にウィンドウを最大化
F14 & l::
    If(GetKeyState("w", "P")) {
        If(GetKeyState("shift", "P")){
            Send,{LWinDown}{Right}{LWinUp}
            Return
        }
        Send,{LWinDown}{ShiftDown}{Right}{ShiftUp}{LWinUp}
        Return
    }
    Send,{Blind}{Right}
Return

; F14 + a: Home
F14 & a::Send,{Blind}{Home}

; F14 + e: End
F14 & e::Send,{Blind}{End}

; F14 + Space: Enter
F14 & Space::Send,{Blind}{Enter}

; F14 + セミコロン: BackSpace
F14 & vkBB::Send,{Blind}{BackSpace}

; F14 + コロン: Delete
F14 & vkBA::Send,{Blind}{Del}
