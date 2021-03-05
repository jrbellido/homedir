My configuration files for GNU/Linux and macOS

Requirements
--
* coreutils (only for macOS)

Install
--

Clone this repository:

    $ cd $HOME
    $ git clone https://github.com/jrbellido/homedir.git .homedir

Backup and link to new git configuration:
    
    $ mv .gitconfig .gitconfig.original
    $ ln -s .homedir/gitconfig .gitconfig

Configure Vim:

    $ ln -s .homedir/vim/vimrc .vimrc

Add this line to Zsh configuration:

    source $HOME/.homedir/zshrc

Link to tmux configuration:

    $ ln -s ~/.homedir/tmux.conf ~/.tmux.conf

