#!/bin/bash
set -u

: "${VERSION:=v1.0.0}"

echo "Building Docker image: ghcr.io/krisha34/prime-service:latest"
docker build -t ghcr.io/krisha34/prime-service:latest .

# Add this line 👇
docker tag ghcr.io/krisha34/prime-service:latest prime-service:latest
