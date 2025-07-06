#!/bin/bash

echo "== PreScript: Preparing for Moodle deployment =="

# Stop web server to prevent file conflicts
echo "Stopping web server..."
systemctl stop apache2

# Optional: Backup existing Moodle folder
if [ -d /var/www/html ]; then
  echo "Backing up existing Moodle..."
  mv /var/www/html /var/www/moodle_backup_$(date +%F-%T)
fi

# Create target folder if not exists
mkdir -p /var/www/html

echo "== PreScript complete =="
