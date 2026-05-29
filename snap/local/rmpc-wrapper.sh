#!/bin/bash

# Check if something is listening on MPD's default port (6600)
if ! (echo > /dev/tcp/127.0.0.1/6600) >/dev/null 2>&1; then
    echo "=================================================================" >&2
    echo "WARNING: MPD (Music Player Daemon) does not appear to be running." >&2
    echo "Please ensure MPD is installed and active on port 6600." >&2
    echo "=================================================================" >&2
fi

# Execute the actual application binary, passing along any arguments
exec "$SNAP/rmpc" "$@"