#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting insign from: $INSIGN_HOME

cd $INSIGN_HOME

docker-compose up -d &

cd ~ 