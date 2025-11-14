#!/bin/bash

echo "Limpiando contenedores parados..."
docker container prune -f

echo "Limpiando imágenes no usadas..."
docker image prune -f