FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F7B8CEA6056E8E56 && \
    echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y rabbitmq-server && \
    rabbitmq-plugins enable rabbitmq_management

EXPOSE 5672 15672

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD run.sh .

RUN chmod +x ./run.sh

CMD ./run.sh