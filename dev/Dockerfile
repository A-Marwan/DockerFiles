FROM jmoati/php-fpm-dev
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install mysql-client nano htop software-properties-common

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449 && \
    add-apt-repository 'deb http://dl.hhvm.com/ubuntu utopic main' && \
    apt-get update && \
    apt-get install -y hhvm

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
