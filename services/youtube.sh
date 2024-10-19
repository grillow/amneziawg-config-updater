#!/usr/bin/env bash

youtube_ips="$(wget -O- https://github.com/iamkuper/amnezia-youtube-config/raw/refs/heads/main/ips.txt 2>/dev/null | tr '\n' ',' | sed 's/,$//')"
sudo sed -i "/# YouTube/{n;s|^AllowedIPs = .*|AllowedIPs = $youtube_ips|}" "$CONFIG_PATH"
