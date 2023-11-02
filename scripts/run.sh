#!/bin/bash

docker stop go-swagger-rest-api || true && docker rm go-swagger-rest-api || true
docker run -it -p 8090:8090 --name go-swagger-rest-api go-swagger-simple-server
