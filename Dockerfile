FROM quay.io/spivegin/golangnodejs:latest 

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 10.11

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
RUN node --version

RUN cd /opt/ &&\
    git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\ 
    yarn && yarn build