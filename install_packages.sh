BASE_PACKAGES=(
  base-devel              # Includes GCC, binutils, and other core tools
  linux-headers           # Requied by v4l2loopback-dkms
  sway                    # Window manager (wayland)
  alacritty               # Terminal (Super+C Sway shortcut)
  wl-clipboard            # Wayland clipboard utilities
  waybar otf-font-awesome # System status indicators + special character font used by waybar
  qt5-wayland             # For running KDE apps natively in wayland
  xorg-server-xwayland    # Required to run X applications like Chromium, Kate etc. on sway/wayland
  breeze-icons            # Icons for KDE apps (Dolphin, Kate)
  kate                    # Text editor (Super+X Sway shortcut)
  dolphin dolphin-plugins # File browser (Super+E Sway shortcut)
  packagekit-qt5          # This was required to install the Meld menu service inside Dolphin
  filelight               # For visualizing disk usage
  git
  go                      # The Go programming language
  meld                    # File comparison
  ripgrep                 # File searching
  jq                      # JSON manipulation
  zip unzip
  rsync                   # Remote file/directory synchronization
  fzf                     # Fuzzy finder, used as part of app launcher (Super+space)
  pulseaudio
  chromium                # (Super+W Sway shortcut)
  firefox                 # (Super+F Sway shortcut)
  gwenview okular vlc     # Multimedia viewing
  slurp                   # Select regions on screen for image/video capture
  grim                    # Screen capture (Super+S Sway shortcut)
  wf-recorder             # Video screen capture (needed for capturing into virtual webcam)
  v4l2loopback-dkms       # For doing virtual webcams. (Super+V for capturing screen into virtual webcam).
  inkscape krita          # Image editing
)

sudo pacman -S "${BASE_PACKAGES[@]}"
