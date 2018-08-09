#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

$JAVA_HELPERS_CALL SqlCli "/home/michaellieshoff/sqlqueries/local_database.properties" "/home/michaellieshoff/sqlqueries/fs.sql" $1 $2 $3 $4 $5 $6 $7 $8 $9