# Gsuke Keybindings - Linux 設定方法

## 必要なパッケージ

* fcitx5-mozc
* keyd

導入方法

* Arch Linuxの場合: `paru -S fcitx5-mozc fcitx5-im keyd`

## 1. Fcitx5

1. (keydが動作している場合は、事前に `sudo systemctl stop keyd` で停止する。)
2. Fcitx5の設定 > グローバルオプション を開く。
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

* `半角/全角`, `無変換`, `変換`, `カタカナひらがな` のキーコマンドを削除する。
* IMEオンオフのキーコマンドを削除する。

## 3. keyd

1. `sudo systemctl enable keyd`
2. 設定ファイルを配置する。: `sudo cp default.conf /etc/keyd/default.conf`
3. `sudo systemctl restart keyd`

## 4. keyd - アプリケーション固有

1. 設定ファイルを配置する。
   1. `mkdir ~/.config/keyd`
   2. `ln -s "$(pwd)/app.conf" ~/.config/keyd/app.conf`
2. Gnome拡張を配置する。: `cp -r /usr/share/keyd/gnome-extension-45 ~/.local/share/gnome-shell/extensions/keyd`
3. 対応バージョンを追加する。
   1. `gnome-shell --version` でGnomeのバージョンを確認する。
   2. `sudo nano ~/.local/share/gnome-shell/extensions/keyd/metadata.json`
   3. `"shell-versions"` に調べたバージョンを追加して保存する。
4. Gnome再ログイン
5. `gnome-extensions enable keyd` -> `gnome-extensions show keyd`
