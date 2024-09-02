FROM ubuntu:22.04

ENV API=shop_api
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /api


COPY apis/SpringBoot_MovieTicketBooking /api/


RUN apt update && \
    apt -y upgrade && \
    apt -y install openjdk-8-jdk mysql-server python3-requests && \
    usermod -d /var/lib/mysql/ mysql && \
    /etc/init.d/mysql start && \
    mysql -e "CREATE DATABASE bookmyshow" && \
    mysql -e "CREATE USER michele@localhost IDENTIFIED BY 'mick0974'" && \
    mysql -e "GRANT ALL PRIVILEGES ON bookmyshow.* TO michele@localhost" && \
    mysql bookmyshow < /api/database/bookmyshow.sql && \
    mysql bookmyshow < /api/database/populate.sql && \
    apt -y autoremove

CMD bash -c "service mysql start && \ 
java -jar /api/springboottiketbookings-0.0.1-SNAPSHOT.jar"

