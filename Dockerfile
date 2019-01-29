FROM python:3.6.8-alpine3.8

WORKDIR /src
COPY requirements.txt /src

RUN apk add --no-cache --virtual .build-deps git build-base postgresql-dev mariadb-connector-c-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del .build-deps && \
    rm -f requirements.txt

ENTRYPOINT ["pytest"]
