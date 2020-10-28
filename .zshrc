# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
 
source $ZSH/oh-my-zsh.sh
 
# User configuration
 
# export MANPATH="/usr/local/man:$MANPATH"
 
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
 
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
 
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
 
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
 
alias ls="lsd"
alias zt="sudo dnf install"
alias ztr="sudo dnf remove"
alias ztu="sudo dnf upgrade"
alias iptv="mpv --script-opts=iptv=1 http://fireurl.me/7h6VGE5jjq"
#grubregen   sudo bash -c " [ -d /sys/firmware/efi/efivars ] && grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg || grub2-mkconfig -o /boot/grub2/grub.cfg"
unsetopt nomatch
 
function dw {
    [ -z $1 ] || [ -z $2 ] && print "need 2 params" && return 1
    sudo dd bs=4M conv=fdatasync if=$1 of=/dev/sd$2 status=progress && return 0
}
 
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
$HOME/.local/share/pacman.sh
