export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="ys" # set by `omz`

CASE_SENSITIVE="true"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13


plugins=(git zsh-autosuggestions fast-syntax-highlighting zsh-autocomplete)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"


# user added
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.local/bin:$PATH"

alias whatsfucked="sudo systemctl --failed"
alias cat="bat"
alias cd="z"
alias zshcon="nvim $HOME/.zshrc"
alias zshsouce="source $HOME/.zshrc"
#debian and ubuntu and mint
#alias update="sudo apt update && sudo apt upgrade && sudo apt autoremove"
# fedora

alias fedoraup="sudo dnf update -y && flatpak update -y"
#arch
alias pacup="sudo pacman -Syuu"
alias parup="paru -Syuu"
alias ls="eza -l --icons"
alias df="df -h"
alias devnow="z /mnt/data_nvme/projects; ls -al"
alias devpython="z /mnt/data_nvme/projects/0_dev/00_learning_python/python_crash_course; ls -al"
alias devrust="z /mnt/data_nvme/projects/0_dev/01_learn_rust; ls -al"
#ssh
# alias ssh="kitty +kitten ssh"
alias raspy="ssh alin@raspyclw"
alias mediadebian="ssh almeds@mediadebian"
export TERM=xterm-256color
#zoxide

eval "$(zoxide init zsh)"

afetch

curl -s ipinfo.io --connect-timeout 3 | jq --raw-output '.country, .region'
# alias myloc = 'curl -s ipinfo.io --connect-timeout 3 | jq --raw-output ".country, .region"'
myloc() {
    curl -s ipinfo.io --connect-timeout 3 | jq --raw-output '.country, .region'
  }


