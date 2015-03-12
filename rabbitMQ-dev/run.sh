chown -R rabbitmq:rabbitmq /var/lib/rabbitmq
/etc/init.d/rabbitmq-server start

rabbitmqctl add_user admin admin
rabbitmqctl set_user_tags admin administrator

/etc/init.d/rabbitmq-server stop

/usr/sbin/rabbitmq-server