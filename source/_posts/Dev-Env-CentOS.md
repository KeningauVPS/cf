---
title: Dev Env CentOS
date: 2016-08-05 10:51:18
tags:
---

1. sudo wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
2. sudo yum makecache
3. sudo yum update
4. sudo yum groupinstall "Development tools"
5. sudo yum install -y gcc cmake make gcc-c++  apr*  automake autoconf libxml2 libxml2-devel openssl openssl-devel curl* libjpeg* libpng* freetype* zlib-devel zip unzip gzip ncurses* pcre-devel bzip2* gd gd-devel kernel keyutils patch perl kernel-headers compat* mpfr cpp glibc libgomp libstdc++-devel ppl cloog-ppl keyutils-libs-devel libcom_err-devel libsepol-devel libselinux-devel krb5-devel zlib-devel libXpm*  php-common php-gd ncurses* libtool*  patch  libmcrypt libmcrypt-devel mcrypt mhash --skip-broken
6. sudo yum install libicu-devel
7. sudo yum install php-devel
8. sudo yum install php-pear
9. sudo yum install curl-devel
10. sudo yum install php-pecl-memcache
11. sudo pecl install pecl_http

---
Repo: [Aliyun](http://mirrors.aliyun.com)