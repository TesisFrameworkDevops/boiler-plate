#!/bin/bash
set -e

echo "Construyendo imagen..."
docker build -t myapp:latest -f docker/Dockerfile.node .

echo "Pusheando imagen a Docker Hub..."
docker push myapp:latest

echo "Desplegando en servidor via SSH..."
ssh $SERVER_USER@$SERVER_IP "
  docker pull myapp:latest &&
  docker stop myapp || true &&
  docker rm myapp || true &&
  docker run -d -p 80:3000 --name myapp myapp:latest
"

echo "Deploy completo."