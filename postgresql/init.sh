#!/bin/bash
PODMAN=$(which podman)
PGDATA="$(eval echo ~$USER)/ContainerData/pgdata/"
mkdir -p $PGDATA
$PODMAN rm postgres
$PODMAN run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -v $PGDATA:/var/lib/postgresql/data:Z  docker.io/postgres 
