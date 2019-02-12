#!/bin/bash
wget -P /tmp https://github.com/joewalnes/websocketd/releases/download/v0.3.0/websocketd-0.3.0-linux_amd64.zip
unzip -o /tmp/websocketd-0.3.0-linux_amd64.zip -d /tmp
./tmp/websocketd --port=8080 ./echo_ws.sh &
