#ZSH_THEME
ZSH_THEME="kennethreitz"

#SOURCES
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
plugins=(git
     zsh-syntax-highlighting  
     zsh-autosuggestions
     z
     sudo
     copybuffer
     dirhistory
)


#EXPORTS
export ZSH="$HOME/.oh-my-zsh"
export PATH=/home/octagony/.bun/bin/:$PATH
export PATH=/usr/lib/docker/cli-plugins/:$PATH
export PATH=/home/octagony/.config/composer/vendor/bin:$PATH

# FNM
export PATH="/home/octagony/.local/share/fnm:$PATH"
eval "`fnm env`"
eval "$(fnm env --use-on-cd)"

#OH-MY-ZSH PATH
source $ZSH/oh-my-zsh.sh

#ALIASES
alias ins="paru -S --disable-download-timeout"
alias del="paru -Rcsn"
alias c="clear; echo; fastfetch; echo"
alias ll="exa --long -all --icons"
alias cat="bat --theme="Catppuccin-mocha""
alias lg="lazygit"

#NVIM ALIASES
alias vi="nvim"
alias svi="sudo nvim"

#YT-DLP ALIAS
alias yd="yt-dlp"

#TMUX ALIASES
alias t="tmux"
alias tn="tmux new -s"
alias ta="tmux attach"
alias td="tmux detach"

#CARGO ALIASES
alias ca="cargo add"
alias cr="cargo run"
alias cc="cargo check"

# NAVIGATION
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# GIT 
alias gs='git status'
alias gf='git fetch'
alias gcc='git checkout'
alias gc='git commit'
alias gm='git merge'

#Execute fastfetch
echo
fastfetch
echo 
