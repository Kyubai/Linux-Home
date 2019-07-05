# ~/.profile: executed by Bourne-compatible login shells.

# this file contains aliases I commonly use
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

#export environment variables used by other programs
export PATH="$PATH:/root/scripts:/var/lib/flatpak/exports/bin:/var/lib/flatpak/exports/share/"
export EDITOR="emacsclient -nw"
export BROWSER="firefox"
export LANG="en_US.UTF-8"
export XDG_DATA_HOME="/var/lib/flatpak/exports/share/"
# setting XDG_DATA_DIRS might cause problems, when apt-get is used before flatpak is installed, especially desktop-file-utils
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share/flatpak/exports/share/"
# autoload -U colors && colors
# export PROMPT="%{$fg[cyan]%}%n@%M%{$reset_color%} %{$fg[blue]%}[%~] %{$reset_color%}"

mesg n || true

#launch daemons for commonly used programs
urxvtd -f
emacs --daemon
