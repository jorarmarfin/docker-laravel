FROM fedora:latest
MAINTAINER Luis Mayta <luis.mayta@gmail.com>
RUN dnf -y update
EXPOSE 80
#RUN ["systemctl start httpd.service","D","FOREGROUND"]


