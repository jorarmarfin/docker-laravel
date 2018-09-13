FROM php:7.2-apache
MAINTAINER Luis Mayta <luis.mayta@gmail.com>

RUN apt-get update \
    && docker-php-ext-install pdo_mysql \
    && a2enmod rewrite

EXPOSE 80


