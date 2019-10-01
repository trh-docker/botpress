FROM quay.io/spivegin/golangnodejs:latest AS builder

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -sf /bin/bash /bin/sh 

FROM builder
RUN cd /opt/ &&\
    git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\ 
    nvm install 10.11 &&\
    yarn && yarn build