echo comenzando restauración de volúmenes de mongodb...

echo restaurando mongodb-writer_mainflux-mongodb-db-volumee
cat mongodb-writer_mainflux-mongodb-db-volume.tar.bz2 | docker run -i -v mongodb-writer_mainflux-mongodb-db-volume:/volume --rm loomchild/volume-backup restore -
