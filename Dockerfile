FROM ubuntu:22.04


RUN apt update -y 

RUN apt install -y nodejs npm 


RUN npm install -g npm@latest n


RUN n install 16.16.0


RUN node -v 

WORKDIR /usr/src/app/

COPY . . 

RUN npm install

CMD npm start 






