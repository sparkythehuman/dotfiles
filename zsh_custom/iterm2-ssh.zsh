## Change the color of the theme
function tabc() {
    NAME=$1; if [ -z "$NAME" ]; then NAME="Solarized Dark"; fi
    # "Solarized Dark" to the name of your default theme
    echo -e "\033]50;SetProfile=$NAME\a"
}

## Change the color back to your default theme
function tab-reset() {
    NAME="Solarized Dark" # your default theme
    echo -e "\033]50;SetProfile=$NAME\a"
}

## Check for an SSH session and change the color
# then when you logout, change it back to default
function colorssh() {
    if [[ -n "$ITERM_SESSION_ID" ]]; then
        trap "tab-reset" INT EXIT
        tabc "Solarized Dracula" # your SSH theme
    fi
    ssh $*
}
compdef _ssh tabc=ssh

alias ssh="colorssh"
