#!/bin/bash

# For loop that goes over the results
# from the ls command
for i in $( ls ); do
  echo item: $i
done

# For loop that goes over a sequence 1 - 10
for i in `seq 1 10`;
do
  echo $i
done    

# While loop that increments a counter variable
COUNTER = 0
while [ $COUNTER -lt 10 ]; do
  echo The counter is $COUNTER
  let COUNTER = COUNTER + 1 
done


# While loop that decrements a counter variable
COUNTER = 20
until [ $COUNTER -lt 10 ]; do
  echo COUNTER $COUNTER
  let COUNTER -= 1
done

