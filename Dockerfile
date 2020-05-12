FROM node:8.9.3-alpine
RUN mkdir -p /usr/src/public
COPY ./public/* /usr/src/public/
WORKDIR /usr/src/public
RUN npm install
CMD node /usr/src/public/server.js