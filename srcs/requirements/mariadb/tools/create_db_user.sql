CREATE DATABASE wordpress;
CREATE USER 'tblaase'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILIGES ON wordpress.* TO 'tblaase'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '4242';