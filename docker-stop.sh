#!/bin/bash
docker-compose -f wordpresstest.com/docker/docker-compose.yml down --remove-orphans && \
# docker-compose -f html_only.com/docker/docker-compose.yml down --remove-orphans && \
# docker-compose -f php_only.com/docker/docker-compose.yml down --remove-orphans && \
sleep 10s && \
docker-compose -f ./docker-compose.yml -p vps down --remove-orphans  && \
echo ' ========= Fin stop docker ======';
