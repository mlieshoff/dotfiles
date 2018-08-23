#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting rollback: $DEV_DIR

cd $DEV_DIR/web
mvn -Pdefault,db-rollback clean package -DskipTests -DrollbackCount=$1
cd ~