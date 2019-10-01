FROM quay.io/spivegin/golangnodejs:latest

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 10.11

WORKDIR $NVM_DIR

RUN nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

RUN cd /opt/ &&\
    git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\ 
    yarn && yarn build