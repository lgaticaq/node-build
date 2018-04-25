FROM lgatica/node-build:6.14.1@sha256:bad6d95948cef391172278b13db22f214c16a94c4cfa2b398887d24a81d2b3ae

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG NPM_PROTOCOL=http
ONBUILD ARG NPM_PORT=4873
ONBUILD ARG NPM_REGISTRY
ONBUILD ARG NPM_PASSWORD
ONBUILD ARG NPM_USERNAME
ONBUILD ARG NPM_EMAIL
ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

ONBUILD RUN echo "registry=$NPM_PROTOCOL://$NPM_REGISTRY/" >> /root/.npmrc && \
  echo "//$NPM_REGISTRY/:_password=\"$NPM_PASSWORD\"" >> /root/.npmrc && \
  echo "//$NPM_REGISTRY/:username=$NPM_USERNAME" >> /root/.npmrc && \
  echo "//$NPM_REGISTRY/:email=$NPM_EMAIL" >> /root/.npmrc && \
  echo "//$NPM_REGISTRY/:always-auth=false" >> /root/.npmrc

ONBUILD COPY package.json package-lock.* yarn.* /usr/src/app/
ONBUILD RUN if [ -e yarn.lock ]; \
  then yarn && yarn cache clean; \
  else npm i && npm cache clean --force; fi && \
  apk del build-dependencies && \
  rm -rf ~/.node-gyp /tmp/*
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
