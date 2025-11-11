#!/bin/sh

if [ -z "$STATE_container_id" ]; then
	echo "No PostgreSQL container id found. Skipping cleanup."
	exit 0
fi

echo "Removing PostgreSQL container $STATE_container_id..."
docker rm -f "$STATE_container_id"
echo "PostgreSQL container removed."
