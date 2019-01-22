#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo start integration tests: $DEV_DIR

cd $DEV_DIR/web
mvn -Pint,default,db-init package
cd ~