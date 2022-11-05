FROM ubuntu:22.04

EXPOSE 80 443

RUN apt-get update && apt-get install -y

RUN apt install -y nodejs npm  curl


RUN npm install -g npm@latest 

RUN npm cache clean -f

RUN npm install -g n

RUN n  16.16.0


RUN node -v 

WORKDIR /usr/src/app/

COPY . . 

RUN npm install

CMD npm start 






