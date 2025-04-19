#SingleInstance force

; 関数のインポート
#Include functions/EasyTrayTip.ahk

; 起動メッセージ
EasyTrayTip("gsuke/keybindings/windows/main.ahk を起動しました。")

; ホットキーのインポート
#Include common_hotkeys.ahk
#Include local_hotkeys.ahk
