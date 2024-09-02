FROM ubuntu:22.04

ENV API=shop_api
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /api


COPY apis/SBootApiEcomMVCHibernate /api/


RUN apt update && \
    apt -y upgrade && \
    apt -y install openjdk-11-jdk mysql-server python3-requests && \
    usermod -d /var/lib/mysql/ mysql && \
    /etc/init.d/mysql start && \
    mysql -e "CREATE DATABASE sboot_shop_api" && \
    mysql -e "CREATE USER michele@localhost IDENTIFIED BY 'mick0974'" && \
    mysql -e "GRANT ALL PRIVILEGES ON sboot_shop_api.* TO michele@localhost" && \
    apt -y autoremove

CMD bash -c "service mysql start && \ 
java -jar /api/shop-api-0.0.1-SNAPSHOT.jar seeds"

