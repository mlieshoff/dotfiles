#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo cleaning up dev directory: $DEV_DIR

find $DEV_DIR -depth -name target -exec rm -fr {} \;

echo finished.