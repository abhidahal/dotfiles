
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(git zsh-autosuggestions web-search copypath copyfile dirhistory history yarn jsontools)

source $ZSH/oh-my-zsh.sh

alias update='sudo apt update -y'
alias upgrade='sudo apt upgrade -y'
alias inst='sudo apt install -y'
alias c='clear'
alias bh='cd /home/abhi/github/bookhub-frontend'
alias v='nvim'
alias ls='ls -l --color=auto --group-directories-first'
alias la='ls -al --color=auto --group-directories-first'
mkcd ()
{
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
