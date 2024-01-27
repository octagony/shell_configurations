if status is-interactive
#ZOXIDE INIT
zoxide init fish | source

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

# GIT
alias gs='git status'
alias gf='git fetch'
alias gcc='git checkout'
alias gc='git commit'
alias gm='git merge'

#SETS
set -gx EDITOR nvim
set -x MANPAGER "sh -c 'col -b | bat -l man -p'"

#REMOVE STARTUP MESSAGE
set fish_greeting 
echo ""
fastfetch	
echo ""
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
