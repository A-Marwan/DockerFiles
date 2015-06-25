#!/bin/bash
if [ "${uid}" != "" ]
then
    usermod -u $uid www-data
fi

chown -R www-data:www-data ~www-data

su -l www-data -s /bin/bash
