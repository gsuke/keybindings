# Gsuke Keybindings - Windows 設定方法

## 1. Google 日本語入力

### 設定手順

1. プロパティ > 一般 > キー設定の選択 > 編集 をクリックし、キー設定画面を開く。
2. 編集 > インポート から keymap.txt をインポートする。

### 上記手順の設定内容

* `無変換`, `変換` キーにIMEのオンオフを割り当てる。
* `Shift` + `無変換`, `Shift` + `変換`, `カタカナひらがな` のキーコマンドを削除する。

## 2. ChangeKey

1. <https://satoshi3.sakura.ne.jp/f_soft/dw_win.htm> から ChangeKey 最新版をインストールする。
2. ChgKey.exe と同じフォルダに、 chgkey.ini をコピーする。
3. ChgKey.exe を「管理者として実行」する。
4. ファイル > 名前をつけて保存したキー内容を読み込みます > main をクリックし、設定を読み込む。
5. 登録 > 現在の設定内容で登録します をクリックし、再起動する。

## 3. AutoHotkey

1. <https://github.com/AutoHotkey/AutoHotkey/releases> から AutoHotkey をインストールする。
2. main.ahk を実行する。
3. エクスプローラーのアドレスバーに "shell:startup" と入力してスタートアップフォルダを開く。
4. スタートアップフォルダにmain.ahkのショートカットを入れる。
