#!/bin/bash
BASE_DIR="~/.mozilla/firefox"
SOURCE_PROFILE="${BASE_DIR}/1"
DESTINATION_PREFIX="${BASE_DIR}/"
START_INDEX=2
END_INDEX=30

for i in $(seq $START_INDEX $END_INDEX); do
    DEST_PROFILE="${DESTINATION_PREFIX}${i}"
    echo "Copying from $SOURCE_PROFILE to $DEST_PROFILE"

    # Create destination profile directory if it doesn't exist
    mkdir -p "$DEST_PROFILE"

    # Copy the contents with forced replacement
    cp -rf "$SOURCE_PROFILE/"* "$DEST_PROFILE/"
done

echo "Profiles copied from $SOURCE_PROFILE to $DESTINATION_PREFIX{${START_INDEX}..${END_INDEX}}."
