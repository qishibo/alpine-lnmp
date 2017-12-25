# alpine lnmp

> Pure lnmp environment running in docker, based on alpine, total size is only 200MB and compressed size is only 70MB.

2017.12.25 versions:

 - nginx 1.12.2
 - php 7.1.12
 - mysql Ver 15.1 Distrib 10.1.28-MariaDB

## PHP Extensions

- php7-ctype
- php7-curl
- php7-dom
- php7-exif
- php7-fileinfo
- php7-gd
- php7-gettext
- php7-iconv
- php7-imagick
- php7-json
- php7-mbstring
- php7-mcrypt
- php7-memcached
- php7-mysqli
- php7-mysqlnd
- php7-opcache
- php7-openssl
- php7-pcntl
- php7-pdo
- php7-pdo_mysql
- php7-pdo_pgsql
- php7-pdo_sqlite
- php7-posix
- php7-redis
- php7-session
- php7-simplexml
- php7-sockets
- php7-sqlite3
- php7-xml
- php7-xmlwriter
- php7-zli
- php7-fpm


## Usage

### DockerHub

```
docker pull qii404/alpine-lnmp
docker run -it -p80:80 -p3306:3306 --name alpine-lnmp alpine-lnmp:latest
```

### Build Yourself (if you want)

```
cd alpine-lnmp;
docker build -t alpine-lnmp:latest .
docker run -it -p80:80 -p3306:3306 --name alpine-lnmp alpine-lnmp:latest
```

 -------

## Mysql Password

> user:root  password:root


view [http://localhost](http://localhost), you will see yours

![phpinfo](https://ws1.sinaimg.cn/large/71405cably1fmt3fod4nuj20oe0i2djf.jpg)
