while !(echo < /dev/tcp/oracle/1521 2>&1)
do
   sleep 4
   echo "Esperando a oracle ..."
done
echo "Oracle is up!. Dando tiempo a configuracion"
sleep 50
echo "Its Catalina Time!"
catalina.sh run
