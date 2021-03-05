export PATH=$HOME/.homedir/bin:$PATH

if [ -x "/usr/bin/nvim" ] ; then
  export EDITOR='/usr/bin/nvim'
elif [ -x "vim" ] ; then
  export EDITOR='/usr/bin/vim'
else
  export EDITOR='/usr/bin/vi'
fi

PROMPT='%n@%m:%~$(git_prompt_info)$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}%{$fg[yellow]%}*%{$reset_color%}%{$fg[green]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"

alias tmux="tmux -2"
