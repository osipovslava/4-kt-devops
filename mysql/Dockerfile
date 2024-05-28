FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=my-secret-pw
ENV MYSQL_DATABASE=testdb

COPY ./init-db.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

