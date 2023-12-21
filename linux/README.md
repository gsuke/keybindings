# Gsuke Keybindings - Linux 設定方法

## 必要なもの

* fcitx5-mozc
* evtest
* xremap

導入方法

* Arch Linuxの場合: `paru -S fcitx5-mozc fcitx5-im evtest xremap-x11-bin`
* それ以外の場合: <https://github.com/k0kubun/xremap/releases> からXremapのバイナリをダウンロードし、 `/usr/local/bin/` 配下に格納

## 1. Fcitx5

1. Fcitx5の設定画面を開く
2. 入力メソッドを切り替える系のホットキーをすべて削除する
3. 以下のように割り当てる
   * 入力メソッドを有効にする: 変換
   * 入力メソッドをオフにする: 無変換

## 2. hwdb

1. evtestを起動: `sudo evtest`

2. キーボードデバイスを選択

3. 以下のスキャンコードを調べる。必要に応じて [10-main.hwdb](10-main.hwdb) を修正する。
   * CapsLock
   * 半角／全角
   * 無変換
   * 変換
   * カタカナひらがなローマ字

4. Ctrl+Cでevtestを終了

5. hwdbファイルのリンクを作成: `sudo ln -s /フルパス/10-main.hwdb /etc/udev/hwdb.d/10-main.hwdb`

6. 変更の反映
   1. `sudo systemd-hwdb update`
   2. `sudo udevadm trigger`

7. evtestで変更が正しく反映されているか確認: `sudo evtest`

## 3. Xremap

1. シンボリックリンクを張る
   * `sudo ln -s /フルパス/xremap.yaml /usr/local/etc/xremap.yaml`
   * `sudo ln -s /フルパス/xremap.service /etc/systemd/system/xremap.service`

2. サービスを起動する
   1. unitファイル変更を反映: `sudo systemctl daemon-reload`
   2. `sudo systemctl enable xremap`
   3. `sudo systemctl start xremap`
   4. 起動できているか確認: `systemctl status xremap`
