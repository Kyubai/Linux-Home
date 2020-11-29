#!/bin/sh

kernel=58

pacman -Syu
pacman -S net-tools base-devel --noconfirm
pacman -S vim --noconfirm
pacman -S virtualbox firefox linux$kernel-headers linux$kernel-virtualbox-host-modules virtualbox-host-dkms --noconfirm
pacman -S keepass unzip ffmpeg v4l2loopback-dkms ethtool cryptosetup --noconfirm

git config --global user.email "mrkyubai@gmail.com"
git config --global user.name "kyubai"
