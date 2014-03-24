LANG=de_DE.UTF-8
autoload -U compinit
compinit
bindkey -e
 
# Includes
. ~/.zsh/variables.zsh
. ~/.zsh/styles.zsh
. ~/.zsh/colours.zsh
. ~/.zsh/aliases.zsh
. ~/.zsh/key_bindings.zsh
. ~/.zsh/prompt.zsh
 
# Command history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt autocd
 
# Directory history
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome