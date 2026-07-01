#!/usr/bin/env bashio

CONFIG_FILE=$(bashio::config 'config_file')

exec python3 -m rpi2home_assistant \
  --config-file "${CONFIG_FILE}"
