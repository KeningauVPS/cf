---
title: install node.js
date: 2016-08-01 16:34:26
tags:
---

``` 
$ yum -y install gcc make gcc-c++ openssl-devel wget
$ wget http://nodejs.org/dist/v0.10.26/node-v0.10.26.tar.gz
$ tar -zxvf node-v0.10.26.tar.gz
$ make && make install
$ node -v
$ npm -v
$ npm update -g
$ npm install -g n
$ n stable
```
