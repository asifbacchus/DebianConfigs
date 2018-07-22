### Colourize directory listing using dircolors
export LS_OPTIONS='--color auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
