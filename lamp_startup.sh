#!/bin/sh
# keep apache connection up
sed -i 's/^KeepAlive Off/KeepAlive On/' /etc/apache2/apache2.conf

# allow remote access to mysql by commenting out bind-address line in my.cnf
sed -i 's/^bind-address/#bind-address/' /etc/mysql/my.cnf

/etc/init.d/mysql start

# run setup for mysql
mysql -u root -pAdmin2015 < mysql_setup.sql
/etc/init.d/mysql start
/etc/init.d/apache2 restart
