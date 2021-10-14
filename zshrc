export UPDATE_ZSH_DAYS=30

COMPLETION_WAITING_DOTS="true"

ZSH_THEME="minimal"

export PATH=$HOME/.homedir/bin:$PATH

if [ -x "/usr/bin/nvim" ] ; then
  export EDITOR='/usr/bin/nvim'
elif [ -x "vim" ] ; then
  export EDITOR='/usr/bin/vim'
else
  export EDITOR='/usr/bin/vi'
fi

PROMPT='%n@%m:%~$(git_prompt_info)$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[240]%}[%{$FG[245]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[240]%}%{$FG[255]%}*%{$reset_color%}%{$FG[240]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[240]%}]"

alias tmux="tmux -2"
alias kp="kopia"
