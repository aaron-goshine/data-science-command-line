#!/bin/bash
# OPTIONS="Hello Quit"
OPTIONS=`git branch`
select opt in $OPTIONS; do
  if [ "$opt" = "Quit" ]; then
    echo done
    exit
  elif [ "$opt" = "Hello" ]; then
    echo Hello World
  else
    clear
    echo bad option
  fi
done

# ---------------------------------
if [ -z "$1" ]; then 
  echo usage: $0 directory
  exit
fi
SRCD=$1
TGTD="/var/backups/"
OF=home-$(date +%Y%m%d).tgz
tar -cZf $TGTD$OF $SRCD


#!/bin/bash          
SRCD="/home/"
TGTD="/var/backups/"
OF=home-$(date +%Y%m%d).tgz
tar -cZf $TGTD$OF $SRCD
