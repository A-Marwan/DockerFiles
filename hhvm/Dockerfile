FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y  wget

RUN sudo add-apt-repository ppa:mapnik/boost && \
    wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | apt-key add - && \
    echo deb http://dl.hhvm.com/ubuntu utopic main | tee /etc/apt/sources.list.d/hhvm.list

RUN apt-get install -y libgmp10 hhvm

RUN cd /tmp && \
    php -r "readfile('https://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer

CMD ["-m", "server", "-vServer.Type=fastcgi", "-vServer.Port=9000"]
ENTRYPOINT ["hhvm"]

EXPOSE 9000

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
