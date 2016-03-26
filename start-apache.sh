#!/bin/bash
set -e

# Apache gets grumpy about PID files pre-existing
rm -f /var/run/apache2/apache2.pid

chown www-data:www-data /etc/apache2/cert/*
chmod 400 /etc/apache2/cert/server.key

exec apache2ctl -D FOREGROUND

