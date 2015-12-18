#!/bin/bash

cf push docker-app -o jaimegag/spring-docker -c "java -Djava.security.egd=file:/dev/./urandom -jar /app.jar" --no-start

cf enable-feature-flag diego_docker

cf set-health-check docker-app none

cf start docker-app
