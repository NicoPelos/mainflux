#!/bin/bash
# -*- ENCODING: UTF-8 -*-
echo comenzando backup de volúmenes ...

docker run -v chirpstack-docker_postgresqldata:/volume -v /tmp:/backup --rm loomchild/volume-backup backup - > chirpstack-docker_postgresqldata.tar.bz2
echo chirpstack-docker_postgresqldata ok ...
