---
title: mysql on docker
date: 2016-08-25 11:24:06
tags:
---

run mysql

```
docker pull mysql
docker run --name SELF_NAME -d -p SELF_PORT:3306 -v /SELF_PATH:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=SELF_PASSWORD mysql
```
on existing database SELF_PATH, use password setting before:

```
docker run --name SELF_NAME -d -p SELF_PORT:3306 -v /SELF_PATH:/var/lib/mysql mysql
```
dump db data:

```
docker exec SELF_NAME sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > xxx.sql
```
OR

```
docker exec SELF_NAME sh -c 'exec mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" SELF_BASENAME' > xxx.sql
```

run phpmyadmin:

```
docker pull phpmyadmin/phpmyadmin
docker run --name SELF_NAME -d -p SELF_PORT:80 --link SELF_NAME_MYSQL:db phpmyadmin/phpmyadmin
```

---

see [mysql](https://hub.docker.com/_/mysql/) and [phpmyadmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin/)
