#export environment variables used by other programs
export PATH="$PATH:~/scripts:/bin:/usr/games"
export EDITOR="nvim"
export BROWSER="firefox"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# eval $(ssh-agent)
# autoload -U colors && colors
# export PROMPT="%{$fg[cyan]%}%n@%M%{$reset_color%} %{$fg[blue]%}[%~] %{$reset_color%}"

mesg n || true

# daemons are launched in crontab and systemctl now
# urxvtd -f
# emacs --daemon
