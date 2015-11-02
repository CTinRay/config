#
# ~/.bashrc
#

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias emacst='emacs --no-window'
PS1='\[\033[1;32m\]\u\[\033[0m\]\[\033[1;36m\]\W\\\[\033[0m\]$ '


export LANG=en_US.UTF-8
#complete -cf sudo


