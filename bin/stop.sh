#!/bin/bash

BASE_DIR=`dirname $0`
. $BASE_DIR/vars.sh

docker stop $NAME
docker rm $NAME
