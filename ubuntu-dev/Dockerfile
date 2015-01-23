FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y git nano htop

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
