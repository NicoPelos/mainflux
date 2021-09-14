echo comenzando restauración de volúmenes de mainflux...

echo restaurando mainflux-auth-volume
cat docker_mainflux-auth-db-volume.tar.bz2 | docker run -i -v docker_mainflux-auth-db-volume:/volume --rm loomchild/volume-backup restore -

echo restaurando docker_mainflux-users-db-volume
cat docker_mainflux-users-db-volume.tar.bz2 | docker run -i -v docker_mainflux-users-db-volume:/volume --rm loomchild/volume-backup restore -

echo restaurando docker_mainflux-things-db-volume
cat docker_mainflux-things-db-volume.tar.bz2 | docker run -i -v docker_mainflux-things-db-volume:/volume --rm loomchild/volume-backup restore -

echo restaurando docker_mainflux-auth-redis-volume
cat docker_mainflux-auth-redis-volume.tar.bz2 | docker run -i -v docker_mainflux-auth-redis-volume:/volume --rm loomchild/volume-backup restore -

echo restaurando docker_mainflux-es-redis-volume
cat docker_mainflux-es-redis-volume.tar.bz2 | docker run -i -v docker_mainflux-es-redis-volume:/volume --rm loomchild/volume-backup restore -

echo restaurando docker_mainflux-mqtt-broker-volume
cat docker_mainflux-mqtt-broker-volume.tar.bz2 | docker run -i -v docker_mainflux-mqtt-broker-volume:/volume --rm loomchild/volume-backup restore -