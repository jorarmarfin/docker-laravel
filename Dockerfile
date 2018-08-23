FROM php:7.2-apache
MAINTAINER Luis Mayta <luis.mayta@gmail.com>
RUN apt-get update && apt-get install -y \
	curl wget git \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN a2enmod rewrite
RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

# Install extra php libraries
RUN docker-php-ext-install pdo pdo_mysql

# Install extras
#RUN apt-get install -y git
#RUN apt-get install -y composer

EXPOSE 80
#CMD ["D","FOREGROUND"]
#laravel necesita mbstring

