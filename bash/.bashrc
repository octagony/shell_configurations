# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# EXPORT
export TERM="xterm-256color"                      
export EDITOR="nvim"              
export VISUAL="codium"  

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# SET MANPAGER
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='  \[\e[96m\]\w \[\e[91m\]$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[0m\] \n  \[\e[96m\]❯\[\e[38;5;217m\]❯ \[\e[0m\]'
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi



# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

	#ALIASES
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

# CARGO PATH
. "$HOME/.cargo/env"

#ZOXIDE INIT
eval "$(zoxide init bash)"
