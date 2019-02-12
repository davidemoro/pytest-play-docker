#!/bin/bash
wget https://github.com/joewalnes/websocketd/releases/download/v0.3.0/websocketd-0.3.0-linux_amd64.zip
unzip websocketd-0.3.0-linux_amd64.zip
./websocketd --port=8080 ./echo_ws.sh &
