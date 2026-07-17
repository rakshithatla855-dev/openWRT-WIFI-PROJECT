#!/bin/sh
# restore_config.sh
# Restores a previously saved OpenWrt configuration backup.
# Run this ON the OpenWrt router (via SSH), as root.
#
# Usage: sh restore_config.sh /tmp/backup-openwrt-YYYYMMDD-HHMMSS.tar.gz

set -e

BACKUP_FILE="$1"

if [ -z "${BACKUP_FILE}" ]; then
  echo "Usage: sh restore_config.sh <path-to-backup.tar.gz>"
  exit 1
fi

if [ ! -f "${BACKUP_FILE}" ]; then
  echo "[restore_config] File not found: ${BACKUP_FILE}"
  exit 1
fi

echo "[restore_config] Restoring from: ${BACKUP_FILE}"
sysupgrade -r "${BACKUP_FILE}"

echo "[restore_config] Restore complete. The device will reboot to apply the config."
