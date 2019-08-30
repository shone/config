# Config

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
