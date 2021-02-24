# Josh's bash_profile
# Belongs at ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start Sway automatically as soon as the user is logged in on boot
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  export XKB_DEFAULT_LAYOUT=us
  export XKB_DEFAULT_OPTIONS=compose:ralt
  exec sway
fi
