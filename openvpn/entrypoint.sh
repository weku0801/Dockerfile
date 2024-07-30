#!/bin/sh

# 配置 iptables
/sbin/iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE

# 启动 OpenVPN
/usr/sbin/openvpn --config /etc/openvpn/client.ovpn