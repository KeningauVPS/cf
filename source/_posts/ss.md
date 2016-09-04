---
title: ss
date: 2016-08-29 12:20:12
tags:
---

### Note
---
* kernel must be 3.10 at minimum if use docker build.
* centos6.8 + 3.10(lt) kernel + 1.7.1 docker, It works.
* upgrade kernel if needed.

### Build ss
---
```
wget https://raw.githubusercontent.com/shadowsocks/shadowsocks-libev/master/docker/alpine/Dockerfile
docker build -t shadowsocks-libev .
docker images
```

### Run ss
---
```
docker run -d -e METHOD=aes-256-cfb -e PASSWORD=XXXX -p 8388:8388 --restart always shadowsocks-libev
docker ps
```

### Client
---
* mac: {% asset_link ShadowsocksX-2.6.3.dmg %}
* win: {% asset_link Shadowsocks-3.2.zip %}

### Usage
---
* change port better
* set wifi proxy with ss for phone
* use nodejs proxy option for http request

---
REF:

[ss alpine docker](https://github.com/shadowsocks/shadowsocks-libev/tree/master/docker/alpine) | [ss mac help](https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-%E5%B8%AE%E5%8A%A9) | [ss win help](https://github.com/shadowsocks/shadowsocks-windows/wiki/Shadowsocks-Windows-%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E) | [ss client list](https://shadowsocks.org/en/download/clients.html)
