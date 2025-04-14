#!/bin/bash
set -u  # or set -o nounset

# Verify required environment variables are set
: "$REGISTRY_URL"
: "$VERSION"
: "$DATASOURCE_URL"
: "$DATASOURCE_UN"
: "$DATASOURCE_PW"

# Perform environment variable substitution and apply the manifest
envsubst < ./scripts/kubernetes/deploy.yaml | kubectl apply -f -
