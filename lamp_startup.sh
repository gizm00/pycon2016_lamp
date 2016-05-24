#!/bin/sh
/etc/init.d/mysql start
mysql -u root -pAdmin2015 < mysql_setup.sql
/etc/init.d/mysql start
/etc/init.d/apache2 restart
