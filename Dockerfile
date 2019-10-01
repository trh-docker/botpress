FROM quay.io/spivegin/golangnodejs:latest
WORKDIR /root/
USER root
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV NODE_VERSION=10.11
# Install NODE
RUN source ~/.nvm/nvm.sh; \
    nvm install $NODE_VERSION; \
    nvm use --delete-prefix $NODE_VERSION;

RUN git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\ 
    yarn && yarn build


