FROM ubuntu:22.04

ENV API=shop_api
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /api


COPY apis/microservice-rbac-user-management_modified /api/


RUN apt update && \
    apt -y upgrade && \
    apt -y install openjdk-8-jdk mysql-server python3-requests && \
    usermod -d /var/lib/mysql/ mysql && \
    /etc/init.d/mysql start && \
    mysql -e "CREATE DATABASE users" && \
    mysql -e "CREATE USER michele@localhost IDENTIFIED BY 'mick0974'" && \
    mysql -e "GRANT ALL PRIVILEGES ON users.* TO michele@localhost" && \
    mysql users < /api/database/users.sql && \
    mysql users < /api/database/populate.sql && \
    apt -y autoremove

CMD bash -c "service mysql start && \ 
java -jar /api/microdemo2-1.0.0-SNAPSHOT.jar"
