FROM quay.io/spivegin/golangnodejs:latest
WORKDIR /root/

RUN git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\
    nvm install 10.11 &&\
    yarn && yarn build


