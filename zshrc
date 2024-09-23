# Turn On Command-Line-Interface Color
export CLICOLOR=1

# Auto Completion
autoload -U compinit && compinit
# Ignore Case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Enable Auto-Complete Menu (enter <TAB> twice)
zstyle ':completion:*' menu select
# Compact Duplicate History Command
setopt HIST_IGNORE_DUPS

# reset tab title
export PROMPT_COMMAND="echo -ne '\033]0;${USER}@${HOST}\007';$PROMPT_COMMAND"
precmd() { eval "$PROMPT_COMMAND" }

# Cmd Line Vim Mode
bindkey -v

# Auto Load Prompt
autoload -U promptinit && promptinit

# Enable Colorful Prompt
autoload -U colors && colors


#PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[blue]%}%m %{$fg_bold[yellow]%}%1~ %{$reset_color%}%% "
#                           name              colon                  curly+space        percent+space
#PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}:%{$fg_bold[yellow]%}%1~ %{$reset_color%}%% "
#PROMPT="%{$fg_bold[green]%}%1~ %{$reset_color%}%% "
PROMPT="%{$fg_bold[yellow]%}%T%{$reset_color%} %{$fg_bold[green]%}%~%{$reset_color%} %% "
#RPEOMPT="%?"
