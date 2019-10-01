FROM quay.io/spivegin/golangnodejs:latest
WORKDIR /root/
USER root
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV NODE_VERSION=10.11
# Install NODE
RUN source ~/.nvm/nvm.sh; \
    nvm install 10.11; \
    nvm use --delete-prefix 10.11;

RUN git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\ 
    nvm install 10.11 &&\
    yarn && yarn build


