#!/bin/bash

docker compose \
  --env-file .env-production \
  -f compose.yaml \
  -f overrides/compose.mariadb.yaml \
  -f overrides/compose.redis.yaml \
  -f overrides/compose.bind-mount-sites.yaml \
  -f overrides/compose.bind-mount-db-data.yaml \
  -f overrides/compose.bind-mount-redis-queue.yaml \
  -f overrides/compose.proxy.yaml \
  config > docker-compose.production.yaml