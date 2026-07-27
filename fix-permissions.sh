#!/usr/bin/env bash
# File: fix-permissions.sh
# Description: Safely fixes Linux web server directory and file permissions.

set -e

# Accept user input or default to standard web root and www-data user
TARGET_DIR="${1:-/var/www/html}"
WEB_USER="${2:-www-data}"
WEB_GROUP="${3:-www-data}"

echo "=========================================="
echo " Starting Permission Reset"
echo " Target Directory: $TARGET_DIR"
echo " Owner/Group:      $WEB_USER:$WEB_GROUP"
echo "=========================================="

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: Directory '$TARGET_DIR' does not exist."
  exit 1
fi

echo "1. Updating ownership to $WEB_USER:$WEB_GROUP..."
chown -R "$WEB_USER":"$WEB_GROUP" "$TARGET_DIR"

echo "2. Setting directory permissions to 755 (drwxr-xr-x)..."
find "$TARGET_DIR" -type d -exec chmod 755 {} +

echo "3. Setting file permissions to 644 (-rw-r--r--)..."
find "$TARGET_DIR" -type f -exec chmod 644 {} +

echo "=========================================="
echo " Permissions successfully fixed!"
echo "=========================================="

