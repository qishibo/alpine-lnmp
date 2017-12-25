# alpine lnmp

> lnmp based on alpine, total size is only 200MB.

2017.12.25 versions:

 - nginx 1.12.2
 - php 7.1.12
 - mysql Ver 15.1 Distrib 10.1.28-MariaDB

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


view
 [http：//localhost](http：//localhost), you will see yours

 ![phpinfo](https://ws1.sinaimg.cn/large/71405cably1fmt3fod4nuj20oe0i2djf.jpg)
