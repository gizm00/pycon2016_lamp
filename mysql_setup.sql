
CREATE USER 'frodo'@'localhost' IDENTIFIED BY 'pycon2016';
CREATE USER 'frodo'@'%' IDENTIFIED BY 'pycon2016';
GRANT ALL ON *.* TO 'frodo'@'localhost';
GRANT ALL ON *.* TO 'frodo'@'%';
FLUSH PRIVILEGES;
CREATE DATABASE camping;
