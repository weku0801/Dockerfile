# 常用的 `container`

## [OpenVPN Client](openvpn)

将 `client.ovpn` 文件放至 `/volume1/docker/openvpn-client/config` 下，文件名不能修改

```yaml
services:
  openvpn:
    image: uklab/openvpn-client
    container_name: openvpn-client
    hostname: openvpn-client
    networks:
      macvlann:
        ipv4_address: 192.168.1.2
    devices:
      - /dev/net/tun:/dev/net/tun
    volumes:
      - /volume1/docker/openvpn-client/config:/etc/openvpn
    cap_add:
      - NET_ADMIN
    entrypoint: ["/usr/local/bin/entrypoint.sh"]

networks:
  macvlann:
    external: true
```
之后执行 `docker compose up -d` 启动