FROM lgatica/node-build:9.11.2@sha256:3a28816290ad53370bad9c281c2a45f9773fca01f30f2db433f421aa29cfe778

RUN apk add --no-cache curl git openssh-client && \
  mkdir -p /root/.ssh && \
  chmod 0700 /root/.ssh && \
  mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG KNOWN_HOST
ONBUILD ARG SSH_PRIVATE_KEY
ONBUILD ARG SSH_PUBLIC_KEY
ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

ONBUILD RUN ssh-keyscan $KNOWN_HOST > /root/.ssh/known_hosts && \
  echo "$SSH_PRIVATE_KEY" > /root/.ssh/id_rsa && \
  echo "$SSH_PUBLIC_KEY" > /root/.ssh/id_rsa.pub && \
  chmod 600 /root/.ssh/id_rsa && \
  chmod 600 /root/.ssh/id_rsa.pub && \
  echo "    IdentityFile /root/.ssh/id_rsa" >> /etc/ssh/ssh_config

ONBUILD COPY package.json package-lock.* yarn.* /usr/src/app/
ONBUILD RUN if [ -e yarn.lock ]; \
  then yarn && yarn cache clean; \
  else npm i && npm cache clean --force; fi && \
  apk del build-dependencies && \
  rm -rf ~/.node-gyp /tmp/*
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
