FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y  wget

RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | apt-key add -
RUN echo deb http://dl.hhvm.com/ubuntu trusty main | tee /etc/apt/sources.list.d/hhvm.list

RUN apt-get update
RUN apt-get install -y hhvm

CMD ["-m", "server", "-vServer.Type=fastcgi", "-vServer.Port=9000"]
ENTRYPOINT ["hhvm"]

EXPOSE 9000
