FROM python:3.7

RUN mkdir /src
WORKDIR /src

RUN apt-get update && apt-get install -y --no-install-recommends \
		libpq-dev \
                default-libmysqlclient-dev \
        && rm -rf /var/lib/apt/lists/*
COPY requirements_cassandra.txt /src
RUN pip install --no-cache-dir -r requirements_cassandra.txt
COPY requirements.txt /src
RUN pip install --no-cache-dir -r requirements.txt
COPY requirements_bzt.txt /src
RUN pip install --no-cache-dir -r requirements_bzt.txt

ENTRYPOINT ["pytest"]
USER nobody
