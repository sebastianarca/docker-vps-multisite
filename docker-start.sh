#!/bin/bash
docker-compose -f ./docker-compose.yml -p vps up -d  && \
sleep 10s && \
docker-compose -f wordpresstest.com/docker/docker-compose.yml up -d && \
# docker-compose -f html_only.com/docker/docker-compose.yml up -d && \
# docker-compose -f php_only.com/docker/docker-compose.yml up -d && \
echo ' ========= Fin start docker ======';
