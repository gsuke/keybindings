; F14 -> 無変換
; 右シフト -> 変換

Muhenkan := "{vk1D}"
Henkan := "{vk1C}"

; IMEオフ
~F14 Up:: {
    if (A_PriorKey == "F14") {
        Send(Muhenkan)
    }
}

; IMEオン
~RShift Up:: {
    if (A_PriorKey == "RShift") {
        Send(Henkan)
    }
}

; カーソル
F14 & h:: Send("{Blind}{Left}")
F14 & j:: Send("{Blind}{Down}")
F14 & k:: Send("{Blind}{Up}")
F14 & l:: Send("{Blind}{Right}")

; その他
F14 & a:: Send("{Blind}{Home}")
F14 & e:: Send("{Blind}{End}")
F14 & Space:: Send("{Blind}{Enter}")
F14 & vkBB:: Send("{Blind}{BackSpace}") ; 無変換 + セミコロン
F14 & vkBA:: Send("{Blind}{Del}") ; 無変換 + コロン

; リロード
F14 & r:: Reload
