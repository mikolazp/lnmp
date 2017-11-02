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
apt-get install -y php-fpm \
    php-curl \
    php-zip \
    php-gd \
    php-mbstring \
    php-mcrypt \
    php-opcache \
    php-intl \
    php-mysql \
    php-dom \
    php-bz2 \
    php-geoip \

service php7.0-fpm restart

#mysql
apt-get install -y mysql-server

# percona server
#wget https://repo.percona.com/apt/percona-release_0.1-4.$(lsb_release -sc)_all.deb
#dpkg -i percona-release_0.1-4.$(lsb_release -sc)_all.deb
#apt-get update
#apt-get install percona-server-server-5.7 percona-server-tokudb-5.7






#Composer
curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer

composer global require "fxp/composer-asset-plugin:^1.2.0"