FROM debian:buster

#this exposes the port only to the other docker containers, but not to host
EXPOSE 3306

RUN apt-get update && apt-get install \
	mariadb-server -y && \
	rm -rf /var/lib/apt/lists/*

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d
# RUN pwd
COPY tools/fill_sql.sh /
RUN ./fill_sql.sh

RUN service mysql start && \
	mysql < create_db_user.sql && \
	rm -rf create_db_user.sql

CMD ["mysqld_safe"]

# test if you can connect to maridb database
# sudo docker exec -it mariadb mariadb --user tblaase -proot
# SHOW DATABASES;
# USE wordpress;
# SHOW TABLES
