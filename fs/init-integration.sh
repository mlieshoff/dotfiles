#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo init integration tests: $DEV_DIR

cd $DEV_DIR/web
mvn clean install -DskipTests -Pdb-init
cd ~