LANG=de_DE.UTF-8
autoload -U compinit
compinit
bindkey -e

# Includes
. ~/.zsh/variables.zsh
. ~/.zsh/envs/dev_env.zsh
. ~/.zsh/styles.zsh
. ~/.zsh/colours.zsh
. ~/.zsh/aliases.zsh
. ~/.zsh/key_bindings.zsh
. ~/.zsh/prompt.zsh

# Command history
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=1000000
setopt autocd

# Directory history
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome

function precmd {
      vcs_info 'prompt'
}

function lprompt {
    PROMPT_SYMBOL="${PR_WHITE} $ ${PR_RESET}"
    PROMPT="%b %~%B${PROMPT_SYMBOL}%b"
}

function rprompt {
    CURRENT_DEV_ENV="{${PR_RED}${DEV_ENV}${PR_RESET}}"
    TIME="[${PR_MAGENTA}%T${PR_RESET}]"
    local git='$vcs_info_msg_0_'
    GIT="${git}"
    RPROMPT="${TIME}${GIT}${CURRENT_DEV_ENV}"
}

function myenv () {
  cat ~/.zsh/envs/my_env.zsh > ~/.zsh/envs/dev_env.zsh
  source $HOME/.zshrc
}

lprompt ""
rprompt ""
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
