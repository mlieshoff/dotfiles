#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting build web: $DEV_DIR/$1

cd $DEV_DIR/$1
mvn clean install -DskipTests
cd ~