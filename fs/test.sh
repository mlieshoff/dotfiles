#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting unit tests: $DEV_DIR

cd $DEV_DIR/web
mvn clean install 
cd ~