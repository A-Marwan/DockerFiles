#!/bin/bash

if [[ $# -ne 3 ]]; then
	echo "Usage: $0 </path/to/sql_file.sql>"
	exit 1
fi

echo "=> Starting MySQL Server"
/usr/bin/mysqld_safe > /dev/null 2>&1 &
PID=$!

RET=1
while [[ RET -ne 0 ]]; do
    echo "=> Waiting for confirmation of MySQL service startup"
    sleep 5
    mysql -uroot -e "status" > /dev/null 2>&1
RET=$?
done

echo "   Started with PID ${PID}"

echo "=> Importing SQL file"
mysql -uroot < "$1"

echo "=> Stopping MySQL Server"
mysqladmin -uroot shutdown

echo "=> Done!"
