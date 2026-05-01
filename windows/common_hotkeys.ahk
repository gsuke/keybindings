; F13 → IMEオフ (無変換)
~F13 Up:: {
    if (A_PriorKey = "F13") {
        Send("{vk1D}")
    }
}

; F14 → IMEオン (変換) or Shift
~F14:: Send "{Shift Down}"
~F14 Up:: {
    Send "{Shift up}"
    if (A_PriorKey = "F14") {
        Send("{vk1C}")
    }
}

; カーソル移動
F13 & h:: Send("{Blind}{Left}")
F13 & j:: Send("{Blind}{Down}")
F13 & k:: Send("{Blind}{Up}")
F13 & l:: Send("{Blind}{Right}")
F13 & a:: Send("{Blind}{Home}")
F13 & e:: Send("{Blind}{End}")

; 入力
F13 & Space:: Send("{Blind}{Enter}")
F13 & vkBB:: Send("{Blind}{BackSpace}") ; 無変換 + セミコロン
F13 & vkBA:: Send("{Blind}{Del}") ; 無変換 + コロン

; その他

; Ctrl + Shift + \ → |
; Remminaから￥キーを送信できない問題への対処
^+vkE2:: Send("|")

F13 & r:: Reload ; スクリプトを再起動する
