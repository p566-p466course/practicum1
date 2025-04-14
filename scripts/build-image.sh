#!/bin/bash
set -e

: "${VERSION:=v1.0.0}"

echo "Building Docker image..."
docker build -t prime-service:${VERSION} .  # local base tag

# Tag for GitHub
docker tag prime-service:${VERSION} ghcr.io/krisha34/prime-service:${VERSION}

# Tag for ACR
docker tag prime-service:${VERSION} $REGISTRY_URL/prime-service:${VERSION}
