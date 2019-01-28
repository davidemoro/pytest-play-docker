FROM python:3.6.8-alpine3.8

WORKDIR /src

RUN apk add --no-cache --virtual .build-deps git build-base postgresql-dev mariadb-connector-c-dev && \
    pip install --no-cache-dir -r https://raw.githubusercontent.com/davidemoro/cookiecutter-qa/play-optional/%7B%7Bcookiecutter.project_slug%7D%7D/requirements.txt && \
    apk del .build-deps

ENTRYPOINT ["pytest"]
