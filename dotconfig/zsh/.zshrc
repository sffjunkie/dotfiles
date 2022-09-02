HISTFILE=$XDG_CACHE_HOME/zsh/zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
CASE_SENSITIVE=true

setopt PROMPT_SUBST
setopt HIST_IGNORE_ALL_DUPS
setopt AUTOCD
unsetopt BEEP

autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%(4~|%-1~/…/%2~|%3~)%{$fg[red]%}]%{$reset_color%}$%b "

#: The following lines were added by compinstall
zstyle :compinstall filename "$XDG_CONFIG_HOME/zsh/.zshrc"
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Path to your oh-my-zsh installation.
export ZSH="/home/sdk/.config/oh-my-zsh"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  web-search
  sudo
)

source $ZSH/oh-my-zsh.sh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

[[ -f $HOME/.config/sh/aliases.sh ]] && source $HOME/.config/sh/aliases.sh
[[ -f $HOME/.config/sh/functions.sh ]] && source $HOME/.config/sh/functions.sh
