# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sparkythehuman"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Change the path of the custom directory, so it can be version controlled
ZSH_CUSTOM=$HOME/dotfiles/zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# zsh-syntax-highlighting must be the last plugin sourced
plugins=(brew git extract npm osx vi-mode z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Change autosuggest color cause it wasn't showing up well in solarized dark
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'

# By default the promt will show "user@hostname"
# Set DEFAULT_USER to regular username to hide the "user@hostname"
DEFAULT_USER="joshuagarcia"

# Preferred editor
 export EDITOR='vim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zschconfig="mvim ~/dotfiles/zshrc"
alias gsync="git pull && git push"
alias gaundo="git reset"
alias gcundo="git reset --soft HEAD~1"
alias rm='echo "rm is disabled, use remove or trash or /bin/rm instead."'
alias remove='/bin/rm -irv'
alias unzip='echo "use extract instead, it is better."'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## Autoload all the keys in the keychain
ssh-add -K &> /dev/null

## Composer path
export PATH="$HOME/.composer/vendor/bin:$PATH"

## Homebrew path
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

## Python path
export PATH="$HOME/Library/Python/3.7/bin/:$PATH"

## Node.JS path
export PATH="/usr/local/Cellar/node/13.5.0/bin:$PATH"

## pyenv and pipenv paths
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

# autolad pyenv
eval "$(pyenv init -)"

# Java path
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# iterm2 status bar customizations
PUBLIC_IP=$(curl ifconfig.me 2> /dev/null)
iterm2_print_user_vars() {
  iterm2_set_user_var public_ip $PUBLIC_IP
}

# Beginning search with arrow keys in vim mode
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search


##
# TIPS & TRICKS
###
# `$ spectrum_ls` for a list of support zsh colors
# `$ tree` to list the directory tree
# `$ extract <filename>` for easy extracting of any archive
# `$ alias | grep git` list all git aliases oh-my-zsh has out of the box
# `$ kill <TAB>` zsh has tab completion on kill
# `$ cd -` or `$ -` or `$ 1` cd to last working directory
# `$ tab` make a tab in the current working directory
# `$ take` create a new directory and change to it
# `$ trash` moves a file to trash using http://hasseg.org/trash/