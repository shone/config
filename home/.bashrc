# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export XDG_CURRENT_DESKTOP=KDE
export QT_AUTO_SCREEN_SCALE_FACTOR=0 # Prevent super small fonts in certain cases

source ~/.bash-powerline.sh
