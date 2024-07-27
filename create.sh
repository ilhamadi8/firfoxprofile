#!/bin/bash
mkdir -p "~/.mozilla/firefox"
for i in {1..30}; do
  PROFILE_NAME="Profile$i"
  PROFILE_DIR="$HOME/.mozilla/firefox/${PROFILE_NAME}.default"

  # Create profile directory
  mkdir -p "$PROFILE_DIR"

  # Generate a random profile ID

  # Create profiles.ini entry
  echo "[$i]" >> ~/.mozilla/firefox/profiles.ini
  echo "Name=$PROFILE_NAME" >> ~/.mozilla/firefox/profiles.ini
  echo "IsRelative=1" >> ~/.mozilla/firefox/profiles.ini
  echo "Path=${PROFILE_NAME}" >> ~/.mozilla/firefox/profiles.ini
  echo "Default=0" >> ~/.mozilla/firefox/profiles.ini
  echo "" >> ~/.mozilla/firefox/profiles.ini

  # Create the profile configuration
  echo "[General]" > "$PROFILE_DIR/prefs.js"
  echo "StartWithLastProfile=1" >> "$PROFILE_DIR/prefs.js"
  echo "" >> "$PROFILE_DIR/prefs.js"
  echo "[Profile0]" >> "$PROFILE_DIR/prefs.js"
  echo "Name=$PROFILE_NAME" >> "$PROFILE_DIR/prefs.js"
  echo "IsRelative=1" >> "$PROFILE_DIR/prefs.js"
  echo "Path=${PROFILE_NAME}" >> "$PROFILE_DIR/prefs.js"
  echo "Default=1" >> "$PROFILE_DIR/prefs.js"
done

echo "30 Firefox profiles created."
