# Gsuke Keybindings - Linux 設定方法

## 必要なパッケージ

* fcitx5-mozc
* keyd

導入方法

* Arch Linuxの場合: `paru -S fcitx5-mozc fcitx5-im keyd`

## 1. Fcitx5

1. (keydが動作している場合は、事前に `sudo systemctl stop keyd` で停止する。)
2. Fcitx5の設定画面を開く。
3. 入力メソッドを切り替える系のホットキーをすべて削除する。
4. 以下のように割り当てる
   * 入力メソッドを有効にする: 変換
   * 入力メソッドをオフにする: 無変換

## 2. Mozc

### 設定手順

1. Fcitx5の設定画面 > 入力メソッド > Mozc > 設定アイコン > 設定ツール でMozcの設定画面を開く。
2. キー設定の選択 > 編集 をクリックし、キー設定画面を開く。
3. 編集 > インポート から keymap.txt をインポートする。

### 上記手順の設定内容

* Hankaku, Zenkaku, Muhenkan, Henkan, Katakana, Hiragana のキー設定を削除する。
* IMEのオンオフキーコマンドを削除する。

## 3. keyd

1. `sudo systemctl enable keyd`
2. 設定ファイルをシンボリックリンクで配置する。: `sudo ln -s $(realpath default.conf) /etc/keyd/default.conf`
3. `sudo systemctl restart keyd`
