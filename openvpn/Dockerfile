# alpine=3.10 OpenVPN 2.4.11
FROM uklab/alpine

LABEL MAINTAINER="me@ukto.top"

# 安装 openvpn
RUN apk add --no-cache openvpn

# 拷贝 entrypoint 脚本到容器中，并赋予执行权限
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

# 使用绝对路径作为 ENTRYPOINT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]