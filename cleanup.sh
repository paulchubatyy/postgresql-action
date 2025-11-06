#!/bin/sh

echo "Removing PostgreSQL container..."
docker rm -f "$STATE_container_id"
echo "PostgreSQL container removed."
