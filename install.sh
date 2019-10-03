#!/bin/sh
# environment and "essential" cli tools
apt-get install -y vim zsh i3 emacs firefox-esr unzip xpdf curl python-pip xclip scrot tldr feh
# applications
apt-get install -y keepassx
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

# do these to finalize

# get OneDrive cloud https://github.com/abraunegg/onedrive

# add emacs to systectl:
# find /usr/share/emacs/.../emacs.service
# copy to ~/.config/systemd/user/emacs.service
# systemctl enable --user emacs.service
