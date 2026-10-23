FROM php:8.3-fpm

RUN docker-php-ext-install mysqli pdo_mysql
RUN pecl install redis && docker-php-ext-enable redis

WORKDIR /var/www/html

