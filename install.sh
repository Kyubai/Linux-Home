#!/bin/sh
# environment and "essential" cli tools
apt-get install -y vim neovim python3-neovim emacs hexedit
apt-get install -y i3 zsh xterm tmux
apt-get install -y firefox-esr curl
apt-get install -y unzip zip
apt-get install -y python-pip
apt-get install -y xclip
apt-get install -y tldr
apt-get install -y gawk
apt-get install -y net-tools netdiscover sudo alsa-utils
apt-get install -y xorg network-manager
apt-get install -y ascii
apt-get install -y gdb strace exiv2
apt-get install -y secure-delete
# applications
apt-get install -y keepassx maim feh xpdf gimp texlive-latex-extra fswebcam
apt-get install -y telegram-desktop
# security stuff
apt-get install -y gobuster nmap hydra sqlmap crunch nikto

# get spacemacs
if [ ! -e ~/.emacs.d ]; then
	git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

# get docker
if [ ! -e /usr/bin/docker ]; then
	curl https://get.docker.com | /bin/sh
fi

if [ ! -e /usr/share/zplug ]; then
  git clone https://github.com/zplug/zplug /usr/share/zplug
  /bin/bash -c "source /usr/share/zplug/init.zsh; zplug install"
fi

systemctl enable --user emacs.service
systemctl enable --user docker.service

# change /etc/passwd to use /bin/zsh
# get OneDrive cloud https://github.com/abraunegg/onedrive
# get Discord https://discordapp.com/download
# get Visual Studio Code
# get Burp
