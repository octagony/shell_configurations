#EXPORTS
export ZSH="$HOME/.oh-my-zsh"
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

# PLUGINS
plugins=(
     zsh-autosuggestions
     sudo
     dirhistory
     git
)

#OH-MY-ZSH SOURCE
source $ZSH/oh-my-zsh.sh

# MANPAGER
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# ALIASES
	alias ins="sudo nala install"
	alias del="sudo nala remove"
	alias upd="sudo nala update && sudo nala upgrade"
	alias ser="nala search"
	alias c="clear; echo; fastfetch; echo"
	alias ll="exa --long -all --icons"
	alias ls="exa --icons"
	alias cat="batcat --theme="Catpuccin-mocha""
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
	alias yd-mp4="yt-dlp -f 'mp4'"

	#TMUX ALIASES
	alias t="tmux"
	alias tn="tmux new -s"
	alias ta="tmux attach"
	alias td="tmux detach"

	#ZELLIJ ALIASES
	alias zl="zellij"
	alias zn="zellij -s"
	alias zt="zellij attach"
	alias zs="zellij list-sessions"
	alias zk="zellij kill-all-sessions"

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
