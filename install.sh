#!/bin/sh

#TODO:
# uname -a for kernel version

user_dir="/home/riegel"
kernel="510"
# pacman_vboxhost="virtualbox linux$kernel-virtualbox-host-modules virtualbox-host-dkms"
pacman_vboxguest="virtualbox-guest-utils"
pacman_essentials="net-tools base-devel vim linux$kernel-headers"
pacman_linuxtools="firefox keepass ffmpeg zip unzip v412loopback-dmks ethtool pulseaudio pulseaudio-alsa pavucontrol proxychains chromium nautilus dnsmasq"
pacman_sectools="dc3dd dislocker libbde crackmapexec impacket bloodhound metasploit hashcat seclists burpsuite libpff chisel nmap"

pacman -Syu --noconfirm

# get blackarch repos
mkdir /root/Downloads
curl -O https://blackarch.org/strap.sh --output-dir /root/Downloads
chmod +x /root/Downloads/strap.sh
/root/Downloads/strap.sh

pacman -S $pacman_vboxhost $pacman_vboxguest $pacman_essentials $pacman_sectools --noconfirm

git config --global user.email "mrkyubai@gmail.com"
git config --global user.name "kyubai"

cp ./i3config ~/.i3/config
cp ./i3config $user_dir/.i3/config


# TODO:
# edit sudoers


# change user
# yay -S joplin
