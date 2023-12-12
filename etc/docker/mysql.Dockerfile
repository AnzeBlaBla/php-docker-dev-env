ARG MYSQL_VERSION=5.7
FROM mysql:${MYSQL_VERSION}
ADD schema.sql /docker-entrypoint-initdb.d
EXPOSE 3306