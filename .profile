# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

#export environment variables
export EDITOR="vim"
export BROWSER="firefox"
export PATH="$PATH:~/scripts"

mesg n || true

#launch urxvt daemon for improved multiterminaling
urxvtd -f
