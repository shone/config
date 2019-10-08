# Config

This repository contains my personal configutation files for various tools and applications, such as [Sway](https://swaywm.org/), [Dolphin](https://github.com/KDE/dolphin), [Inkscape](https://inkscape.org/), [Alacritty](https://github.com/jwilm/alacritty) etc, and also linux system configuration like automatic login and fan control.

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
