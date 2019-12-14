#export environment variables used by other programs
export PATH="$PATH:~/scripts:/bin:/usr/games"
export EDITOR="nvim"
export BROWSER="firefox"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export MATLAB_PREFDIR="/usr/local/MATLAB"

# eval $(ssh-agent)
# autoload -U colors && colors
# export PROMPT="%{$fg[cyan]%}%n@%M%{$reset_color%} %{$fg[blue]%}[%~] %{$reset_color%}"

mesg n || true

# daemons are launched in crontab and systemctl now
# urxvtd -f
# emacs --daemon

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
    eval $(ssh-agent)
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
# ssh-add -l > /dev/null || ssh-add
