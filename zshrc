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
plugins=(brew git extract kube-ps1 npm macos vi-mode z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Change autosuggest color cause it wasn't showing up well in solarized dark
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'

# Preferred editor
 export EDITOR='vim'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

## Autoload all the keys in the keychain
ssh-add -K &> /dev/null

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
bindkey "^E" forward-word # command + ->
bindkey "^A" backward-word # command + <-


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
# `$ trash` moves a file to trash using https://github.com/andreafrancia/trash-cli
