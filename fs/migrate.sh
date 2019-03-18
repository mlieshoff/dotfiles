#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting migrations: $DEV_DIR/$1

cd $DEV_DIR/$1
mvn -Pdefault,db-migration package -DskipTests
cd ~