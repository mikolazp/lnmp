#!/usr/bin/env bash

apt-get update
apt-get install -y \
    mc \
    htop \
    curl \
    git \
    python \


# nginx
apt-get install -y nginx

#php-fpm
PHP_VER="7.1"

apt-get install software-properties-common
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

apt-get install -y php$PHP_VER-fpm \
    php$PHP_VER-curl \
    php$PHP_VER-zip \
    php$PHP_VER-gd \
    php$PHP_VER-mbstring \
    php$PHP_VER-mcrypt \
    php$PHP_VER-opcache \
    php$PHP_VER-intl \
    php$PHP_VER-mysql \
    php$PHP_VER-dom \
    php$PHP_VER-bz2 \
    php$PHP_VER-geoip \

service php$PHP_VER-fpm restart

#mysql
#apt-get install -y mysql-server

## percona server
#wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
#dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
#apt-get update
#apt-get install -y percona-server-server-5.7


## enable tokudb
#apt-get install -y percona-server-tokudb-5.7
#ps_tokudb_admin --enable -uroot -p




#Composer
curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer

