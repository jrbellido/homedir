#!/bin/bash

# For GNU core utils support in OSX:
# > sudo port install coreutils
if [ -d /opt/local/libexec/gnubin/ ]; then
    export PATH=/opt/local/libexec/gnubin/:$PATH
fi

if [ -f ~/.homedir/aliases ]; then
    source ~/.homedir/aliases
fi

