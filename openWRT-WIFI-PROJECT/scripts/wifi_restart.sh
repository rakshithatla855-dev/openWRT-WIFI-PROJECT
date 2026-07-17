#!/bin/sh
# wifi_restart.sh
# Restarts Wi-Fi and the network service on an OpenWrt device.
# Run this ON the OpenWrt router (via SSH), as root.

set -e

echo "[wifi_restart] Reloading wireless config..."
wifi reload

echo "[wifi_restart] Restarting network service..."
/etc/init.d/network restart

echo "[wifi_restart] Current interfaces:"
ip a

echo "[wifi_restart] Done."
