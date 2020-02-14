echo "Comenzando post init configuraction"
#Eliminamos la ultima linea de post_install
sed '$d' post_install.sh > new_install.sh
echo "gosu oracle bash -c 'echo exit | sqlplus \"/ as sysdba\" @scripts/dbCreate.sql'" >> new_install.sh
echo "gosu oracle bash" >> new_install.sh 
sh new_install.sh