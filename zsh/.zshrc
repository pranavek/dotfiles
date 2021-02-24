##Lean version 

# Theme
ZSH_THEME="dst"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}

# Alias
alias vi=nvim
alias 'cd..'='cd_up'
alias gbc="git branch --show-current"

# Misc
bindkey -v # Enable vi mode
