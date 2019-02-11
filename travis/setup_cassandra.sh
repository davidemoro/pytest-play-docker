#!/bin/bash
function cassandra_ready {
    while ! travis_retry csqlsh -e "describe cluster;" ; do
        echo "waiting for cassandra"
        sleep 3
    done
}

cassandra_ready
cqlsh -e "create keyspace dev with replication = {'class': 'SimpleStrategy', 'replication_factor': 1}; USE dev; create table play(code int primary key, title varchar); insert into play (code, title) values (1, 'hello!');"
