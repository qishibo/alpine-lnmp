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

```bash
# pull the image
docker pull qii404/alpine-lnmp

# default index.php is phpinfo if without '-v'
docker run -itd -p80:80 -p3306:3306 --name alpine-lnmp qii404/alpine-lnmp:latest

# or mount your application code
docker run -itd -p80:80 -p3306:3306 -v /Your-Code-Path:/usr/share/nginx/html --name alpine-lnmp qii404/alpine-lnmp:latest
```

### Build Yourself (if you want)

```bash
cd alpine-lnmp;
docker build -t alpine-lnmp:latest .

# default index.php is phpinfo if without '-v'
docker run -itd -p80:80 -p3306:3306 --name alpine-lnmp alpine-lnmp:latest

# or mount your application code
docker run -itd -p80:80 -p3306:3306 -v /Your-Code-Path:/usr/share/nginx/html --name alpine-lnmp alpine-lnmp:latest
```

 -------

### Mysql

> user:root
password:root

```bash
# if you want to mount my.cnf yourself
docker run -v my.cnf:/etc/mysql/my.cnf ...

# if you want to mount mysql datadir
docker run -v /your_data_dir/:/var/lib/mysql/ ...

# connect
mysql -h localhost -uroot -proot
```

### Nginx

```bash
# if you want to mount your nginx.conf
docker run -v nginx.conf:/etc/nginx/nginx.conf ...

# if you want to add more nginx conf to conf.d
docker run -v /your_conf.d/:/etc/nginx/conf.d/

# root path
/usr/share/nginx/html
```


### Final

view [http://localhost](http://localhost), you will see yours

![phpinfo](http://7xsudm.com1.z0.glb.clouddn.com/%E6%B7%B1%E5%BA%A6%E6%88%AA%E5%9B%BE_%E9%80%89%E6%8B%A9%E5%8C%BA%E5%9F%9F_20171225163005.png)
