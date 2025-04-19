/*
TrayTip をシンプルにするためのラッパー関数
指定したテキストを表示したあと、1秒後に閉じる。
*/
EasyTrayTip(Text) {
    TrayTip(Text, , 16) ; No icon / No notify sound

    SetTimer(CloseTrayTip, 1000)

    CloseTrayTip() {
        TrayTip
        SetTimer(CloseTrayTip, 0) ; exit timer
    }
}
