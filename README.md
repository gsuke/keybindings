# Gsuke Keybindings

個人用のホットキーの設定集。
JIS 配列キーボードを前提とする。

## 設定方法

* [Linux](linux/README.md)
* [Windows](windows/README.md)

## ホットキー一覧

| 入力キー       | 割り当てられる機能 |
| -------------- | ------------------ |
| CapsLock(短)   | Esc                |
| CapsLock(長)   | 左 Ctrl            |
| 無変換         | IME オフ           |
| 変換(短) ※    | IME オン           |
| 変換(長) ※    | 右 Shift           |
| 無変換 + H     | ←                 |
| 無変換 + J     | ↓                 |
| 無変換 + K     | ↑                 |
| 無変換 + L     | →                 |
| 無変換 + A     | Home               |
| 無変換 + E     | End                |
| 無変換 + Space | Enter              |
| 無変換 + ;     | BackSpace          |
| 無変換 + :     | Delete             |
| 無変換 + w     | ウィンドウを閉じる |

注「カタカナひらがな」「右 Shift」キーも「変換」キーと同じ動作となる。
TODO: Linuxの対応

## 補足: VirtualBox 上での使用

ゲスト OS に AutoHotKey の設定を反映させるために、
環境設定 > 入力 > キーボードの自動キャプチャー をオフにする。
