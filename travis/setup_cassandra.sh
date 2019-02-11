#!/bin/bash
sleep 20
cqlsh -e "create keyspace dev with replication = {'class': 'SimpleStrategy', 'replication_factor': 1}; USE dev; create table play(code int primary key, title varchar); insert into play (code, title) values (1, 'hello!');"
