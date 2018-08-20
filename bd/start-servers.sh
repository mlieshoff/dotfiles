#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.bddotfileprefs

echo starting mysql rom: $MYSQL_HOME

cd $MYSQL_HOME

docker-compose up &

cd ~ 