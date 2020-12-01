#!/bin/sh

#TODO uname -a for kernel version
#edit sudoers
kernel=58

pacman -Syu

cd ~/Downloads
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
./strap.sh

pacman -S net-tools base-devel --noconfirm
pacman -S vim --noconfirm
pacman -S virtualbox firefox linux$kernel-headers linux$kernel-virtualbox-host-modules virtualbox-host-dkms virtualbox-guest-utils --noconfirm
pacman -S keepass unzip ffmpeg v4l2loopback-dkms ethtool --noconfirm
pacman -S burpsuite proxychains chromium --noconfirm
pacman -S crackmapexec pulseaudio pulseaudio-alsa pavucontrol impacket bloodhound metasploit --noconfirm

git config --global user.email "mrkyubai@gmail.com"
git config --global user.name "kyubai"




# change user
# yay -S joplin
