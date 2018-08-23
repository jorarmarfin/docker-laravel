FROM php:7.2-apache
MAINTAINER Luis Mayta <luis.mayta@gmail.com>

RUN apt-get update && apt-get install -y \
	curl wget git

RUN a2enmod rewrite
RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

# Install extra php libraries
RUN docker-php-ext-install pdo pdo_mysql

# Install extras
#RUN apt-get install -y composer

#Agrego archivos
ADD files/test.php /var/www/html/
ADD files/index.html /var/www/html/

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND
#laravel necesita mbstring

