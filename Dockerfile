FROM quay.io/spivegin/golangnodejs:latest
WORKDIR /root/
USER root
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# nvm
RUN echo 'export NVM_DIR="$HOME/.nvm"' >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >> "$HOME/.bashrc"

RUN git clone https://github.com/botpress/botpress.git  &&\
    cd botpress
RUN bash nvm install 10.11
RUN yarn && yarn build


