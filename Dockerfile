FROM alpine:edge

# if in China, use ali mirrors
# RUN echo 'http://mirrors.aliyun.com/alpine/latest-stable/main/' > /etc/apk/repositories; \
#     echo 'http://mirrors.aliyun.com/alpine/latest-stable/community/' >> /etc/apk/repositories; \
#     apk update;


# install nginx
RUN apk add nginx; \
    mkdir -p /run/nginx; \
    mkdir -p /usr/share/nginx/html;


# install php
RUN apk add php7 \
            php7-fpm \
            php7-ctype \
            php7-curl \
            php7-dom \
            php7-exif \
            php7-fileinfo \
            php7-gd \
            php7-gettext \
            php7-iconv \
            php7-imagick \
            php7-json \
            php7-mbstring \
            php7-mcrypt \
            php7-memcached \
            php7-mysqli \
            php7-mysqlnd \
            php7-opcache \
            php7-openssl \
            php7-pcntl \
            php7-pdo \
            php7-pdo_mysql \
            php7-pdo_pgsql \
            php7-pdo_sqlite \
            php7-posix \
            php7-redis \
            php7-session \
            php7-simplexml \
            php7-sockets \
            php7-sqlite3 \
            php7-xml \
            php7-xmlwriter \
            php7-zlib;


# install mysql
RUN apk add mysql mysql-client; rm -rf /etc/my.cnf.d/*;


# copy files
COPY start.sh /root/start.sh
COPY my.cnf /etc/mysql/my.cnf
COPY default.conf /etc/nginx/conf.d/
COPY index.php /usr/share/nginx/html/index.php


CMD ["/bin/sh", "/root/start.sh"]
