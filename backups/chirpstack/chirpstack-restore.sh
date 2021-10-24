echo comenzando restauración de volúmenes de chirpstack...

echo restaurando chirpstack-docker_postgresqldata
cat chirpstack-docker_postgresqldata.tar.bz2 | docker run -i -v chirpstack-docker_postgresqldata:/volume --rm loomchild/volume-backup restore -
