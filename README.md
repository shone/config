# Config

This repository contains my personal configutation files for various tools and applications, such as [Sway](https://swaywm.org/), [Dolphin](https://github.com/KDE/dolphin), [Inkscape](https://inkscape.org/), [Alacritty](https://github.com/jwilm/alacritty) etc, and also linux system configuration like automatic login and fan control.

## Keyboard Shortcuts

The [sway config](home/.config/sway/config) has keyboard shortcuts for several core apps/tools:

| | | |
| - | - | - |
| Terminal | [Alacritty](https://github.com/alacritty/alacritty) | Super-C |
| Text editor | [Kate](https://kate-editor.org/) | Super-X |
| File browser | [Dolphin](https://kde.org/applications/system/org.kde.dolphin) | Super-E |
| Web browser | [Chromium](https://www.archlinux.org/packages/extra/x86_64/chromium/) | Super-W |
| Take screenshot | [Grim](https://github.com/emersion/grim) | Super-S |
| App Launcher | `compgen -c \| fzf` | Super-Space |
| Display setup | wdisplays | Super-D |

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
cd yay
sudo pacman -S gcc binutils
makepkg -si
```

## Fan control (for ThinkPads)
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
