My own scripts and configuration files for GNU/Linux and macOS

Install on macOS Sierra
---

Clone this repository:

    $ cd $HOME
    $ git clone https://github.com/jrbellido/homedir.git .homedir

Backup and link to new bash configuration:

    $ mv .bashrc .bashrc.original
    $ ln -s .homedir/bashrc .bashrc
    
Backup and link to new git configuration:
    
    $ mv .gitconfig .gitconfig.original
    $ ln -s .homedir/gitconfig .gitconfig

Install `coreutils` package:

    $ brew install coreutils

Run this script on every new shell:

    $ echo "source $HOME/.bashrc" >> $HOME/.bash_profile
