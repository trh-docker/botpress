FROM quay.io/spivegin/golangnodejs:latest 

RUN cd /opt/ &&\
    git clone https://github.com/botpress/botpress.git  &&\
    cd botpress &&\ 
    nvm install 10.11 | bash &&\
    yarn && yarn build