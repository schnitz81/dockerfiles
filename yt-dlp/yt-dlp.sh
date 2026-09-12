#!/bin/bash
MOUNTPOINT="/mnt/nas"

if awk -v mountpoint="$MOUNTPOINT" '$2 == mountpoint {found=1} END {exit !found}' /proc/mounts; then
	echo "Storage mount check valid."
else
	echo "$MOUNTPOINT not mounted. "; exit 1
fi

if [ -z "$1" ]; then
	echo "No URL input parameter. Exiting."; exit 1
fi

docker run --rm -v "$MOUNTPOINT":/hostfolder yt-dlp $1

