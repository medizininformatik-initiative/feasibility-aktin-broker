#!/bin/sh

export COMPOSE_PROJECT=feasibility-deploy

cd aktin-broker
docker-compose -p $COMPOSE_PROJECT down
sleep 10
cd ../aktin-client
docker-compose -p $COMPOSE_PROJECT down
