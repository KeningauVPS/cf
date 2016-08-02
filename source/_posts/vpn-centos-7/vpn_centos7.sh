#!/bin/bash
 
yum -y update
 
wget -c http://dl.fedoraproject.org/pub/epel/7/x86_64/p/pptpd-1.4.0-2.el7.x86_64.rpm
yum -y install pptpd-1.4.0-2.el7.x86_64.rpm
 
cp -rf /etc/pptpd.conf /etc/pptpd.conf.bak
cat >> /etc/pptpd.conf << EOF
localip 192.168.144.1
remoteip 192.168.144.2-254
EOF
 
cp -rf /etc/ppp/options.pptpd /etc/ppp/options.pptpd.bak
cat >> /etc/ppp/options.pptpd <<EOF
ms-dns 8.8.8.8
ms-dns 8.8.4.4
EOF
 
yum -y install ppp
 
cp -rf /etc/ppp/chap-secrets /etc/ppp/chap-secrets.bak
cat >> /etc/ppp/chap-secrets << EOF
vpn pptpd 123456 *
EOF
 
cp -rf /etc/rc.d/rc.local /etc/rc.d/rc.local.bak
cat >> /etc/rc.d/rc.local <<EOF
iptables -A INPUT -p gre -j ACCEPT
iptables -t nat -A POSTROUTING -s 192.168.144.0/24 -j MASQUERADE
iptables -A INPUT -p tcp -m multiport --dport 1723 -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward
systemctl restart pptpd
EOF
 
chmod +x /etc/rc.d/rc.local
 
iptables -A INPUT -p gre -j ACCEPT
iptables -t nat -A POSTROUTING -s 192.168.144.0/24 -j MASQUERADE
iptables -A INPUT -p tcp --dport 1723 -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward
systemctl restart pptpd
systemctl enable pptpd
 
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Success! And the VPN account is:"
echo "Method:PPTP"
echo "User:vpn"
echo "Password:123456"
echo "If you want modify, with vim tool at /etc/ppp/chap-secrets"
echo "Good luck!"
