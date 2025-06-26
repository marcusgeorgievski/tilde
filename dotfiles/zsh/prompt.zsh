#!/usr/bin/env zsh

function precmd() {
  echo ""
}

# Current battery level
function battery_level {
  if [[ $(uname -s) = 'Darwin' ]]; then
    pmset -g batt | grep -Eo "\d+%" | cut -d% -f1
  fi
}

# Git prompts
ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{yellow}%f"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{green} ✔%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{yellow} *%f"
ZSH_THEME_GIT_PROMPT_STAGED="%F{cyan}●%f"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%F{red}●%f"

# Prompt variables
FOLDER=$'%F{blue} %1~%f'
PROMPT_ARROW='%F{green}➜%f'
NEWLINE=$'\n'
TIMEFMT=$'%D{%H:%M:%S} %D{%p}'
NAME=$'%F{green}%n%f'

# Right prompt
PROMPT='$FOLDER  $(git_prompt_info) $NEWLINE $PROMPT_ARROW '

# Left prompt
RPROMPT='  $(battery_level)%%  %F{gray}$TIMEFMT%f'

# Icons
# ➜   
#    
#              