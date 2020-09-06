FROM ubuntu:18.04

# Create app directory
WORKDIR /usr/src/app
RUN echo "export NODE_PATH=/usr/lib/node_modules/" >> $HOME/.bashrc
RUN mkdir $HOME/.ssh

RUN apt-get update -y && apt-get -y install curl gnupg zip build-essential git ca-certificates

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm i npm@latest -g
RUN npm install -g express@4.17.1

# If you are building your code for production
# RUN npm install --only=production

CMD [ "/bin/bash" ]
