#!/bin/bash
# -*- ENCODING: UTF-8 -*-
echo comenzando backup de volúmenes ...

docker run -v docker_mainflux-auth-db-volume:/volume -v /tmp:/backup --rm loomchild/volume-backup backup - > docker_mainflux-auth-db-volume.tar.bz2
echo mainflux-auth-db-volume ok ...

docker run -v docker_mainflux-users-db-volume:/volume -v /tmp:/backup --rm loomchild/volume-backup backup - > docker_mainflux-users-db-volume.tar.bz2
echo mainflux-users-db-volume ok ...

docker run -v docker_mainflux-things-db-volume:/volume -v /tmp:/backup --rm loomchild/volume-backup backup - >  docker_mainflux-things-db-volume.tar.bz2
echo mainflux-things-db-volume ok ...

docker run -v docker_mainflux-auth-redis-volume:/volume -v /tmp:/backup --rm loomchild/volume-backup backup - > docker_mainflux-auth-redis-volume.tar.bz2
echo mainflux-auth-redis-volume ok ...

docker run -v docker_mainflux-es-redis-volume:/volume -v /tmp:/backup --rm loomchild/volume-backup backup - > docker_mainflux-es-redis-volume.tar.bz2
echo mainflux-es-redis-volume ok ...

docker run -v docker_mainflux-mqtt-broker-volume:/volume -v /tmp:/backup --rm loomchild/volume-backup backup - > docker_mainflux-mqtt-broker-volume.tar.bz2
echo mainflux-mqtt-broker-volume ok ...