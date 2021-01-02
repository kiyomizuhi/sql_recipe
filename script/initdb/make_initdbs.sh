#!/bin/bash
cd ${0%/*}
for d in ./original/Chapter*/ ;
  do
    # current chapter
    echo $d

    # get the chapter number
    n=${d:18:1}

    # make sql file for each chapter
    fp="./ch0$n.sql"
    touch $fp

    # copy from the original and paste to the sql file
    FILES=$d/*.sql
    for f in $FILES
      do
        echo "processing: $f"
        cat $f >> $fp
        echo "" >> $fp
        echo "" >> $fp
      done
  done
