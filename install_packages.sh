BASE_PACKAGES=(
  sway                    # Window manager (wayland)
  alacritty               # Terminal (Super-C sway shortcut)
  wl-clipboard            # Wayland clipboard utilities
  waybar otf-font-awesome # System status indicators + special character font used by waybar
  qt5-wayland             # For running KDE apps natively in wayland
  xorg-server-xwayland    # Required to run X applications like Chromium, Kate etc. on sway/wayland
  breeze-icons            # Icons for KDE apps (Dolphin, Kate)
  kate                    # Text editor (Super-X sway shortcut)
  dolphin dolphin-plugins # File browser (Super-E sway shortcut)
  git
  meld                    # File comparison
  unzip
  rsync                   # Remote file/directory synchronization
  fzf                     # Fuzzy finder, used as part of app launcher (Super-space)
  pulseaudio
  chromium                # (Super-W sway shortcut)
  gwenview okular vlc     # Multimedia viewing
  slurp                   # Select regions on screen for image/video capture
  grim                    # Screen capture (Super-S sway shortcut)
  inkscape krita          # Image editing
)

sudo pacman -S "${BASE_PACKAGES[@]}"

AUR_PACKAGES=(
  wf-recorder # Video screen capture
  spotify
  wdisplays # Graphical monitor setup
)

yay -S "${AUR_PACKAGES[@]}"
