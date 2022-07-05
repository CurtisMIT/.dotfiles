autoload -Uz colors && colors

ZSHCONFIG=$HOME/.config/zsh

function use() {
        PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
        if [ ! -d "$ZSHCONFIG/plugins/$PLUGIN_NAME" ]; then
                git clone "https://github.com/$1.git" "$ZSHCONFIG/plugins/$PLUGIN_NAME"
        fi
        source "$ZSHCONFIG/plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
}

use "zsh-users/zsh-syntax-highlighting"
use "zsh-users/zsh-autosuggestions"

setopt prompt_subst
# Host@Machine
PROMPT='%{$fg[blue]%}%n%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}'
# Current working directory
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%}'
# Prompt character
PROMPT+=' %(?:%{$fg_bold[yellow]%}> :%{$fg_bold[red]%}> )%{$reset_color%}'

alias ls='ls --color=auto'
