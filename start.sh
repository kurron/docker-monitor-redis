#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation
docker run --detach=true --name=redis-service --net=host --publish=8200:8200 --env=NEW_RELIC_APP_NAME=redis-service --env=NEW_RELIC_HOST_DISPLAY_NAME=${HOSTNAME} kurron/monitor-redis:latest
docker logs --follow=true --tail=25 redis-service
