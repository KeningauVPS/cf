---
title: haproxy docker
date: 2016-09-06 15:52:35
tags:
---

### Install
---
```
docker pull nginx
docker pull haproxy
```

### Run Web
---
```
docker run --name n1 -v /root/n1:/usr/share/nginx/html:ro -d nginx
docker run --name n2 -v /root/n2:/usr/share/nginx/html:ro -d nginx
```

### Modify DNS
---
* point to IP

### Modify haproxy.cfg
---
* frontend domain name
* backend server name port

### Run Haproxy
---
```
docker run -d --name my_haproxy -p 80:80 --link n1:n1 --link n2:n2 -v /root/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro haproxy
```

### Reload cfg
---
```
docker kill -s HUP my_haproxy
```
