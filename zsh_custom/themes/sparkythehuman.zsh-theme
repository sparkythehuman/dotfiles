# load vcs
autoload -Uz add-zsh-hook
autoload -Uz vcs_info
add-zsh-hook precmd vcs_info

# status of the previous command
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

# current working directory
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} '

# git
# unicode \u2387 = ⎇
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats "%{$fg[green]%}%c%u(⎇ %b)%f"
zstyle ':vcs_info:*' actionformats "%{$fg[green]%}%c%u(⎇ %b)%f %a"
zstyle ':vcs_info:*' stagedstr "%{$fg[yellow]%}"
zstyle ':vcs_info:*' unstagedstr "%{$fg[red]%}"
zstyle ':vcs_info:*' check-for-changes true

# kube-ps1
KUBE_PS1_PREFIX_COLOR="blue"
KUBE_PS1_SUFFIX_COLOR="blue"
KUBE_PS1_SYMBOL_COLOR="blue"
KUBE_PS1_CTX_COLOR="blue"
KUBE_PS1_NS_COLOR="blue"
KUBE_PS1_SEPARATOR=""

# add git status to prompt
PROMPT+='${vcs_info_msg_0_} '

# add kube context to prompt
PROMPT+='%{$fg_bold[blue]%}$(kube_ps1)%f '

# lead user input
PROMPT+='%f$ '

# date in yyyy-mm-dd 00:00:00 format
RPROMPT="[%D{%Y-%m-%f} %*%f]"
