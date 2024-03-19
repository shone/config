BASE_PACKAGES=(
  base-devel              # Includes GCC, binutils, and other core tools
  sway                    # Window manager (wayland)
  alacritty               # Terminal (Super+C Sway shortcut)
  wl-clipboard            # Wayland clipboard utilities
  waybar otf-font-awesome # System status indicators + special character font used by waybar
  mako libnotify          # Notifications. Libnotify required for Firefox.
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
  nomacs okular mpv       # Multimedia viewing
  slurp                   # Select regions on screen for image/video capture
  grim                    # Screen capture (Super+S Sway shortcut)
  wf-recorder             # Video screen capture
  inkscape krita          # Image editing
  speedcrunch             # calculator
  vulkan-icd-loader vulkan-intel # Vulkan rendering API (https://wiki.archlinux.org/title/Vulkan#Installation)
  typescript-language-server # For Javascript LSP support in Kate (jump-to-definition etc.)
)

sudo pacman -S "${BASE_PACKAGES[@]}"
