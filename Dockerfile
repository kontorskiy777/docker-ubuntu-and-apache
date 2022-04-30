FROM ubuntu:18.04
MAINTAINER author Oleh Tolmachov 
ENV CONTAINER_TIMEZONE="Europe/Kiev"
RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone
RUN apt update && apt install -y apache2 && useradd -ms /bin/bash hillel_devops 
COPY index.html /var/www/html/index.html 
COPY ports.conf /etc/apache2/ports.conf
ENV APACHE_RUN_USER www-data && APACHE_RUN_GROUP www-data && APACHE_LOG_DIR /var/log/apache2 && APACHE_RUN_DIR /var/www/html
EXPOSE 8080
CMD ["apache2ctl", "-D", "FOREGROUND"]
