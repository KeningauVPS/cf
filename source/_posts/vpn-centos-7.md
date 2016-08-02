---
title: vpn centos 7
date: 2016-08-02 12:27:18
tags:
---

1. wget {% asset_link vpn_centos7.sh %}
2. chmod a+x vpn_centos7.sh
3. ./vpn_centos7.sh
4. vim /etc/ppp/chap-secrets
5. service pptpd restart
6. yum install net-tools