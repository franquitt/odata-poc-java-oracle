apk add --no-cache mysql-client
while !(mysqladmin ping -u root -proot -h mysql -P 3306)
do
   sleep 4
   echo "Esperando a mysql ..."
done
echo "MySQL listo! creando Base de datos"
mysql -u root -proot -h mysql -e "DROP DATABASE IF EXISTS eicas;CREATE DATABASE eicas;"
mysql -u root -proot -h mysql eicas < "/scripts/dbCreate.sql"
echo "DB Creada! :)"
