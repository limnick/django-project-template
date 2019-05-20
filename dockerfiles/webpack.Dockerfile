FROM node:12-alpine

RUN npm install -g webpack webpack-cli webpack-dev-server yarn

EXPOSE 3000

ADD app/webapp /app

WORKDIR /app

# CMD webpack-dev-server --hot --inline --progress --host 0.0.0.0
CMD npm start
