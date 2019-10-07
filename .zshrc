if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

HISTSIZE=10000
HISTFILESIZE=20000

setopt auto_cd
setopt correct_all
setopt auto_list
setopt auto_menu
setopt always_to_end

autoload -U colors && colors
export PROMPT="%{$fg[cyan]%}%n@%M%{$reset_color%}:%{$fg[blue]%}[%~] %{$reset_color%}"

# load zsh plugins
source /usr/share/zplug/init.zsh
zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "plugins/colored-man-pages", from:oh-my-zsh, as:plugin
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "plugins/docker", from:oh-my-zsh
zplug "djui/alias-tips"
# bind arrow up and arrow down to history substring search !!! Needs to be loaded after zsh-syntax-highlighting!!!
zplug "zsh-users/zsh-history-substring-search"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
zplug load

# enable tab completion
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
    compinit -i
else
    compinit -C -i
fi

zmodload -i zsh/complist
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion
