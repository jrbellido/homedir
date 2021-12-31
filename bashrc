if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

[ -x /usr/bin/broot ] && source /home/jr/.config/broot/launcher/bash/br

[ -x /bin/fish ] && SHELL=/bin/fish exec fish
