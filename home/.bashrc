# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export XDG_CURRENT_DESKTOP=KDE
export KDE_SESSION_VERSION=5
export QT_AUTO_SCREEN_SCALE_FACTOR=0 # Prevent super small fonts in certain cases

# Make QT apps use native wayland instead of xwayland
# export QT_QPA_PLATFORM=wayland-egl

# Fix Android Studio blank screen problem
# https://wiki.archlinux.org/index.php/Android#Android_Studio
export _JAVA_AWT_WM_NONREPARENTING=1

# https://github.com/riobard/bash-powerline
# (with minor modifications)
source ~/.bash-powerline.sh

# fzf
# https://github.com/junegunn/fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
