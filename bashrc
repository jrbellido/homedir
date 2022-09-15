if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

[ -x /usr/bin/broot ] && source /home/jr/.config/broot/launcher/bash/br

[ -x /bin/fish ] && SHELL=/bin/fish exec fish

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

source /home/jr/.config/broot/launcher/bash/br
