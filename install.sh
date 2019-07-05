#the following are already pre-installed on my distro of choice
#apt-get install -y zsh git nmap netcat curl
apt-get install -y i3 rxvt-unicode emacs flatpak
mkdir ~/scripts ~/docker
# cp -r ./.* ../

# Get Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo 'deb https://download.docker.com/linux/debian stretch stable' > /etc/apt/sources.list.d/docker.list
apt-get update

# Get Zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# configure flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# TODO get cloud
#peda for gdb
#ssh keys
#git this file
#zplug
#automate
#/etc/passwd for /bin/zsh?
#spacemacs?
#docker container repo (automate via ssh?)

apt-get install -y docker-ce
