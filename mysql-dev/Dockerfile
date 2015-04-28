FROM jmoati/mysql
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install apache2 php5 libapache2-mod-php5 php5-mysql zip

WORKDIR /tmp

RUN wget http://sourceforge.net/projects/phpmyadmin/files/phpMyAdmin/4.4.4/phpMyAdmin-4.4.4-all-languages.zip/download#!md5!151818e19ac8979406e5e820f0cb5c11 -O phpMyAdmin.zip

RUN rm -Rf /var/www/html && \
    unzip phpMyAdmin.zip && \
    mv  phpMyAdmin-4.4.4-all-languages /var/www/html

ADD config.inc.php /var/www/html/

ADD run.sh /run.sh
RUN chmod 755 /*.sh