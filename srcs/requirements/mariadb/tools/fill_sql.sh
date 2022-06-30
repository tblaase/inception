#!/bin/bash
echo "CREATE DATABASE $DB_NAME;" >> ./tools/create_db_user.sql
echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> ./tools/create_db_user.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" >> ./tools/create_db_user.sql
echo "FLUSH PRIVILEGES;" >> ./tools/create_db_user.sql
echo "ALTER USER 'root'@'%' IDENTIFIED BY '4242';" >> ./tools/create_db_user.sql