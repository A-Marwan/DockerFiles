FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update && \
    apt-get -y install mysql-server

RUN sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf && \
    sed -i 's/^\(log_error\s.*\)/# \1/' /etc/mysql/my.cnf && \
    echo "mysqld_safe &" > /tmp/config && \
    echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config && \
    echo "mysql -e 'GRANT ALL PRIVILEGES ON *.* TO \"root\"@\"%\" WITH GRANT OPTION;'" >> /tmp/config && \
    bash /tmp/config && \
    rm -f /tmp/config

ADD run.sh /run.sh
RUN chmod 755 /*.sh

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql"]

# Define default command.
CMD ["/run.sh"]

# Expose ports.
EXPOSE 3306
