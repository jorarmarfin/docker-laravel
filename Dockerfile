FROM php:7.2-apache
MAINTAINER Luis Mayta <luis.mayta@gmail.com>
COPY ./files/test.php /var/www/html

EXPOSE 80


