#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

tar cvf /tmp/friendsurance.tar.gz \
$HOME_DIR/Dokumente \
$HOME_DIR/scripts \
$HOME_DIR/dev \
$HOME_DIR/snippets
