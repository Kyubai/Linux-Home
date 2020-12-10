#!/bin/sh

#TODO:
# uname -a for kernel version

kernel="58"
# pacman_vboxhost="virtualbox linux$kernel-virtualbox-host-modules virtualbox-host-dkms"
pacman_vboxguest="virtualbox-guest-utils"
pacman_essentials="net-tools base-devel vim linux$kernel-headers"
pacman_linuxtools="firefox keepass ffmpeg zip unzip v412loopback-dmks ethtool pulseaudio pulseaudio-alsa pavucontrol proxychains chromium nautilus"
pacman_sectools="dc3dd dislocker libbde crackmapexec impacket bloodhound metasploit hashcat seclists burpsuite libpff chisel"

pacman -Syu --noconfirm

# get blackarch repos
cd ~/Downloads
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
./strap.sh

pacman -S $pacman_vboxhost $pacman_vboxguest $pacman_essentials $pacman_sectools --noconfirm

git config --global user.email "mrkyubai@gmail.com"
git config --global user.name "kyubai"


# TODO:
# edit sudoers


# change user
# yay -S joplin
