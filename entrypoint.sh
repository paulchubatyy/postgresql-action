#!/bin/sh

container_id=$(docker run \
  -e POSTGRES_DB="$INPUT_POSTGRESQL_DB" \
  -e POSTGRES_USER="$INPUT_POSTGRESQL_USER" \
  -e POSTGRES_PASSWORD="$INPUT_POSTGRESQL_PASSWORD" \
  -d -p 5432:5432 "postgres:$INPUT_POSTGRESQL_VERSION")

echo "container_id=$container_id" >> "$GITHUB_STATE"
