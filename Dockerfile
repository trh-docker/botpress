FROM quay.io/spivegin/golangnodejs:latest
WORKDIR /opt/Source
ENV NVM_DIR="$HOME/.nvm"
RUN [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" &&\
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 


RUN git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\
    nvm install 10.11 &&\
    yarn && yarn build


