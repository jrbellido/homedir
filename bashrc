#!/bin/bash

# For GNU core utils support in OSX:
# > sudo port install coreutils
if [ -d /opt/local/libexec/gnubin/ ]; then
	export PATH=/opt/local/libexec/gnubin/:$PATH
fi

if [ -f ~/.homedir/aliases ]; then
	source ~/.homedir/aliases
fi

if [ -f ~/.homedir/functions ]; then
	source ~/.homedir/functions
fi

# virtualenvwrapper
if [ -d ~/.virtualenvs ]; then
	export WORKON_HOME=$HOME/.virtualenvs
	export PROJECT_HOME=$HOME/workspace
	source /usr/local/bin/virtualenvwrapper.sh
fi

# enable bash completion in interactive shells
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

# spanish/русский keyboard layout for X
if [ "$DISPLAY" ]; then
	setxkbmap -layout "es,ru(phonetic)" -option "grp:alt_shift_toggle"
fi

# golang
export GOROOT="/usr/lib/go"
export GOPATH="/home/jr/workspace/go"
export GOOS="linux"
export PATH=$PATH:$GOROOT/bin

# jekyllrb
export RUBYOPT="-KU -E utf-8:utf-8"

# custom prompt
source ~/.homedir/script/git_prompt
export PS1='\[\e[0;37m\]\u@\h\[\e[1;37m\]\[\e[1;30m\]:\[\e[1;37m\]\w\[\e[1;31m\]$(__git_ps1 "[%s]")\[\e[1;37m\]\$\[\e[0m\] '

# add custom scripts to PATH
export PATH=~/.homedir/script/:/opt/local/bin:$PATH

# Mac OS X specific
if [ "$(uname)" == "Darwin" ]; then
	alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
	export EDITOR='subl -w'
fi

# Ruby RVM
if [ -f ~/.rvm/scripts/rvm ]; then
	source ~/.rvm/scripts/rvm
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

