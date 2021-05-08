##Lean version 

# Theme
ZSH_THEME="dst"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting vi-mode)

# Alias
alias cl=clear
alias vi=nvim

alias gpl='git pull origin `git branch --show-current`'
alias gcb='git branch | grep -v `git branch --show-current` | fzf | xargs git checkout'
alias gph='git push origin HEAD'

# Misc
bindkey -v # Enable vi mode
