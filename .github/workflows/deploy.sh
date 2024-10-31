#!/bin/bash

echo 'Connected to VM!'
echo "Logging into Docker..."
echo "$DOCKER_TOKEN" | docker login -u "$DOCKER_USERNAME" --password-stdin
echo "Logging into Docker OK"
docker pull "$DOCKER_USERNAME"/myapp:latest
echo "PULL"
docker stop myapp || true
echo "STOP"
docker rm myapp || true
echo "RM"
docker run -d --name myapp -p 8088:8088 "$DOCKER_USERNAME"/myapp:latest
echo "RUN"
