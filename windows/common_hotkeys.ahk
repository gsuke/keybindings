; F14 -> 無変換
; 右Shift -> 変換

; 単押し
~LControl Up:: SingleTap("LControl", "{Escape}") ; エスケープ
~F14 Up:: SingleTap("F14", "{vk1D}") ; IMEオフ (無変換)
~RShift Up:: SingleTap("RShift", "{vk1C}") ; IMEオン (変換)

; カーソル移動
F14 & h:: Send("{Blind}{Left}")
F14 & j:: Send("{Blind}{Down}")
F14 & k:: Send("{Blind}{Up}")
F14 & l:: Send("{Blind}{Right}")
F14 & a:: Send("{Blind}{Home}")
F14 & e:: Send("{Blind}{End}")

; 入力
F14 & Space:: Send("{Blind}{Enter}")
F14 & vkBB:: Send("{Blind}{BackSpace}") ; 無変換 + セミコロン
F14 & vkBA:: Send("{Blind}{Del}") ; 無変換 + コロン

; その他
F14 & w:: Send("!{F4}") ; ウィンドウを閉じる
F14 & r:: Reload ; スクリプトを再起動する
