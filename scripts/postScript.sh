#!/bin/bash

echo "== PostScript: Finalizing Moodle deployment =="

# Set correct ownership (adjust if you're using different user)
#chown -R root /var/www/html
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
#find /var/www/html -type f -exec chmod 644 {}\;
# Restart web server
echo "Restarting web server..."
systemctl restart apache2

# Optional: clear cache (Moodle-specific)
#sudo -u www-data /usr/bin/php /var/www/moodle/admin/cli/purge_caches.php

echo "== PostScript complete =="
