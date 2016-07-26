#!/usr/bin/env bash

apt-get update
apt-get install -y \
    mc \
    htop \
    curl \
    git \


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

service php7.0-fpm restart

#mysql
apt-get install -y mysql-server



#Composer
curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer

composer global require "fxp/composer-asset-plugin:~1.1.1"