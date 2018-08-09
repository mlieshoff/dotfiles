#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo starting frontend from: $DEV_DIR

cd $DEV_DIR/frontend
yarn build
yarn start &
cd ~