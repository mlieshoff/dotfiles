#!/bin/bash
psql -h $1 -p 5432 -U $2 $3 < $4