# ~/.profile: executed by Bourne-compatible login shells.

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

#export environment variables
export EDITOR="emacs"
# autoload -U colors && colors
# export PROMPT="%{$fg[cyan]%}%n@%M%{$reset_color%} %{$fg[blue]%}[%~] %{$reset_color%}"
export BROWSER="firefox"

export PATH="$PATH:~/scripts:/var/lib/flatpak/exports/bin:/var/lib/flatpak/exports/share/"
export XDG_DATA_HOME="/var/lib/flatpak/exports/share/"

export LANG="en_US.UTF-8"

mesg n || true

#launch urxvt daemon for improved multiterminaling
urxvtd -f
emacs --daemon
