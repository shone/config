# Config

This repository contains my personal configuration files for various tools and applications, such as [Sway](https://swaywm.org/), [Dolphin](https://github.com/KDE/dolphin), [Inkscape](https://inkscape.org/), [Alacritty](https://github.com/jwilm/alacritty) etc, and also linux system configuration like automatic login and fan control.

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

## Fan control (for ThinkPads)

This used to be necessary as the fan wouldn't activate at all and the CPU would quickly shut down while under load, but after a recent reinstallation of Arch Linux on a ThinkPad X1 Carbon 7th Gen, the fan activated itself without simpfand or any other fan configuration.

- https://wiki.archlinux.org/index.php/Fan_speed_control#ThinkPad_laptops
- https://github.com/hspak/simpfand
```bash
su
echo options thinkpad_acpi fan_control=1 > /etc/modprobe.d/thinkpad_fan.conf
exit
yay -S simpfand-git
systemctl enable simpfand
systemctl start simpfand
# Check that fan control is working:
sensors
```

## Dynamically set Alacritty window title

With `window.dynamic_title` in `~/.config/alacritty/alacritty.yml` set to true:

```bash
echo -e "\033]0;my-window-title\007"
```
