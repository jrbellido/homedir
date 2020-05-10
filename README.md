My configuration files for GNU/Linux and macOS

Requirements
--
* fish shell
* coreutils (only in macOS)

Install
--

Clone this repository:

    $ cd $HOME
    $ git clone https://github.com/jrbellido/homedir.git .homedir

Backup and link to new git configuration:
    
    $ mv .gitconfig .gitconfig.original
    $ ln -s .homedir/gitconfig .gitconfig

