#!/bin/bash
TABLE=$3
FILENAME="dump_${TABLE}.sql";
pg_dump -h $1 -p 5432 -U $2 -W --table="${TABLE}" --data-only --column-inserts $4 > $FILENAME