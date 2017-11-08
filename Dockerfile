FROM php:5.6-apache

WORKDIR /var/www

RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install git

ENV APACHE_DOCUMENT_ROOT /var/www/web

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer

RUN pecl install xdebug-2.5.5 \
    docker-php-ext-enable xdebug

COPY . .
