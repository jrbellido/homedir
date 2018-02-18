#!/bin/bash

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

# rvm
if [ -f ~/.rvm/scripts/rvm ]; then
	source ~/.rvm/scripts/rvm
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
if [ "$DISPLAY" -a -f /usr/bin/setxkbmap ]; then
	setxkbmap -layout "es,ru(phonetic)" -option "grp:alt_shift_toggle"
fi

# jekyllrb
#export RUBYOPT="-KU -E utf-8:utf-8"

# custom prompt
source ~/.homedir/script/git_prompt
export PS1='\[\e[0;37m\]\u@\h\[\e[1;37m\]\[\e[1;30m\]:\[\e[1;37m\]\w\[\e[1;31m\]$(__git_ps1 "[%s]")\[\e[1;37m\]\$\[\e[0m\] '

# add custom scripts to PATH
export PATH=~/.homedir/script:$PATH

# Mac OS X specific
if [ "$(uname)" == "Darwin" ]; then
	alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
	export EDITOR='subl -w'
fi

# Work place specific
if [ "$HOSTNAME" == "PCHOFF6PJF02" ]; then
	export http_proxy=http://proxy1.services.gfc:3128
	export https_proxy=$http_proxy
fi

PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin # Add Ruby Gem binaries

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export GOPATH=$HOME/go


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
