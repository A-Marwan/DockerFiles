FROM jmoati/php-fpm
MAINTAINER Jacques Moati <jacques@moati.net>

RUN apt-get update && \
    apt-get install php5-xdebug

RUN wget http://get.sensiolabs.org/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer && \
    chmod +x /usr/local/bin/php-cs-fixer
    
ADD squire /usr/local/bin/squire

CMD ["php5-fpm"]

EXPOSE 9000

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
