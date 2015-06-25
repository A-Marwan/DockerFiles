FROM jmoati/php-fpm-dev

RUN apt-get update && \
    apt-get -y install mysql-client nano htop

ADD run.sh /run.sh
RUN chmod +x /run.sh

VOLUME /workdir
VOLUME /var/www

WORKDIR /workdir

CMD /run.sh

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
