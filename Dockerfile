FROM python:3.6.8-alpine3.8

COPY . /src
WORKDIR /src

RUN apk add --no-cache --virtual .build-deps build-base postgresql-dev mariadb-connector-c-dev
RUN pip install --no-cache-dir -r requirements_cassandra.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN apk del .build-deps && \
    rm -f requirements.txt requirements_cassandra.txt

ENTRYPOINT ["pytest"]
