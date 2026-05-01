# Gsuke Keybindings - Windows

## Requirements

`winget install Google.JapaneseIME RandyRants.SharpKeys AutoHotkey.AutoHotkey`

* Google 日本語入力
* SharpKeys
* AutoHotkey

## 設定方法

### 1. Google 日本語入力

#### 設定手順

1. プロパティ > 一般 > キー設定の選択 > 編集 をクリックし、キー設定画面を開く。
2. 編集 > インポート から keymap.txt をインポートする。

#### 上記手順の設定内容

* `無変換`, `変換` キーにIMEのオンオフを割り当てる。
* `Shift` + `無変換`, `Shift` + `変換`, `カタカナひらがな` のキーコマンドを削除する。

### 2. SharpKeys

1. SharpKeysを起動する。
2. 「Load keys...」を押下し、 `sharpkeys.skl` を読み込む。
3. 「Write to Registry」
4. 再起動する。

### 3. AutoHotkey

1. エクスプローラーのアドレスバーに "shell:startup" と入力してスタートアップフォルダを開く。
2. スタートアップフォルダにmain.ahkのショートカットを入れる。
3. main.ahk を実行する。

## SharpKeys の設定内容メモ

| 変換元                            | 変換先           |
| --------------------------------- | ---------------- |
| 半角/全角 ( \` )                  | Escape           |
| Caps Lock                         | 左Ctrl           |
| Escape                            | 半角/全角 ( \` ) |
| 変換                              | F14              |
| 無変換                            | F13              |
| カタカナひらがなローマ字 (0x0070) | F14              |

## Debug

1. main.ahk の `KeyHistory` をアンコメントする。
2. `Ctrl + r` でAutoHotkeyを再起動する。
