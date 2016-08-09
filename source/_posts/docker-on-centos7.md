---
title: docker on centos7
date: 2016-08-08 15:48:05
tags:
---

# check VPS
1. yum install virt-what
2. virt-what
3. uname -r


### Note:
- openVZ unsupported, KVM good.
- kernel must be 3.10 at minimum.

---

# Install
1. sudo yum update
2. curl -fsSL https://get.docker.com/ | sh
3. sudo service docker start
4. sudo docker run hello-world
5. sudo chkconfig docker on

---

# Uninstall
1. yum list installed | grep docker
2. sudo yum -y remove docker-engine.x86_64
3. rm -rf /var/lib/docker

---

see [office](https://docs.docker.com/engine/installation/linux/centos/)
