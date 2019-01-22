#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting unit tests: $DEV_DIR

cd $DEV_DIR/$1
mvn clean install 
cd ~