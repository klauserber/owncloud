#!/bin/bash

BASE_DIR=`dirname $0`
. $BASE_DIR/vars.sh

docker build -t isi006/$NAME $BASE_DIR/..
