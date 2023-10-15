# Gsuke Keybindings - Linux 設定方法

WIP

## 1. Mozc

* fcitx5-mozc
* ホットキー設定

## 2. hwdb

* `sudo evtest`
* `ln -s 10-main.hwdb /etc/udev/hwdb.d/10-main.hwdb`
* `sudo udevadm hwdb --update`
* `sudo udevadm trigger`

## 3. Xremap

* `/usr/local/bin/xremap`
* `/usr/local/etc/xremap.yaml`
* `/etc/systemd/system/xremap.service`
* `sudo systemctl daemon-reload`
* `sudo systemctl enable xremap`
* `sudo systemctl start xremap`
