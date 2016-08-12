---
title: vps test
date: 2016-08-12 10:45:03
tags:
---

1. wget {% asset_link bench.sh %}
2. chmod +x bench.sh
3. ./bench.sh

![](2016/08/12/vps-test/b_ref.png)

---

1. wget {% asset_link unixbench.sh %}
2. chmod +x unixbench.sh
3. ./unixbench.sh

![](2016/08/12/vps-test/ub_ref.png)

---

1. wget http://c.speedtest.net/mini/mini.zip
2. unzip mini.zip
3. mv mini #YOUR SITE ROOT#
4. browser #YOUR DOMAIN#/mini/index-php.html

![](2016/08/12/vps-test/m_ref.png)

---

1. cat /proc/cpuinfo (cpu info)
2. cat /proc/meminfo (mem info)
3. df -lh (hard info)

--- 

1. dd if=/dev/zero of=test bs=64k count=4k oflag=dsync (ref: 209MB/S)
2. dd if=/dev/zero of=test bs=8k count=256k conv=fdatasync (ref: 145MB/S)

---

1. wget http://cachefly.cachefly.net/100mb.test (ref: 81.2MB/s)
2. ping google.com (ref: 24.3ms)
3. ping facebook.com (ref: 30.1ms)
4. ping youtube.com (ref: 24.2ms)
5. ping twitter.com (ref: 11.8ms)
6. ping baidu.com (ref: 169ms)
7. ping qq.com (ref: 159ms)

---

1. wget {% asset_link speedtest-cli.py %}
2. chmod +x speedtest-cli.py
3. ./speedtest-cli.py \-\-help
4. ./speedtest-cli.py \-\-list
5. ./speedtest-cli.py \-\-list | grep Beijing
6. ./speedtest-cli.py \-\-server=4713 (ref: D: 1.64 Mbit/s U: 10.15 Mbit/s)
7. ./speedtest-cli.py \-\-list | grep "New York"
8. ./speedtest-cli.py \-\-server=2947 (ref: D: 53.33 Mbit/s U: 34.81 Mbit/s)

---

### Ping switch

ON

```
$ sysctl -w net.ipv4.icmp_echo_ignore_all=0
```

OFF

```
$ sysctl -w net.ipv4.icmp_echo_ignore_all=1
```
