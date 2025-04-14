#!/bin/bash
set -e

: "${VERSION:=v1.0.0}"

echo "Logging into GitHub Container Registry..."
echo "$ACCESS_TOKEN" | docker login ghcr.io -u krisha34 --password-stdin

echo "Pushing image to ghcr.io/krisha34/prime-service:latest..."
docker tag prime-service:latest ghcr.io/krisha34/prime-service:latest


docker push ghcr.io/krisha34/prime-service:latest

