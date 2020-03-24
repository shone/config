# https://wiki.archlinux.org/index.php/Network_Time_Protocol_daemon#Installation
sudo pacman -S ntp
sudo systemctl enable ntpdate.service # Will only synchronize clock on boot
sudo systemctl start ntpdate.service # Just synchronizes once and stops

BASE_PACKAGES=(
  sway                    # Window manager (wayland)
  alacritty               # Terminal (Super-C sway shortcut)
  waybar otf-font-awesome # System status indicators + special character font used by waybar
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
  grim                    # Screen capture (Super-S sway shortcut)
  inkscape krita          # Image editing
)
AUR_PACKAGES=(
  wf-recorder # Video screen capture
  spotify
)
sudo pacman -S "${BASE_PACKAGES[@]}"
yay -S "${AUR_PACKAGES[@]}"

# Extra for laptops
yay -S simpfand-git
systemctl enable simpfand
systemctl start simpfand
sensors # Check that fan control is working:
