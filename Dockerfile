FROM quay.io/spivegin/golangnodejs:latest
WORKDIR /opt/source


RUN git clone https://github.com/botpress/botpress.git . &&\
    cd /opt/Source/botpress/ &&\
    nvm install 10.11 &&\
    yarn && yarn build


# RUN export NVM_DIR="$HOME/.nvm" \ 
#     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm \
#     [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion 
