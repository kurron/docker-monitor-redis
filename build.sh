#!/bin/bash

docker build --pull --tag="kurron/monitor-mongodb:latest" .
docker images
