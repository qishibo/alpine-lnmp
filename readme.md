# alpine lnmp

> lnmp based on alpine, total size is only 200MB.

2017.12.25 versions:

 - nginx 1.12.2
 - php 7.1.12
 - mysql Ver 15.1 Distrib 10.1.28-MariaDB

 ## Usage

 ### DockerHub

 ```
docker pull qii404/xxxx
docker run -it -p80:80 -p3306:3306 --name alpine-lnmp alpine-lnmp:1.0
 ```

 ### Build Yourself (if you want)

 ```
cd folder;
docker build -t alpine-lnmp:1.0 .
docker run -it -p80:80 -p3306:3306 --name alpine-lnmp alpine-lnmp:1.0
 ```

 -------

view
 [http：//localhost](http：//localhost), you will see

 ![phpinfo](https://ws1.sinaimg.cn/large/71405cably1fmt3fod4nuj20oe0i2djf.jpg)
