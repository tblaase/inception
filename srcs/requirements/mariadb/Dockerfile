FROM debian:buster

EXPOSE 3306

RUN apt-get update && apt-get install \
	mariadb-server -y && \
	rm -rf /var/lib/apt/lists/*

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/50-server.cnf /etc/mysqp/mariadb.conf.d
COPY tools/create_db_user.sql /

RUN service mysql start && \
	mysql < create_db_user.sql && \
	rm -rf create_db_user.sql

CMD ["mysqld_safe"]
