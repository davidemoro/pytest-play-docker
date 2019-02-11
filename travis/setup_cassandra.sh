#!/bin/bash
function cassandra_ready {
    count = 0
    while ! cqlsh -e "describe cluster;" ; do
        echo "waiting for cassandra"
        if [ count -gt 30 ]
        then
            exit
        fi
        count = count + 1
        sleep 1
    done
}

cassandra_ready
cqlsh -e "create keyspace dev with replication = {'class': 'SimpleStrategy', 'replication_factor': 1}; USE dev; create table play(code int primary key, title varchar); insert into play (code, title) values (1, 'hello!');"
