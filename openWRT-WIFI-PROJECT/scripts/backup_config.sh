#!/bin/sh
# backup_config.sh
# Creates a timestamped backup of the current OpenWrt configuration.
# Run this ON the OpenWrt router (via SSH), as root.

set -e

TIMESTAMP=$(date +%Y%m%d-%H%M%S)
BACKUP_FILE="/tmp/backup-openwrt-${TIMESTAMP}.tar.gz"

echo "[backup_config] Creating backup: ${BACKUP_FILE}"
sysupgrade -b "${BACKUP_FILE}"

echo "[backup_config] Backup created at ${BACKUP_FILE}"
echo "[backup_config] Copy it off the router, e.g. from your PC:"
echo "    scp root@<router-ip>:${BACKUP_FILE} ./"
