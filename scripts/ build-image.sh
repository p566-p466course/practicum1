set -u

: "${VERSION:=v1.0.0}"
docker build -t ghcr.io/krisha34/prime-service:v1.0.0 --file ./Dockerfile .
