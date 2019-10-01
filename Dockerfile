FROM quay.io/spivegin/golangnodejs:latest 

RUN echo '#/bin/bash \n nvm install 10.11' > install.sh && chmod +x install.sh

RUN ./install.sh && cd /opt/ &&\
    git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\ 
    yarn && yarn build