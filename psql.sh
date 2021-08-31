#!/bin/bash

source ~/.dotfileprefs

echo execute psql $1 $2

sudo -u postgres psql -U postgres -d $1 -c "$2"