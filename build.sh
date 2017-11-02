#! /bin/bash

if [ "$#" -ne 1 ] || [ "$1" == "-h" ]; then
  echo "Usage: ./build.sh {desired_image_name}"
  exit 0
fi

docker build -t $1 docker/
