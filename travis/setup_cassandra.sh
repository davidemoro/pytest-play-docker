#!/bin/bash
sleep 20
cqlsh -e "create keyspace dev WITH REPLICATION = {'class' : 'SimpleStrategy',  'replication_factor' : 1};"
cqlsh -e "create dev.table play(id int, title varchar); insert into dev.play (id, title) values (1, 'hello!');"
