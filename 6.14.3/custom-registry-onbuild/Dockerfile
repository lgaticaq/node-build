FROM lgatica/node-build:6.14.3@sha256:2be1cb2b0c778400c7a4e45407ad2ed3631dfe798a56ea0700543e403c795417

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG NPM_PROTOCOL=http
ONBUILD ARG NPM_REGISTRY
ONBUILD ARG NPM_AUTH_TOKEN
ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

ONBUILD RUN npm set registry $NPM_PROTOCOL://$NPM_REGISTRY/ && \
  npm set //$NPM_REGISTRY/:_authToken $NPM_AUTH_TOKEN

ONBUILD COPY package.json package-lock.* yarn.* /usr/src/app/
ONBUILD RUN if [ -e yarn.lock ]; \
  then yarn && yarn cache clean; \
  else npm i && npm cache clean --force; fi && \
  apk del build-dependencies && \
  rm -rf ~/.node-gyp /tmp/*
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
