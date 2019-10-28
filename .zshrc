[[ $(tty) = "/dev/tty1" ]] && exec startx

export ZSH="/home/strix/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

POWERLEVEL9K_CUSTOM_FEDORA_ICON="echo ﰁ"
POWERLEVEL9K_CUSTOM_FEDORA_ICON_BACKGROUND=171
POWERLEVEL9K_CUSTOM_FEDORA_ICON_FOREGROUND=015

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_fedora_icon dir vcs)

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias ls="lsd"
alias zshconfig="doas nvim ~/.zshrc"
alias ohmyzsh="doas nvim ~/.oh-my-zsh"
alias xi="doas emerge -av --jobs"
alias xr="doas emerge -Cav --jobs"
alias xiu="doas ego sync && doas emerge -auvDN @world"
alias etcu="doas etc-update --automode -5"
## alias zt="XDG_SESSION_TYPE=wayland dbus-run-session gnome-session"
