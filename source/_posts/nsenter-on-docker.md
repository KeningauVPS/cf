---
title: nsenter on docker
date: 2016-08-09 17:03:10
tags:
---

# Install

1. wget https://www.kernel.org/pub/linux/utils/util-linux/v2.28/util-linux-2.28.tar.gz
2. tar zxvf util-linux-2.28.tar.gz
3. cd util-linux-2.28
4. ./configure \-\-without-ncurses
5. make nsenter
6. cp nsenter /usr/local/bin

NOTE:
* DOT NOT make install
* Mac Not Supported

---

# Usage


```
$ docker ps
$ docker inspect --format "{{ .State.Pid }}" <CONTAINER ID>
$ nsenter --mount --uts --ipc --net --pid --target <PID>
```
