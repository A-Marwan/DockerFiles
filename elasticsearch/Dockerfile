FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install openjdk-8-jre-headless -y

RUN cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.2.tar.gz && \
  tar xvzf elasticsearch-1.4.2.tar.gz && \
  rm -f elasticsearch-1.4.2.tar.gz && \
  mv /tmp/elasticsearch-1.4.2 /elasticsearch

VOLUME ["/data"]
ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

WORKDIR /data

CMD ["/elasticsearch/bin/elasticsearch"]

EXPOSE 9200
EXPOSE 9300

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
