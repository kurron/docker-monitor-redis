#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation 
docker run --detach=true --name=mongodb-service --net=host --publish=8100:8100 kurron/monitor-mongodb:latest 
docker logs --follow=true --tail=all mongodb-service 
