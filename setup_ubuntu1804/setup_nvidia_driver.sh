#!/bin/sh

sudo apt-get upgrade -y
sudo apt upgrade -y

#日本語→英語に変換
LANG=C xdg-user-dirs-gtk-update --force

#Mozcのインストール
sudo apt-get install ibus-mozc -y
killall ibus-daemon
ibus-daemon -d -x &

sudo apt install vim terminator git curl -y

git config --global user.email ""
git config --global user.name ""

sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update
sudo apt install -y --no-install-recommends nvidia-driver-460
sudo reboot
