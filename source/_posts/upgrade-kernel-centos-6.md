---
title: upgrade kernel centos 6
date: 2016-09-04 11:51:05
tags:
---

### Import elrepo public key:
---
```
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
```

### To install ELRepo for RHEL-6, SL-6 or CentOS-6:
---
```
rpm -Uvh http://www.elrepo.org/elrepo-release-6-6.el6.elrepo.noarch.rpm
```

### Search kernel
---
```
yum --enablerepo=elrepo-kernel list | grep kernel*
```

### Install kernel-lt (3.10.x)
---
```
yum --enablerepo=elrepo-kernel install kernel-lt -y
```

### Modify Grub
---
```
vim /etc/grub.conf
```

set default=0 for new kernel when boot

### Over
---
```
$ reboot
$ uname -r
```

### Note
---

* must modify grub and reboot after yum update which will change the kernel.

---
REF:

[ELRepo](http://elrepo.org/tiki/tiki-index.php) | [kernel](https://www.kernel.org/)