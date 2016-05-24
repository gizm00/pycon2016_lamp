create database camping;
CREATE USER 'frodo'@'localhost' IDENTIFIED BY 'pycon2016';
GRANT ALL PRIVILEGES ON *.* TO 'frodo'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;
