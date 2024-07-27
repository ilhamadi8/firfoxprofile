#!/bin/bash

PROFILE_DIR="$HOME/.mozilla/firefox"

# Ensure profiles.ini exists
if [ ! -f "$PROFILE_DIR/profiles.ini" ]; then
    echo "[General]" > "$PROFILE_DIR/profiles.ini"
    echo "StartWithLastProfile=1" >> "$PROFILE_DIR/profiles.ini"
fi

for i in {1..30}; do
    PROFILE_NAME="$i"
    PROFILE_PATH="${PROFILE_NAME}"

    # Create profile directory
    mkdir -p "$PROFILE_DIR/$PROFILE_PATH"

    # Append profile details to profiles.ini
    echo "[Profile$i]" >> "$PROFILE_DIR/profiles.ini"
    echo "Name=$PROFILE_NAME" >> "$PROFILE_DIR/profiles.ini"
    echo "IsRelative=1" >> "$PROFILE_DIR/profiles.ini"
    echo "Path=$PROFILE_PATH" >> "$PROFILE_DIR/profiles.ini"
    echo "Default=0" >> "$PROFILE_DIR/profiles.ini"
    echo "" >> "$PROFILE_DIR/profiles.ini"

    # Create the profile configuration
    echo "user_pref(\"browser.startup.page\", 1);" > "$PROFILE_DIR/$PROFILE_PATH/user.js"
done

echo "30 Firefox profiles created."
