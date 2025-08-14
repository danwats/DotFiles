# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

plugins=(git z zsh-autosuggestions)

# get the plugins working
source $ZSH/oh-my-zsh.sh

source ~/.zsh_profile
