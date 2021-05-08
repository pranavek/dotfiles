##Lean version 

# Theme
ZSH_THEME="dst"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting vi-mode)

# Alias
alias v=nvim
alias vi=v
alias vo='v -o `fzf`'

alias cl=clear

alias gcb='git branch | grep -v `git branch --show-current` | fzf | xargs git checkout'
alias gpl='git pull origin `git branch --show-current`'
alias gph='git push origin HEAD'

# Misc
bindkey -v # Enable vi mode
