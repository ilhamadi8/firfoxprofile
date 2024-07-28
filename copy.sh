#!/bin/bash
START_INDEX=2
END_INDEX=30

for i in $(seq $START_INDEX $END_INDEX); do
    echo "Copying to Profile$i"
    cp -rf ~/.mozilla/firefox/Profile2/* ~/.mozilla/firefox/Profile$i
done

echo "Profiles copied ."
