#!/bin/sh

export COMPOSE_PROJECT=codex-develop

cd aktin-broker
docker-compose -p $COMPOSE_PROJECT up -d
sleep 10
cd ../aktin-client
docker-compose -p $COMPOSE_PROJECT up -d