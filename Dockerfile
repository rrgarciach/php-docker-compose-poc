FROM php:5.6-apache

WORKDIR /var/www

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git

COPY config/php.ini /usr/local/etc/php/

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer

COPY . .
