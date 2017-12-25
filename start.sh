#!/bin/sh

nginx;
php-fpm7;

# init mysqk
mysql_install_db;
mkdir -p /run/mysqld;

# mysql root password
MYSQL_ROOT_PWD=root;

PrivilegeUser=`cat <<EOF
USE mysql;
FLUSH PRIVILEGES;
DELETE FROM mysql.user;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY "$MYSQL_ROOT_PWD" WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY "$MYSQL_ROOT_PWD" WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF`

# init root password
echo "$PrivilegeUser"|mysqld --bootstrap;

# start mysql
mysqld_safe;

/bin/sh;
