#!/bin/bash
if [ $# -lt 2 ]; then
	echo "Usage: $0 SSID PASSWORD IFACE[usb0]"
	exit 1
fi
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

ESSID=$1
PASSWD=$2
IFACE=$3

if [ ${#PASSWD} -lt 8 ]; then
	echo "Password must be 8 or more characters"
	exit 1
fi

if [ "$IFACE" == "" ]; then
	IFACE="usb0"
fi

echo "Setting $ESSID with password \"$2\"..."
wpa_passphrase $ESSID $PASSWD >> /etc/wpa_supplicant/wpa_supplicant.conf
echo "Applying changes to $IFACE..."
dhcpcd "$IFACE"
