FROM php:7.2-apache

RUN apt-get update \
    && docker-php-ext-install pdo_mysql \
    && a2enmod rewrite

COPY ./files/laravel.conf /usr/local/apache2/conf/

EXPOSE 80