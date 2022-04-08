# Hace Backup de DB, poniendo como nombre la fecha y hora del dia en que se ejecuta 
export FECHA=`date +%d-%m-%Y_%H:%M:%S`
export NAME=NAMEBACKUPBASEDATOS_${FECHA}.dump
export DIR=/opt/backup
USER_DB=postgres
NAME_DB=jenkins
cd $DIR
> ${NAME}
export PGPASSWORD=1234
chmod 777 ${NAME}
echo "procesando la copia de la base de datos"
pg_dump -U $USER_DB -h localhost --port 5432 -f ${NAME} $NAME_DB
echo "backup terminado"


