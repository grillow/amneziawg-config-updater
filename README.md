# Amnezia Config Updater

## Как использовать

### Требования к конфигурационному файлу Amnezia/WireGuard
Добавить нужные строчки в раздел ```[Peer]``` конфигурационного файла.

Пример ```/etc/wireguard/client.conf```:
```
[Interface]
...

[Peer]
PublicKey = ...
Endpoint = ...
AllowedIPs = 10.0.13.0/24
# Discord
AllowedIPs = 10.0.13.0/24
# Discord Voice
AllowedIPs = 10.0.13.0/24
# YouTube
AllowedIPs = 10.0.13.0/24
# 2ch
AllowedIPs = 10.0.13.0/24
```

### Запустить
```shell
export CONFIG_PATH="/etc/wireguard/client.conf"

sudo wg-quick down "$CONFIG_PATH"
./update.sh
sudo wg-quick up "$CONFIG_PATH"
```

## TODO:
- Избавиться от копипасты в файлах сервисов
- Автоматически добавлять в конфигурационный файл недостающие строки
