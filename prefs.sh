#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo working directory: $DIR

source ~/.dotfileprefs

echo home directory: $HOME_DIR
echo idea directory: $IDEA_HOME
echo development directory: $DEV_DIR