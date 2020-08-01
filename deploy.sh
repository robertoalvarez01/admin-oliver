#!/bin/bash

docker stop admin-oliver-react
docker container rm admin-oliver-react

docker build -t admin-oliver .

docker run -d --restart unless-stopped --name admin-oliver-react -p 1080:1080 admin-oliver