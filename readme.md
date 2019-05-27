# alpine lnmp

> Pure lnmp environment running in docker, based on alpine, total size is only 200MB and compressed size is only 70MB.

hitherto 2019.05.27 versions:

 - nginx 1.16.0
 - php 7.2.18
 - mysql 10.3.15-MariaDB

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

### Basic

```bash
# pull the image
docker pull qii404/alpine-lnmp

# default index.php is phpinfo if without '-v'
docker run -itd -p80:80 -p3306:3306 --name alpine-lnmp qii404/alpine-lnmp:latest
```

view [http://localhost](http://localhost) after two minutes [mysql is initing while starting...], you will see yours

![phpinfo](https://sinaimg.qii404.me/large/71405cably1g3ftuz528lj20qf0ll0wx.jpg)

 -------

### Mount your code

```bash
# mount your application code
docker run -itd -p80:80 -p3306:3306 -v /Your-Code-Path:/usr/share/nginx/html --name alpine-lnmp qii404/alpine-lnmp:latest
```

### Mysql

> user:`root`    password:`root`

```bash
# connect
mysql -h 127.0.0.1 -uroot -proot

# if you want to mount my.cnf yourself
docker run -v my.cnf:/etc/mysql/my.cnf ...

# if you want to mount mysql datadir
docker run -v /your_data_dir/:/var/lib/mysql/ ...
```

### Nginx

> root path: `/usr/share/nginx/html`

```bash
# if you want to mount your nginx.conf
docker run -v nginx.conf:/etc/nginx/nginx.conf ...

# if you want to add more nginx conf to conf.d
docker run -v /your_conf.d/:/etc/nginx/conf.d/
```
