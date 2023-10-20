/*
TrayTip をシンプルにするためのラッパー関数

- テキストだけを指定する
- すぐに閉じる
*/

EasyTrayTip(Text) {
    TrayTip, , %Text%, , 16

    SetTimer, CloseTrayTip, 1000
    Return

    CloseTrayTip:
        TrayTip
        SetTimer, CloseTrayTip, Off
    Return
}
