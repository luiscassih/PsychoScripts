# PsychoRabbitZero
Useful configurations for a Raspberry Pi Zero portable server.

Scripts
----------

- **add_wpa** - A shortcut to add a WPA interface to wpa_supplicant.conf, and apply the changes to dhcpcd service.
```
Example usage: add_wpa "WiFi Home" "password123" wlan0
```
- **add_ip** - Set an interface with a static ip in dhcpcd.conf and apply the changes to dhcpcd service.
```
Example usage: add_ip 192.168.27.2/24 enp0s20u8 192.168.27.1
```

TODO
----------
- [ ] **wifimenu** - A simple way to set a WiFi connection via console, with a select menu UI.
