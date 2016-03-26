#!/bin/bash

BASE_DIR=`dirname $0`
. $BASE_DIR/vars.sh

docker run -d --name db-$NAME -e MYSQL_ROOT_PASSWORD=ioiokl -h db-$NAME --restart always -e MYSQL_DATABASE=oc_db -e MYSQL_USER=oc_user -e MYSQL_PASSWORD=ioiokl -v /vol/$NAME/db:/var/lib/mysql mysql:5.7
