#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting rollback: $DEV_DIR/$1

cd $DEV_DIR/$1
mvn -Pdefault,db-rollback clean package -DskipTests -DrollbackCount=$2
cd ~