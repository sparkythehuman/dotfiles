# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="code ~/dotfiles/zshrc"
alias zshreload="source ~/dotfiles/zshrc"
alias gsync="git pull && git push"
alias gaundo="git reset"
alias gcundo="git reset --soft HEAD~1"
alias rm='echo "rm is disabled, use remove-force or trash or /bin/rm instead."'
alias remove-force='/bin/rm -irv'
alias unzip='echo "use extract instead, it is better."'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias tf='terraform'
alias kc='kubectl'
alias kcc='kubectl config'
alias kcx='kubectx'
alias d='docker'
alias dc='docker-compose'
alias b='brew'
alias gswoc='f() {git show-branch $1 &>/dev/null && git checkout $1 || git checkout -b $1}; f'
alias netshoot="kubectl run -l app=garcia-netshoot --image=nicolaka/netshoot --restart=Never --rm -i -t garcia-netshoot"
