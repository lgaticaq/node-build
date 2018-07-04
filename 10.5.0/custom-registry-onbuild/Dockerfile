FROM lgatica/node-build:10.5.0@sha256:6f25754a39629e09c031133b73aa200f4eeb8db5db46b60475e856675092c0d2

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
