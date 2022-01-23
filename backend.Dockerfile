FROM node:14-alpine

WORKDIR /usr/app

COPY ./backend/package.json ./

RUN apk update \
 && apk upgrade \
 && apk add curl \
 && apk add gcc g++ make \
 && npm install \
 && npm install express -g \
 && npm install express \
 && npm install pm2 -g \
 && npm install knex -g \
 && npm install knex

COPY ./backend ./x