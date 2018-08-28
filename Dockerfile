FROM php:7.2-apache
MAINTAINER Luis Mayta <luis.mayta@gmail.com>
RUN docker-php-ext-install php-mysql pdo_pgsql

EXPOSE 80


