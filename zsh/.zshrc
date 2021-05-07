##Lean version 

# Theme
ZSH_THEME="dst"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting vi-mode)

# Alias
alias cl=clear
alias vi=nvim
alias gbc="git branch --show-current"
alias gcb="git branch | fzf | xargs git checkout"

# Misc
bindkey -v # Enable vi mode
