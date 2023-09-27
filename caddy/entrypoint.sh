#!/bin/sh
envsubst < /templates/caddy/Caddyfile.template > /etc/caddy/Caddyfile
exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile

