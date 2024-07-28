#!/bin/bash
START_INDEX=2
END_INDEX=20

for i in $(seq $START_INDEX $END_INDEX); do
   firefox -p Profile$i &>/dev/null &
done

echo "Profiles copied from $SOURCE_PROFILE to $DESTINATION_PREFIX{${START_INDEX}..${END_INDEX}}."
