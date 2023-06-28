# Config

This repository contains my personal configuration files for various tools and applications, such as [Sway](https://swaywm.org/), [Dolphin](https://github.com/KDE/dolphin), [Inkscape](https://inkscape.org/), [Alacritty](https://github.com/jwilm/alacritty) etc, and also linux system configuration like automatic login and fan control.

| | |
|-|-|
| OS | [Arch Linux](https://archlinux.org/) |
| Desktop environment | [Sway](https://swaywm.org/) |
| Hardware | ThinkPad X1 Carbon 7th gen |

## Keyboard Shortcuts

The [sway config](home/.config/sway/config) has keyboard shortcuts for several core apps/tools:

|                |                                                                       |                                     |
| -              | -                                                                     | -                                   |
| Terminal       | [Alacritty](https://github.com/alacritty/alacritty)                   | <kbd>Super</kbd> + <kbd>C</kbd>     |
| Text editor    | [Kate](https://kate-editor.org/)                                      | <kbd>Super</kbd> + <kbd>X</kbd>     |
| File browser   | [Dolphin](https://kde.org/applications/system/org.kde.dolphin)        | <kbd>Super</kbd> + <kbd>E</kbd>     |
| Firefox        | [Firefox](https://www.mozilla.org/en-US/firefox/)                     | <kbd>Super</kbd> + <kbd>F</kbd>     |
| Chromium       | [Chromium](https://www.archlinux.org/packages/extra/x86_64/chromium/) | <kbd>Super</kbd> + <kbd>W</kbd>     |
| Screenshot     | [Grim](https://github.com/emersion/grim)                              | <kbd>Super</kbd> + <kbd>S</kbd>     |
| Virtual webcam | [v4l2loopback](https://github.com/umlaeute/v4l2loopback)              | <kbd>Super</kbd> + <kbd>V</kbd>     |
| App Launcher   | `compgen -c \| fzf`                                                   | <kbd>Super</kbd> + <kbd>Space</kbd> |
| Display setup  | wdisplays                                                             | <kbd>Super</kbd> + <kbd>D</kbd>     |
| Audio volume   | pactl                                                                 | <kbd>Super</kbd> + <kbd>0-9</kbd>   |
| Toggle mute    | pactl                                                                 | <kbd>Super</kbd> + <kbd>Grave</kbd> |

## NTP

https://wiki.archlinux.org/index.php/Network_Time_Protocol_daemon#Installation

```bash
sudo pacman -S ntp
sudo systemctl enable ntpdate.service # Will only synchronize clock on boot
sudo systemctl start ntpdate.service # Just synchronizes once and stops
```

## yay (for AUR)

```bash
git clone git@github.com:Jguer/yay.git
# Need to get PKGBUILD file from a different repo
# See https://github.com/Jguer/yay/issues/1179
git clone https://aur.archlinux.org/yay.git yay_pkgbuild
cp yay_pkgbuild/PKGBUILD yay/
cd yay
makepkg -si # Assumes base-devel package is already installed
```
