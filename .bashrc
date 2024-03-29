#
xset r rate 190 70

export VISUAL=nvim
export EDITOR="$VISUAL"

HISTSIZE=10000
HISTFILESIZE=10000

# user aliases:
alias py='python'
alias ls='exa -F'
alias l='ls'
alias la='l -a'
alias lla='la -l'
alias vi='nvim'
alias svi='sudo nvim'
alias svim='sudo vim'
alias rr='ranger'
alias cat='bat -p'
alias q='exit'

# bash's greeting
neofetch 
#pwd | figlet
#neofetch --off
# neofetch conf file: .config/neofetch/config.conf
cowsay -f kitty "Hello," $(hostname)
echo ---------------------------------------------

