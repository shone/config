# Josh's bash_profile
# Belongs at ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  export XKB_DEFAULT_LAYOUT=us
  export XKB_DEFAULT_OPTIONS=compose:menu
  exec sway
fi
