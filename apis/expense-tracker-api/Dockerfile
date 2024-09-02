FROM ubuntu:22.04

ENV API=shop_api
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /api


COPY apis/expense-tracker-api /api/


RUN apt update && \
    apt -y upgrade && \
    apt -y install postgresql postgresql-contrib openjdk-8-jdk python3-requests && \
    service postgresql start && \
    su - postgres -c "psql -c \"CREATE DATABASE expensetrackerdb;\"" && \
    su - postgres -c "psql -c \"ALTER USER postgres PASSWORD '0974';\"" && \
    su - postgres -c "psql -c \"GRANT ALL PRIVILEGES ON DATABASE expensetrackerdb TO postgres;\"" && \
    su - postgres -c "psql expensetrackerdb < /api/database/expensetracker_db.sql" && \
    apt -y autoremove

CMD bash -c "service postgresql start && java -jar /api/expense-tracker-api-0.0.1-SNAPSHOT.jar"
