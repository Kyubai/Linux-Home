pacman -Syu --noconfirm

pacman -S net-tools base-devel linux-headers --noconfirm
pacman -S seclists gobuster burpsuite hydra nmap netdiscover --noconfirm
pacman -S docker docker-compose --noconfirm

git config --global user.email "mrkyubai@gmail.com"
git config --global user.name "Kyubai"

# DO after install:
# Setup Burp and Foxyproxy
