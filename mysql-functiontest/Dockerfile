# mysql-tester
# 
# Automatically test accessibility and function of a mysql database.

FROM python:3-alpine
RUN apk --no-cache update && apk --no-cache add gcc musl-dev mariadb-connector-c-dev \
    && mkdir /mysql-functiontest
WORKDIR /mysql-functiontest
RUN wget https://raw.githubusercontent.com/schnitz81/python-apps/main/mysql-functiontest/mysql-functiontest.py \
    && pip install -U pip \
    && pip install --no-cache-dir mysqlclient
ENTRYPOINT ["python","-u","mysql-functiontest.py"]

# build:
# docker build . -t mysql-functiontest

# run:
# docker run --rm mysql-functiontest -u user -p password -h 192.168.1.123 
