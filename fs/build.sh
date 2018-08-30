#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting build web: $DEV_DIR

cd $DEV_DIR/web
mvn clean install -DskipTests
cd ~