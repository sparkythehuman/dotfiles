# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/joshuatgarcia/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="honukai"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# zsh-syntax-highlighting must be the last plugin sourced
plugins=(git npm brew osx extract z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Powerline configuration
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%K{white}%F{black} `date +%T` %f%k%F{white}%f "
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="$ "
POWERLEVEL9K_VIRTUALENV_BACKGROUND='165'
POWERLEVEL9K_NODE_VERSION_BACKGROUND='022'
POWERLEVEL9K_PUBLIC_IP_BACKGROUND='018'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs public_ip time)

## an idea for a powerline plugin
# vagrant status | grep running | awk 'NR==1{print $1, $2}'
# https://github.com/bhilburn/powerlevel9k#custom_command

# Change autosuggest color cause it wasn't showing up well in solarized dark
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'


# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# By default the promt will show "user@hostname"
# Set DEFAULT_USER to regular username to hide the "user@hostname"
DEFAULT_USER="joshuatgarcia"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

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

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## Include composer
export PATH="$PATH:$HOME/.composer/vendor/bin"

## Autoload all the keys in the keychain
ssh-add -A &> /dev/null
export PATH="/usr/local/sbin:$PATH"

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
