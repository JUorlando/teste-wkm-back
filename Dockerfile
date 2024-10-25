FROM node:18-alpine3.18

# Installing dependencies
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

WORKDIR /opt/
COPY package.json yarn.lock ./
RUN yarn global add node-gyp
RUN yarn config set fetch-retry-maxtimeout 600000 -g && yarn install

# Instalar o módulo pg
RUN yarn add pg

ENV PATH=/opt/node_modules/.bin:$PATH

WORKDIR /opt/app
COPY . .

RUN chown -R node:node /opt/app
RUN yarn add esbuild@0.21.3
USER node

# Build the project
RUN ["yarn", "build"]

EXPOSE 1337
CMD ["yarn", "develop"]





