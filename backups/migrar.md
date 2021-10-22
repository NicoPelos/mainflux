## Exportar base de dato en mongo
* para mongo hay que hacer un mongodump en el mongo viejo de la bd "mainflux" y guardarlo en un archivo cualquiera.... es archivo copiarlo afuera del docker
* luego ir al docker nuevo y poner: mongorestore --nsInclude 'mainflux.*' 

## Para las bd postgres 
* exportar las base de datos users.sql thigs.sql atuh.sql
* luego en el docker nuevo frenar el proceso, se cae el docker y cargamos el sql con psql, siempre usando el usuario de postgres -U mainflux


## Para influxdb
* primero entrar al docker viejo y hacer un backup de la base de datos de mainflux
* influxd backup -portable /backup
* luego copiar la carpeta afuera del docker
* en el docker nuevo copiar la carpeta.
* en el docker nuevo borrar la base de datos 
influx -username mainflux -password mainflux

* borrar la base de datos 
drop database mainflux

* salir del shell de influx
y restaurar la base de datos vieja
influxd restore -portable /backup