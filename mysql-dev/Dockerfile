FROM jmoati/mysql
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install phpmyadmin

RUN rm -rf /var/www/html && \
    ln -s /usr/share/phpmyadmin /var/www/html

ADD config.inc.php /var/lib/phpmyadmin/

ADD run.sh /run.sh
RUN chmod 755 /*.sh

# Lancer apache2 avec mysql