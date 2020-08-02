FROM node:lts-alpine
LABEL maintainer "Benjamin Rosas <ben@aliencyb.org>"

EXPOSE 1337
WORKDIR /app

RUN apk update && apk upgrade
RUN apk add --no-cache --virtual .build \
  autoconf automake build-base libpng-dev nasm python

COPY package*.json /app/
RUN npm ci

RUN apk del .build

COPY . .

RUN npm run build

CMD ["npm", "start"]
