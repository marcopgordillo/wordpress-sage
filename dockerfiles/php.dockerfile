FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install mysqli pdo pdo_mysql

ARG GROUP_ID=1000
ARG USER_ID=1000

RUN addgroup -g $GROUP_ID laravel && adduser -G laravel -u $USER_ID -g laravel -s /bin/sh -D laravel

USER laravel
