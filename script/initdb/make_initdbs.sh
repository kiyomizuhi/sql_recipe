#!/bin/bash
cd ${0%/*}
for d in ./original/Chapter*/ ;
  do
    # current chapter
    echo $d

    # copy from the original and paste to the sql file
    FILES=$d/*.sql
    for FILE in $FILES
      do
        fn=$(basename $FILE)
        # get the chapter number
        ch=${fn:0:1}
        sc=${fn:2:1}

        nf="./ch0${ch}_0${sc}.sql"
        if [ ! -f "$nf" ]; then
          touch $nf
        fi

        # make sql file for each chapter&section
        echo "processing: $FILE"
        cat $FILE >> $nf
        echo "" >> $nf
        echo "" >> $nf
      done
  done
