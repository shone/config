# Base packages
sudo pacman -S \
  sway                    \ # Window manager (wayland)
  alacritty               \ # Terminal (Super-C sway shortcut)
  breeze-icons            \ # Icons for KDE apps (Dolphin, Kate)
  kate                    \ # Text editor (Super-X sway shortcut)
  dolphin dolphin-plugins \ # File browser (Super-E sway shortcut)
  git                     \
  meld                    \ # File comparison
  unzip                   \
  dmenu                   \ # App launcher ((Alt-D sway shortcut)
  pulseaudio              \
  chromium                \ (Super-W sway shortcut)
  gwenview okular vlc     \ # Multimedia viewing
  grim                    \ # Screen capture (Super-S sway shortcut)
  inkscape krita            # Image editing

yay -S \
  wf-recorder \ # Video screen capture
  spotify

# Extra for laptops
sudo pacman -S \
  waybar \
  otf-font-awesome #(for special characters used by waybar)
yay -S simpfand-git
systemctl enable simpfand
systemctl start simpfand
sensors # Check that fan control is working:
