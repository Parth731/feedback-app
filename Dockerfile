FROM node:22.11.0

WORKDIR /my-node-app

COPY package*.json /my-node-app

RUN npm install

COPY . /my-node-app

EXPOSE 80

# VOLUME [ "/my-node-app/feedback" ]

CMD ["node", "server.js"]