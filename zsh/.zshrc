#EXPORTS
export ZSH="$HOME/.oh-my-zsh"
export PATH=/home/octagony/.bun/bin/:$PATH

#ZSH_THEME
ZSH_THEME="kennethreitz"
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
plugins=(git
     zsh-syntax-highlighting  
     zsh-autosuggestions
     z
)

#OH-MY-ZSH PATH
source $ZSH/oh-my-zsh.sh

#ALIASES
alias ins="paru -S --disable-download-timeout"
alias del="paru -Rcsn"
alias upd="paru -Syu"
alias c="clear; echo; fastfetch; echo"
alias ll="exa --long -all --icons"
alias ls="exa --icons"
alias cat="bat --theme="Catppuccin-mocha""
alias du="sudo dust"
alias lg="lazygit"
alias tre="tre -e"

#NVIM ALIASES
alias vi="nvim"
alias svi="sudo nvim"
alias vis='nvim "+set si"'

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

#Execute fastfetch
echo
fastfetch
echo 
