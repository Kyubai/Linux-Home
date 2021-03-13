#!/bin/sh

#TODO:
# uname -a for kernel version
# install intel-ucode or amd-ucode

user_dir="/home/riegel"
config_dir="/home/riegel/linuxhome/config"
kernel="510"
pacman_vboxhost="virtualbox virtualbox-host-modules-arch"
# pacman_vboxguest="virtualbox-guest-utils"
pacman_essentials="net-tools base-devel vim linux-headers man-db dhcpcd dhclient ttf-font openssh zsh yay networkmanager nm-connection-editor openvpn wireless_tools iw crda linux-firmware python python-pip unzip"
pacman_x="xorg xorg-xinit xterm i3-gaps dmenu i3status nitrogen volumeicon i3lock network-manager-applet"
pacman_linuxtools="firefox keepass ffmpeg zip unzip v412loopback-dmks ethtool pulseaudio-alsa proxychains chromium nautilus tcpdump ranger keepassxc flameshot feh xfce4-power-manager htop alsa-utils pulseaudio pavucontrol"
pacman_serverstuff="dnsmasq darkhttpd"
pacman_sectools="dc3dd dislocker libbde crackmapexec impacket bloodhound metasploit hashcat seclists burpsuite libpff chisel nmap recon-ng wpscan wireshark-qt empire"
pacman_optionals="libreoffice-fresh nextcloud-client discord"

pacman -Syu --noconfirm
# yay -Syu --noconfirm

# get blackarch repos
# mkdir -p /root/Downloads
# curl -O https://blackarch.org/strap.sh --output-dir /root/Downloads
# chmod +x /root/Downloads/strap.sh
# /root/Downloads/strap.sh

pacman -S $pacman_vboxhost $pacman_vboxguest $pacman_essentials $pacman_x $pacman_linuxtools $pacman_sectools $pacman_serverstuff $pacman_x $pacman_optionals --noconfirm --needed

git config --global user.email "mrkyubai@gmail.com"
git config --global user.name "kyubai"

mkdir -p $user_dir/VBoxVMs
mkdir -p $user_dir/Share
mkdir -p $user_dir/.config
mkdir -p $user_dir/.config/i3
mkdir -p $user_dir/Apps
mkdir -p /data/Server

mkdir -p /root/.config
mkdir -p /root/.config/i3

cp $config_dir/i3config $user_dir/.config/i3/config
cp $config_dir/picom $user_dir/.config/picom.conf
cp $config_dir/xinitrc $user_dir/.xinitrc
cp $config_dir/profile $user_dir/.profile
cp $config_dir/zshrc $user_dir/.zshrc
cp $config_dir/aliases $user_dir/.aliases

cp $config_dir/i3config ~/.config/i3/config
cp $config_dir/picom /root/.config/picom.conf
cp $config_dir/profile /root/.profile


# TODO:
# https://github.com/laurent22/joplin/releases

# change user
