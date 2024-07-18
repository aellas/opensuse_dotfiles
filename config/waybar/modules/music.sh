#!/bin/bash

# Define update interval (in seconds)
interval=2

# Loop indefinitely
while true; do
  # Get artist name
  artist=$(playerctl metadata artist)

  # Get song title
  title=$(playerctl metadata title)

  # Check if a song is playing
  if [[ -z "$artist" || -z "$title" ]]; then
    echo ""
  else
    # Output artist and title with a separator
    echo "$artist - $title"
  fi

  # Sleep for the defined interval
  sleep "$interval"
done