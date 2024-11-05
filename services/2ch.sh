#!/usr/bin/env bash

aib_2ch_ips="$(dig +short 2ch.hk 2ch.life | tr '\n' ',' | sed 's/,$//')"
sudo sed -i "/# 2ch/{n;s|^AllowedIPs = .*|AllowedIPs = $aib_2ch_ips|}" "$CONFIG_PATH"
