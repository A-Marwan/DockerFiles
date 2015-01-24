FROM jmoati/elasticsearch
MAINTAINER Jacques Moati <jacques@moati.net>

VOLUME ["/data"]
WORKDIR /data

RUN /elasticsearch/bin/plugin -i elasticsearch/marvel/latest

CMD ["/elasticsearch/bin/elasticsearch"]

EXPOSE 9200
EXPOSE 9300
