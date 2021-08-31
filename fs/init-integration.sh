#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo init integration tests: $DEV_DIR/$1

cd $DEV_DIR/$1
mvn clean install -DskipTests -Pdb-init
cd ~

# mvn test -Pdb-init,int -T 3