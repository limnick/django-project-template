FROM node:12-alpine

RUN npm install -g webpack webpack-cli webpack-dev-server yarn

VOLUME /app

EXPOSE 3000

WORKDIR /app

CMD webpack-dev-server --hot --inline --progress --host 0.0.0.0

