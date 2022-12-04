if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions dirhistory jsontools history vi-mode z)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.zsh_aliases ]] || source ~/.zsh_aliases
[[ ! -f ~/.bash_functions ]] || source ~/.bash_functions

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/abhi/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="/home/abhi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# pnpm
export PNPM_HOME="/home/abhi/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

alias luamake=/home/abhi/.config/nvim/lua-language-server/3rd/luamake/luamake
