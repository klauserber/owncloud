#!/bin/bash

BASE_DIR=`dirname $0`
. $BASE_DIR/vars.sh

docker run -d --name $NAME -h $NAME --link=db-$NAME -p 80:80 -p 443:443 --restart always -v /data/$NAME-data:/var/www/html/data -v /vol/$NAME/html:/var/www/html -v /vol/$NAME/apache/cert:/etc/apache2/cert -v /vol/$NAME/apache/log:/var/log/apache2 isi006/$NAME
