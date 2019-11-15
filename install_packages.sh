# Base packages
sudo pacman -S \
  alacritty                            \ # Terminal
  kate                                 \ # Text editor
  git meld                             \ # File comparison
  dolphin dolphin-plugins breeze-icons \ # File browser + dependencies
  dmenu                                \ # App launcher
  chromium                             \
  gwenview okular grim                 \ # Image viewing/capture
  inkscape krita                       \ # Image editing
  vlc                                  \
  unzip

# Extra for laptops
sudo pacman -S \
  waybar \
  otf-font-awesome #(for special characters used by waybar)
