FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install openjdk-8-jre-headless -y

RUN cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.4.tar.gz && \
  tar xvzf elasticsearch-1.3.4.tar.gz && \
  rm -f elasticsearch-1.3.4.tar.gz && \
  mv /tmp/elasticsearch-1.3.4 /elasticsearch

VOLUME ["/data"]
ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

WORKDIR /data

CMD ["/elasticsearch/bin/elasticsearch"]

EXPOSE 9200
EXPOSE 9300
