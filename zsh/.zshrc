#EXPORTS
export TERM="xterm-256color"
export EDITOR="nvim"
export VISUAL="coduim"

#LOAD GIT INFO
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats 'on (%b) '

#NEWLINE HELPER
NEWLINE=$'\n'

#CUSTOM PROMPT
setopt PROMPT_SUBST
PROMPT='  %B% %F{blue}%~%f %F{red}${vcs_info_msg_0_} %b% ${NEWLINE}  %F{magenta}❯% %F{cyan}❯%  %F{blue}%'

# MANPAGER
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

#ALIASES
alias ins="paru -S --disable-download-timeout"
alias del="paru -Rcsn"
alias upd="paru -Syu"
alias ser="nala search"
alias c="clear; echo; fastfetch; echo"
alias ll="exa --long -all --icons"
alias ls="exa --icons"
alias cat="bat --theme="Catpuccin-mocha""
alias du="sudo dust"
alias lg="lazygit"
alias tre="tre -e"
alias fd="fdfind"
alias code="codium"

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

# ZOXIDE INIT
  eval "$(zoxide init zsh)"

# FASTFETCH INIT
  echo ""
  fastfetch
  echo ""

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/completions"
plug "wintermi/zsh-rust"
plug "embeddedpenguin/sanekeybinds"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit
