#!/bin/sh
# environment and "essential" cli tools
apt-get install -y vim zsh i3 emacs firefox-esr unzip curl python-pip xclip tldr zip awk sudo
# applications
apt-get install -y keepassx maim feh xpdf gimp
# security stuff
apt-get install -y nikto gobuster nmap

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
# add urxvtd to crontab @reboot

# get OneDrive cloud https://github.com/abraunegg/onedrive

# get Discord https://discordapp.com/download
