#!/usr/bin/env bashio

CONFIG_PATH=/data/options.json
CONFIG_FILE=$(bashio::config 'config_file')

# Запускаем контейнер из официального образа rpi2home-assistant
docker run \
  --name rpi2mqtt \
  --restart unless-stopped \
  --privileged \
  --network host \
  -v /dev:/dev:ro \
  -v /run/udev:/run/udev:ro \
  -v "${CONFIG_FILE}:/etc/rpi2home-assistant.yaml:ro" \
  ghcr.io/f18m/rpi2home-assistant:latest \
  --config-file /etc/rpi2home-assistant.yaml