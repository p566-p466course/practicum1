#!/bin/bash
set -e

: "${VERSION:=v1.0.0}"
: "${REGISTRY_URL:?Missing REGISTRY_URL}"
: "${REGISTRY_USERNAME:?Missing REGISTRY_USERNAME}"
: "${REGISTRY_PASSWORD:?Missing REGISTRY_PASSWORD}"

echo "Logging into Azure Container Registry: $REGISTRY_URL"
echo "$REGISTRY_PASSWORD" | docker login "$REGISTRY_URL" -u "$REGISTRY_USERNAME" --password-stdin

echo "Tagging image for ACR..."
docker tag prime-service:latest $REGISTRY_URL/prime-service:latest

echo "Pushing Docker image to ACR..."
docker push $REGISTRY_URL/prime-service:$VERSION
