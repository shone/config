# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export XDG_CURRENT_DESKTOP=KDE

# This causes context menus in Dolphin and Kate to appear in the wrong locations.
# It does allow Dolphin's single-click-to-open mode to work though.
export KDE_SESSION_VERSION=5

export QT_AUTO_SCREEN_SCALE_FACTOR=0 # Prevent super small fonts in certain cases

# Make QT apps use native wayland instead of xwayland
# Has issues though, like context menus appearing in the wrong location.
# export QT_QPA_PLATFORM=wayland-egl

# Causes flickering artifacts in Firefox
#export MOZ_ENABLE_WAYLAND=1

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
