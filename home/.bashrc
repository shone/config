# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

prompt_command() {
  # Note: color commands are surrounded with [\...\] to ensure the shell knows how to
  # calculate the width of the prompt correctly.

  # Change color based on previous command success/failure
  if [ $? -eq 0 ]; then
    local background_color='\[\e[48;5;32m\]' # Blue
  else
    local background_color='\[\e[48;5;5m\]' # Magenta
  fi

  local foreground_color='\[\e[38;5;255m\]' # White

  local color_reset='\[\033[m\]'

  local current_directory='\w'

  PS1="$foreground_color$background_color$current_directory \$$color_reset "

  # Set window title to directory name
  echo -e -n "\033]0;${PWD##*/}\007"
}
PROMPT_COMMAND='prompt_command'

# This allows single-click-to-open to work in Dolphin
# It also causes Firefox to hide the Sway system titlebars, whereas XDG_CURRENT_DESKTOP=sway causes it to show them.
export XDG_CURRENT_DESKTOP=KDE

# This is required for xdg-desktop-portal-wlr, needed for screen sharing on Wayland.
# See https://github.com/emersion/xdg-desktop-portal-wlr#running
#export XDG_CURRENT_DESKTOP=sway

# This is required for screensharing on wayland, but should be set automatically when recent versions of wlroots and systemd are in use.
# See https://github.com/emersion/xdg-desktop-portal-wlr/wiki/Screencast-Compatibility#webrtc-aka-firefoxchromium
# And https://github.com/emersion/xdg-desktop-portal-wlr/wiki/FAQ#when-i-try-to-share-my-screen-in-the-browser-i-get-nothing--a-black-screen
# export XDG_SESSION_TYPE=wayland

# Setting this fixes /usr/bin/xdg-settings, which on line 664 would attempt to use kreadconfig, but only kreadconfig5 is installed by the Arch kconfig package.
export KDE_SESSION_VERSION=5

export BROWSER=firefox
# Firefox Wayland
# Causes flickering menus in Firefox. Looks like https://bugzilla.mozilla.org/show_bug.cgi?id=1548496
# This was supposed to be fixed in Sway 1.2-rc1: https://github.com/swaywm/sway/pull/4193
# But with Sway 1.5.1 flickery menus are still present in Firefox on Wayland.
#export MOZ_ENABLE_WAYLAND=1

# Prevent super small fonts in certain cases
export QT_AUTO_SCREEN_SCALE_FACTOR=0

# Make QT apps use native wayland instead of xwayland
# Has issues though, like context menus appearing in the wrong location.
# export QT_QPA_PLATFORM=wayland-egl

# Fix Android Studio blank screen problem
# https://wiki.archlinux.org/index.php/Android#Android_Studio
export _JAVA_AWT_WM_NONREPARENTING=1

# fzf
# https://github.com/junegunn/fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
