echo "Comenzando post init configuraction"
echo " -c 'echo exit | sqlplus \"/ as sysdba\" @scripts/dbCreate.sql'" >> post_install.sh
echo "gosu oracle bash" >> post_install.sh 
sh post_install.sh