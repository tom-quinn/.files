# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt appendhistory nomatch notify
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tquinn/.zshrc'

autoload -Uz compinit
autoload -U colors && colors
compinit
# End of lines added by compinstall

# source aliases
if [ -e ~/.aliases ] ; then 
    source ~/.aliases
fi
if [ -e ~/.zsh_functions ] ; then 
    source ~/.zsh_functions
fi


#bind CTRL+A beginning of line
#   CTRL+E end of line
#   and CTRL+D delete char
bindkey '^A' vi-beginning-of-line
bindkey '^E' vi-end-of-line
bindkey '^D' vi-delete-char
#Enable CTRL+R to reverse search
bindkey '^R' history-incremental-search-backward

export PROMPT="[%{$fg_no_bold[magenta]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}:%{$fg[green]%}%2~%{$reset_color%}]%# "
export RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"
