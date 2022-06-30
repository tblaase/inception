#!/bin/bash
echo "CREATE DATABASE $DB_NAME;" >> create_db_user.sql
echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> create_db_user.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" >> create_db_user.sql
echo "FLUSH PRIVILEGES;" >> create_db_user.sql
echo "ALTER USER 'root'@'%' IDENTIFIED BY '4242';" >> create_db_user.sql