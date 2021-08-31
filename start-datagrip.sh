#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo start data grip from $DATAGRIP_HOME

$DATAGRIP_HOME/bin/datagrip.sh &