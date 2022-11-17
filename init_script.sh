#!/bin/bash
apt-get update && apt-get install -y

apt install -y nodejs npm  curl 


npm install -g npm@latest 

npm cache clean -f

npm install -g n

n  16.16.0