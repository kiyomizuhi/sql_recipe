#!/bin/bash
cd ${0%/*}

# create user
createuser -U postgres recipe

FILES=./*.sql
for FILE in $FILES
  do
    echo $FILE

    # get the filename without extension
    filename=$(basename $FILE)
    fn="${filename%.*}"

    # create database for chapter & section
    psql -U postgres -c "DROP DATABASE IF EXISTS ${fn};"
    createdb -U postgres -O recipe -E UTF8 -T template0 $fn

    # populate tables for the created database
    psql -U postgres -d $fn -f $FILE
done