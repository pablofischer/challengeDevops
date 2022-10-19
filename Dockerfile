FROM node:14
WORKDIR /app-node
COPY ./node-docker /app-node
RUN npm install
ENTRYPOINT npm start