#!/bin/bash
docker build \
    -t mayaleng/linguakit:latest \
    -t mayaleng/linguakit:alpine \
    -t mayaleng/linguakit:alpine3.11 \
    .

docker push mayaleng/linguakit:latest
docker push mayaleng/linguakit:alpine
docker push mayaleng/linguakit:alpine3.11