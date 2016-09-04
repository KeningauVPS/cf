---
title: docker on centos
date: 2016-08-08 15:48:05
tags:
---

# check VPS
1. yum install virt-what
2. virt-what
3. uname -r
4. cat /etc/centos-release

### Note:
- openVZ unsupported, KVM good.
- kernel must be 3.10 at minimum.
- docker is ok now for centos 6.8 with kernel 2.6, only 1.7.1 can be used.
- so centos7 or ubuntu recommended to run 1.12 or higher version.

---

# Install
1. sudo yum update
2. curl -fsSL https://get.docker.com/ | sh
3. docker \-\-version
4. sudo service docker start
5. sudo chkconfig docker on
6. sudo docker run hello-world

---

# Uninstall
1. yum list installed | grep docker
2. sudo yum -y remove docker-engine.x86_64
3. rm -rf /var/lib/docker

---

see [office](https://docs.docker.com/engine/installation/linux/centos/)
