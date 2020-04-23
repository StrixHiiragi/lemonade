if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias gs="XDG_SESSION_TYPE=wayland dbus-run-session gnome-session"
alias ls="lsd"
alias zt="doas xbps-install -S"
alias ztq="doas xbps-query -Rs"
alias ztr="doas xbps-remove"
alias ztrr="doas xbps-remove -R"
alias ztu="doas xbps-install -Su"
alias zto"doas xbps-remove -O"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
