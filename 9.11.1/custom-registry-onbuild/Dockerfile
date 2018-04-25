FROM lgatica/node-build:9.11.1@sha256:4b81155c7755a9f01951de599522ce3de1c83f8c1e3abf7ac81cf437cdd2f420

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG NPM_PROTOCOL=http
ONBUILD ARG NPM_PORT=4873
ONBUILD ARG NPM_REGISTRY
ONBUILD ARG NPM_AUTH_TOKEN
ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

ONBUILD RUN echo "registry=$NPM_PROTOCOL://$NPM_REGISTRY:$NPM_PORT/" >> /root/.npmrc && \
  echo "//$NPM_REGISTRY:$NPM_PORT/:_authToken=$NPM_AUTH_TOKEN" >> /root/.npmrc

ONBUILD COPY package.json package-lock.* yarn.* /usr/src/app/
ONBUILD RUN if [ -e yarn.lock ]; \
  then yarn && yarn cache clean; \
  else npm i && npm cache clean --force; fi && \
  apk del build-dependencies && \
  rm -rf ~/.node-gyp /tmp/*
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
