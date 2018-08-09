#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo start idea from $IDEA_HOME

$IDEA_HOME/bin/idea.sh &