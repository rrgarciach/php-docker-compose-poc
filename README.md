# Users microservice P.O.C

Users microservice with PHP, Silex and MySQL

docker exec -it users-service /bin/bash
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
COPY config/php.ini /usr/local/etc/php/