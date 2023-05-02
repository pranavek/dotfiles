# Replace cat with bat https://github.com/sharkdp/bat
alias cat=bat

# Git
alias gru="git remote get-url --all origin"
alias gcb='git branch | grep -v $(git branch --show-current) | fzf | xargs git checkout'
alias gpl='git pull origin $(git branch --show-current)'
alias gph='git push origin HEAD'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gst="git status"


