#!/bin/bash
sleep 20
cqlsh -e "create keyspace dev with replication = {'class': 'SimpleStrategy', 'replication_factor': 1}; USE dev; create table play(id int, title varchar); insert into play (id, title) values (1, 'hello!');"
