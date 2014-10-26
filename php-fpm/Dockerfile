FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y php5-fpm php5-cli php5-curl php5-gd php5-json php5-sqlite php5-apcu php5-intl php5-mcrypt php5-mysqlnd php5-redis

RUN sed -i '/daemonize /c daemonize = no' /etc/php5/fpm/php-fpm.conf
RUN sed -i '/^listen /c listen = 0.0.0.0:9000' /etc/php5/fpm/pool.d/www.conf
RUN sed -i 's/^listen.allowed_clients/;listen.allowed_clients/' /etc/php5/fpm/pool.d/www.conf
RUN rm -rf /etc/php5/cli/php.ini && \
    ln -s /etc/php5/fpm/php.ini /etc/php5/cli/php.ini

RUN echo "date.timezone= Europe/Paris" >>  /etc/php5/fpm/php.ini

CMD ["php5-fpm"]

EXPOSE 9000

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
