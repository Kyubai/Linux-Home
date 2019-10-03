# ~/.profile: executed by Bourne-compatible login shells.

# this file contains aliases I commonly use
# if [ -f ~/.aliases ]; then
#   . ~/.aliases
# fi

#export environment variables used by other programs
export PATH="$PATH:/root/scripts:/var/lib/flatpak/exports/bin:/var/lib/flatpak/exports/share/"
export EDITOR="vim"
export BROWSER="firefox"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# autoload -U colors && colors
# export PROMPT="%{$fg[cyan]%}%n@%M%{$reset_color%} %{$fg[blue]%}[%~] %{$reset_color%}"

mesg n || true

#launch daemons for commonly used programs
# urxvtd -f
# emacs --daemon
