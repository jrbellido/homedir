#!/bin/bash

# For GNU core utils support in OSX:
# > sudo port install coreutils
if [ -d /opt/local/libexec/gnubin/ ]; then
    export PATH=/opt/local/libexec/gnubin/:$PATH
fi

if [ -f ~/.homedir/aliases ]; then
    source ~/.homedir/aliases
fi

# virtualenvwrapper
if [ -d ~/.virtualenvs ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/workspace
    source /usr/local/bin/virtualenvwrapper.sh
fi
