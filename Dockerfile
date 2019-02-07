FROM python:3.6.8-alpine3.8

RUN mkdir /src
WORKDIR /src

RUN apk add --no-cache build-base postgresql-dev python-dev
COPY requirements_cassandra.txt /src
RUN pip install --no-cache-dir -r requirements_cassandra.txt
COPY requirements.txt /src
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["pytest"]
