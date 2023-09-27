#!/bin/sh
envsubst < /templates/public-relay/config.toml.template > /home/.nostr-rs-relay/config.toml
exec ./nostr-rs-relay --db ${APP_DATA}
