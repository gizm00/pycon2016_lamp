!#/bin/sh
exec /etc/init/d/apache restart
exec mysql -u root -pAdmin2015 < mysql_setup.sql
exec /etc/init.d/mysql 
