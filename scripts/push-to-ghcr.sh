#!/bin/bash
set -e

: "${VERSION:=v1.0.0}"
echo "Logging into GitHub Container Registry..."
echo "$ACCESS_TOKEN" | docker login ghcr.io -u neagra12 --password-stdin

echo "Pushing image to ghcr.io/KRISHA/prime-service:${VERSION}..."
docker push ghcr.io/krishA/prime-service:${VERSION}
