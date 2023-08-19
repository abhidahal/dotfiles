export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
plugins=(git zsh-autosuggestions dirhistory jsontools history vi-mode z colorize)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.config/bash/.bash_aliases ]] || source ~/.config/bash/.bash_aliases
[[ ! -f ~/.config/bash/.bash_functions ]] || source ~/.config/bash/.bash_functions

export NVM_DIR="/home/abhi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

 eval "$(starship init zsh)"
