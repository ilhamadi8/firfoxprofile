#!/bin/bash
START_INDEX=3
END_INDEX=30

for i in $(seq $START_INDEX $END_INDEX); do
   firefox -p Profile
done

echo "Profiles copied from $SOURCE_PROFILE to $DESTINATION_PREFIX{${START_INDEX}..${END_INDEX}}."
