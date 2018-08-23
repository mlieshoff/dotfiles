#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting migrations: $DEV_DIR

cd $DEV_DIR/web
mvn -Pdefault,db-migration package -DskipTests
cd ~