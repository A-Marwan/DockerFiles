FROM jmoati/ubuntu
MAINTAINER Jacques Moati <jacques@moati.net>

RUN apt-get update && \
    apt-get install -y build-essential libssl-dev libgcrypt11-dev libkrb5-dev libpam0g-dev libwrap0-dev libdb-dev libavahi-client-dev libacl1-dev libldap2-dev libcrack2-dev systemtap-sdt-dev libdbus-1-dev libdbus-glib-1-dev libglib2.0-dev libevent-dev

WORKDIR /usr/local/src/

RUN wget http://sourceforge.net/projects/netatalk/files/netatalk/3.1.7/netatalk-3.1.7.tar.bz2/download --output-document=netatalk.tar.bz2 && \
    tar -xvf netatalk.tar.bz2

WORKDIR /usr/local/src//netatalk-3.1.7

RUN ./configure --with-init-style=debian-sysv --with-cracklib --enable-krbV-uam --without-libevent --with-pam-confdir=/etc/pam.d --with-dbus-sysconf-dir=/etc/dbus-1/system.d &&\
    make && \
    make install

ADD afp.conf /usr/local/etc/afp.conf

RUN apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /usr/local/sbin/netatalk -d

EXPOSE 548
