#!/bin/bash
touch /tmp/echo_file.txt
docker run -d -p 1883:1883 -p 9001:9001 eclipse-mosquitto
mosquitto_sub -t home/bedroom/light -C 1 -R > /tmp/echo_file.txt &
/tmp/websocketd --port=8082 $(pwd)/travis/echo_file.sh &
