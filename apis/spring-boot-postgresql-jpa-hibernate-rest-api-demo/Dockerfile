FROM ubuntu:22.04

ENV API=shop_api
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /api


COPY apis/spring-boot-postgresql-jpa-hibernate-rest-api-demo /api/


RUN apt update && \
    apt -y upgrade && \
    apt -y install postgresql postgresql-contrib openjdk-11-jdk python3-requests && \
    service postgresql start && \
    su - postgres -c "psql -c \"CREATE DATABASE postgres_demo;\"" && \
    su - postgres -c "psql -c \"ALTER USER postgres PASSWORD '0974';\"" && \
    su - postgres -c "psql -c \"GRANT ALL PRIVILEGES ON DATABASE postgres_demo TO postgres;\"" && \
    su - postgres -c "psql postgres_demo < /api/database/postgres_demo.sql" && \
    apt -y autoremove

CMD bash -c "service postgresql start && java -jar /api/postgres-demo-0.0.1-SNAPSHOT.jar"

