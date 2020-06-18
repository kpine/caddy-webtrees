#!/usr/bin/env sh

if [ ! -f /srv/webtrees/data/index.php ]; then
  cp /tmp/index.php /srv/webtrees/data/index.php
fi

chown -R www-data:www-data /srv/webtrees/data

caddy -conf /etc/Caddyfile -log stdout -agree